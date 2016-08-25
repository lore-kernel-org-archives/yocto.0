Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5606DE01083; Thu, 25 Aug 2016 03:58:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BFBDE0107D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2016 03:58:22 -0700 (PDT)
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 43D5FF2A:20B2A60C-C125801A:0032C979;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF43D5FF2A.20B2A60C-ONC125801A.0032C979-C125801A.003C454B@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 25 Aug 2016 12:58:19 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 25.08.2016 12:58:24,
	Serialize complete at 25.08.2016 12:58:24
Subject: How to add a textline to the busybox-syslog syslog.conf?
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
X-List-Received-Date: Thu, 25 Aug 2016 10:58:27 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 003C454AC125801A_="

--=_alternative 003C454AC125801A_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej ho

I have an app that is using syslog. For it I like to set the amount of log =

data.

I am using the std. yocto(krogoth) together with the std. meta-atmel=20
layer. This layers are installing the "busybox-syslog"-package. This comes =

with the "/etc/syslog.conf" file.

My question is: How to append the syslog.conf with a line like=20
"myApp,auth.notice /var/log/messages" out of a recipe?

My idea of the dummy recipe looks like:
######## myApp.bb ########
SUMMARY =3D "myApp"
SECTION =3D "demo"
LICENSE =3D "GPL"

inherit cmake

DEPENDS =3D "busybox-syslog"

SRC=5FURI =3D "gitsm://mygit/myApp.git;protocol=3Dhttp;branch=3Ddevelop"

PV =3D "1.0.0"

S =3D "${WORKDIR}/git/"

BBCLASSEXTEND =3D "native nativesdk"

do=5Finstall=5Fappend() {
        echo 'myApp.*   /var/log/messages' >> /etc/syslog.conf
}
#########################

Any ideas how to do it in a nice way?

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

--=_alternative 003C454AC125801A_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej ho</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I have an app that is using syslog.
For it I like to set the amount of log data.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I am using the std. yocto(krogoth) t=
ogether
with the std. meta-atmel layer. This layers are installing the &quot;busybo=
x-syslog&quot;-package.
This comes with the &quot;/etc/syslog.conf&quot; file.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My question is: How to append the sy=
slog.conf
with a line like &quot;myApp,auth.notice /var/log/messages&quot; out of
a recipe?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My idea of the dummy recipe looks li=
ke:</font>
<br><font size=3D2 face=3D"sans-serif">######## myApp.bb ########</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;myApp&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;demo&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;GPL&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit cmake</font>
<br>
<br><font size=3D2 face=3D"sans-serif">DEPENDS =3D &quot;busybox-syslog&quo=
t;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;gitsm://mygit/my=
App.git;protocol=3Dhttp;branch=3Ddevelop&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">PV =3D &quot;1.0.0&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git/&quot;</f=
ont>
<br>
<br><font size=3D2 face=3D"sans-serif">BBCLASSEXTEND =3D &quot;native nativ=
esdk&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall=5Fappend() {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; </font><=
tt><font size=3D2>echo
'</font></tt><font size=3D2 face=3D"sans-serif">myApp.* &nbsp; &nbsp; &nbsp;
&nbsp;/var/log/messages</font><tt><font size=3D2>' &gt;&gt; </font></tt><fo=
nt size=3D2 face=3D"sans-serif">/etc/syslog.conf</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br><font size=3D2 face=3D"sans-serif">#########################</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Any ideas how to do it in a nice way=
?</font>
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

--=_alternative 003C454AC125801A_=--
