Return-Path: <khanbahjat@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89F74E0094C; Thu, 27 Apr 2017 04:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (khanbahjat[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.72.65 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 58931 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Apr 2017 04:23:52 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072065.outbound.protection.outlook.com [40.92.72.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D0C3E00812
	for <yocto@yoctoproject.org>; Thu, 27 Apr 2017 04:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=09+Tj05Uxxjbv0//TUbMoF6tVA5/cCH2fjIFnz42KBM=;
	b=lKt8VP17V+kSn4FlB8XoEcYIb0KL+u+xq0npDfWUAM4gqR5wmvTdmkmtFCduSVpWY9ll67ndLkC1YunshgHcvBNRcvPZpU338sQjcaDiaNUGNdTCsF3wbEVHMt63LSJwy2tn9YimbSCmyUjqNeSJuLhpyva3wjhiHAv3Pt/xTwhWaEkR9QAC95/Xu3A45uMJ0SKG5v6y3bOFRV+rGd2fzsLgJSOQnV8xDz1jKRwMwtuuIfofAtw/fxxBReGcG/CBb4Pv3Tc2mMO67FdE8iFNF8HA56QLJTg32lgGbBTARPbgtaLsoaUAX2m1WtCqmCGd2R4fSkZ2Dfe8MFmBQgVT4Q==
Received: from VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
	(10.152.18.55) by VE1EUR03HT016.eop-EUR03.prod.protection.outlook.com
	(10.152.18.190) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1047.9;
	Wed, 26 Apr 2017 18:47:22 +0000
Received: from AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM (10.152.18.58) by
	VE1EUR03FT006.mail.protection.outlook.com (10.152.18.116) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.9 via Frontend Transport; Wed, 26 Apr 2017 18:47:23 +0000
Received: from AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM
	([fe80::840:1e07:be6:67b9]) by
	AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM
	([fe80::840:1e07:be6:67b9%15]) with mapi id 15.01.1047.019;
	Wed, 26 Apr 2017 18:47:23 +0000
From: bahjat khan <khanbahjat@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: fbida issue 
Thread-Index: AQHSvrx55C78VbE3pESZwREn3+TLLQ==
Date: Wed, 26 Apr 2017 18:47:23 +0000
Message-ID: <AM4PR1001MB13470C7F5A5BFC47B59B3783D7110@AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:28952514FA5661C7952AF602720D4C8D6949A1B282B253038B76E91AE6317583;
	UpperCasedChecksum:A4E4560D964961804703B3AB7AAF8EF883E9C1C07B574817D821C42B724B4422;
	SizeAsReceived:7891; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [UiZ2EnHeouWLJ+iAa9tLB1yXW9YoEIF9]
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT016;
	5:Xbet8yjGBEHZpeOwKsRS/cEH+2muNgfsWKDMNziLU+p/gKjtBQFEdCdbqjpbKA4EYmpguMpXu1FyqnPOnVKl2sP1+jZ3mqtBAkj+DBL1do2INBVhTNnpg/aLbJMw4NcqGRQqJNvZG3IAfBz9BihVlA==;
	24:oaCiSuaBZr7aqGJAvOUX0DqvlzwW2ZfiKc4KsYqVdwDELQmnbDL1MGqPkOsCGHdGwttKd60o15p/ZDzT6g0D79tIhYQciA8WTnXdsrTg+NY=;
	7:Te89ztG+sL41WHR/PYb6a4bydDxR+WtilV7FLDzMT6ny5EQFK9PhVxgL6EiaVLmhd22g5e5qcsYLUmy3vq1GBBOUBmm8D4ut/mRcRkdXJGR/YNxF55LhW2ysHAB1KI+H3hFM7ded2v1n+MBfDyNuaLPXsWWcny2XP5VLcjhAWrahM0DLkYRaThqsyVOhGu+tWWJdLJKY3Ok6j7wsN1yedoYwOPf/uAXwoypgtLxH6oXCFLRx2O+P9MhAG7RFZ7f0cst+/NIMOGjz02jIQwv+WpD4GZYFEkT1EesOUbbMA6gMiVNu8skVVtRAySQ8q7x4
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR03HT016;
	H:AM4PR1001MB1347.EURPRD10.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: f4464a86-e4ad-4431-196f-08d48cd4ad39
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045);
	SRVR:VE1EUR03HT016; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:VE1EUR03HT016; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT016; 
x-forefront-prvs: 0289B6431E
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2017 18:47:23.2057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT016
Subject: fbida issue
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
X-List-Received-Date: Thu, 27 Apr 2017 11:23:57 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_AM4PR1001MB13470C7F5A5BFC47B59B3783D7110AM4PR1001MB1347_"

--_000_AM4PR1001MB13470C7F5A5BFC47B59B3783D7110AM4PR1001MB1347_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to build a Yocto image for a kabylake processor. I keep on runni=
ng into this issue

ERROR: Nothing RPROVIDES 'fbida' (but /home/builder/project/prop/build/../m=
eta-cusotom/recipes-custome/images/custom-image-full.bb RDEPENDS on or othe=
rwise requires it)
ERROR: fbida was skipped: Recipe is blacklisted: Fails to build with RSS ht=
tp://errors.yoctoproject.org/Errors/Details/130677/ - the recipe will be re=
moved on 2017-09-01 unless the issue is fixed

Anyone have any idea how i can fix this?

I'm not sure what to do from here, i can see the recipe, it is located in m=
eta-openembedded/meta-oe/recipes-graphics/fbida/fbida_2.10.bb. It is below:

The contents of the recipe are below
SUMMARY =3D "Framebuffer image and doc viewer tools"
DESCRIPTION =3D "The fbida project contains a few applications for viewing =
and editing images, \
               with the main focus being photos."
HOMEPAGE =3D "http://linux.bytesex.org/fbida/"
AUTHOR =3D "Gerd Hoffmann"
SECTION =3D "utils"

LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D8ca43cbc842c2336e835926c2166c28b=
"

DEPENDS =3D "virtual/libiconv jpeg fontconfig freetype libexif"

SRC_URI =3D "https://www.kraxel.org/releases/fbida/fbida-${PV}.tar.gz \
  file://0001-Avoid-using-host-path.patch \
  "
SRC_URI[md5sum] =3D "09460b964b58c2e39b665498eca29018"
SRC_URI[sha256sum] =3D "7a5a3aac61b40a6a2bbf716d270a46e2f8e8d5c97e314e927d4=
1398a4d0b6cb6"

B =3D "${WORKDIR}/build"

EXTRA_OEMAKE =3D "STRIP=3D 'srcdir=3D${S}' -f ${S}/GNUmakefile"

PACKAGECONFIG ??=3D "gif png curl"
PACKAGECONFIG[curl] =3D ",,curl"
PACKAGECONFIG[gif] =3D ",,giflib"
PACKAGECONFIG[png] =3D ",,libpng"
PACKAGECONFIG[tiff] =3D ",,tiff"
PACKAGECONFIG[motif] =3D ",,libx11 libxext libxpm libxt openmotif"
PACKAGECONFIG[webp] =3D ",,libwebp"
PACKAGECONFIG[lirc] =3D ",,lirc"

do_compile() {
    sed -i -e 's# fbgs# \$(srcdir)/fbgs#; s#-Ijpeg#-I\$(srcdir)/jpeg#; s# j=
peg/# \$(srcdir)/jpeg/#' ${S}/GNUmakefile
    sed -i -e 's:/sbin/ldconfig:echo x:' ${S}/mk/Autoconf.mk
    sed -i -e 's: cpp: ${TARGET_PREFIX}cpp -I${STAGING_INCDIR}:' ${S}/GNUma=
kefile

    # Be sure to respect preferences (force to "no")
    # Also avoid issues when ${BUILD_ARCH} =3D=3D ${HOST_ARCH}
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'curl', d)}" ]; then
        sed -i -e '/^HAVE_LIBCURL/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'gif', d)}" ]; then
        sed -i -e '/^HAVE_LIBGIF/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'png', d)}" ]; then
        sed -i -e '/^HAVE_LIBPNG/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'tiff', d)}" ]; then
        sed -i -e '/^HAVE_LIBTIFF/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'motif', d)}" ]; then
        sed -i -e '/^HAVE_MOTIF/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'webp', d)}" ]; then
        sed -i -e '/^HAVE_LIBWEBP/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi
    if [ -z "${@bb.utils.filter('PACKAGECONFIG', 'lirc', d)}" ]; then
        sed -i -e '/^HAVE_LIBLIRC/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile
    fi

    oe_runmake
}

