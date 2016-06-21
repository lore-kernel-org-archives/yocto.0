Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD00E007E4; Tue, 21 Jun 2016 01:33:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D3EE006D8
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 01:33:27 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: BE39B056:C95DF73C-C1257FD9:002D81E4;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFBE39B056.C95DF73C-ONC1257FD9.002D81E4-C1257FD9.002F013D@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Tue, 21 Jun 2016 10:33:25 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 21.06.2016 10:33:30,
	Serialize complete at 21.06.2016 10:33:30
Subject: installation of kernel modules
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
X-List-Received-Date: Tue, 21 Jun 2016 08:33:31 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 002F013AC1257FD9_="

--=_alternative 002F013AC1257FD9_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I have a problem when running do=5Frootfs() with some own kernel drivers=20
included.

My kernel recipe builds some easy GPIO drivers.

# They come as one package:
myKernelModules:
        -> a.ko
        -> b.ko
        -> c.ko

# I build a recipe which creates:
myKernelModules.bb
        -> packages-split/myKernelModules
        -> packages-split/kernel-module-a
        -> packages-split/kernel-module-b
        -> packages-split/kernel-module-c
        -> packages-split/myKernelModules-.....

# I try to pack/install my Module by adding to layer.conf:
=20
IMAGE=5FINSTALL=5Fappend=3D" myKernelModules"=20

When I try to build the rootfs I got that error:

The following packages have unmet dependencies:
 myKernelModules : Depends: kernel-module-a but it is not installable
               Depends: kernel-module-b but it is not installable
               Depends: kernel-module-c but it is not installable
E: Unable to correct problems, you have held broken packages.

Any idea how to fix this problem?

Regards!

Stefan Jaritz

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte=20
Informationen.=20
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich=20
erhalten=20
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese=20
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser=20
Mail=20
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =

are=20
not the intended recipient (or have received this e-mail in error) please=20
notify the sender immediately and destroy this e-mail. Any unauthorized=20
copying, disclosure or distribution of the material in this e-mail is=20
strictly=20
forbidden.

--=_alternative 002F013AC1257FD9_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have a problem when running do=5Fr=
ootfs()
with some own kernel drivers included.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My kernel recipe builds some easy GP=
IO
drivers.</font>
<br>
<br><font size=3D2 face=3D"sans-serif"># They come as one package:</font>
<br><font size=3D2 face=3D"sans-serif">myKernelModules:</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
a.ko</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
b.ko</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
c.ko</font>
<br>
<br><font size=3D2 face=3D"sans-serif"># I build a recipe which creates:</f=
ont>
<br><font size=3D2 face=3D"sans-serif">myKernelModules.bb</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
packages-split/myKernelModules</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
packages-split/kernel-module-a</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
packages-split/kernel-module-b</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
packages-split/kernel-module-c</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -&gt;
packages-split/myKernelModules-.....</font>
<br>
<br><font size=3D2 face=3D"sans-serif"># I try to pack/install my Module by
adding to layer.conf:</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; </font>
<br><font size=3D2 face=3D"sans-serif">IMAGE=5FINSTALL=5Fappend=3D&quot; my=
KernelModules&quot;
&nbsp; &nbsp; &nbsp; &nbsp;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">When I try to build the rootfs I got
that error:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The following packages have unmet de=
pendencies:</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp;myKernelModules : Depends: ker=
nel-module-a
but it is not installable</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;
&nbsp; &nbsp;Depends: kernel-module-b but it is not installable</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;
&nbsp; &nbsp;Depends: kernel-module-c but it is not installable</font>
<br><font size=3D2 face=3D"sans-serif">E: Unable to correct problems, you h=
ave
held broken packages.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any idea how to fix this problem?</f=
ont>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!<br>
<br>
Stefan Jaritz<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 176<br>
Telefax: +49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D2 face=3D"sans-=
serif">www.esa-grimma.de</font></a><font size=3D2 face=3D"sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
<br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
erhalten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
<br>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
Mail <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If
you are <br>
not the intended recipient (or have received this e-mail in error) please
<br>
notify the sender immediately and destroy this e-mail. Any unauthorized
<br>
copying, disclosure or distribution of the material in this e-mail is stric=
tly
<br>
forbidden.</font>

--=_alternative 002F013AC1257FD9_=--
