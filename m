Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33B3FE00830; Thu, 23 Oct 2014 17:09:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 630DDE0079E
	for <yocto@yoctoproject.org>; Thu, 23 Oct 2014 17:08:55 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AkYFAPOXSVTGmAcV/2dsb2JhbABcgkgjIyA0XMxWHwEBh1UCgQwWAQFxC4QEAQEDEhteARUVViYBBBsaiB8BpVOEbZ8uCwEBAR6QJ4JuD0QkgR4Fj2eCHoRGjyeOGIN4bIFIgQMBAQE
X-IronPort-AV: E=Sophos;i="5.04,778,1406606400"; d="scan'208,217";a="77945452"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	23 Oct 2014 20:08:52 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	23 Oct 2014 20:08:52 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Thu, 23 Oct 2014 20:08:52 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: autotools-brokensep.bbclass not working
Thread-Index: Ac/vHUgEnrxEqTR1TxenScxnCWD+Vw==
Date: Fri, 24 Oct 2014 00:08:51 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984114712F@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: autotools-brokensep.bbclass not working
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
X-List-Received-Date: Fri, 24 Oct 2014 00:09:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377984114712FAZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE6521910377984114712FAZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

(Using daisy/1.6.1)

I need to build an older version of dhcp because of some
custom functionality that was patched into the client.

That version of dhcp does not support ${B} !=3D  ${S}. So I
changed the recipe to inherit autotools-brokensep instead
of inheriting autotools.

But this has no effect. bitbake still tries to build in
${WORKDIR}/build instead of ${S}

bitbake -e shows:

# $B [6 operations]
#   set /home/platform/Workspace/dvf99_gitlab/poky/meta/conf/bitbake.conf:3=
48
#     "${S}"
#   set /home/platform/Workspace/dvf99_gitlab/poky/meta/conf/documentation.=
conf:77
#     [doc] "The Build Directory. The OpenEmbedded build system places gene=
rated objects into the Build Directory during a recipe's build process."
#   set /home/platform/Workspace/dvf99_gitlab/poky/meta/classes/autotools-b=
rokensep.bbclass:5
#     "${S}"
#   finalize ast.py:323 [finalize]
#     "was: ${S}"
#   override[pn-dhcp]:set /home/platform/Workspace/dvf99_gitlab/poky/meta/c=
onf/distro/include/seperatebuilddir.inc:105
#     "${SEPB}"
#   finalize override[pn-dhcp]:
#     "${SEPB}"
# computed:
#   "${SEPB}"

so seperatebuilddir.inc is overriding the use of autotools-brokensep.

How can I override the override? What's the point of autotools-brokensep?

MV

--_000_30C2D590D16A5C46ADFE6521910377984114712FAZUS1EXMB03glob_
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
<p class=3D"MsoNormal">(Using daisy/1.6.1)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I need to build an older version of dhcp because of =
some<o:p></o:p></p>
<p class=3D"MsoNormal">custom functionality that was patched into the clien=
t.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">That version of dhcp does not support ${B} !=3D &nbs=
p;${S}. So I<o:p></o:p></p>
<p class=3D"MsoNormal">changed the recipe to inherit autotools-brokensep in=
stead<o:p></o:p></p>
<p class=3D"MsoNormal">of inheriting autotools.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But this has no effect. bitbake still tries to build=
 in<o:p></o:p></p>
<p class=3D"MsoNormal">${WORKDIR}/build instead of ${S}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bitbake &#8211;e shows:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"># $B [6 operations]<o:p><=
/o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; set /home/p=
latform/Workspace/dvf99_gitlab/poky/meta/conf/bitbake.conf:348<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp;&nbsp;&nbsp;=
 &quot;${S}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; set /home/p=
latform/Workspace/dvf99_gitlab/poky/meta/conf/documentation.conf:77<o:p></o=
:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp;&nbsp;&nbsp;=
 [doc] &quot;The Build Directory. The OpenEmbedded build system places gene=
rated objects into the Build Directory during a recipe's build process.&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; set /home/p=
latform/Workspace/dvf99_gitlab/poky/meta/classes/autotools-brokensep.bbclas=
s:5<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp;&nbsp;&nbsp;=
 &quot;${S}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; finalize as=
t.py:323 [finalize]<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp;&nbsp;&nbsp;=
 &quot;was: ${S}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; override[pn=
-dhcp]:set /home/platform/Workspace/dvf99_gitlab/poky/meta/conf/distro/incl=
ude/seperatebuilddir.inc:105<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp;&nbsp;&nbsp;=
 &quot;${SEPB}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; finalize ov=
erride[pn-dhcp]:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp;&nbsp;&nbsp;=
 &quot;${SEPB}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"># computed:<o:p></o:p></p=
>
<p class=3D"MsoNormal" style=3D"margin-left:.5in">#&nbsp;&nbsp; &quot;${SEP=
B}&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">so seperatebuilddir.inc is overriding the use of aut=
otools-brokensep.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can I override the override? What&#8217;s the po=
int of autotools-brokensep?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377984114712FAZUS1EXMB03glob_--
