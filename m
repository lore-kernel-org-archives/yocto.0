Return-Path: <S.Jaritz@esa-grimma.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55BA4E00DE1; Thu, 28 Apr 2016 09:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from gse01.esa-grimma.de (gse01.esa-grimma.de [62.41.26.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D1C5E00DDA
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:09:57 -0700 (PDT)
In-Reply-To: <CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
X-KeepSent: 93501CEC:24CA3D84-C1257FA3:00576A53;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0 March 08, 2013
Message-ID: <OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
From: S.Jaritz@esa-grimma.de
Date: Thu, 28 Apr 2016 18:09:53 +0200
X-MIMETrack: Serialize by Router on GSE01/Server/ESA-Grimma/DE(Release
	9.0.1FP3 HF42|February 03, 2015) at 28.04.2016 18:10:00,
	Serialize complete at 28.04.2016 18:10:00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 16:10:04 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0058CC3AC1257FA3_="

--=_alternative 0058CC3AC1257FA3_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hej

sorry - that does not work. Maybe you can show me some working/common=20
code.

Do I have to create the FILE=5F${PV} or/and FILE=5F${PV}-dev,=20
FILE=5F${PV}-static?

The builded files go into the Git dir & the autotools-brokensep is=20
generating the package dir. I repeat my question: What are the commands in =

the bb file to build the packages (release, static, dev, whatever ...)?

Sorry - I do not understand at all the steps and theire parameters to=20
build a libary. Is there somewhere an example given?

Below my bb file and the console error print.

#### libhiredis ####
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
FILES=5F${PN} +=3D "/user/local"
########

### consol error ###
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
########
Mit freundlichen Gr=FC=DFen

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

--=_alternative 0058CC3AC1257FA3_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<font size=3D2 face=3D"sans-serif">Hej</font>
<br>
<br><font size=3D2 face=3D"sans-serif">sorry - that does not work. Maybe you
can show me some working/common code.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Do I have to create the FILE=5F${PV}=
 or/and
FILE=5F${PV}-dev, FILE=5F${PV}-static?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">The builded files go into the Git dir
&amp; the autotools-brokensep is generating the package dir. I repeat my
question: What are the commands in the bb file to build the packages (relea=
se,
static, dev, whatever ...)?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Sorry - I do not understand at all t=
he
steps and theire parameters to build a libary. Is there somewhere an example
given?</font>
<br>
<br><font size=3D2 face=3D"sans-serif">Below my bb file and the console err=
or
print.</font>
<br>
<br><font size=3D2 face=3D"sans-serif">#### libhiredis ####</font>
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
<br><font size=3D2 face=3D"sans-serif">FILES=5F${PN} +=3D &quot;/user/local=
&quot;</font>
<br><font size=3D2 face=3D"sans-serif">########</font>
<br>
<br><font size=3D2 face=3D"sans-serif">### consol error ###</font>
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
<br><font size=3D2 face=3D"sans-serif">########</font>
<br><font size=3D2 face=3D"sans-serif">Mit freundlichen Gr=FC=DFen<br>
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

--=_alternative 0058CC3AC1257FA3_=--
