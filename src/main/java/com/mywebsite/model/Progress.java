package com.mywebsite.model;

public class Progress {
    private long pBytesRead;
    private long pContentLength;
    private long pItems;
    private double pRate;

    public long getpBytesRead() {
        return pBytesRead;
    }

    public void setpBytesRead(long pBytesRead) {
        this.pBytesRead = pBytesRead;
    }

    public long getpContentLength() {
        return pContentLength;
    }

    public void setpContentLength(long pContentLength) {
        this.pContentLength = pContentLength;
    }

    public long getpItems() {
        return pItems;
    }

    public void setpItems(long pItems) {
        this.pItems = pItems;
    }

    public double getpRate() {
        return pRate;
    }

    public void setpRate(double pRate) {
        this.pRate = pRate;
    }

    @Override
    public String toString() {
        return "{" +
                "pBytesRead:" + pBytesRead +
                ", pContentLength:" + pContentLength +
                ", pItems:" + pItems +
                ", pRate:" + pRate +
                '}';
    }
}
