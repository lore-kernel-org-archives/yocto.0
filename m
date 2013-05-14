Return-Path: <felix01.fischer@iav.de>
Received: from mailout04.rmx.de (mailout04.rmx.de [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65829E014E7
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 00:23:41 -0700 (PDT)
Received: from cryptout02.retarus.com ([172.19.21.79])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	r4E7NbQN015330
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:23:37 +0200
Received: from cryptout02 (localhost [127.0.0.1])
	by cryptout02.retarus.com (Postfix) with ESMTP id 2E465E405A
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:23:37 +0200 (CEST)
Received: from cryptrouter01.dmz2.retloc (unknown [172.19.21.36])
	by cryptout02.retarus.com (Postfix) with SMTP id 2E0B5E4059
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 09:23:36 +0200 (CEST)
X-RMX-Split: 2013-05-14 09:23:24 +0200
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: F65EFDAC:F177D7D1-C1257B6B:002720EC;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP1 March 08, 2012
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OFF65EFDAC.F177D7D1-ONC1257B6B.002720EC-C1257B6B.00288BEC@retarus.de>
Date: Tue, 14 May 2013 09:22:53 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jynn/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 05.14.2013 09:23:07,
	Serialize complete at 05.14.2013 09:23:07
X-RMX-ID: 20130514-092307-r4E7N6N1028971-0@kdin01
X-RMX-TRACE: 2013-05-14 09:23:07 KdIn2013@kdin01/mailcc10 [0.1s]
	20130514-092307-r4E7N6N1028971-0@kdin01 0:00:00
X-RMX-TRACE: 2013-05-14 09:23:07 RmxMSO@kdin01/mailcc08 [0.0s]
	20130514-092307-r4E7N6N1028971-0@kdin01 0:00:00
Subject: Confused which layers are needed for meta-intel/meta-crownbay
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
X-List-Received-Date: Tue, 14 May 2013 07:23:41 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00288BEAC1257B6B_="

--=_alternative 00288BEAC1257B6B_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm currently trying to build a booting core-image-sato image with MACHINE =

?=3D"crownbay". I'm using  poky 9.0.0 and meta-intel (dylan branch).

I've discovered something which confuses me:

First meta-intel/meta-crownbay/README states that it is to be used with=20
the openembedded.org bitbake and openembedded-core layer (both on branch=20
master). Isn't this opposite in using yocto (as both provide bitbake) ?

Second meta-intel/meta-crownbay/README.sources points to yocto-1.3 (Line=20
10).

Is it possible that these layers aren't ready for yocto 1.4 despite being=20
packaged as "1.4-final", "1.4" and "danny-9.0.0"?


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
=20

--=_alternative 00288BEAC1257B6B_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hello,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I'm currently trying to build a boot=
ing
core-image-sato image with MACHINE ?=3D&quot;crownbay&quot;. I'm using &nbs=
p;poky
9.0.0 and meta-intel (dylan branch).<br>
<br>
I've discovered something which confuses me:<br>
<br>
First meta-intel/meta-crownbay/README states that it is to be used with
the openembedded.org bitbake and openembedded-core layer (both on branch
master). Isn't this opposite in using yocto (as both provide bitbake) ?<br>
<br>
Second meta-intel/meta-crownbay/README.sources points to yocto-1.3 (Line
10).<br>
<br>
Is it possible that these layers aren't ready for yocto 1.4 despite being
packaged as &quot;1.4-final&quot;, &quot;1.4&quot; and &quot;danny-9.0.0&qu=
ot;?<br>
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
 </font>

--=_alternative 00288BEAC1257B6B_=--
