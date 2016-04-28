Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B99EE00DBC; Thu, 28 Apr 2016 05:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B2BE00DB7
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 05:09:50 -0700 (PDT)
In-Reply-To: <CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: 1318AFAF:4F1EB7F1-C1257FA3:0041651C;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 28 Apr 2016 14:09:47 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 28.04.2016 14:09:52,
	Serialize complete at 28.04.2016 14:09:52
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 12:09:55 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0042D0D1C1257FA3_="

--=_alternative 0042D0D1C1257FA3_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

The makefile has an install section. I relocated it with the ${D}. By=20
doing that I managed that the compiler filled the "package" directory. But =

there is still a packing issue.
Below is the log (and below of it is the libhiredis.bb).

Now my question: How to define the FILES variable for a proper packing?

#### log ######
NOTE: Executing RunQueue Tasks
WARNING: libhiredis: No generic license file exists for: COPYING in any=20
provider
ERROR: QA Issue: libhiredis: Files/directories were installed but not=20
shipped in any package:
  /usr/local
  /usr/local/lib
  /usr/local/include
  /usr/local/lib/libhiredis.so
  /usr/local/lib/libhiredis.so.0.13
  /usr/local/lib/libhiredis.a
  /usr/local/lib/.debug
  /usr/local/lib/pkgconfig
  /usr/local/lib/.debug/libhiredis.so.0.13
  /usr/local/lib/pkgconfig/hiredis.pc
  /usr/local/include/hiredis
  /usr/local/include/hiredis/sds.h
  /usr/local/include/hiredis/read.h
  /usr/local/include/hiredis/async.h
  /usr/local/include/hiredis/hiredis.h
  /usr/local/include/hiredis/adapters
  /usr/local/include/hiredis/adapters/glib.h
  /usr/local/include/hiredis/adapters/macosx.h
  /usr/local/include/hiredis/adapters/libev.h
  /usr/local/include/hiredis/adapters/libevent.h
  /usr/local/include/hiredis/adapters/qt.h
  /usr/local/include/hiredis/adapters/libuv.h
  /usr/local/include/hiredis/adapters/ae.h
  /usr/local/include/hiredis/adapters/ivykis.h
Please set FILES such that these items are packaged. Alternatively if they =

are unneeded, avoid installing them or delete them within do=5Finstall.
libhiredis: 24 installed and not shipped files. [installed-vs-shipped]
NOTE: Tasks Summary: Attempted 388 tasks of which 375 didn't need to be=20
rerun and all succeeded.

Summary: There were 2 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
#### end of log ######

#### libhiredis ######
SUMMARY =3D "libhiredis"
SECTION =3D "sek4"
LICENSE =3D "COPYING"
LIC=5FFILES=5FCHKSUM =3D "file://$
{WORKDIR}/git/COPYING;md5=3Dd84d659a35c666d23233e54503aaea51"

# 0.13.3
# SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
SRC=5FURI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"

S =3D "${WORKDIR}/git/"

# we need to pass the Cxx parameter extra to the make call
EXTRA=5FOEMAKE =3D "'CC=3D${CC}' 'RANLIB=3D${RANLIB}' 'AR=3D${AR}' 'CFLAGS=
=3D${CFLAGS}=20
-I${S}/include' 'BUILDDIR=3D${S}' 'DESTDIR=3D${D}'"

inherit autotools-brokensep

do=5Fcompile() {
        oe=5Frunmake all 'CC=3D${CC}'
}

do=5Finstall() {
        oe=5Frunmake install 'DESTDIR=3D${D}'
}
#### libhiredis of log ######


with kind regards

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
Kopie:  "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Datum:  28.04.2016 12:52
Betreff:        Re: [yocto] how to configure the build packages of a=20
makefile based libary




On 28 April 2016 at 10:50, <S.Jaritz@esa-grimma.de> wrote:
I like to include the hiredis library. I created a recipe and modified the =

EXTRA=5FOEMAKE. The compilation works (in the git directory object, "so" an=
d=20
"a" files are generated). But the generated files are not placed into=20
packages.=20

Any ideas?=20

You need to look at the makefile to see if it has an install target, and=20
if it does what it's called, and if it has a way of controlling where=20
files actually go (both respecting $prefix instead of /usr, and letting=20
you relocate via ${D} so it doesn't try and install to /usr on your build=20
machine).  If it does all of those right then you can write a do=5Finstall(=
)=20
that just calls the right make commands.  Chances are that it does=20
something wrong and it's easier to just write a do=5Finstall() that creates=
=20
directories and copies files manually.

This is why it doesn't happen automatically unless you're using something=20
like automake - there's no standard way.

Ross

