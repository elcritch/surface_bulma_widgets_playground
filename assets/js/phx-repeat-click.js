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
            intv = setTimeout(function tick() {
                console.log("phx-clicking");
                self.pushEventTo(phxTarget, "clicking", dataFields);
                intv = setTimeout(tick, 300);
            }, 700);
        }
        this.el.onmouseup = function () {
            clearInterval(intv);
        }

        var tintv;
        this.el.addEventListener('touchstart', function () {
            tintv = setTimeout(function tick() {
                console.log("touch: phx-clicking");
                self.pushEventTo(phxTarget, "clicking", dataFields);
                tintv = setTimeout(tick, 300);
            }, 700);
        });
        this.el.addEventListener('touchend', function () {
            clearInterval(tintv);
        });
    }
}

export default PhxRepeatClick;