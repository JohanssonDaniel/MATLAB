function data = datatraffic(years,traffic)
%subplot(3,1,1), plot(years,traffic);
%subplot(2,1,1), bar(years,traffic, 'stacked');
%S�tter x-axelns etikett till years
%xlabel ('years');
%S�tter y-axelns etikett till traffic
%ylabel('traffic');
%S�tter titeln p� dataserien
%title('Forecast of mobile data usage');
%S�tter namn p� linjerna
%legend('Video','File transfers','Web and other');
%subplot(2,1,2), bar(years,traffic, 'grouped');
%S�tter x-axelns etikett till years
%xlabel ('years');
%S�tter y-axelns etikett till traffic
%ylabel('traffic');
%S�tter titeln p� dataserien
%title('Forecast of mobile data usage');
%S�tter namn p� linjerna
%legend('Video','File transfers','Web and other');
traffic = traffic*10^15/(9.7*10^6);
total = sum(traffic,2);
plot(years,total,years, traffic(:,1),'r+',years,traffic(:,3),'b.',years,traffic(:,2),'k--');
%S�tter x-axelns etikett till years
xlabel ('years');
%S�tter y-axelns etikett till traffic
ylabel('traffic');
%S�tter titeln p� dataserien
title('Forecast of mobile data usage');
%S�tter namn p� linjerna
legend('Total usage','Video','Web and other','File transfers');
