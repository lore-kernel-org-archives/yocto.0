Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s25.dub0.hotmail.com (dub0-omc3-s25.dub0.hotmail.com
	[157.55.2.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A39CE01482
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2013 07:24:52 -0700 (PDT)
Received: from DUB116-W73 ([157.55.2.9]) by dub0-omc3-s25.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 4 Jul 2013 07:24:50 -0700
X-TMN: [1l6ndwxNLf2s8qxZWZApsLdu91D88BrcEBQ8ACdTDCg=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W73285008B0CC36C2A0AD7D987C0@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 4 Jul 2013 14:24:50 +0000
Importance: Normal
In-Reply-To: <DUB116-W8529D2D1871A90B56A5591987C0@phx.gbl>
References: <DUB116-W8529D2D1871A90B56A5591987C0@phx.gbl>
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Jul 2013 14:24:50.0633 (UTC)
	FILETIME=[3E683B90:01CE78C2]
Subject: FW: [meta-freescale] serial port timeout before expected # of bytes arrives
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Jul 2013 14:24:53 -0000
X-Groupsio-MsgNum: 14833
Content-Type: multipart/mixed;
	boundary="_abbba717-9254-4201-a940-a657c39cfe31_"

--_abbba717-9254-4201-a940-a657c39cfe31_
Content-Type: multipart/alternative;
	boundary="_32e9ee13-00e5-4abb-a239-49e962d65929_"

--_32e9ee13-00e5-4abb-a239-49e962d65929_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable



From: djnass_18@hotmail.com
To: meta-freescale@yoctoproject.org
Date: Thu=2C 4 Jul 2013 13:40:10 +0000
Subject: [meta-freescale] serial port timeout before expected # of bytes	ar=
rives

=0A=
=0A=
=0A=
Hello everyone=2C
I am trying to port an application that is receiving/sending data through t=
he serial port.=20
On the sabrelite board that is the /dev/ttymxc0 port=2C ie the 2ndary seria=
l port (the primary being /dev/ttymxc1).

I am using the functions select() and read() to read from the serial port =
=2C in order to implement a timeout mechanism that is waiting for a few sec=
onds for bytes to arrive and if should they not arrive=2C then the timeout =
is reached.

The receiving loop works like this:
I wait for 2 bytes - the opcode of the command.Once I resolve a code=2C I w=
ait for 4 bytes designating the length of data that will follow (depending =
on the command)I create a buffer in my application of size equal to the len=
gth I received above.I start receiving the data.=20

Note that I have implemented reception of the data in 2 ways (since the 1st=
 way used to work=2C it was tried as is. Then=2C I tried the next as well):



a)receive my data using a for loop=2C reading() one byte at time. until all=
 the expected bytes arrive =2C or a timeout is reached.

b)receive my data using a while loop where I ask for all the remaining byte=
s to be read(). Read() returns how many bytes have actually arrived=2C so I=
 update the remaining Bytes and re-read(). Again if a select() times-out wi=
thout any data arriving=2C the loop will exit.


Now=2C my problem is that while applications seem to be using this port wit=
hout any problem (f.e. minicom=2C rx=2C cat /dev/ttymxc0=2C echo "something=
" > /dev/ttymxc0 ) =2C through the application I get timeouts for any file =
that is bigger than 3-4kBytes.


Say I am trying to send a file 138kB. I may fail at byte ~40k=2C ~56k=2C or=
 even ~12k. This is very weird. And I don't know what to assume is going wr=
ong. Slow processing on the local end seems to not be a problem=2C as I can=
 read (in (b) above) approx 58 bytes in the beginning and then 1 byte at a =
time. Could it be the memory buffer? If yes=2C how can I increase its size?=
 Could another application be interfering with /dev/ttymxc0?=20



I am running fsl-image-test with all -dev=2C -sdk & -dbg options enabled.


Thank you for your help.






 		 	   		  =0A=

_______________________________________________=0A=
meta-freescale mailing list=0A=
meta-freescale@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/meta-freescale 		 	   		  =

--_32e9ee13-00e5-4abb-a239-49e962d65929_
Content-Type: text/html; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'><br><br><div><hr id=3D"stopSpell=
ing">From: djnass_18@hotmail.com<br>To: meta-freescale@yoctoproject.org<br>=
Date: Thu=2C 4 Jul 2013 13:40:10 +0000<br>Subject: [meta-freescale] serial =
port timeout before expected # of bytes	arrives<br><br>=0A=
=0A=
<style><!--=0A=
.ExternalClass .ecxhmmessage P {=0A=
padding:0px=3B=0A=
}=0A=
=0A=
.ExternalClass body.ecxhmmessage {=0A=
font-size:12pt=3B=0A=
font-family:Calibri=3B=0A=
}=0A=
=0A=
--></style>=0A=
<div dir=3D"ltr">Hello everyone=2C<br>I am trying to port an application th=
at is receiving/sending data through the serial port. <br>On the sabrelite =
board that is the /dev/ttymxc0 port=2C ie the 2ndary serial port (the prima=
ry being /dev/ttymxc1).<br><br>I am using the functions select() and read()=
 to read from the serial port =2C in order to implement a timeout mechanism=
 that is waiting for a few seconds for bytes to arrive and if should they n=
ot arrive=2C then the timeout is reached.<br><br>The receiving loop works l=
ike this:<br><ol><li>I wait for 2 bytes - the opcode of the command.</li><l=
i>Once I resolve a code=2C I wait for 4 bytes designating the <code>length<=
/code> of data that will follow (depending on the command)</li><li>I create=
 a buffer in my application of size equal to the <code>length</code> I rece=
ived above.</li><li>I start receiving the data. </li></ol><br><br>Note that=
 I have implemented reception of the data in 2 ways (since the 1st way used=
 to work=2C it was tried as is. Then=2C I tried the next as well):<br><br><=
br><br>a)receive my data using a <code>for</code> loop=2C reading() one byt=
e at time. until all the expected bytes arrive =2C or a timeout is reached.=
<br><br>b)receive my data using a while loop where I ask for all the remain=
ing bytes to be read(). Read() returns how many bytes have actually arrived=
=2C so I update the remaining Bytes and re-read(). Again if a select() time=
s-out without any data arriving=2C the loop will exit.<br><br><br>Now=2C my=
 problem is that while applications seem to be using this port without any =
