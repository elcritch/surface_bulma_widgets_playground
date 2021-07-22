const PhxDoFocus = {
    mounted() {
        this.el.scrollIntoView();
        this.el.focus();
        console.log("focus: ", this.el);
    }
}

export default PhxDoFocus;