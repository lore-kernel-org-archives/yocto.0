Return-Path: <felix01.fischer@iav.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35CC4E00BE0; Tue,  3 Jun 2014 07:32:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [94.199.90.94 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mailout04.rmx.de (mailout04.rmx.de [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C6ADE0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 07:32:09 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	s53EW5m7011847
	for <yocto@yoctoproject.org>; Tue, 3 Jun 2014 16:32:05 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id 3B3FC3704D4
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 16:32:04 +0200 (CEST)
Received: from mailcc07.retarus.de (mailcc07.retarus.de [172.19.21.7])
	by cryptout01.retarus.com (Postfix) with SMTP id 02CD13704D0
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 16:32:04 +0200 (CEST)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: CEE12F28:34E41662-C1257CEC:004E5863;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OFCEE12F28.34E41662-ONC1257CEC.004E5863-C1257CEC.004FD096@retarus.de>
Date: Tue, 3 Jun 2014 16:31:49 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 06/03/2014 16:31:49,
	Serialize complete at 06/03/2014 16:31:49
X-RMX-ID: 20140603-163149-s53EVmKQ023943-0@kdin01
X-RMX-TRACE: 2014-06-03 16:31:49 KdIn2013@kdin01/mailcc07 [0.1s]
	20140603-163149-s53EVmKQ023943-0@kdin01 0:00:00
X-RMX-TRACE: 2014-06-03 16:31:50 RmxMSO@kdin01/mailcc07 [0.0s]
	20140603-163149-s53EVmKQ023943-0@kdin01 0:00:01
Subject: [meta-raspberrypi] Purpose of vc-graphics-hardfp.bb & vc-graphics.bb unclear
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
X-List-Received-Date: Tue, 03 Jun 2014 14:32:26 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004FD096C1257CEC_="

--=_alternative 004FD096C1257CEC_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello all,

my ongoing struggle to get qt5 working on the raspberrypi led me to a=20
question unrelated to qt5.

why do vc-graphics-hardfp.bb & vc-graphics.bb exist? [1]
There is no recipe which uses on of this files.
If I add one of them to my image via IMAGE=5FINSTALL=5Fappend I get errors =

that userland.git and vc-grapics-hardfp both provide virtual/egl and=20
virtual/libgles2.
(Which they obviously do.) [2]

My question is: What is the reason for having userland=5Fgit.bb &=20
vc-graphics.bb/vc-graphics-hardfp ?

Two things are notable, IMHO:

vc-graphics.inc has two files specified.
One packageconfig (.pc) file with the right includes. I had to add one=20
library manually in order to get qt5 compiling
and the other one is a startup script for initalising the videocore.

Are these two files deprecated by now? The last change to a file in the=20
vc-graphics folder has been made 2013-08-21=20
Or do I need at least the initscript to get the videocore working?

Regards,

Felix Fischer

[1]=20
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bcm=
/vc-graphics/
[2]=20
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-gra=
phics/userland/userland=5Fgit.bb




Student Employee (VC-I42)
Vehicle Cockpit - HMI Software and Code generation

IAV GmbH
Carnotstr. 1
10587 BERLIN
GERMANY

Phone: +49 30 3997-89540
Fax:       +49 30 3997-89411
E-Mail:  <mailto:felix01.fischer@iav.de>
Internet: http://www.iav.com

Sitz/Registered Office: Berlin,=20
Registergericht/Registration Court: Amtsgericht Charlottenburg,=20
Registernummer/Company Registration Number: HRB 21 280,=20
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,=20
Dr. R=FCdiger Goyk
Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board: Dr.=20
Harald Ludanek

--=_alternative 004FD096C1257CEC_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello all,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">my ongoing struggle to get qt5 worki=
ng
on the raspberrypi led me to a question unrelated to qt5.<br>
<br>
why do vc-graphics-hardfp.bb &amp; vc-graphics.bb exist? [1]<br>
There is no recipe which uses on of this files.<br>
If I add one of them to my image via IMAGE=5FINSTALL=5Fappend I get errors
that userland.git and vc-grapics-hardfp both provide virtual/egl and virtua=
l/libgles2.<br>
(Which they obviously do.) [2]<br>
<br>
My question is: What is the reason for having userland=5Fgit.bb &amp; vc-gr=
aphics.bb/vc-graphics-hardfp
?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Two things are notable, IMHO:<br>
<br>
vc-graphics.inc has two files specified.<br>
One packageconfig (.pc) file with the right includes. I had to add one
library manually in order to get qt5 compiling</font>
<br><font size=3D2 face=3D"sans-serif">and the other one is a startup script
for initalising the videocore.<br>
<br>
Are these two files deprecated by now? The last change to a file in the
vc-graphics folder has been made 2013-08-21 <br>
Or do I need at least the initscript to get the videocore working?</font>
<br><font size=3D2 face=3D"sans-serif"><br>
Regards,<br>
<br>
Felix Fischer<br>
</font>
<br><font size=3D2 face=3D"sans-serif">[1] </font><a href=3D"http://git.yoc=
toproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bcm/vc-graphics/"=
><font size=3D2 face=3D"sans-serif">http://git.yoctoproject.org/cgit/cgit.c=
gi/meta-raspberrypi/tree/recipes-bcm/vc-graphics/</font></a>
<br><font size=3D2 face=3D"sans-serif">[2] </font><a href=3D"http://git.yoc=
toproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-graphics/userland=
/userland=5Fgit.bb"><font size=3D2 face=3D"sans-serif">http://git.yoctoproj=
ect.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-graphics/userland/userl=
and=5Fgit.bb</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
<br>
Student Employee (VC-I42)<br>
Vehicle Cockpit - HMI Software and Code generation<br>
<br>
IAV GmbH<br>
Carnotstr. 1<br>
10587 BERLIN<br>
GERMANY<br>
<br>
Phone: +49 30 3997-89540<br>
Fax: &nbsp; &nbsp; &nbsp; +49 30 3997-89411<br>
E-Mail: &nbsp;&lt;</font><a href=3Dmailto:felix01.fischer@iav.de><font size=
=3D2 face=3D"sans-serif">mailto:felix01.fischer@iav.de</font></a><font size=
=3D2 face=3D"sans-serif">&gt;<br>
Internet: </font><a href=3Dhttp://www.iav.com/><font size=3D2 face=3D"sans-=
serif">http://www.iav.com</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
Sitz/Registered Office: Berlin, <br>
Registergericht/Registration Court: Amtsgericht Charlottenburg, <br>
Registernummer/Company Registration Number: HRB 21 280, <br>
Gesch=E4ftsf=FChrer/Managing Directors: Kurt Blumenr=F6der, Michael Schuber=
t,
Dr. R=FCdiger Goyk<br>
Vorsitzender des Aufsichtsrates/Chairman of the Supervisory Board: Dr.
Harald Ludanek</font>

--=_alternative 004FD096C1257CEC_=--
