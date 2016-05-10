Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3071CE00BA1; Tue, 10 May 2016 07:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD6ADE00B89
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 07:17:17 -0700 (PDT)
In-Reply-To: <F6CD090A69E64C4289DC608E1C5D2024253EE36B@DE08W1305.global.ds.honeywell.com>
References: <OFC4AEB901.A588C143-ONC1257FAE.0051F9D2-C1257FAE.0053090F@esa-grimma.de>	<06a1adbdf434d7992e40e72f452cedae@technux.se>
	<F6CD090A69E64C4289DC608E1C5D2024253EE36B@DE08W1305.global.ds.honeywell.com>
To: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
MIME-Version: 1.0
X-KeepSent: 5D135CC9:9530B806-C1257FAF:004D0ED7;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF5D135CC9.9530B806-ONC1257FAF.004D0ED7-C1257FAF.004E7BD8@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Tue, 10 May 2016 16:17:14 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 10.05.2016 16:17:19,
	Serialize complete at 10.05.2016 16:17:19
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-bounces@yoctoproject.org
Subject: Antwort: Re: How to build a simple kernel modul
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
X-List-Received-Date: Tue, 10 May 2016 14:17:22 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004E7BD8C1257FAF_="

--=_alternative 004E7BD8C1257FAF_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks so far!

I have 3 questions for my understanding:

1.) How to define extra Include Paths if the module needs some extra=20
Includes?
        Like the "mach/gpio.h", which should be under=20
"<Kernel-Dir>/arch/arm/mach-at91/include" and is needed for the PIN=20
definitions.
        Should it be done at the Makefile like:
                CFLAGS=5Fhello.o +=3D  -I${COMPILER=5FINCLUDE}=20
-I${KERNEL=5FDIR}/arch/arm/mach-at91/include
        1.1) What are the equivalents to ${COMPILER=5FINCLUDE} and=20
${KERNEL=5FDIR} in Yocto?
        1.2) Should it be done in the Makefile or at the bb-File?
2.) How to activate/deactivate the Driver in the "local.conf"?
3.) How does the process works with cmake?
        3.1) Is it enough to inherit after modul cmake?
        like @ hello-mod=5F0.1.bb -> "inherit module cmake"


With kind regards!

Stefan Jaritz
Entwickler

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



Von:    "Esponde, Joel" <Joel.Esponde@Honeywell.com>
An:     "petter@technux.se" <petter@technux.se>, "yocto@yoctoproject.org"=20
<yocto@yoctoproject.org>
Datum:  10.05.2016 12:30
Betreff:        Re: [yocto] How to build a simple kernel modul
Gesendet von:   yocto-bounces@yoctoproject.org



Hi,
=20
And here is a hello world module example:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-k=
ernel/hello-mod
=20
Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions
=20
De : yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org
] De la part de Petter Mab=E4cker
Envoy=E9 : mardi 10 mai 2016 06:51
=C0 : yocto@yoctoproject.org
Objet : Re: [yocto] How to build a simple kernel modul
=20
2016-05-09 17:06 skrev S.Jaritz@esa-grimma.de:
Hej,=20

I want to build a recipe for a simple GPIO Module. I found no tutorial at=20
the documentation. What is the comon way to build a simple kernel module?=20

The Makefile looks like:=20
#########=20
obj-m +=3D ledmodule.o=20

SRC :=3D $(shell pwd)=20

all: modules=20

modules:=20
        $(MAKE) -C $(KERNEL=5FSRC) M=3D$(SRC) modules=20

modules=5Finstall:=20
        $(MAKE) -C $(KERNEL=5FSRC) M=3D$(SRC) modules=5Finstall=20

clean:=20
        rm -rf *.o *.ko *.mod.c=20
#########=20
The recipe contains:=20
#########=20
SUMMARY =3D "ledmodule"=20
SECTION =3D ""=20
LICENSE =3D "CLOSED"=20

inherit module=20

