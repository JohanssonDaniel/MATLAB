function data = datatraffic(years,traffic)
%subplot(3,1,1), plot(years,traffic);
%subplot(2,1,1), bar(years,traffic, 'stacked');
%Sätter x-axelns etikett till years
%xlabel ('years');
%Sätter y-axelns etikett till traffic
%ylabel('traffic');
%Sätter titeln på dataserien
%title('Forecast of mobile data usage');
%Sätter namn på linjerna
%legend('Video','File transfers','Web and other');
%subplot(2,1,2), bar(years,traffic, 'grouped');
%Sätter x-axelns etikett till years
%xlabel ('years');
%Sätter y-axelns etikett till traffic
%ylabel('traffic');
%Sätter titeln på dataserien
%title('Forecast of mobile data usage');
%Sätter namn på linjerna
%legend('Video','File transfers','Web and other');
traffic = traffic*10^15/(9.7*10^6);
total = sum(traffic,2);
plot(years,total,years, traffic(:,1),'r+',years,traffic(:,3),'b.',years,traffic(:,2),'k--');
%Sätter x-axelns etikett till years
xlabel ('years');
%Sätter y-axelns etikett till traffic
ylabel('traffic');
%Sätter titeln på dataserien
title('Forecast of mobile data usage');
%Sätter namn på linjerna
legend('Total usage','Video','Web and other','File transfers');