do_install() {
    oe_runmake 'DESTDIR=3D${D}' install
}

RDEPENDS_${PN} =3D "ttf-dejavu-sans-mono bash"

PNBLACKLIST[fbida] ?=3D "Fails to build with RSS http://errors.yoctoproject=
.org/Errors/Details/130677/ - the recipe will be removed on 2017-09-01 unle=
ss the issue is fixed"




--_000_AM4PR1001MB13470C7F5A5BFC47B59B3783D7110AM4PR1001MB1347_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>I'm trying to build a Yocto image for a kabylake processor. I keep on ru=
nning into this issue&nbsp;</p>
<div><i><span style=3D"background-color: rgb(255, 0, 0);">ERROR: Nothing RP=
ROVIDES 'fbida' (but /home/builder/project/prop/build/../meta-</span><span =
style=3D"background-color: rgb(255, 0, 0);">cusotom</span><span style=3D"ba=
ckground-color: rgb(255, 0, 0);">/recipes-</span><span style=3D"background-=
color: rgb(255, 0, 0);">custome</span><span style=3D"background-color: rgb(=
255, 0, 0);">/images/</span><span style=3D"background-color: rgb(255, 0, 0)=
;">custom</span><span style=3D"background-color: rgb(255, 0, 0);">-image-fu=
ll.bb
 RDEPENDS on or otherwise requires it)</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 0, 0);">E<span style=3D"b=
