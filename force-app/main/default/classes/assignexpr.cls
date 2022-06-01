public class assignexpr{
    public void assignexpration() {
        date currentDate = date.today();
        date endDate = date.newInstance(2023, 12, 8);

        integer lastDays = currentDate.daysBetween(endDate);
        system.debug('The expration date is = ' + lastDays);
    }
}
