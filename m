Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC3B7E00972; Fri, 17 Jun 2016 00:33:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33713E0071C
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 00:33:40 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 26883300:DB79D42F-C1257FD5:00284B40;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF26883300.DB79D42F-ONC1257FD5.00284B40-C1257FD5.00298820@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 17 Jun 2016 09:33:37 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 17.06.2016 09:33:41,
	Serialize complete at 17.06.2016 09:33:41
Subject: Problems creating packages for kernel modules when switching from rpm to deb
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
X-List-Received-Date: Fri, 17 Jun 2016 07:33:44 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0029881EC1257FD5_="

--=_alternative 0029881EC1257FD5_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I have encountered a problem, when I switched from rpm to deb. I have a=20
recipe which generates 3 kernel modules. The compiling and packaging works =

fine. But when I do the do=5Frootfs it fails with:
##################
ERROR: core-image-minimal-1.0-r0 do=5Frootfs: Unable to install packages.=20
Command=20
'/home/user/myTC/poky/build/tmp/sysroots/x86=5F64-linux/usr/bin/apt-get=20
install --force-yes --allow-unauthenticated ..a lot printings ... returned =

100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 mymodules : Depends: kernel-module-mymoduleindi but it is not going to be =

installed
               Depends: kernel-module-mymodulecom but it is not going to=20
be installed
               Depends: kernel-module-mymoduleled but it is not going to=20
be installed
E: Unable to correct problems, you have held broken packages.

ERROR: core-image-minimal-1.0-r0 do=5Frootfs: Function failed: do=5Frootfs
ERROR: Logfile of failure stored in:=20
/home/user/myTC/poky/build/tmp/work/sama5d3xek-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/temp/log.do=5Frootfs.64715
ERROR: Task 9=20
(/home/user/myTC/poky/meta/recipes-core/images/core-image-minimal.bb,=20
do=5Frootfs) failed with exit code '1'
##################

the recipe is called "mymodules.bb" in that I trigger a makefile which=20
builds the=20
mymodulesindi.ko
mymodulescom.ko
mymodulesled.ko
These are packed by the "inherit module" line.

Any idea how to solve that problem?

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

--=_alternative 0029881EC1257FD5_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have encountered a problem, when I
switched from rpm to deb. I have a recipe which generates 3 kernel modules.
The compiling and packaging works fine. But when I do the do=5Frootfs it
fails with:</font>
<br><font size=3D2 face=3D"sans-serif">##################</font>
<br><font size=3D2 face=3D"sans-serif">ERROR: core-image-minimal-1.0-r0 do=
=5Frootfs:
Unable to install packages. Command '/home/user/myTC/poky/build/tmp/sysroot=
s/x86=5F64-linux/usr/bin/apt-get
&nbsp;install --force-yes --allow-unauthenticated ..a lot printings ...
returned 100:</font>
<br><font size=3D2 face=3D"sans-serif">Reading package lists...</font>
<br><font size=3D2 face=3D"sans-serif">Building dependency tree...</font>
<br><font size=3D2 face=3D"sans-serif">Reading state information...</font>
<br><font size=3D2 face=3D"sans-serif">Some packages could not be installed.
This may mean that you have</font>
<br><font size=3D2 face=3D"sans-serif">requested an impossible situation or
if you are using the unstable</font>
<br><font size=3D2 face=3D"sans-serif">distribution that some required pack=
ages
have not yet been created</font>
<br><font size=3D2 face=3D"sans-serif">or been moved out of Incoming.</font>
<br><font size=3D2 face=3D"sans-serif">The following information may help to
resolve the situation:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The following packages have unmet de=
pendencies:</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp;mymodules : Depends: kernel-mo=
dule-mymoduleindi
but it is not going to be installed</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;
&nbsp; &nbsp;Depends: kernel-module-mymodulecom but it is not going to
be installed</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;
&nbsp; &nbsp;Depends: kernel-module-mymoduleled but it is not going to
be installed</font>
<br><font size=3D2 face=3D"sans-serif">E: Unable to correct problems, you h=
ave
held broken packages.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">ERROR: core-image-minimal-1.0-r0 do=
=5Frootfs:
Function failed: do=5Frootfs</font>
<br><font size=3D2 face=3D"sans-serif">ERROR: Logfile of failure stored in:
/home/user/myTC/poky/build/tmp/work/sama5d3xek-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/temp/log.do=5Frootfs.64715</font>
<br><font size=3D2 face=3D"sans-serif">ERROR: Task 9 (/home/user/myTC/poky/=
meta/recipes-core/images/core-image-minimal.bb,
do=5Frootfs) failed with exit code '1'</font>
<br><font size=3D2 face=3D"sans-serif">##################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">the recipe is called &quot;mymodules=
.bb&quot;
in that I trigger a makefile which builds the </font>
<br><font size=3D2 face=3D"sans-serif">mymodulesindi.ko</font>
<br><font size=3D2 face=3D"sans-serif">mymodulescom.ko</font>
<br><font size=3D2 face=3D"sans-serif">mymodulesled.ko</font>
<br><font size=3D2 face=3D"sans-serif">These are packed by the &quot;inherit
module&quot; line.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any idea how to solve that problem?<=
/font>
<br><font size=3D2 face=3D"sans-serif"><br>
Regards!</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Stefan Jaritz<br>
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

--=_alternative 0029881EC1257FD5_=--