SRC=5FURI =3D "file://ledmodule.c \=20
        file://Makefile \=20
        "=20
S =3D "${WORKDIR}/ledmodule-0.1"=20
#########=20

Regards

Stefan Jaritz
Entwickler

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
Hi,

There are actually some guides for this, see lab4 in:
https://www.yoctoproject.org/sites/default/files/kernel-lab-2.1=5F0.pdf
But to simply build a module using bitbake, you can just do:
$ bitbake ledmodule
then you will find your recipe and the module in the ./tmp/work/ structure =

(assuming you are not inheriting 'rm=5Fwork' in local.conf...).
=20
if you just want to compile it, you can run:
$ bitbake ledmodule -c compile
=20
BR Petter
Petter Mab=E4cker
=20
Technux <petter@technux.se>
www.technux.se--=20
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--=_alternative 004E7BD8C1257FAF_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Thanks so far!</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have 3 questions for my understand=
ing:</font>
<br>
<br><font size=3D2 face=3D"sans-serif">1.) How to define extra Include Paths
if the module needs some extra Includes?</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; Like
the &quot;mach/gpio.h&quot;, which should be under &quot;&lt;Kernel-Dir&gt;=
/arch/arm/mach-at91/include&quot;
and is needed for the PIN definitions.</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; Should
it be done at the Makefile like:</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; CFLAGS=5Fhello.o +=3D &nbsp;-I${COMPILER=5FINCLUDE}
-I${KERNEL=5FDIR}/arch/arm/mach-at91/include</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; 1.1)
What are the equivalents to ${COMPILER=5FINCLUDE} and ${KERNEL=5FDIR} in Yo=
cto?</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; 1.2)
Should it be done in the Makefile or at the bb-File?</font>
<br><font size=3D2 face=3D"sans-serif">2.) How to activate/deactivate the D=
river
in the &quot;local.conf&quot;?</font>
<br><font size=3D2 face=3D"sans-serif">3.) How does the process works with
cmake?</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; 3.1)
Is it enough to inherit after modul cmake?</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; like
@ hello-mod=5F0.1.bb -&gt; &quot;inherit module cmake&quot;</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">With kind regards!<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Esponde, Joel&quot;
&lt;Joel.Esponde@Honeywell.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;petter@technux.se&quo=
t;
&lt;petter@technux.se&gt;, &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoc=
toproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">10.05.2016 12:30</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
How to build a simple kernel modul</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Gesendet von: &nbsp;=
 &nbsp;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">yocto-bounces@yoctop=
