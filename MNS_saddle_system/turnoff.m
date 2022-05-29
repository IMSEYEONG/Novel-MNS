
% Disnable Output source
fprintf(s1,'OUTP 0');
fprintf(s2,'OUTP 0');
fprintf(s3,'OUTP 0');
fprintf(s4,'OUTP 0');
fprintf(s5,'OUTP 0');

% Volatage transmit to Power Supply
fprintf(s1,['VOLTage:DC',num2str(0)]);
fprintf(s2,['VOLTage:DC',num2str(0)]);
fprintf(s3,['VOLTage:DC',num2str(0)]);
fprintf(s4,['VOLTage:DC',num2str(0)]);
fprintf(s5,['VOLTage:DC',num2str(0)]);

fprintf(s3, 'VOLT:RANG 200');
fprintf(s4, 'VOLT:RANG 200');

% Set Located control condition
fprintf(s1,'SYST:LOC');
fprintf(s2,'SYST:LOC');
fprintf(s3,'SYST:LOC');
fprintf(s4,'SYST:LOC');
fprintf(s5,'SYST:LOC');

% Close the object, and clear the workspace of the object
fclose(s1);
fclose(s2);
fclose(s3);
fclose(s4);
fclose(s5);

% Delete the serial object function
delete(s1);
delete(s2);
delete(s3);
delete(s4);
delete(s5);

% Clear the serial object function
clear s1;
clear s2;
clear s3;
clear s4;
clear s5;
