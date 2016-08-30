package com.weikun.model;

import java.util.List;

public class Cart extends CartKey {
    private Integer quantity;

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    private List qlist;//更改数量的集合
    private List olist;//更改orderid的集合
    public List getOlist() {
		return olist;
	}

	public void setOlist(List olist) {
		this.olist = olist;
	}
	private List dlist;//更改itemid的集合
    
    public List getDlist() {
		return dlist;
	}

	public void setDlist(List dlist) {
		this.dlist = dlist;
	}

	public List getQlist() {
		return qlist;
	}

	public void setQlist(List qlist) {
		this.qlist = qlist;
	}
	private List<Item> ilist;

	public List<Item> getIlist() {
		return ilist;
	}

	public void setIlist(List<Item> ilist) {
		this.ilist = ilist;
	}
    
}