ackground-color: rgb(255, 0, 0);">RROR: fbida was skipped: Recipe is blackl=
isted: Fails to build with RSS http://errors.yoctoproject.org/Errors/Detail=
s/130677/ - the recipe will be removed
 on 2017-09-01 unless the</span></span><span style=3D"background-color: rgb=
(255, 0, 0);"> issue is fixed</span></i></div>
<div><br>
</div>
<div>Anyone have any idea how i can fix this?</div>
<div><br>
</div>
<div>I'm not sure what to do from here, i can see the recipe, it is located=
 in&nbsp;<span>meta-openembedded/meta-oe/recipes-graphics/fbida/fbida_2.10.=
bb. It is below:</span></div>
<div><span><i><br>
</i></span></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">The contents of=
 the recipe are below&nbsp;</span><br>
</i>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">SUMMARY =3D &qu=
ot;Framebuffer image and doc viewer tools&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">DESCRIPTION =3D=
 &quot;The fbida project contains a few applications for viewing and editin=
g images, \</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;with the main focus being photos.&q=
uot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">HOMEPAGE =3D &q=
uot;http://linux.bytesex.org/fbida/&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">AUTHOR =3D &quo=
t;Gerd Hoffmann&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">SECTION =3D &qu=
ot;utils&quot;</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">LICENSE =3D &qu=
ot;GPLv2&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">LIC_FILES_CHKSU=
M =3D &quot;file://COPYING;md5=3D8ca43cbc842c2336e835926c2166c28b&quot;</sp=
an></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">DEPENDS =3D &qu=
ot;virtual/libiconv jpeg fontconfig freetype libexif&quot;</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">SRC_URI =3D &qu=
ot;https://www.kraxel.org/releases/fbida/fbida-${PV}.tar.gz \</span></i></d=
iv>
<div><i><span class=3D"Apple-tab-span" style=3D"white-space: pre; backgroun=
d-color: rgb(255, 255, 0);"></span><span style=3D"background-color: rgb(255=
, 255, 0);">&nbsp; file://0001-Avoid-using-host-path.patch \</span></i></di=
v>
<div><i><span class=3D"Apple-tab-span" style=3D"white-space: pre; backgroun=
d-color: rgb(255, 255, 0);"></span><span style=3D"background-color: rgb(255=
, 255, 0);">&nbsp; &quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">SRC_URI[md5sum]=
 =3D &quot;09460b964b58c2e39b665498eca29018&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">SRC_URI[sha256s=
