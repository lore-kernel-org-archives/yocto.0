Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96FDBE00E46; Fri, 29 Apr 2016 00:54:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C80BE00E42
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 00:54:38 -0700 (PDT)
In-Reply-To: <CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: AE948224:6BDA8DD0-C1257FA4:0028E4AF;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 29 Apr 2016 09:54:36 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 29.04.2016 09:54:40,
	Serialize complete at 29.04.2016 09:54:40
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Antwort: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Fri, 29 Apr 2016 07:54:43 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 002B73A0C1257FA4_="

--=_alternative 002B73A0C1257FA4_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

sorry for the user -> usr misswriting. Now the packing works fine. Thanks=20
for the help - now I understand much better how makefiles are processed.=20
There is only the licence problem left. Are there some common way how to=20
handle this?
below goes the bb file.
##############
SUMMARY =3D "libhiredis"
SECTION =3D "sek4"
LICENSE =3D "COPYING"
LIC=5FFILES=5FCHKSUM =3D "file://$
{WORKDIR}/git/COPYING;md5=3Dd84d659a35c666d23233e54503aaea51"

# 0.13.3
# SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
SRC=5FURI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"

S =3D "${WORKDIR}/git/"

EXTRA=5FOEMAKE =3D "'PREFIX=3D/usr/'"

do=5Fcompile() {
        oe=5Frunmake all 'CC=3D${CC}'
}

do=5Finstall() {
        oe=5Frunmake install 'DESTDIR=3D${D}'
}
#############

The commandline outputs:
#############
NOTE: Executing RunQueue Tasks
WARNING: QA Issue: libhiredis: /libhiredis-staticdev/usr/lib/libhiredis.a=20
is owned by uid 1000, which is the same as the user running bitbake. This=20
may be due to host contamination [host-user-contaminated]
WARNING: QA Issue: libhiredis: /libhiredis/usr/lib/libhiredis.so.0.13 is=20
owned by uid 1000, which is the same as the user running bitbake. This may =

be due to host contamination [host-user-contaminated]
WARNING: QA Issue: libhiredis:=20
/libhiredis-dev/usr/lib/pkgconfig/hiredis.pc is owned by uid 1000, which=20
is the same as the user running bitbake. This may be due to host=20
contamination [host-user-contaminated]
#############

regards!

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
An:     YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
Kopie:  "S.Jaritz@esa-grimma.de" <S.Jaritz@esa-grimma.de>,=20
"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Datum:  28.04.2016 18:26
Betreff:        Re: [yocto] Antwort: Re: how to configure the build=20
packages of a makefile based libary




On 28 April 2016 at 17:18, YUKATHARSANI JEYACHANDRA <
yukatharsanij@tataelxsi.co.in> wrote:
Use INSANE=5FSKIP=5F${PN} =3D "installed-vs-shipped"  in your recipe to avo=
id=20
this error. Orelse, add FILES=5F${PN} +=3D "/usr/local/" in your recipe.
No.

*Only* use installed-vs-shipped if you're incapable of a) packaging the=20
files or b) deleting the files in a do=5Finstall=5Fappend.  Skipping that=20
warning means you won't notice new files being added to the install that=20
you don't package, which could result in broken packages.

Ross

