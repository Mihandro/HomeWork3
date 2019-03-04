package model;

import exception.NotSelectedGenderException;

public enum Gender {

    MALE("Мужской"), FEMALE("Женский");
    public String translate;

    Gender(String translate) {
        this.translate = translate;
    }

    public static Gender getGender(String sGender) {
        if (sGender == null) throw new NotSelectedGenderException();
        if ("FEMALE".equals(sGender)) return Gender.FEMALE;
        return Gender.MALE;
    }
}
