# DeleteCursorItemFix (WoW Classic)

Due to API changes `DeleteCursorItem()` cannot be called from macros or WeakAuras anymore. This simple addon creates an invisible button that allows the command to be called once per hardware input.


## Usage

`/click DelItem` will run the code `DeleteCursorItem() ClearCursor()`.

To create a macro with this addon I recommend you break the process into 3 steps:
1. `/run ClearCursor()` - protection from deleting an item you pre-selected.
2. `<logic to pickup an item>` - e.g. using `C_Container.PickupContainerItem(bag,slot)`.
3. `/click DelItem` - delete the item, clearing cursor after.


## Soul Shard Macro Example

This is an example macro that will delete one soul shard from your bag, using this addon. It deletes them in reverse order (last bag slot first):

```
/run ClearCursor();local i,f=0;for b=4,0,-1 do if f==1 then break;end;for s=C_Container.GetContainerNumSlots(b),1,-1 do i=C_Container.GetContainerItemID(b,s);if i==6265 then C_Container.PickupContainerItem(b,s);f=1;break;end;end;end
/click DelItem
```



Author: esuvii