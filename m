Return-Path: <felix01.fischer@iav.de>
Received: from mailout03.rmx.de (mailout03.rmx.de [217.111.120.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F54BE014DB
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 09:40:45 -0700 (PDT)
Received: from cryptout02.retarus.com ([172.19.21.79])
	by mailout03.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r8NGegT0007223
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 18:40:43 +0200
Received: from cryptout02 (localhost [127.0.0.1])
	by cryptout02.retarus.com (Postfix) with ESMTP id 9CBE6E40F2
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 18:40:42 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout02.retarus.com (Postfix) with SMTP id 754E2E40F2
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 18:40:42 +0200 (CEST)
X-RMX-Split: 2013-09-23 18:40:38 +0200
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: C7737DE7:A32DB5E9-C1257BEF:0059D095;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OFC7737DE7.A32DB5E9-ONC1257BEF.0059D095-C1257BEF.005B946E@retarus.de>
Date: Mon, 23 Sep 2013 18:40:19 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 09/23/2013 18:40:32,
	Serialize complete at 09/23/2013 18:40:32
X-RMX-ID: 20130923-184032-r8NGeWS5000327-0@kdin01
X-RMX-TRACE: 2013-09-23 18:40:32 KdIn2013@kdin01/mailcc11 [0.2s]
	20130923-184032-r8NGeWS5000327-0@kdin01 0:00:00
X-RMX-TRACE: 2013-09-23 18:40:32 RmxMSO@kdin01/mailcc10 [0.0s]
	20130923-184032-r8NGeWS5000327-0@kdin01 0:00:00
Subject: Is it possible to add machine specific changes in a separate custom layer?
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
X-List-Received-Date: Mon, 23 Sep 2013 16:40:46 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005B946DC1257BEF_="

--=_alternative 005B946DC1257BEF_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,
My goal is to build a custom-layer which supports 2 devices building on=20
top of the meta-intel and meta-ivi layer without changing anything except=20
my meta-custom layer.

Is it possible to have machine specific changes in a separate layer=20
building on top of  another layer?
I want to costumise meta-intel/meta-crownbay and=20
meta-intel/meta-chiefriver without changing something inside the=20
meta-intel layer.
My goal is to have modifications for the meta-intel layer in a meta-custom =

layer, which only get considered if a certain MACHINE ?=3D "XXXX"  (crownba=
y=20
or chiefriver) from the meta-intel layer is set.
Is this possible?
I have the same question regarding DISTRO. I want some changes to be=20
considered if DISTRO =3D poky and some other changes when DISTRO =3D=20
poky-ivi-systemd.
Is it possible to maintain these modifications in ONE custom layer or do I =

need to have seperate layers (one for poky, one for poky-ivi-systemd and=20
machine specific changes inside the meta-intel layer)?
I would like to change nothing in the "official" yocto-layers and handle=20
everything in a custom layer, but right now I don't know how to do that.

Regards,
Felix




Viele Gr=FC=DFe

Felix Fischer

Studentischer Mitarbeiter (VC-D1)
Vehicle Cockpit Electronics Devices

IAV GmbH
Carnotstr. 1
10587 BERLIN
GERMANY

Phone: +49 30 39978-9540
Fax:      +49 30 39978-9411
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

--=_alternative 005B946DC1257BEF_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello,<br>
My goal is to build a custom-layer which supports 2 devices building on
top of the meta-intel and meta-ivi layer without changing anything except
my meta-custom layer.<br>
<br>
Is it possible to have machine specific changes in a separate layer building
on top of &nbsp;another layer?</font>
<br><font size=3D2 face=3D"sans-serif">I want to costumise meta-intel/meta-=
crownbay
and meta-intel/meta-chiefriver without changing something inside the meta-i=
ntel
layer.</font>
<br><font size=3D2 face=3D"sans-serif">My goal is to have modifications for
the meta-intel layer in a meta-custom layer, which only get considered
if a certain MACHINE ?=3D &quot;XXXX&quot; &nbsp;(crownbay or chiefriver)
from the meta-intel layer is set.<br>
Is this possible?<br>
I have the same question regarding DISTRO. I want some changes to be consid=
ered
if DISTRO =3D poky and some other changes when DISTRO =3D poky-ivi-systemd.=
<br>
Is it possible to maintain these modifications in ONE custom layer or do
I need to have seperate layers (one for poky, one for poky-ivi-systemd
and machine specific changes inside the meta-intel layer)?<br>
I would like to change nothing in the &quot;official&quot; yocto-layers
and handle everything in a custom layer, but right now I don't know how
to do that.<br>
<br>
Regards,<br>
Felix<br>
<br>
<br>
<br>
<br>
Viele Gr=FC=DFe<br>
<br>
Felix Fischer<br>
<br>
Studentischer Mitarbeiter (VC-D1)<br>
Vehicle Cockpit Electronics Devices<br>
<br>
IAV GmbH<br>
Carnotstr. 1<br>
10587 BERLIN<br>
GERMANY<br>
<br>
Phone: +49 30 39978-9540<br>
Fax: &nbsp; &nbsp; &nbsp;+49 30 39978-9411<br>
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

--=_alternative 005B946DC1257BEF_=--
