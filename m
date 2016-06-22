Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 511F4E00971; Tue, 21 Jun 2016 23:57:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A017E0084D
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 23:57:44 -0700 (PDT)
In-Reply-To: <CAF3SDA78SR_MBTry3r4FFgea38aJFKOBOZX+OeRnOi8eFtf5iA@mail.gmail.com>
References: <OFBE39B056.C95DF73C-ONC1257FD9.002D81E4-C1257FD9.002F013D@esa-grimma.de>
	<CAF3SDA78SR_MBTry3r4FFgea38aJFKOBOZX+OeRnOi8eFtf5iA@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
MIME-Version: 1.0
X-KeepSent: 946BB221:73033BCE-C1257FDA:0024A422;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF946BB221.73033BCE-ONC1257FDA.0024A422-C1257FDA.00263E68@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 22 Jun 2016 08:57:43 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 22.06.2016 08:57:45,
	Serialize complete at 22.06.2016 08:57:45
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Antwort: Re: installation of kernel modules
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
X-List-Received-Date: Wed, 22 Jun 2016 06:57:50 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 00263E67C1257FDA_="

--=_alternative 00263E67C1257FDA_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej  Daniel,

Building the modules as rpm works fine but it fails for deb. The deb=20
generation process seems a little buggy. I have discovered problems with=20
naming recipes (the QA tries to find the license by a "lowercased" link).

I checked the package dir. It is fine. The 3 files (a.ko, b.ko, & c.ko)=20
are placed rightfully. The splitting into packages produces 3 kernel=20
module packages and the 6 standard packages(like dev, static, local, etc). =

I think the problem is that the module will be compiled and deployed=20
together with the kernel and the common packages later at the do=5Frootfs. =

That's why the myKernelModules recipe is deployed at the tmp/wok/<kernel>=20
dir (and not at the tmp/work/<rootfs>).

Regards,

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



Von:    "Daniel." <danielhilst@gmail.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Datum:  21.06.2016 20:15
Betreff:        Re: [yocto] installation of kernel modules



Take a look at deploy folder if your packages (rpm in my case) are
being created. I have faced problems where files go to -dev.rpm
packages and the yocto silently refuses to create empty .rpm package.

Regards,

2016-06-21 5:33 GMT-03:00  <S.Jaritz@esa-grimma.de>:
> Hej
>
> I have a problem when running do=5Frootfs() with some own kernel drivers
> included.
>
> My kernel recipe builds some easy GPIO drivers.
>
> # They come as one package:
> myKernelModules:
>         -> a.ko
>         -> b.ko
>         -> c.ko
>
> # I build a recipe which creates:
> myKernelModules.bb
>         -> packages-split/myKernelModules
>         -> packages-split/kernel-module-a
>         -> packages-split/kernel-module-b
>         -> packages-split/kernel-module-c
>         -> packages-split/myKernelModules-.....
>
> # I try to pack/install my Module by adding to layer.conf:
>
> IMAGE=5FINSTALL=5Fappend=3D" myKernelModules"
>
> When I try to build the rootfs I got that error:
>
> The following packages have unmet dependencies:
>  myKernelModules : Depends: kernel-module-a but it is not installable
>                Depends: kernel-module-b but it is not installable
>                Depends: kernel-module-c but it is not installable
> E: Unable to correct problems, you have held broken packages.
>
> Any idea how to fix this problem?
>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=E4ftsf=FChrer:
> Dipl.-Ing. J=F6rg Gaitzsch
> J=F6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If=20
you
> are
> not the intended recipient (or have received this e-mail in error)=20
please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Do or do not. There is no try"
  Yoda Master


