Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF6DCE00D3D; Tue, 13 Sep 2016 07:29:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B6A6E00D34
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 07:29:40 -0700 (PDT)
In-Reply-To: <CAJTo0LYBXyfDKAffd0VNNO+yCjR6nD=ua6mmSD6VPzUd9mQm+A@mail.gmail.com>
References: <OFE21B4224.870E1AD3-ONC125802D.0024F863-C125802D.002731A6@esa-grimma.de>
	<CAJTo0LYBXyfDKAffd0VNNO+yCjR6nD=ua6mmSD6VPzUd9mQm+A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: 163FE52B:2E663506-C125802D:004F0852;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF163FE52B.2E663506-ONC125802D.004F0852-C125802D.004F9D00@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Tue, 13 Sep 2016 16:29:36 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 13.09.2016 16:29:42,
	Serialize complete at 13.09.2016 16:29:42
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Antwort: Re: How to extract an archive in a git repostry and copy it to a defined position in the rootfs? (Solved)
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
X-List-Received-Date: Tue, 13 Sep 2016 14:29:46 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 004F9CFFC125802D_="

--=_alternative 004F9CFFC125802D_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the help! The solution is simple. As mentioned by Ross No=20
do=5Ffetch extension is needed. The extract + copy goes into do=5Finstall.

#### part of the recipe ####
do=5Finstall () {
        install -d ${D}/opt
        tar -xzf example.tar.gz -C ${D}/opt/
}

FILES=5F${PN} +=3D "/opt/*"
########

Regards

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
Kopie:  Yocto Project <yocto@yoctoproject.org>
Datum:  13.09.2016 11:59
Betreff:        Re: [yocto] How to extract an archive in a git repostry=20
and copy it to a defined position in the rootfs?




On 13 September 2016 at 08:08, <S.Jaritz@esa-grimma.de> wrote:
??? do=5Ffetch=5Fappend () {=20
???        extract ${S}/example.tar.gz=20
??? } =20

??? do=5Finstall () {=20
???        copy ${S}/ ${D}/opt/=20
??? }=20

It's a tarball so use "tar" to extract, and you'll need to mkdir ${D}/opt=20
before copying. but that's barely just pseudocode.

The only gotcha is that do=5Ffetch() is a Python function so you can't just=
=20
append shell code.  Simply move the extract into do=5Finstall().

Ross

--=_alternative 004F9CFFC125802D_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Thanks for the help! The solution is sim=
ple.
As mentioned by Ross No do=5Ffetch extension is needed. The extract + copy
goes into do=5Finstall.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">#### part of the recipe ####</font>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall () {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; install
-d ${D}/opt</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; tar
-xzf example.tar.gz -C ${D}/opt/</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br>
<br><font size=3D2 face=3D"sans-serif">FILES=5F${PN} +=3D &quot;/opt/*&quot=
;</font>
<br><font size=3D2 face=3D"sans-serif">########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">Yocto Project &lt;yocto@yoc=
toproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">13.09.2016 11:59</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
How to extract an archive in a git repostry and copy it to a defined positi=
on
in the rootfs?</font>
<br>
<hr noshade>
<br>
<br>
<br>
<br><font size=3D3>On 13 September 2016 at 08:08, &lt;</font><a href=3D"mai=
lto:S.Jaritz@esa-grimma.de" target=3D=5Fblank><font size=3D3 color=3Dblue><=
u>S.Jaritz@esa-grimma.de</u></font></a><font size=3D3>&gt;
wrote:</font>
<br><font size=3D2 face=3D"sans-serif">??? do=5Ffetch=5Fappend () {</font><=
font size=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
??? &nbsp; &nbsp; &nbsp; &nbsp;extract ${S}/example.tar.gz</font><font size=
=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
??? }</font><font size=3D3>&nbsp;&nbsp;</font>
<br><font size=3D2 face=3D"sans-serif"><br>
??? do=5Finstall () {</font><font size=3D3> </font><font size=3D2 face=3D"s=
ans-serif"><br>
??? &nbsp; &nbsp; &nbsp; &nbsp;copy ${S}/ ${D}/opt/</font><font size=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
??? }</font><font size=3D3> </font>
<br><font size=3D3><br>
It's a tarball so use &quot;tar&quot; to extract, and you'll need to mkdir
${D}/opt before copying. but that's barely just pseudocode.</font>
<br>
<br><font size=3D3>The only gotcha is that do=5Ffetch() is a Python function
so you can't just append shell code.&nbsp; Simply move the extract into
do=5Finstall().</font>
<br>
<br><font size=3D3>Ross</font>
<br>

--=_alternative 004F9CFFC125802D_=--
