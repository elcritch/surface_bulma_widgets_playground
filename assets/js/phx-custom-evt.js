const PhxCustomEvent = {
    mounted() {
        const attrs = this.el.attributes;
        // get phx-value fields
        var dataFields = {};
        for (var j = 0; j < attrs.length; j++) {
            if (/^phx-value-/.test(attrs[j].name)) {
                const name = attrs[j].name.replace("phx-value-", "");
                dataFields[name] = attrs[j].value;
            }
        }

        // get phx-custom event fields
        for (var i = 0; i < attrs.length; i++) {
            if (/^phx-custom-event-/.test(attrs[i].name)) {
                const eventName = attrs[i].name.replace("phx-custom-event-", "");
                const phxEvent = attrs[i].value;
                this.el.addEventListener(eventName, ({ detail }) => {
                    var phxTarget = this.el.getAttribute("phx-target");
                    this.pushEventTo(phxTarget, phxEvent, dataFields);
                });
            }
        }
    }
}

export default PhxCustomEvent;