roject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3 color=3D#400000 face=3D"Calibri">Hi,</font>
<br><font size=3D3 color=3D#400000 face=3D"Calibri">&nbsp;</font>
<br><font size=3D3 color=3D#400000 face=3D"Calibri">And here is a hello wor=
ld
module example:</font>
<br><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-ske=
leton/recipes-kernel/hello-mod"><font size=3D3 color=3Dblue face=3D"Calibri=
"><u>http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/reci=
pes-kernel/hello-mod</u></font></a>
<br><font size=3D3 color=3D#400000 face=3D"Calibri">&nbsp;</font>
<br><font size=3D3 color=3D#808080 face=3D"Arial"><b>Jo=EBl Esponde</b></fo=
nt>
<br><font size=3D3 color=3D#808080 face=3D"Arial"><b>Honeywell </b>| Sensing
and Productivity Solutions</font>
<br><font size=3D3 face=3D"Times New Roman">&nbsp;</font>
<br><font size=3D3 face=3D"Calibri"><b>De :</b> yocto-bounces@yoctoproject.=
org
[</font><a href=3D"mailto:yocto-bounces@yoctoproject.org"><font size=3D3 fa=
ce=3D"Calibri">mailto:yocto-bounces@yoctoproject.org</font></a><font size=
=3D3 face=3D"Calibri">]
<b>De la part de</b> Petter Mab=E4cker<b><br>
Envoy=E9 :</b> mardi 10 mai 2016 06:51<b><br>
=C0 :</b> yocto@yoctoproject.org<b><br>
Objet :</b> Re: [yocto] How to build a simple kernel modul</font>
<br><font size=3D3 face=3D"Times New Roman">&nbsp;</font>
<p><font size=3D3 face=3D"sans-serif">2016-05-09 17:06 skrev </font><a href=
=3D"mailto:S.Jaritz@esa-grimma.de"><font size=3D3 color=3Dblue face=3D"sans=
-serif"><u>S.Jaritz@esa-grimma.de</u></font></a><font size=3D3 face=3D"sans=
-serif">:</font>
<br><font size=3D3 face=3D"Arial">Hej,</font><font size=3D3 face=3D"sans-se=
rif">
<br>
</font><font size=3D3 face=3D"Arial"><br>
I want to build a recipe for a simple GPIO Module. I found no tutorial
at the documentation. What is the comon way to build a simple kernel module=
?</font><font size=3D3 face=3D"sans-serif">
<br>
</font><font size=3D3 face=3D"Arial"><br>
The Makefile looks like:</font><font size=3D3 face=3D"sans-serif"> </font><=
font size=3D3 face=3D"Arial"><br>
#########</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 f=
ace=3D"Arial"><br>
obj-m +=3D ledmodule.o</font><font size=3D3 face=3D"sans-serif"> <br>
</font><font size=3D3 face=3D"Arial"><br>
SRC :=3D $(shell pwd)</font><font size=3D3 face=3D"sans-serif"> <br>
</font><font size=3D3 face=3D"Arial"><br>
all: modules</font><font size=3D3 face=3D"sans-serif"> <br>
</font><font size=3D3 face=3D"Arial"><br>
modules:</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 fa=
ce=3D"Arial"><br>
 &nbsp; &nbsp; &nbsp; &nbsp;$(MAKE) -C $(KERNEL=5FSRC) M=3D$(SRC) modules</=
font><font size=3D3 face=3D"sans-serif">
<br>
</font><font size=3D3 face=3D"Arial"><br>
modules=5Finstall:</font><font size=3D3 face=3D"sans-serif"> </font><font s=
ize=3D3 face=3D"Arial"><br>
 &nbsp; &nbsp; &nbsp; &nbsp;$(MAKE) -C $(KERNEL=5FSRC) M=3D$(SRC) modules=
=5Finstall</font><font size=3D3 face=3D"sans-serif">
<br>
</font><font size=3D3 face=3D"Arial"><br>
clean:</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 face=
=3D"Arial"><br>
 &nbsp; &nbsp; &nbsp; &nbsp;rm -rf *.o *.ko *.mod.c</font><font size=3D3 fa=
ce=3D"sans-serif">
</font><font size=3D3 face=3D"Arial"><br>
#########</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 f=
ace=3D"Arial"><br>
The recipe contains:</font><font size=3D3 face=3D"sans-serif"> </font><font=
 size=3D3 face=3D"Arial"><br>
#########</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 f=
ace=3D"Arial"><br>
SUMMARY =3D &quot;ledmodule&quot;</font><font size=3D3 face=3D"sans-serif">=
 </font><font size=3D3 face=3D"Arial"><br>
SECTION =3D &quot;&quot;</font><font size=3D3 face=3D"sans-serif"> </font><=
font size=3D3 face=3D"Arial"><br>
LICENSE =3D &quot;CLOSED&quot;</font><font size=3D3 face=3D"sans-serif"> <b=
r>
</font><font size=3D3 face=3D"Arial"><br>
inherit module</font><font size=3D3 face=3D"sans-serif"> <br>
</font><font size=3D3 face=3D"Arial"><br>
SRC=5FURI =3D &quot;</font><a href=3Dfile://sek4=5Fledmodule.c/><font size=
=3D3 color=3Dblue face=3D"Arial"><u>file://ledmodule.c</u></font></a><font =
size=3D3 face=3D"Arial">
\</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 face=3D"A=
rial"><br>
 &nbsp; &nbsp; &nbsp; &nbsp;</font><a href=3Dfile://Makefile/><font size=3D=
