package db;

import sevlets.Item;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static Long id = 3L;
    private static List<Item>itemList=new ArrayList<>();

    static {
        itemList.add(new Item(1L,"Создать приложение с помощью JAVA EE","Приложение включает в себе Главный,добавить клиента и тд страницы","2025-11-02","Да"));
        itemList.add(new Item(2L,"Читать книгу по Английский","Книга называется Educated и нужно в конце пресказать","2025-12-22","Нет"));

    }
    public static List<Item> getItemList(){
        return itemList;
    }
    public static void addItem(Item item){
        item.setId(id);
     itemList.add(item);
     id++;
    }
    public static Item getItemById(Long id){
        Item foundItem = null;
        for(Item it:itemList){
            if(it.getId()==id){
                return it;
            }
        }
        return foundItem;
    }
    public static void deleteItem(Long id){
//        Item foundItem = null;
//        for(Item it:itemList){
//            if(it.getId()==id){
//                foundItem = it;
//            }
//        }
//        if(foundItem != null){
//            itemList.remove(foundItem);
//        }
        for(int i=0;i<itemList.size();i++){
            if(itemList.get(i).getId() == id){
                itemList.remove(i);
            }
        }
    }
    public static void saveItem(Item item){
      for(int i=0; i<itemList.size(); i++){
          if (itemList.get(i).getId() == item.getId()) {
              itemList.set(i,item);
          }
      }
    }

}
