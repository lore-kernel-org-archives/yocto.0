Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B07EE006D8; Fri,  8 Jul 2016 06:57:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61ECBE006D8
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 06:57:38 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 52B3F086:41107611-C1257FEA:004BD493;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF52B3F086.41107611-ONC1257FEA.004BD493-C1257FEA.004CAF71@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 8 Jul 2016 15:57:36 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 08.07.2016 15:57:41,
	Serialize complete at 08.07.2016 15:57:41
Subject: How to install 2 or more initscrips out form one recipe?
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
X-List-Received-Date: Fri, 08 Jul 2016 13:57:43 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004CAF6FC1257FEA_="

--=_alternative 004CAF6FC1257FEA_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I run into a problem when I tried to install 3 initscrips out of one=20
recipe. My recipe looks like:
#############
SUMMARY =3D "demo cfg"
SECTION =3D "demo"
LICENSE =3D "CLOSED"

inherit update-rc.d

RDEPENDS=5F${PN} =3D "bash initscripts"

SRC=5FURI =3D "file://startA \
        file://startB \
        file://startC \
        "

S =3D "${WORKDIR}"

do=5Finstall () {
        install -d ${D}${sysconfdir}/
        install -d ${D}${sysconfdir}/init.d/
        install -m 0644 ${S}/startA ${D}${sysconfdir}/init.d/startA
        install -m 0644 ${S}/startB ${D}${sysconfdir}/init.d/startB
        install -m 0644 ${S}/startC ${D}${sysconfdir}/init.d/startC

        chmod a+x ${D}${sysconfdir}/init.d/startA
        chmod a+x ${D}${sysconfdir}/init.d/startB
        chmod a+x ${D}${sysconfdir}/init.d/startC
}

INITSCRIPT=5FPACKAGES =3D "${PN} ${PN}=5FB ${PN}=5FC"
INITSCRIPT=5FNAME=5F${PN} =3D "startA"
INITSCRIPT=5FPARAMS=5F${PN} =3D "start 90 10"
INITSCRIPT=5FNAME=5F${PN}=5FB   =3D "startB"
INITSCRIPT=5FPARAMS=5F${PN}=5FB =3D "start 90 10"
INITSCRIPT=5FNAME=5F${PN}=5FC   =3D "startC"
INITSCRIPT=5FPARAMS=5F${PN}=5FC =3D "start 90 10"

CONFFILES=5F${PN} +=3D "${sysconfdir}/init.d/startA"
CONFFILES=5F${PN} +=3D "${sysconfdir}/init.d/startB"
CONFFILES=5F${PN} +=3D "${sysconfdir}/init.d/startC"

FILES=5F${PN} +=3D "${sysconfdir}/*"
#############

The do=5Finstall works but initscript does not generates the link. I build =

that after this document=20
http://docs.openembedded.ru/update-rc-d=5Fclass.html.

Any ideas?

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

--=_alternative 004CAF6FC1257FEA_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I run into a problem when I tried to
install 3 initscrips out of one recipe. My recipe looks like:</font>
<br><font size=3D2 face=3D"sans-serif">#############</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;demo cfg&quot;</fo=
nt>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;demo&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit update-rc.d</font>
<br>
<br><font size=3D2 face=3D"sans-serif">RDEPENDS=5F${PN} =3D &quot;bash init=
scripts&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;</font><a href=
=3Dfile://startA/><font size=3D2 face=3D"sans-serif">file://startA</font></=
a><font size=3D2 face=3D"sans-serif">
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; </font><=
a href=3Dfile://startB/><font size=3D2 face=3D"sans-serif">file://startB</f=
ont></a><font size=3D2 face=3D"sans-serif">
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; </font><=
a href=3Dfile://startC/><font size=3D2 face=3D"sans-serif">file://startC</f=
ont></a><font size=3D2 face=3D"sans-serif">
\</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &quot;</=
font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall () {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-d ${D}${sysconfdir}/</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-d ${D}${sysconfdir}/init.d/</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-m 0644 ${S}/startA ${D}${sysconfdir}/init.d/startA</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-m 0644 ${S}/startB ${D}${sysconfdir}/init.d/startB</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-m 0644 ${S}/startC ${D}${sysconfdir}/init.d/startC</font>
<br>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; chmod
a+x ${D}${sysconfdir}/init.d/startA</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; chmod
a+x ${D}${sysconfdir}/init.d/startB</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; chmod
a+x ${D}${sysconfdir}/init.d/startC</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FPACKAGES =3D &quot;${PN=
} ${PN}=5FB
${PN}=5FC&quot;</font>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FNAME=5F${PN} =3D &quot;=
startA&quot;</font>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FPARAMS=5F${PN} =3D &quo=
t;start
90 10&quot;</font>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FNAME=5F${PN}=5FB &nbsp;=
 =3D &quot;startB&quot;</font>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FPARAMS=5F${PN}=5FB =3D =
&quot;start
90 10&quot;</font>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FNAME=5F${PN}=5FC &nbsp;=
 =3D &quot;startC&quot;</font>
<br><font size=3D2 face=3D"sans-serif">INITSCRIPT=5FPARAMS=5F${PN}=5FC =3D =
&quot;start
90 10&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">CONFFILES=5F${PN} +=3D &quot;${sysco=
nfdir}/init.d/startA&quot;</font>
<br><font size=3D2 face=3D"sans-serif">CONFFILES=5F${PN} +=3D &quot;${sysco=
nfdir}/init.d/startB&quot;</font>
<br><font size=3D2 face=3D"sans-serif">CONFFILES=5F${PN} +=3D &quot;${sysco=
nfdir}/init.d/startC&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">FILES=5F${PN} +=3D &quot;${sysconfdi=
r}/*&quot;</font>
<br><font size=3D2 face=3D"sans-serif">#############</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The do=5Finstall works but initscript
does not generates the link. I build that after this document </font><a hre=
f=3D"http://docs.openembedded.ru/update-rc-d=5Fclass.html"><font size=3D2 c=
olor=3Dblue face=3D"sans-serif">http://docs.openembedded.ru/update-rc-d=5Fc=
lass.html</font></a><font size=3D2 face=3D"sans-serif">.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any ideas?<br>
</font>
<br><font size=3D2 face=3D"sans-serif">Regards!</font>
<br><font size=3D2 face=3D"sans-serif"><br>
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

--=_alternative 004CAF6FC1257FEA_=--