3 color=3Dblue face=3D"Arial"><u>file://Makefile</u></font></a><font size=
=3D3 face=3D"Arial">
\</font><font size=3D3 face=3D"sans-serif"> </font><font size=3D3 face=3D"A=
rial"><br>
 &nbsp; &nbsp; &nbsp; &nbsp;&quot;</font><font size=3D3 face=3D"sans-serif">
</font><font size=3D3 face=3D"Arial"><br>
S =3D &quot;${WORKDIR}/ledmodule-0.1&quot;</font><font size=3D3 face=3D"san=
s-serif">
</font><font size=3D3 face=3D"Arial"><br>
#########</font><font size=3D3 face=3D"sans-serif"> <br>
</font><font size=3D3 face=3D"Arial"><br>
Regards<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: +49 3437 9211 176<br>
Telefax: +49 3437 9211 26<br>
E-Mail: </font><a href=3D"mailto:s.jaritz@esa-grimma.de"><font size=3D3 col=
or=3Dblue face=3D"Arial"><u>s.jaritz@esa-grimma.de</u></font></a><font size=
=3D3 face=3D"Arial"><br>
Internet: </font><a href=3D"http://www.esa-grimma.de/"><font size=3D3 color=
=3Dblue face=3D"Arial"><u>www.esa-grimma.de</u></font></a><font size=3D3 fa=
ce=3D"Arial"><br>
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
<p><font size=3D3 face=3D"sans-serif">Hi,</font>
<p><font size=3D3 face=3D"sans-serif"><br>
There are actually some guides for this, see lab4 in:</font><font size=3D3 =
color=3Dblue face=3D"sans-serif"><u><br>
</u></font><a href=3D"https://www.yoctoproject.org/sites/default/files/kern=
el-lab-2.1=5F0.pdf"><font size=3D3 color=3Dblue face=3D"sans-serif"><u>http=
s://www.yoctoproject.org/sites/default/files/kernel-lab-2.1=5F0.pdf</u></fo=
nt></a>
<p><font size=3D3 face=3D"sans-serif">But to simply build a module using bi=
tbake,
you can just do:</font>
<p><font size=3D3 face=3D"sans-serif">$ bitbake ledmodule</font>
<p><font size=3D3 face=3D"sans-serif">then you will find your recipe and the
module in the ./tmp/work/ structure (assuming you are not inheriting 'rm=5F=
work'
in local.conf...).</font>
<p><font size=3D3 face=3D"sans-serif">&nbsp;</font>
<p><font size=3D3 face=3D"sans-serif">if you just want to compile it, you c=
an
run:</font>
<p><font size=3D3 face=3D"sans-serif">$ bitbake ledmodule -c compile</font>
<p><font size=3D3 face=3D"sans-serif">&nbsp;</font>
<p><font size=3D3 face=3D"sans-serif">BR Petter</font>
<br><font size=3D3 face=3D"Courier New">Petter Mab=E4cker</font>
<br><font size=3D3 face=3D"Courier New">&nbsp;</font>
<br><font size=3D3 face=3D"Courier New">Technux &lt;</font><a href=3Dmailto=
:petter@technux.se><font size=3D3 color=3Dblue face=3D"Courier New"><u>pett=
er@technux.se</u></font></a><font size=3D3 face=3D"Courier New">&gt;</font>
<br><a href=3Dhttp://www.technux.se/><font size=3D3 color=3Dblue face=3D"Co=
urier New"><u>www.technux.se</u></font></a><tt><font size=3D2>--
<br>
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=3Dhttps://lists.yoctoproject.org/listinfo/yocto><tt><fo=
nt size=3D2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><t=
t><font size=3D2><br>
</font></tt>
<br>

--=_alternative 004E7BD8C1257FAF_=--
