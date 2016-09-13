Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04864E00D12; Tue, 13 Sep 2016 00:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 439 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Sep 2016 00:15:27 PDT
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [185.141.66.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E005DE00B30
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 00:15:27 -0700 (PDT)
To: Yocto Project <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: E21B4224:870E1AD3-C125802D:0024F863;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFE21B4224.870E1AD3-ONC125802D.0024F863-C125802D.002731A6@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Tue, 13 Sep 2016 09:08:07 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 13.09.2016 09:15:30,
	Serialize complete at 13.09.2016 09:15:30
Subject: How to extract an archive in a git repostry and copy it to a defined position in the rootfs?
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
X-List-Received-Date: Tue, 13 Sep 2016 07:15:33 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 002731A6C125802D_="

--=_alternative 002731A6C125802D_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

I like to build an package out of a git repro. This git repro contains=20
compressed files. One of these files I like to copy into my package. I=20
looked into the documentation, but it is only described how to use the=20
fetcher of bitbake. Think I need to add some extra lines of instruction=20
after fetching.

Maybe you have an idea how to solve that.

My example:
#Source:
-> gitsm:/myGitServer.com/UnpackExample;protocol=3Dhttp;branch=3Dmaster
-> Dir struct:
- UnpackExample
        - win
        - linux
                - x86
                - arm
                        - example.tar.gz
#Dest:
example.tar.gz -> opt/*.*
del opt/xyz.bin

#Pseudo recipe:
SUMMARY =3D "my test"
SECTION =3D "test"
LICENSE =3D "CLOSED"

PVBASE :=3D "${PV}"
PV =3D "${PVBASE}.${SRCPV}"

SRCREV =3D "${AUTOREV}"
SRC=5FURI =3D=20
"gitsm:/myGitServer.com/UnpackExample;protocol=3Dhttp;branch=3Dmaster"

S =3D "${WORKDIR}/git/linux/arm"

??? do=5Ffetch=5Fappend () {
???     extract ${S}/example.tar.gz
??? }


??? do=5Finstall () {
???     copy ${S}/ ${D}/opt/
??? }

FILES=5F${PN} +=3D "/opt/*"

# skip QA that is checking for the GNU=5FHASH
INSANE=5FSKIP=5F${PN} +=3D "ldflags"
########## end of recipe ####################

Regards!

Stefan
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

--=_alternative 002731A6C125802D_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">I like to build an package out of a
git repro. This git repro contains compressed files. One of these files
I like to copy into my package. I looked into the documentation, but it
is only described how to use the fetcher of bitbake. Think I need to add
some extra lines of instruction after fetching.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Maybe you have an idea how to solve
that.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">My example:</font>
<br><font size=3D2 face=3D"sans-serif">#Source:</font>
<br><font size=3D2 face=3D"sans-serif">-&gt; gitsm:/myGitServer.com/UnpackE=
xample;protocol=3Dhttp;branch=3Dmaster</font>
<br><font size=3D2 face=3D"sans-serif">-&gt; Dir struct:</font>
<br><font size=3D2 face=3D"sans-serif">- UnpackExample</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -
win</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; -
linux</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; - x86</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; - arm</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - example.tar.gz</font>
<br><font size=3D2 face=3D"sans-serif">#Dest:</font>
<br><font size=3D2 face=3D"sans-serif">example.tar.gz -&gt; opt/*.*</font>
<br><font size=3D2 face=3D"sans-serif">del opt/xyz.bin</font>
<br>
<br><font size=3D2 face=3D"sans-serif">#Pseudo recipe:</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;my test&quot;</fon=
t>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;test&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;CLOSED&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">PVBASE :=3D &quot;${PV}&quot;</font>
<br><font size=3D2 face=3D"sans-serif">PV =3D &quot;${PVBASE}.${SRCPV}&quot=
;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">SRCREV =3D &quot;${AUTOREV}&quot;</f=
ont>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;gitsm:/myGitServ=
er.com/UnpackExample;protocol=3Dhttp;branch=3Dmaster&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git/linux/arm=
&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">??? do=5Ffetch=5Fappend () {</font>
<br><font size=3D2 face=3D"sans-serif">??? &nbsp; &nbsp; &nbsp; &nbsp;extra=
ct
${S}/example.tar.gz</font>
<br><font size=3D2 face=3D"sans-serif">??? }</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">??? do=5Finstall () {</font>
<br><font size=3D2 face=3D"sans-serif">??? &nbsp; &nbsp; &nbsp; &nbsp;copy
${S}/ ${D}/opt/</font>
<br><font size=3D2 face=3D"sans-serif">??? }</font>
<br>
<br><font size=3D2 face=3D"sans-serif">FILES=5F${PN} +=3D &quot;/opt/*&quot=
;</font>
<br>
<br><font size=3D2 face=3D"sans-serif"># skip QA that is checking for the G=
NU=5FHASH</font>
<br><font size=3D2 face=3D"sans-serif">INSANE=5FSKIP=5F${PN} +=3D &quot;ldf=
lags&quot;</font>
<br><font size=3D2 face=3D"sans-serif">########## end of recipe ###########=
#########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Regards!<br>
<br>
Stefan<br>
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

--=_alternative 002731A6C125802D_=--