--=_alternative 00263E67C1257FDA_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej &nbsp;Daniel,</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Building the modules as rpm works fi=
ne
but it fails for deb. The deb generation process seems a little buggy.
I have discovered problems with naming recipes (the QA tries to find the
license by a &quot;lowercased&quot; link).</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I checked the package dir. It is fin=
e.
The 3 files (a.ko, b.ko, &amp; c.ko) are placed rightfully. The splitting
into packages produces 3 kernel module packages and the 6 standard packages=
(like
dev, static, local, etc). I think the problem is that the module will be
compiled and deployed together with the kernel and the common packages
later at the do=5Frootfs. That's why the myKernelModules recipe is deployed
at the tmp/wok/&lt;kernel&gt; dir (and not at the tmp/work/&lt;rootfs&gt;).=
</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards,<br>
<br>
Stefan Jaritz<br>
<br>
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
<br>
<br>
<br>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Von: &nbsp; &nbsp; &=
nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Daniel.&quot;
&lt;danielhilst@gmail.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">S.Jaritz@esa-grimma.de</fon=
t>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;yocto@yoctoproject.or=
g&quot;
&lt;yocto@yoctoproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">21.06.2016 20:15</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
installation of kernel modules</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=3D2>Take a look at deploy folder if your packages (rpm
in my case) are<br>
being created. I have faced problems where files go to -dev.rpm<br>
packages and the yocto silently refuses to create empty .rpm package.<br>
<br>
Regards,<br>
<br>
2016-06-21 5:33 GMT-03:00 &nbsp;&lt;S.Jaritz@esa-grimma.de&gt;:<br>
&gt; Hej<br>
&gt;<br>
&gt; I have a problem when running do=5Frootfs() with some own kernel drive=
rs<br>
&gt; included.<br>
&gt;<br>
&gt; My kernel recipe builds some easy GPIO drivers.<br>
&gt;<br>
&gt; # They come as one package:<br>
&gt; myKernelModules:<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; a.ko<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; b.ko<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; c.ko<br>
&gt;<br>
&gt; # I build a recipe which creates:<br>
&gt; myKernelModules.bb<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; packages-split/myKernelModules<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; packages-split/kernel-module-a<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; packages-split/kernel-module-b<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; packages-split/kernel-module-c<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; -&gt; packages-split/myKernelModules-.....=
<br>
&gt;<br>
&gt; # I try to pack/install my Module by adding to layer.conf:<br>
&gt;<br>
&gt; IMAGE=5FINSTALL=5Fappend=3D&quot; myKernelModules&quot;<br>
&gt;<br>
&gt; When I try to build the rootfs I got that error:<br>
&gt;<br>
&gt; The following packages have unmet dependencies:<br>
&gt; &nbsp;myKernelModules : Depends: kernel-module-a but it is not install=
able<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Depends: kernel=
-module-b
but it is not installable<br>
&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Depends: kernel=
-module-c
but it is not installable<br>
&gt; E: Unable to correct problems, you have held broken packages.<br>
&gt;<br>
&gt; Any idea how to fix this problem?<br>
&gt;<br>
&gt; Regards!<br>
&gt;<br>
&gt; Stefan Jaritz<br>
&gt;<br>
&gt; ------------------------------------------------------------<br>
&gt; ESA Elektroschaltanlagen Grimma GmbH<br>
&gt; Broner Ring 30<br>
&gt; 04668 Grimma<br>
&gt; Telefon: +49 3437 9211 176<br>
&gt; Telefax: +49 3437 9211 26<br>
&gt; E-Mail: s.jaritz@esa-grimma.de<br>
&gt; Internet: </font></tt><a href=3D"www.esa-grimma.de"><tt><font size=3D2=
>www.esa-grimma.de</font></tt></a><tt><font size=3D2><br>
&gt;<br>
&gt;<br>
&gt; Gesch=E4ftsf=FChrer:<br>
&gt; Dipl.-Ing. J=F6rg Gaitzsch<br>
&gt; J=F6rg Reinker<br>
&gt;<br>
&gt; Sitz der Gesellschaft: Grimma<br>
&gt; Ust.-ID: DE 141784437<br>
&gt; Amtsgericht: Leipzig, HRB 5159<br>
&gt; Steuernummer: 238/108/00755<br>
&gt;<br>
&gt;<br>
&gt; Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte<br>
&gt; Informationen.<br>
&gt; Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmli=
ch<br>
&gt; erhalten<br>
&gt; haben, informieren Sie bitte sofort den Absender und l=F6schen Sie die=
se<br>
&gt; Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe
dieser<br>
&gt; Mail<br>
&gt; ist nicht gestattet.<br>
&gt;<br>
&gt; This e-mail may contain confidential and/or privileged information.
If you<br>
&gt; are<br>
&gt; not the intended recipient (or have received this e-mail in error)
please<br>
&gt; notify the sender immediately and destroy this e-mail. Any unauthorize=
d<br>
&gt; copying, disclosure or distribution of the material in this e-mail
is<br>
&gt; strictly<br>
&gt; forbidden.<br>
&gt; --<br>
&gt; =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; </font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><t=
t><font size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt><=
/a><tt><font size=3D2><br>
&gt;<br>
<br>
<br>
<br>
-- <br>
&quot;Do or do not. There is no try&quot;<br>
 &nbsp;Yoda Master<br>
</font></tt>
<br>

--=_alternative 00263E67C1257FDA_=--
