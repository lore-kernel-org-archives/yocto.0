Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E510E00953; Mon,  8 Dec 2014 01:35:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBE25E008AA
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 01:35:34 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2014 01:35:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,537,1413270000"; 
	d="scan'208,217";a="620310098"
Received: from pgsmsx106.gar.corp.intel.com ([10.221.44.98])
	by orsmga001.jf.intel.com with ESMTP; 08 Dec 2014 01:35:32 -0800
Received: from pgsmsx102.gar.corp.intel.com (10.221.44.80) by
	pgsmsx106.gar.corp.intel.com (10.221.44.98) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 8 Dec 2014 17:35:31 +0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.62]) by
	PGSMSX102.gar.corp.intel.com ([169.254.6.7]) with mapi id
	14.03.0195.001; Mon, 8 Dec 2014 17:35:31 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Need guidance on compiling clang+rt-compiler+llvm 3.3
Thread-Index: AdASyJvQd99LljA7QCeZqKT6ZG68eg==
Date: Mon, 8 Dec 2014 09:35:31 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "'yuchankit@gmail.com'" <yuchankit@gmail.com>
Subject: Need guidance on compiling clang+rt-compiler+llvm 3.3
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
X-List-Received-Date: Mon, 08 Dec 2014 09:35:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_"

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Before I go to my errors let me outline the steps I took.

I started off with the LLVM recipe that I got from http://cgit.openembedded=
.org/meta-openembedded/tree/meta-oe/recipes-core/llvm . Then I added the fo=
llowing to llvm.inc's do_configure_prepend() because I wanted to compile Cl=
ang, rt-compiler and Clang tools together with LLVM. I also added the SRC_U=
RI and Licensing for all of them but I don't think that's the main issue he=
re:

mv ${WORKDIR}/cfe-${PV}.src ${S}/tools/clang
mv ${WORKDIR}/compiler-rt-${PV}.src ${S}/projects/compiler-rt
mv ${WORKDIR}/clang-tools-extra-${PV}.src ${S}/tools/clang/extra

The three lines copies the extracted files to the source directory because =
that's the way the LLVM does it according to http://clang.llvm.org/get_star=
ted.html .

The compilation went well but I got "Files/directories were installed but n=
ot shipped error".  The log is at http://pastebin.com/e831Ex9E .

I then tried to add the install -d ${D}${libdir}/clang to do_install() func=
tion but no good..hence my reason of posting here to have more eyes looking=
 at this.

Let me know if you need more info.

Thanks,
Chan Kit

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Before I go to my errors let me outline the steps I =
took.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I started off with the LLVM recipe that I got from <=
a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recip=
es-core/llvm">
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/ll=
vm</a> . Then I added the following to llvm.inc&#8217;s do_configure_prepen=
d() because I wanted to compile Clang, rt-compiler and Clang tools together=
 with LLVM. I also added the SRC_URI and
 Licensing for all of them but I don&#8217;t think that&#8217;s the main is=
sue here:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">mv ${WORKDIR}/cfe-${PV}.src ${S}/tools/clang<o:p></o=
:p></p>
<p class=3D"MsoNormal">mv ${WORKDIR}/compiler-rt-${PV}.src ${S}/projects/co=
mpiler-rt<o:p></o:p></p>
<p class=3D"MsoNormal">mv ${WORKDIR}/clang-tools-extra-${PV}.src ${S}/tools=
/clang/extra<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The three lines copies the extracted files to the so=
urce directory because that&#8217;s the way the LLVM does it according to
<a href=3D"http://clang.llvm.org/get_started.html">http://clang.llvm.org/ge=
t_started.html</a> .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The compilation went well but I got &#8220;Files/dir=
ectories were installed but not shipped error&#8221;. &nbsp;The log is at
<a href=3D"http://pastebin.com/e831Ex9E">http://pastebin.com/e831Ex9E</a> .=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I then tried to add the install -d ${D}${libdir}/cla=
ng to do_install() function but no good..hence my reason of posting here to=
 have more eyes looking at this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Let me know if you need more info.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Chan Kit<o:p></o:p></p>
</div>
</body>
</html>

--_000_0E4D391FE2BDEC45AA0B4E32D6BD598A24E0B9PGSMSX101garcorpi_--