--=_alternative 002B73A0C1257FA4_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">sorry for the user -&gt; usr misswri=
ting.
Now the packing works fine. Thanks for the help - now I understand much
better how makefiles are processed. There is only the licence problem left.
Are there some common way how to handle this?</font>
<br><font size=3D2 face=3D"sans-serif">below goes the bb file.</font>
<br><font size=3D2 face=3D"sans-serif">##############</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;libhiredis&quot;</=
font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;sek4&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;COPYING&quot;</fon=
t>
<br><font size=3D2 face=3D"sans-serif">LIC=5FFILES=5FCHKSUM =3D &quot;</fon=
t><a href=3Dfile://$/><font size=3D2 color=3Dblue face=3D"sans-serif">file:=
//$</font></a><font size=3D2 face=3D"sans-serif">{WORKDIR}/git/COPYING;md5=
=3Dd84d659a35c666d23233e54503aaea51&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif"># 0.13.3</font>
<br><font size=3D2 face=3D"sans-serif"># SRCREV =3D &quot;010756025e8cefd1b=
c66c6d4ed3b1648ef6f1f95&quot;</font>
<br><font size=3D2 face=3D"sans-serif">SRC=5FURI =3D &quot;git://github.com=
/redis/hiredis.git;rev=3Dv0.13.3&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">S =3D &quot;${WORKDIR}/git/&quot;</f=
ont>
<br>
<br><font size=3D2 face=3D"sans-serif">EXTRA=5FOEMAKE =3D &quot;'PREFIX=3D/=
usr/'&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Fcompile() {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; oe=5Frun=
make
all 'CC=3D${CC}'</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br>
<br><font size=3D2 face=3D"sans-serif">do=5Finstall() {</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; oe=5Frun=
make
install 'DESTDIR=3D${D}'</font>
<br><font size=3D2 face=3D"sans-serif">}</font>
<br><font size=3D2 face=3D"sans-serif">#############</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The commandline outputs:</font>
<br><font size=3D2 face=3D"sans-serif">#############</font>
<br><font size=3D2 face=3D"sans-serif">NOTE: Executing RunQueue Tasks</font>
<br><font size=3D2 face=3D"sans-serif">WARNING: QA Issue: libhiredis: /libh=
iredis-staticdev/usr/lib/libhiredis.a
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font>
<br><font size=3D2 face=3D"sans-serif">WARNING: QA Issue: libhiredis: /libh=
iredis/usr/lib/libhiredis.so.0.13
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font>
<br><font size=3D2 face=3D"sans-serif">WARNING: QA Issue: libhiredis: /libh=
iredis-dev/usr/lib/pkgconfig/hiredis.pc
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font>
<br><font size=3D2 face=3D"sans-serif">#############</font>
<br>
<br><font size=3D2 face=3D"sans-serif">regards!<br>
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
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;Burton, Ross&quot;
&lt;ross.burton@intel.com&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">An: &nbsp; &nbsp; &n=
bsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">YUKATHARSANI JEYACHANDRA
&lt;yukatharsanij@tataelxsi.co.in&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Kopie: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">&quot;S.Jaritz@esa-grimma.d=
e&quot;
&lt;S.Jaritz@esa-grimma.de&gt;, &quot;yocto@yoctoproject.org&quot; &lt;yoct=
o@yoctoproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">28.04.2016 18:26</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
Antwort: Re: how to configure the build packages of a makefile based libary=
</font>
<br>
<hr noshade>
<br>
<br>
<br>
<br><font size=3D3>On 28 April 2016 at 17:18, YUKATHARSANI JEYACHANDRA &lt;=
</font><a href=3Dmailto:yukatharsanij@tataelxsi.co.in target=3D=5Fblank><fo=
nt size=3D3 color=3Dblue><u>yukatharsanij@tataelxsi.co.in</u></font></a><fo=
nt size=3D3>&gt;
wrote:</font>
<p><font size=3D3>Use INSANE=5FSKIP=5F${PN} =3D &quot;installed-vs-shipped&=
quot;&nbsp;
in your recipe to avoid this error. Orelse, add FILES=5F${PN} +=3D &quot;/u=
sr/local/&quot;
in your recipe.</font>
<p><font size=3D3>No.</font>
<br>
<br><font size=3D3>*Only* use installed-vs-shipped if you're incapable of
a) packaging the files or b) deleting the files in a do=5Finstall=5Fappend.=
&nbsp;
Skipping that warning means you won't notice new files being added to the
install that you don't package, which could result in broken packages.</fon=
t>
<br>
<br><font size=3D3>Ross</font>
<br>

--=_alternative 002B73A0C1257FA4_=--
