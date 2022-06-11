package services;

import entity.Mark;

import java.util.Collection;
import java.util.List;


public class MarksService {
    public static double getAvarageMarks(Collection<Mark> marks){
        double summaMarks = 0;
       for ( Mark mark : marks) {
            summaMarks = summaMarks + mark.getMark();
       }
        return  summaMarks / marks.size();
    }


}
