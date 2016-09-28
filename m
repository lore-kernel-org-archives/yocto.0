Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DCF6E00CDE; Wed, 28 Sep 2016 06:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A14C0E00815
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 06:50:31 -0700 (PDT)
In-Reply-To: <CAJTo0LYW-gtrvFjRzVc2cpu2_cw_E5-xftjQyA16SZ4nrtXwNA@mail.gmail.com>
References: <OF54BA18D9.07777704-ONC125803C.0049D432-C125803C.004B1BCC@esa-grimma.de>
	<CAJTo0LYW-gtrvFjRzVc2cpu2_cw_E5-xftjQyA16SZ4nrtXwNA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: C8F926A8:63D3D2B3-C125803C:004B9A6F;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFC8F926A8.63D3D2B3-ONC125803C.004B9A6F-C125803C.004C0885@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Wed, 28 Sep 2016 15:50:29 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 28.09.2016 15:50:35,
	Serialize complete at 28.09.2016 15:50:35
Cc: yocto@yoctoproject.org
Subject: Antwort: Re: What is the common way to extend an package without bbappend?
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
X-List-Received-Date: Wed, 28 Sep 2016 13:50:39 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004C0885C125803C_="

--=_alternative 004C0885C125803C_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Can you give me an example how to modify my recipe?
I attach the simple code below:
##### myweb.bb ######
SUMMARY =3D "myweb"
SECTION =3D "example"
LICENSE =3D "CLOSED"

SRC=5FURI =3D "file://myweb.zip"

DEPENDS =3D "apache2"

S =3D "${WORKDIR}"

do=5Finstall () {
        install -d ${D}/usr/share/apache2/htdocs/
        cp -r ${S}/myweb/* ${D}/usr/share/apache2/htdocs/
}
FILES=5F${PN} +=3D "/usr/share/apache2/htdocs/*"
###########

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



Von:    "Burton, Ross" <ross.burton@intel.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Datum:  28.09.2016 15:44
Betreff:        Re: [yocto] What is the common way to extend an package=20
without bbappend?




On 28 September 2016 at 14:40, <S.Jaritz@esa-grimma.de> wrote:
When populate=5Fsysroot is called in myweb.bb finishes with the error:=20

myweb-1.0-r0 do=5Fpopulate=5Fsysroot: The recipe myweb is trying to install=
=20
files into a shared area when those files already exist. Those files and=20
their manifest location are:=20
 =20
 /home/user/myTC/poky/build/tmp/sysroots/sama5d3xek/usr/share/apache2/htdoc=
s/index.html=20


because the index.html needs to be overwritten.=20

Is there a easy way to overwrite or tell bitbake to uses my index.html?=20

Put the myweb content into an entirely new directory and drop a=20
configuration file in that tells apache to server from your own directory?

Ross

--=_alternative 004C0885C125803C_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Can you give me an example how to modify
my recipe?</font>
<br><font size=3D2 face=3D"sans-serif">I attach the simple code below:</fon=
t>
<br><font size=3D2 face=3D"sans-serif">##### myweb.bb ######</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;myweb&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;example&quot;</fon=
t>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;</font><a href=
=3Dfile://myweb.zip/><font size=3D2 face=3D"sans-serif">file://myweb.zip</f=
ont></a><font size=3D2 face=3D"sans-serif">&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">DEPENDS =3D &quot;apache2&quot;</fon=
t>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall () {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-d ${D}/usr/share/apache2/htdocs/</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; cp
-r ${S}/myweb/* ${D}/usr/share/apache2/htdocs/</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br><font size=3D2 face=3D"sans-serif">FILES=5F${PN} +=3D &quot;/usr/share/=
apache2/htdocs/*&quot;</font>
<br><font size=3D2 face=3D"sans-serif">###########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!<br>
<br>
Stefan Jaritz<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Burton, Ross&quot;
&lt;ross.burton@intel.com&gt;</font>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">28.09.2016 15:44</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
What is the common way to extend an package without bbappend?</font>
<br>
<hr noshade>
<br>
<br>
<br>
<br><font size=3D3>On 28 September 2016 at 14:40, &lt;</font><a href=3D"mai=
lto:S.Jaritz@esa-grimma.de" target=3D=5Fblank><font size=3D3 color=3Dblue><=
u>S.Jaritz@esa-grimma.de</u></font></a><font size=3D3>&gt;
wrote:</font>
<br><font size=3D2 face=3D"sans-serif">When populate=5Fsysroot is called in=
 </font><a href=3Dhttp://myweb.bb/ target=3D=5Fblank><font size=3D2 color=
=3Dblue face=3D"sans-serif"><u>myweb.bb</u></font></a><font size=3D2 face=
=3D"sans-serif">
finishes with the error:</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
myweb-1.0-r0 do=5Fpopulate=5Fsysroot: The recipe myweb is trying to install
files into a shared area when those files already exist. Those files and
their manifest location are:</font><font size=3D3> </font><font size=3D2 fa=
ce=3D"sans-serif"><br>
&nbsp; &nbsp;/home/user/myTC/poky/build/tmp/sysroots/sama5d3xek/usr/share/a=
pache2/htdocs/index.html</font><font size=3D3>
<br>
</font><font size=3D2 face=3D"sans-serif"><br>
because the index.html needs to be overwritten.</font><font size=3D3> <br>
</font><font size=3D2 face=3D"sans-serif"><br>
Is there a easy way to overwrite or tell bitbake to uses my index.html?</fo=
nt><font size=3D3>
</font>
<br>
<br><font size=3D3>Put the myweb content into an entirely new directory and
drop a configuration file in that tells apache to server from your own
directory?</font>
<br>
<br><font size=3D3>Ross</font>
<br>

--=_alternative 004C0885C125803C_=--
