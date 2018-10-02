package farrokhnia.model;

public class Item {

    private int id;
    private String name;
    private Double price;
    private String description;
    private ItemCategory category;
    private String imageUrl;
    boolean isFeatured;

    public Item(int id, String name, Double price, String description, ItemCategory category, String imageUrl, boolean isFeatured) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.category = category;
        this.imageUrl = imageUrl;
        this.isFeatured = isFeatured;
    }

    public int getId() { return id; }

    public String getName() { return name; }

    public Double getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public ItemCategory getCategory() {
        return category;
    }

    public String getImageUrl() { return imageUrl; }

    public boolean getIsFeatured() { return isFeatured; }
}