problem (f.e. minicom=2C rx=2C cat /dev/ttymxc0=2C echo "something" &gt=3B =
/dev/ttymxc0 ) =2C through the application I get timeouts for any file that=
 is bigger than 3-4kBytes.<br><br><br>Say I am trying to send a file 138kB.=
 I may fail at byte ~40k=2C ~56k=2C or even ~12k. This is very weird. And I=
 don't know what to assume is going wrong. Slow processing on the local end=
 seems to not be a problem=2C as I can read (in (b) above) approx 58 bytes =
in the beginning and then 1 byte at a time. Could it be the memory buffer? =
If yes=2C how can I increase its size? Could another application be interfe=
ring with /dev/ttymxc0? <br><br><br><br>I am running fsl-image-test with al=
l -dev=2C -sdk &amp=3B -dbg options enabled.<br><br><br>Thank you for your =
help.<br><br><br><br><br><br><br> 		 	   		  </div>=0A=
<br>_______________________________________________=0A=
meta-freescale mailing list=0A=
meta-freescale@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/meta-freescale</div> 		 	   		  </d=
iv></body>
</html>=

--_32e9ee13-00e5-4abb-a239-49e962d65929_--

--_abbba717-9254-4201-a940-a657c39cfe31_
Content-Type: text/plain
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="ATT00001"

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCm1ldGEtZnJl
ZXNjYWxlIG1haWxpbmcgbGlzdA0KbWV0YS1mcmVlc2NhbGVAeW9jdG9wcm9qZWN0Lm9yZw0KaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL21ldGEtZnJlZXNjYWxlDQo=

--_abbba717-9254-4201-a940-a657c39cfe31_--
