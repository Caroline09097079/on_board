package md.amsoft.onboard.model;

import java.util.Collection;

public class Student extends Person {


    private Group group;

    private Collection<Mark> marks;

    public double calculateASd(){
        return marks.stream()
                .mapToInt(Mark::getMark)
                .average().orElse(0);
    }

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }
}
