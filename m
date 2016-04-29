Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D293E00E54; Fri, 29 Apr 2016 02:59:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62A10E00E50
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 02:59:33 -0700 (PDT)
In-Reply-To: <CAJTo0La51T5zQZv0JbakTifLUNVv=n291fmrx=RhmLpDq+C7Gg@mail.gmail.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
	<OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
	<CAJTo0La51T5zQZv0JbakTifLUNVv=n291fmrx=RhmLpDq+C7Gg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: B3F7FD44:568863C7-C1257FA4:00364313;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OFB3F7FD44.568863C7-ONC1257FA4.00364313-C1257FA4.0036E30E@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Fri, 29 Apr 2016 11:59:30 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 29.04.2016 11:59:37,
	Serialize complete at 29.04.2016 11:59:37
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Antwort: Re: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Fri, 29 Apr 2016 09:59:41 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0036E30EC1257FA4_="

--=_alternative 0036E30EC1257FA4_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

Finally we made it - Thanks to you all for helping me! I attached my bb=20
file for that case someone is searching for a bitbake recipe for building=20
the libhiredis

##############
SUMMARY =3D "libhiredis"
SECTION =3D "lib"
LICENSE =3D "MIT"
LIC=5FFILES=5FCHKSUM =3D "file://COPYING;md5=3Dd84d659a35c666d23233e54503aa=
ea51"

# 0.13.3
# SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
SRC=5FURI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"

S =3D "${WORKDIR}/git/"

# error handleing
# @PREFIX: set the path from /usr/local to /usr/
# @INSTALL: set the copy instruction from "cp -a" to "cp -r"
EXTRA=5FOEMAKE =3D "'PREFIX=3D${prefix}' 'INSTALL=3D''cp -r'''"

do=5Fcompile() {
        oe=5Frunmake all 'CC=3D${CC}'
}

do=5Finstall() {
        oe=5Frunmake install 'DESTDIR=3D${D}'
}
##############

regards

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



Von:    "Burton, Ross" <ross.burton@intel.com>
An:     S.Jaritz@esa-grimma.de
Kopie:  "yocto@yoctoproject.org" <yocto@yoctoproject.org>, YUKATHARSANI=20
JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
Datum:  29.04.2016 10:59
Betreff:        Re: Re: [yocto] Antwort: Re: how to configure the build=20
packages of a makefile based libary



Hi Stefan,

So close :)  Some more points:

On 29 April 2016 at 08:54, <S.Jaritz@esa-grimma.de> wrote:
> LICENSE =3D "COPYING"

This should be the name of the license itself, not the filename.  Looks a=20
bit like MIT to me.
=20
> LIC=5FFILES=5FCHKSUM =3D "file://$
{WORKDIR}/git/COPYING;md5=3Dd84d659a35c666d23233e54503aaea51"

This URI is relative to ${S} so you can just do file://COPYING;md5=3D....
=20
> EXTRA=5FOEMAKE =3D "'PREFIX=3D/usr/'"=20

Use PREFIX=3D${prefix} to respect the what the distro has configured. =20
Annoyingly you can't override the other paths such a libdir easily, so=20
this will break in multilib configurations or if I recall correctly, on=20
aarch64.

The commandline outputs:=20
#############=20
NOTE: Executing RunQueue Tasks=20
WARNING: QA Issue: libhiredis: /libhiredis-staticdev/usr/lib/libhiredis.a=20
is owned by uid 1000, which is the same as the user running bitbake. This=20
may be due to host contamination [host-user-contaminated]=20
WARNING: QA Issue: libhiredis: /libhiredis/usr/lib/libhiredis.so.0.13 is=20
owned by uid 1000, which is the same as the user running bitbake. This may =

be due to host contamination [host-user-contaminated]=20
WARNING: QA Issue: libhiredis:=20
/libhiredis-dev/usr/lib/pkgconfig/hiredis.pc is owned by uid 1000, which=20
is the same as the user running bitbake. This may be due to host=20
contamination [host-user-contaminated]=20
############# =20

The upstream Makefile is using "cp -a" which preserves ownership, so as=20
you built the package the files are owned by you.  Luckily you can=20
override this by passing "INSTALL=3D'cp -r' to the make install (they use c=
p=20
to recursively copy directories, so you need to pass -r instead).

I've a recipe locally with these changes and it builds without warnings=20
and is packaged correctly.

This is what happens when maintainers think autotools is too complicated=20
and a bare makefile is just fine: they do it wrong. :)

Ross