--=_alternative 0042D0D1C1257FA3_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The makefile has an install section.
I relocated it with the ${D}. By doing that I managed that the compiler
filled the &quot;package&quot; directory. But there is still a packing
issue.</font>
<br><font size=3D2 face=3D"sans-serif">Below is the log (and below of it is
the libhiredis.bb).</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Now my question: How to define the F=
ILES
variable for a proper packing?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">#### log ######</font>
<br><font size=3D2 face=3D"sans-serif">NOTE: Executing RunQueue Tasks</font>
<br><font size=3D2 face=3D"sans-serif">WARNING: libhiredis: No generic lice=
nse
file exists for: COPYING in any provider</font>
<br><font size=3D2 face=3D"sans-serif">ERROR: QA Issue: libhiredis: Files/d=
irectories
were installed but not shipped in any package:</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/libhiredis.so<=
/font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/libhiredis.so.=
0.13</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/libhiredis.a</=
font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/.debug</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/pkgconfig</fon=
t>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/.debug/libhire=
dis.so.0.13</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/lib/pkgconfig/hire=
dis.pc</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis</f=
ont>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/sd=
s.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/re=
ad.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/as=
ync.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/hi=
redis.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/glib.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/macosx.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/libev.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/libevent.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/qt.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/libuv.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/ae.h</font>
<br><font size=3D2 face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/ad=
apters/ivykis.h</font>
<br><font size=3D2 face=3D"sans-serif">Please set FILES such that these ite=
ms
are packaged. Alternatively if they are unneeded, avoid installing them
or delete them within do=5Finstall.</font>
<br><font size=3D2 face=3D"sans-serif">libhiredis: 24 installed and not shi=
pped
files. [installed-vs-shipped]</font>
<br><font size=3D2 face=3D"sans-serif">NOTE: Tasks Summary: Attempted 388 t=
asks
of which 375 didn't need to be rerun and all succeeded.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Summary: There were 2 WARNING messag=
es
shown.</font>
<br><font size=3D2 face=3D"sans-serif">Summary: There was 1 ERROR message s=
hown,
returning a non-zero exit code.</font>
<br><font size=3D2 face=3D"sans-serif">#### end of log ######</font>
<br>
<br><font size=3D2 face=3D"sans-serif">#### libhiredis ######</font>
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
<br><font size=3D2 face=3D"sans-serif"># we need to pass the Cxx parameter
extra to the make call</font>
<br><font size=3D2 face=3D"sans-serif">EXTRA=5FOEMAKE =3D &quot;'CC=3D${CC}=
' 'RANLIB=3D${RANLIB}'
'AR=3D${AR}' 'CFLAGS=3D${CFLAGS} -I${S}/include' 'BUILDDIR=3D${S}' 'DESTDIR=
=3D${D}'&quot;</font>
<br>
<br><font size=3D2 face=3D"sans-serif">inherit autotools-brokensep</font>
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
<br><font size=3D2 face=3D"sans-serif">#### libhiredis of log ######</font>
<br>
<br>
<br><font size=3D2 face=3D"sans-serif">with kind regards<br>
<br>
Stefan Jaritz<br>
</font>
<br><font size=3D2 face=3D"sans-serif">Entwickler<br>
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
&lt;yocto@yoctoproject.org&gt;</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Datum: &nbsp; &nbsp;=
 &nbsp;
&nbsp;</font><font size=3D1 face=3D"sans-serif">28.04.2016 12:52</font>
<br><font size=3D1 color=3D#5f5f5f face=3D"sans-serif">Betreff: &nbsp; &nbs=
p;
&nbsp; &nbsp;</font><font size=3D1 face=3D"sans-serif">Re: [yocto]
how to configure the build packages of a makefile based libary</font>
<br>
<hr noshade>
<br>
<br>
<br>
<br><font size=3D3>On 28 April 2016 at 10:50, &lt;</font><a href=3D"mailto:=
S.Jaritz@esa-grimma.de" target=3D=5Fblank><font size=3D3 color=3Dblue><u>S.=
Jaritz@esa-grimma.de</u></font></a><font size=3D3>&gt;
wrote:</font>
<br><font size=3D2 face=3D"sans-serif">I like to include the hiredis librar=
y.
I created a recipe and modified the EXTRA=5FOEMAKE. The compilation works
(in the git directory object, &quot;so&quot; and &quot;a&quot; files are
generated). But the generated files are not placed into packages.</font><fo=
nt size=3D3>
<br>
</font><font size=3D2 face=3D"sans-serif"><br>
Any ideas?</font><font size=3D3> </font>
<br><font size=3D3><br>
You need to look at the makefile to see if it has an install target, and
if it does what it's called, and if it has a way of controlling where files
actually go (both respecting $prefix instead of /usr, and letting you reloc=
ate
via ${D} so it doesn't try and install to /usr on your build machine).&nbsp;
If it does all of those right then you can write a do=5Finstall() that just
calls the right make commands.&nbsp; Chances are that it does something
wrong and it's easier to just write a do=5Finstall() that creates directori=
es
and copies files manually.</font>
<br>
<br><font size=3D3>This is why it doesn't happen automatically unless you're
using something like automake - there's no standard way.</font>
<br>
<br><font size=3D3>Ross</font>
<br>

--=_alternative 0042D0D1C1257FA3_=--