um] =3D &quot;7a5a3aac61b40a6a2bbf716d270a46e2f8e8d5c97e314e927d41398a4d0b6=
cb6&quot;</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">B =3D &quot;${W=
ORKDIR}/build&quot;</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">EXTRA_OEMAKE =
=3D &quot;STRIP=3D 'srcdir=3D${S}' -f ${S}/GNUmakefile&quot;</span></i></di=
v>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG ?=
?=3D &quot;gif png curl&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[c=
url] =3D &quot;,,curl&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[g=
if] =3D &quot;,,giflib&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[p=
ng] =3D &quot;,,libpng&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[t=
iff] =3D &quot;,,tiff&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[m=
otif] =3D &quot;,,libx11 libxext libxpm libxt openmotif&quot;</span></i></d=
iv>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[w=
ebp] =3D &quot;,,libwebp&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PACKAGECONFIG[l=
irc] =3D &quot;,,lirc&quot;</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">do_compile() {<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; s=
ed -i -e 's# fbgs# \$(srcdir)/fbgs#; s#-Ijpeg#-I\$(srcdir)/jpeg#; s# jpeg/#=
 \$(srcdir)/jpeg/#' ${S}/GNUmakefile</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; s=
ed -i -e 's:/sbin/ldconfig:echo x:' ${S}/mk/Autoconf.mk</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; s=
ed -i -e 's: cpp: ${TARGET_PREFIX}cpp -I${STAGING_INCDIR}:' ${S}/GNUmakefil=
e</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; #=
 Be sure to respect preferences (force to &quot;no&quot;)</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; #=
 Also avoid issues when ${BUILD_ARCH} =3D=3D ${HOST_ARCH}</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'curl', d)}&quot; ]; then<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_LIBCURL/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile=
</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'gif', d)}&quot; ]; then</=
span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_LIBGIF/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'png', d)}&quot; ]; then</=
span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_LIBPNG/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'tiff', d)}&quot; ]; then<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_LIBTIFF/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile=
</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'motif', d)}&quot; ]; then=
</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_MOTIF/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile</=
span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'webp', d)}&quot; ]; then<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_LIBWEBP/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile=
</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; i=
f [ -z &quot;${@bb.utils.filter('PACKAGECONFIG', 'lirc', d)}&quot; ]; then<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; &=
nbsp; &nbsp; sed -i -e '/^HAVE_LIBLIRC/s/:=3D.*$/:=3D no/' ${S}/GNUmakefile=
</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; f=
i</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; o=
e_runmake</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">}</span></i></d=
iv>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">do_install() {<=
/span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">&nbsp; &nbsp; o=
e_runmake 'DESTDIR=3D${D}' install</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">}</span></i></d=
iv>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">RDEPENDS_${PN} =
=3D &quot;ttf-dejavu-sans-mono bash&quot;</span></i></div>
<div><i><br>
</i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);">PNBLACKLIST[fbi=
da] ?=3D &quot;Fails to build with RSS http://errors.yoctoproject.org/Error=
s/Details/130677/ - the recipe will be removed on 2017-09-01 unless the iss=
ue is fixed&quot;</span></i></div>
<div><i><span style=3D"background-color: rgb(255, 255, 0);"><br>
</span></i></div>
<div><span style=3D"background-color: rgb(255, 255, 255);"></span><br>
</div>
<i></i><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_AM4PR1001MB13470C7F5A5BFC47B59B3783D7110AM4PR1001MB1347_--
