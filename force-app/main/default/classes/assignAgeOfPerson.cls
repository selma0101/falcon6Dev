public class assignAgeOfPerson {
    public void ageOfPerson() {
        date birthdate = date.newinstance(1988, 12, 12);
        date currentDate = date.today(); 

        integer ageInDays = birthdate.daysBetween(currentDate);
        system.debug(' Age of the person in days => ' + ageInDays);

        integer ageInMonths = birthdate.monthsBetween(currentDate);
        system.debug(' Age of the person in months => ' + ageInMonths);

        integer ageInYears = birthdate.monthsBetween(currentDate)/12;
        system.debug(' Age of the person in years => ' + ageInYears);


    }
}
