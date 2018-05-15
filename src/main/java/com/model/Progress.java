package com.model;

public class Progress {
    private long pBytesRead;
    private long pContentLength;
    private long pItems;
    private float pRate;

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

    public float getpRate() {
        return pRate;
    }

    public void setpRate(float pRate) {
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
