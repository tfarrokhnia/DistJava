package farrokhnia.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ItemService {

    private List<Item> storeItems = Arrays.asList(
            new Item(1, "Xbox One S", 249.99, "Barely Used, 500gb hdd, free copy of Overwatch!", ItemCategory.ELECTRONICS, "xbox.png", true),
            new Item(2, "Oculus Rift", 349.99, "Includes Oculus Rift headset, 2 touch controllers, and 2 proximity sensors", ItemCategory.ELECTRONICS, "oculus.png", false),
            new Item(3, "Goodfellow & Co. Chinos", 24.99, "Maroon color, Never Worn, 34 inch waist, 32 inch inseam", ItemCategory.CLOTHING, "chinos.png", false),
            new Item(4, "Black End Table", 9.99, "short black end table, aprox 15 inches square and 12 inches high", ItemCategory.FURNITURE, "endtable.png", false),
            new Item(5, "Meinl Cajon Drum w/snare", 149.99, "Siam Oak Snare Cajon with White Ash Frontplate", ItemCategory.MISC, "cajon.png", true),
            new Item(6, "21.5 inch Monitor", 69.99, "1080p hd, 2 hdmi ports, 1 dvi. Built in speakers, ViewSonic Brand", ItemCategory.ELECTRONICS, "monitor.png", false),
            new Item(7, "eBags Slim Junior Backpack", 89.99, "Like new. Great color contrast interior with lots of pockets", ItemCategory.ELECTRONICS, "backpack.png", true)
    );

    public Item getItem(int id) {
        Item theItem = null;

        for (Item item : storeItems) {
            if (item.getId() == id) {
                theItem = item;
            }
        }

        return theItem;
    }

    public List<Item> getAllItems() {
        return storeItems;
    }

    public List<Item> findItems(String search) {
        search = search.toLowerCase();
        List<Item> theList = new ArrayList<>();
        for (Item item : storeItems) {
            if (item.getName().toLowerCase().startsWith(search)){
                theList.add(item);
            }
        }
        return theList;
    }
}
