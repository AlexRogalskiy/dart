import 'dart:html';

main() {
  var title = new Element.html("<h2>PackList</h2>");
  document.body.children.add(title);

  InputElement itemInput = new Element.tag("input");
  itemInput.id = "txt-item";
  itemInput.placeholder = "Enter an item";
  itemInput.on.keyPress.add( (UIEvent event) {
    if (event.keyCode == 13) {
      addItem();
    }
  });
  document.body.children.add(itemInput);

  ButtonElement addButton = new Element.tag("button");
  addButton.id = "btn-add";
  addButton.text = "Add";
  addButton.on.click.add((event) => addItem());
  document.body.children.add(addButton);

  DivElement itemContainer = new Element.tag("div");
  itemContainer.id = "items";
  itemContainer.style.width = "300px";
  itemContainer.style.border = "1px solid black";
  itemContainer.innerHTML = "&nbsp;";
  document.body.children.add(itemContainer);

}

addItem() {
  var itemInputList = queryAll("input");
  InputElement itemInput = itemInputList[0];
  DivElement itemContainer = query("#items");
  var packItem = new PackItem(itemInput.value);
  itemContainer.children.add(packItem.uiElement);
  itemInput.value = "";
}



class PackItem {
  var itemText;
  var _uiElement;

  DivElement get uiElement {
    if (_uiElement == null) {
      _uiElement = new Element.tag("div");
      _uiElement.classes.add("item");
      _uiElement.text = this.itemText;
    }
    return _uiElement;
  }


  PackItem(this.itemText) {
    //empty constructor body
  }
}
