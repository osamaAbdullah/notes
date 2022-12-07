element.dataset
document.getElementById('osama').dataset // will givr all attribute names and values that started with "data-"
document.designMode = 'on' // enable editing the dom

object.property ??= 7 // if object.property is not set then set it fo (7)

'property' in object // returns true if iproperty exists in object

class Student {
    constructor(attributes = {}) {
        Object.assign(this, attributes);
    }
    isValid() {
        return false;
    }
}