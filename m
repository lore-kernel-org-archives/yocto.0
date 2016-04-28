Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E022DE00DE4; Thu, 28 Apr 2016 09:33:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.124.121 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 893 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Apr 2016 09:33:22 PDT
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-hk2apc01on0121.outbound.protection.outlook.com
	[104.47.124.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F7FE00DE1
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=LrR7sCC/Ei0pnkrYzObSa+hrSAgB1WURWQf4zej6r44=;
	b=j9MPf6puxT9QdfkaVM7l+bwFpMio7q2Esloy0xkMJ6VJn2ffKtLhDDmjNpF4+qdMlfYuHfvTnVA03aau9OJbb9rk5/T4OuT1+4uP2nxew54SQUyXSeIh8+1mVQXLoe91Ereo8h482ujwOYhv968DsyYDd50xSHLp517woxpJGRM=
Received: from SIXPR04MB0668.apcprd04.prod.outlook.com (10.162.175.143) by
	SIXPR04MB0666.apcprd04.prod.outlook.com (10.162.175.141) with Microsoft
	SMTP Server (TLS) id 15.1.477.8; Thu, 28 Apr 2016 16:18:28 +0000
Received: from SIXPR04MB0668.apcprd04.prod.outlook.com ([10.162.175.143]) by
	SIXPR04MB0668.apcprd04.prod.outlook.com ([10.162.175.143]) with mapi id
	15.01.0477.014; Thu, 28 Apr 2016 16:18:28 +0000
From: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
To: "S.Jaritz@esa-grimma.de" <S.Jaritz@esa-grimma.de>, "Burton, Ross"
	<ross.burton@intel.com>
Thread-Topic: [yocto] Antwort: Re: how to configure the build packages of a
	makefile based libary
Thread-Index: AQHRoWixIYs+Eamsr02AP+avFLgoa5+fj+j0
Date: Thu, 28 Apr 2016 16:18:26 +0000
Message-ID: <SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>,
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
In-Reply-To: <OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: esa-grimma.de; dkim=none (message not signed)
	header.d=none;esa-grimma.de; dmarc=none action=none
	header.from=tataelxsi.co.in;
x-originating-ip: [2001:558:1400:31:1a03:73ff:febf:2b72]
x-ms-office365-filtering-correlation-id: 1977c5df-c9f3-4483-9601-08d36f80bb77
x-microsoft-exchange-diagnostics: 1; SIXPR04MB0666;
	5:WJB+30mzfo0kN8KR7i0+EBH2k4JZ1ynhtVrnVG14HdLrbd8vKwzB1qFPvJK3VdPQqmtKmERjQn2ua/r1D08ZGXqNZqFGNYgge4h4nym2tfg0Ni6HchPSSur5+WOXNFkmymAmevlRCQDlh8+0ZxDDCg==;
	24:L+U5p5o26ybzu6URPp1F97OzJlEz4+1jyTLXoDg6RbMdiX2obRFg93447OT5hF0CYgnZ/ABRLD4dPpMNKJIN/aTx21lOvwAlRJK3H8kqz94=;
	7:R8yFY7cbEQFMoHnyBABDC9QMDkzr7he91+qX8b6EWQfTyq1yWDEDrkbVa1BLbhEhHEnBDVl5jXvNsxixA5ej6HHnk2qITwQ+pcN4ST7R/PzJELcVBVcaS1xa2mzzOpRcjppIEfmJ9hVZ7zGgdBRtzY7G1tsCEmAXOAqqHZVN/52gmhm6UGT2ZTkjdHTkPRaK
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR04MB0666;
x-microsoft-antispam-prvs: <SIXPR04MB0666DBEB57A9D07EE26B6CCFEC650@SIXPR04MB0666.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:SIXPR04MB0666; BCL:0; PCL:0; RULEID:; SRVR:SIXPR04MB0666; 
x-forefront-prvs: 0926B0E013
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(377454003)(252514010)(2950100001)(2900100001)(189998001)(5008740100001)(50986999)(76176999)(74316001)(54356999)(93886004)(92566002)(3280700002)(10400500002)(5001770100001)(2501003)(5002640100001)(74482002)(16236675004)(77096005)(9686002)(3660700001)(87936001)(5003600100002)(81166005)(86362001)(11100500001)(5004730100002)(33656002)(1220700001)(19625215002)(122556002)(4326007)(19580405001)(19580395003)(6116002)(2906002)(102836003)(586003)(76576001)(1096002)(19627405001)(106116001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SIXPR04MB0666;
	H:SIXPR04MB0668.apcprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2016 16:18:26.4794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR04MB0666
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 16:33:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SIXPR04MB0668640023EA6AFE4596C0ADEC650SIXPR04MB0668apcp_"

--_000_SIXPR04MB0668640023EA6AFE4596C0ADEC650SIXPR04MB0668apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


Use INSANE_SKIP_${PN} =3D "installed-vs-shipped"  in your recipe to avoid t=
his error. Orelse, add FILES_${PN} +=3D "/usr/local/" in your recipe.


Thanks and Regards,

Yukatharsani J.

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of S.Jaritz@esa-grimma.de <S.Jaritz@esa-grimma.de>
Sent: Thursday, April 28, 2016 12:09:53 PM
To: Burton, Ross
Cc: yocto@yoctoproject.org
Subject: [yocto] Antwort: Re: how to configure the build packages of a make=
file based libary

Hej

sorry - that does not work. Maybe you can show me some working/common code.

Do I have to create the FILE_${PV} or/and FILE_${PV}-dev, FILE_${PV}-static=
?

The builded files go into the Git dir & the autotools-brokensep is generati=
ng the package dir. I repeat my question: What are the commands in the bb f=
ile to build the packages (release, static, dev, whatever ...)?

Sorry - I do not understand at all the steps and theire parameters to build=
 a libary. Is there somewhere an example given?

Below my bb file and the console error print.

#### libhiredis ####
SUMMARY =3D "libhiredis"
SECTION =3D "sek4"
LICENSE =3D "COPYING"
LIC_FILES_CHKSUM =3D "file://$<file://$/>{WORKDIR}/git/COPYING;md5=3Dd84d65=
9a35c666d23233e54503aaea51"

# 0.13.3
# SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
SRC_URI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"

S =3D "${WORKDIR}/git/"

# we need to pass the Cxx parameter extra to the make call
EXTRA_OEMAKE =3D "'CC=3D${CC}' 'RANLIB=3D${RANLIB}' 'AR=3D${AR}' 'CFLAGS=3D=
${CFLAGS} -I${S}/include' 'BUILDDIR=3D${S}' 'DESTDIR=3D${D}'"

inherit autotools-brokensep

do_compile() {
        oe_runmake all 'CC=3D${CC}'
}

do_install() {
        oe_runmake install 'DESTDIR=3D${D}'
}
FILES_${PN} +=3D "/user/local"
########

### consol error ###
ERROR: QA Issue: libhiredis: Files/directories were installed but not shipp=
ed in any package:
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
are unneeded, avoid installing them or delete them within do_install.
libhiredis: 24 installed and not shipped files. [installed-vs-shipped]
NOTE: Tasks Summary: Attempted 388 tasks of which 375 didn't need to be rer=
un and all succeeded.
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


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are
not the intended recipient (or have received this e-mail in error) please
notify the sender immediately and destroy this e-mail. Any unauthorized
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

--_000_SIXPR04MB0668640023EA6AFE4596C0ADEC650SIXPR04MB0668apcp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,</p>
<p><br>
</p>
<p>Use INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;&nbsp; in your=
 recipe to avoid this error. Orelse, add FILES_${PN} &#43;=3D &quot;/usr/lo=
cal/&quot; in your recipe.</p>
<p><br>
</p>
<p>Thanks and Regards,</p>
<p>Yukatharsani J.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of S.Jaritz@esa-=
grimma.de &lt;S.Jaritz@esa-grimma.de&gt;<br>
<b>Sent:</b> Thursday, April 28, 2016 12:09:53 PM<br>
<b>To:</b> Burton, Ross<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Antwort: Re: how to configure the build packages of=
 a makefile based libary</font>
<div>&nbsp;</div>
</div>
<div><font size=3D"2" face=3D"sans-serif">Hej</font> <br>
<br>
<font size=3D"2" face=3D"sans-serif">sorry - that does not work. Maybe you =
can show me some working/common code.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Do I have to create the FILE_${PV} or/=
and FILE_${PV}-dev, FILE_${PV}-static?</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">The builded files go into the Git dir =
&amp; the autotools-brokensep is generating the package dir. I repeat my qu=
estion: What are the commands in the bb file to build the packages (release=
, static, dev, whatever ...)?</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Sorry - I do not understand at all the=
 steps and theire parameters to build a libary. Is there somewhere an examp=
le given?</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">Below my bb file and the console error=
 print.</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">#### libhiredis ####</font> <br>
<font size=3D"2" face=3D"sans-serif">SUMMARY =3D &quot;libhiredis&quot;</fo=
nt> <br>
<font size=3D"2" face=3D"sans-serif">SECTION =3D &quot;sek4&quot;</font> <b=
r>
<font size=3D"2" face=3D"sans-serif">LICENSE =3D &quot;COPYING&quot;</font>=
 <br>
<font size=3D"2" face=3D"sans-serif">LIC_FILES_CHKSUM =3D &quot;</font><a h=
ref=3D"file://$/"><font size=3D"2" color=3D"blue" face=3D"sans-serif">file:=
//$</font></a><font size=3D"2" face=3D"sans-serif">{WORKDIR}/git/COPYING;md=
5=3Dd84d659a35c666d23233e54503aaea51&quot;</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif"># 0.13.3</font> <br>
<font size=3D"2" face=3D"sans-serif"># SRCREV =3D &quot;010756025e8cefd1bc6=
6c6d4ed3b1648ef6f1f95&quot;</font>
<br>
<font size=3D"2" face=3D"sans-serif">SRC_URI =3D &quot;git://github.com/red=
is/hiredis.git;rev=3Dv0.13.3&quot;</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">S =3D &quot;${WORKDIR}/git/&quot;</fon=
t> <br>
<br>
<font size=3D"2" face=3D"sans-serif"># we need to pass the Cxx parameter ex=
tra to the make call</font>
<br>
<font size=3D"2" face=3D"sans-serif">EXTRA_OEMAKE =3D &quot;'CC=3D${CC}' 'R=
ANLIB=3D${RANLIB}' 'AR=3D${AR}' 'CFLAGS=3D${CFLAGS} -I${S}/include' 'BUILDD=
IR=3D${S}' 'DESTDIR=3D${D}'&quot;</font>
<br>
<br>
<font size=3D"2" face=3D"sans-serif">inherit autotools-brokensep</font> <br=
>
<br>
<font size=3D"2" face=3D"sans-serif">do_compile() {</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; oe_runmake=
 all 'CC=3D${CC}'</font> <br>
<font size=3D"2" face=3D"sans-serif">}</font> <br>
<br>
<font size=3D"2" face=3D"sans-serif">do_install() {</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; oe_runmake=
 install 'DESTDIR=3D${D}'</font>
<br>
<font size=3D"2" face=3D"sans-serif">}</font> <br>
<font size=3D"2" face=3D"sans-serif">FILES_${PN} &#43;=3D &quot;/user/local=
&quot;</font> <br>
<font size=3D"2" face=3D"sans-serif">########</font> <br>
<br>
<font size=3D"2" face=3D"sans-serif">### consol error ###</font> <br>
<font size=3D"2" face=3D"sans-serif">ERROR: QA Issue: libhiredis: Files/dir=
ectories were installed but not shipped in any package:</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/libhiredis.so</f=
ont> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/libhiredis.so.0.=
13</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/libhiredis.a</fo=
nt> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/.debug</font> <b=
r>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/pkgconfig</font>=
 <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/.debug/libhiredi=
s.so.0.13</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/lib/pkgconfig/hiredi=
s.pc</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis</fon=
t> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/sds.=
h</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/read=
.h</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/asyn=
c.h</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/hire=
dis.h</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters</font> <br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/glib.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/macosx.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/libev.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/libevent.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/qt.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/libuv.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/ae.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">&nbsp; /usr/local/include/hiredis/adap=
ters/ivykis.h</font>
<br>
<font size=3D"2" face=3D"sans-serif">Please set FILES such that these items=
 are packaged. Alternatively if they are unneeded, avoid installing them or=
 delete them within do_install.</font>
<br>
<font size=3D"2" face=3D"sans-serif">libhiredis: 24 installed and not shipp=
ed files. [installed-vs-shipped]</font>
<br>
<font size=3D"2" face=3D"sans-serif">NOTE: Tasks Summary: Attempted 388 tas=
ks of which 375 didn't need to be rerun and all succeeded.</font>
<br>
<font size=3D"2" face=3D"sans-serif">########</font> <br>
<font size=3D"2" face=3D"sans-serif">Mit freundlichen Gr=FC=DFen<br>
<br>
Stefan Jaritz<br>
Entwickler<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: &#43;49 3437 9211 176<br>
Telefax: &#43;49 3437 9211 26<br>
E-Mail: s.jaritz@esa-grimma.de<br>
Internet: </font><a href=3D"www.esa-grimma.de"><font size=3D"2" face=3D"san=
s-serif">www.esa-grimma.de</font></a><font size=3D"2" face=3D"sans-serif"><=
br>
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
tionen. <br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese <b=
r>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are <br>
not the intended recipient (or have received this e-mail in error) please <=
br>
notify the sender immediately and destroy this e-mail. Any unauthorized <br=
>
copying, disclosure or distribution of the material in this e-mail is stric=
tly <br>
forbidden.</font></div>
</body>
</html>

--_000_SIXPR04MB0668640023EA6AFE4596C0ADEC650SIXPR04MB0668apcp_--
