/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class Cart {
    private List<Gunpla> list = null;

    public Cart() {
        list = new ArrayList<>();
    }

    public void add(Gunpla gunpla) {
        list.add(gunpla);
    }

    public List<Gunpla> getList() {
        return list;
    }

    public void empty() {
        list.clear();
    }
}
