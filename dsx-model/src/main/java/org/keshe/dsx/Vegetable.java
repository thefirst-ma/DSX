package org.keshe.dsx;

public class Vegetable {

    public void setvId(String vId) {
        this.vId = vId;
    }

    public void setsId(String sId) {
        this.sId = sId;
    }

    public void setvName(String vName) {
        this.vName = vName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public void setvPhoto(String vPhoto) {
        this.vPhoto = vPhoto;
    }

    public void setvPrice(Double vPrice) {
        this.vPrice = vPrice;
    }

    public void setvNum(Integer vNum) {
        this.vNum = vNum;
    }




    public String getvId() {
        return vId;
    }

    public String getsId() {
        return sId;
    }

    public String getvName() {
        return vName;
    }

    public String getsName() {
        return sName;
    }

    public String getvPhoto() {
        return vPhoto;
    }

    public Double getvPrice() {
        return vPrice;
    }

    public Integer getvNum() {
        return vNum;
    }


    public Double getvGrade() {
        return vGrade;
    }

    public void setvGrade(Double vGrade) {
        this.vGrade = vGrade;
    }

    public String getvType() {
        return vType;
    }

    public void setvType(String vType) {
        this.vType = vType;
    }

    /***
     * 菜品id
     */
    private String vId;

    /***
     * 商店id
     * 菁园 0
     * 嘉园 1
     * 乾园 2
     *
     */
    private String sId;

    /***
     * 菜品名字
     */
    private String vName;
    /***
     * 商店名字
     */
    private String sName;
    private String vPhoto;

    /***
     * 菜品价格
     */
    private Double vPrice;
    private Integer vNum;
    /***
     * 菜品评分
     */
    private Double vGrade;

    /***
     * 菜品类型 String
     * 热菜0
     * 凉菜1
     */
    private String vType;


    @Override
    public String toString() {
        return "Vegetable{" +
                "vId='" + vId + '\'' +
                ", sId='" + sId + '\'' +
                ", vName='" + vName + '\'' +
                ", sName='" + sName + '\'' +
                ", vPhoto='" + vPhoto + '\'' +
                ", vPrice=" + vPrice +
                ", vNum=" + vNum +
                ", vGrade='" + vGrade + '\'' +
                ", vType='" + vType + '\'' +
                '}';
    }
}
