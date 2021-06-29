const PhxRepeatClick = {
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

        var intv;
        const phxTarget = this.el.getAttribute("phx-target");
        const self = this;

        this.el.onmousedown = function () {
            intv = setInterval(function () {
                console.log("phx-clicking");
                self.pushEventTo(phxTarget, "clicking", dataFields);
            }, 300);
        }
        this.el.onmouseup = function () {
            clearInterval(intv);
        }
    }
}

export default PhxRepeatClick;