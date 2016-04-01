Return-Path: <haleigh@edt.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF7DEE00C9F; Fri,  1 Apr 2016 09:07:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from out.West.EXCH083.serverdata.net
	(cas083-co-5.exch083.serverdata.net [199.193.206.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2E58E00C9A
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 09:07:26 -0700 (PDT)
Received: from MBX083-W1-CO-2.EXCH083.serverpod.net (10.224.171.45) by
	MBX083-W1-CO-4.EXCH083.serverpod.net (10.224.171.47) with Microsoft
	SMTP Server (TLS) id 15.0.1130.7; Fri, 1 Apr 2016 09:07:25 -0700
Received: from MBX083-W1-CO-2.EXCH083.serverpod.net ([10.224.171.45]) by
	MBX083-W1-CO-2.EXCH083.serverpod.net ([10.224.171.45]) with mapi id
	15.00.1130.005; Fri, 1 Apr 2016 09:07:25 -0700
From: Haleigh Novak <haleigh@edt.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding Utilities to /proc
Thread-Index: AQHRjDCLxWNIjUTd4kC4RvPBXzMxGw==
Date: Fri, 1 Apr 2016 16:07:25 +0000
Message-ID: <1459526845123.21634@edt.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [207.173.172.180]
MIME-Version: 1.0
Subject: Adding Utilities to /proc
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
X-List-Received-Date: Fri, 01 Apr 2016 16:07:27 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="_000_145952684512321634edtcom_"

--_000_145952684512321634edtcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,


Firstly I would like to say that I am new here and fairly new to Yocto, so =
I do apologize if this is the wrong board for this question. (And if it is =
could someone direct me to the correct board?) Background on me: graduated =
OSU before Fall 2015 started with a BA Computer Science Computer Systems - =
minimal yocto ~2 months baby level stuff.


Some background on the issue: I am following these directions http://www.cr=
ashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-proc-fi=
les-your-modules-part-1 to create a jiffies utility  folder in /proc as a p=
recursor to a larger project. I have made the appropriate changes within th=
e /usr/src/kernel/fs/proc folder and now I am trying to compile and load th=
e module, to place a jiffies entry in /proc. Well when I run 'make' from /u=
sr/src/kernel/ I get most of the way through, way past building my jiffies.=
o file in user/src/kernel/fs/proc, without errors but toward the end I get =
the following error.


LZO     arch/arm/boot/compressed/piggy.lzo
/bin/sh: lzop: command not found
/usr/src/kernel/arch/arm/boot/compressed/Makefile:193: recipe for target 'a=
rch/arm/boot/compressed/piggy.lzo' failed
make[2]: *** [arch/arm/boot/compressed/piggy.lzo] Error 1
/usr/src/kernel/arch/arm/boot/Makefile:52: recipe for target 'arch/arm/boot=
/compressed/vmlinux' failed
make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2
/usr/src/kernel/arch/arm/Makefile:305: recipe for target 'zImage' failed
make: *** [zImage] Error 2

I had not though to try to 'make' in this manner before I attempted this pr=
oject so I don't know if this worked originally. My yocto build is located =
on one host machine and the actual implementation / working area is on anot=
her with an arm processor. I ssh into my device that the yocto build is for=
 and from there I work with the code. If I try to 'make' on the host machin=
e I get an error that it can not find/access some generated files so  hat o=
ption I think is out and googling only resulted in that type of solution on=
e to be done on my host machine.

Has anyone ever had this problem before or could point me in a better direc=
tion?

Thank you.




--_000_145952684512321634edtcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!-- p { margin-top: 0px; m=
argin-bottom: 0px; }--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;">Hello All,&nbsp;<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;">Firstly I would like to say that I am new&nbsp;here and fairly new t=
o Yocto, so I do apologize if this is the wrong board for this question. (A=
nd if it is could someone direct me to
 the correct board?) Background on me: graduated OSU before&nbsp;Fall 2015 =
started&nbsp;with a BA Computer Science Computer Systems -&nbsp;minimal yoc=
to ~2 months baby level stuff.<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;">Some background on the issue: I am following these directions&nbsp;<=
a href=3D"http://www.crashcourse.ca/introduction-linux-kernel-programming/l=
esson-11-adding-proc-files-your-modules-part-1" target=3D"_blank">http://ww=
w.crashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-pro=
c-files-your-modules-part-1</a>&nbsp;to
 create a jiffies utility&nbsp; folder in /proc as a precursor to a larger =
project. I have made the appropriate changes within the /usr/src/kernel/fs/=
proc folder and now I am trying to compile and load the module, to place a =
jiffies entry in /proc. Well when I run
 'make' from /usr/src/kernel/ I get most of the way through, way&nbsp;past =
building my jiffies.o file in user/src/kernel/fs/proc,&nbsp;without errors =
but toward the end I get the following error.<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size: =
16px;"><br>
</p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
LZO &nbsp; &nbsp; arch/arm/boot/compressed/piggy.lzo</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
/bin/sh: lzop: command not found</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
/usr/src/kernel/arch/arm/boot/compressed/Makefile:193: recipe for target 'a=
rch/arm/boot/compressed/piggy.lzo' failed</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
make[2]: *** [arch/arm/boot/compressed/piggy.lzo] Error 1</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
/usr/src/kernel/arch/arm/boot/Makefile:52: recipe for target 'arch/arm/boot=
/compressed/vmlinux' failed</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
/usr/src/kernel/arch/arm/Makefile:305: recipe for target 'zImage' failed</d=
iv>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
make: *** [zImage] Error 2</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
&nbsp;<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
I had not though to try to 'make' in this manner before I attempted this pr=
oject so I don't know if this worked originally.&nbsp;My yocto build is loc=
ated on one host&nbsp;machine and the actual implementation / working area =
is on&nbsp;another with an arm processor. I ssh
 into my device that the yocto&nbsp;build is for and from there I&nbsp;work=
 with the code.&nbsp;If I try to 'make' on the host machine I get an error =
that it can not find/access&nbsp;some generated files so &nbsp;hat option I=
 think is out and googling only resulted in that type of
 solution one to be done on my host machine.&nbsp;&nbsp;<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
Has anyone ever had this problem before or could point me in a better direc=
tion?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
Thank you.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px;">
<br>
<br>
</div>
<p><br>
</p>
</body>
</html>

--_000_145952684512321634edtcom_--
