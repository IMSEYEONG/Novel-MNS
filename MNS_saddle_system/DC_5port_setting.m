                                                                                                                      %% set the communication parameter for power supply
delete(instrfindall)
s1= serial('COM4');    % HC
set(s1,'BaudRate',19200,'DataBits',8,'parity','none','stopbits',1,'FlowControl','none'); 
s2= serial('COM8');    % USCy
set(s2,'BaudRate',19200,'DataBits',8,'parity','none','stopbits',1,'FlowControl','none'); 
s3= serial('COM5');    % USCz
set(s3,'BaudRate',19200,'DataBits',8,'parity','none','stopbits',1,'FlowControl','none'); 
s4= serial('COM6');    % MC
set(s4,'BaudRate',19200,'DataBits',8,'parity','none','stopbits',1,'FlowControl','none'); 
s5= serial('COM7');    % GSC
set(s5,'BaudRate',19200,'DataBits',8,'parity','none','stopbits',1,'FlowControl','none'); 

%% Open the communication port
fopen(s1);
fopen(s2);
fopen(s3);
fopen(s4);
fopen(s5);

%% Set the remote control
fprintf(s1,'SYST:REM');
fprintf(s2,'SYST:REM');
fprintf(s3,'SYST:REM');
fprintf(s4,'SYST:REM');
fprintf(s5,'SYST:REM');

%% Set the DC mode
fprintf(s1, 'MODE DC');
fprintf(s2, 'MODE DC');
fprintf(s3, 'MODE DC');
fprintf(s4, 'MODE DC');
fprintf(s5, 'MODE DC');

%% Set the power range
fprintf(s1,['VOLTage:DC',num2str(200)]);
fprintf(s2,['VOLTage:DC',num2str(312)]);
fprintf(s3,['VOLTage:DC',num2str(400)]);
fprintf(s4,['VOLTage:DC',num2str(400)]);
fprintf(s5,['VOLTage:DC',num2str(200)]);

fprintf(s1, 'VOLT:RANG 200');
fprintf(s2, 'VOLT:RANG 312');
fprintf(s3, 'VOLT:RANG 400');
fprintf(s4, 'VOLT:RANG 400');
fprintf(s5, 'VOLT:RANG 200');

fprintf(s1,['VOLTage:DC',num2str(0)]);
fprintf(s2,['VOLTage:DC',num2str(0)]);
fprintf(s3,['VOLTage:DC',num2str(0)]);
fprintf(s4,['VOLTage:DC',num2str(0)]);
fprintf(s5,['VOLTage:DC',num2str(0)]);

%% Enable Output source
fprintf(s1,'OUTP 1');
fprintf(s2,'OUTP 1');
fprintf(s3,'OUTP 1');
fprintf(s4,'OUTP 1');
fprintf(s5,'OUTP 1');