--=_alternative 0036E30EC1257FA4_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Finally we made it - Thanks to you a=
ll
for helping me! I attached my bb file for that case someone is searching
for a bitbake recipe for building the libhiredis</font>
<br>
<br><font size=3D2 face=3D"sans-serif">##############</font>
<br><font size=3D2 face=3D"sans-serif">SUMMARY =3D &quot;libhiredis&quot;</=
font>
<br><font size=3D2 face=3D"sans-serif">SECTION =3D &quot;lib&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LICENSE =3D &quot;MIT&quot;</font>
<br><font size=3D2 face=3D"sans-serif">LIC=5FFILES=5FCHKSUM =3D &quot;</fon=
t><a href=3D"file://COPYING;md5=3Dd84d659a35c666d23233e54503aaea51/"><font =
size=3D2 color=3Dblue face=3D"sans-serif">file://COPYING;md5=3Dd84d659a35c6=
66d23233e54503aaea51</font></a><font size=3D2 face=3D"sans-serif">&quot;</f=
ont>
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
<br><font size=3D2 face=3D"sans-serif"># error handleing</font>
<br><font size=3D2 face=3D"sans-serif"># @PREFIX: set the path from /usr/lo=
cal
to /usr/</font>
<br><font size=3D2 face=3D"sans-serif"># @INSTALL: set the copy instruction
from &quot;cp -a&quot; to &quot;cp -r&quot;</font>
<br><font size=3D2 face=3D"sans-serif">EXTRA=5FOEMAKE =3D &quot;'PREFIX=3D$=
{prefix}'
'INSTALL=3D''cp -r'''&quot;</font>
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
<br><font size=3D2 face=3D"sans-serif">##############</font>
<br>
<br><font size=3D2 face=3D"sans-serif">regards</font>
<br><font size=3D2 face=3D"sans-serif"><br>
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
&lt;yocto@yoctoproject.org&gt;, YUKATHARSANI JEYACHANDRA &lt;yukatharsanij@=
tataelxsi.co.in&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">29.04.2016 10:59</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: Re: [yocto]
Antwort: Re: how to configure the build packages of a makefile based libary=
</font>
<br>
<hr noshade>
<br>
<br>
<br><font size=3D3>Hi Stefan,</font>
<br>
<br><font size=3D3>So close :) &nbsp;Some more points:</font>
<br>
<br><font size=3D3>On 29 April 2016 at 08:54, &lt;</font><a href=3D"mailto:=
S.Jaritz@esa-grimma.de"><font size=3D3 color=3Dblue><u>S.Jaritz@esa-grimma.=
de</u></font></a><font size=3D3>&gt;
wrote:<br>
&gt; LICENSE =3D &quot;COPYING&quot;<br>
<br>
This should be the name of the license itself, not the filename.&nbsp;
Looks a bit like MIT to me.<br>
&nbsp;<br>
&gt; LIC=5FFILES=5FCHKSUM =3D &quot;</font><a href=3Dfile://$/><font size=
=3D3>file://$</font></a><font size=3D3>{WORKDIR}/git/COPYING;md5=3Dd84d659a=
35c666d23233e54503aaea51&quot;</font>
<br>
<br><font size=3D3>This URI is relative to ${S} so you can just do </font><=
a href=3D"file://COPYING;md5=3D.../"><font size=3D3>file://COPYING;md5=3D..=
.</font></a><font size=3D3>.</font>
<br><font size=3D3>&nbsp;</font>
<br><font size=3D2 face=3D"sans-serif">&gt; EXTRA=5FOEMAKE =3D &quot;'PREFI=
X=3D/usr/'&quot;</font><font size=3D2>&nbsp;</font>
<br>
<br><font size=3D2>Use PREFIX=3D${prefix} to respect the what the distro has
configured.&nbsp; Annoyingly you can't override the other paths such a
libdir easily, so this will break in multilib configurations or if I recall
correctly, on aarch64.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The commandline outputs:</font><font=
 size=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
#############</font><font size=3D3> </font><font size=3D2 face=3D"sans-seri=
f"><br>
NOTE: Executing RunQueue Tasks</font><font size=3D3> </font><font size=3D2 =
face=3D"sans-serif"><br>
WARNING: QA Issue: libhiredis: /libhiredis-staticdev/usr/lib/libhiredis.a
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font><font size=
=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
WARNING: QA Issue: libhiredis: /libhiredis/usr/lib/libhiredis.so.0.13 is
owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font><font size=
=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
WARNING: QA Issue: libhiredis: /libhiredis-dev/usr/lib/pkgconfig/hiredis.pc
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font><font size=
=3D3>
</font><font size=3D2 face=3D"sans-serif"><br>
#############&nbsp;</font><font size=3D3>&nbsp;</font>
<br>
<br><font size=3D3>The upstream Makefile is using &quot;cp -a&quot; which
preserves ownership, so as you built the package the files are owned by
you.&nbsp; Luckily you can override this by passing &quot;INSTALL=3D'cp -r'
to the make install (they use cp to recursively copy directories, so you
need to pass -r instead).</font>
<br>
<br><font size=3D3>I've a recipe locally with these changes and it builds
without warnings and is packaged correctly.</font>
<br>
<br><font size=3D3>This is what happens when maintainers think autotools
is too complicated and a bare makefile is just fine: they do it wrong.
:)</font>
<br>
<br><font size=3D3>Ross</font>
<br>

--=_alternative 0036E30EC1257FA4_=--
