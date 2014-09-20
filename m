Return-Path: <john.s.summers@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F17CE00576; Fri, 19 Sep 2014 17:08:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56FF1E00566
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 17:08:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Sep 2014 17:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,558,1406617200"; 
	d="scan'208,217";a="575974023"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by orsmga001.jf.intel.com with ESMTP; 19 Sep 2014 17:08:36 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 19 Sep 2014 17:08:36 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.6.148]) by
	FMSMSX154.amr.corp.intel.com ([169.254.6.51]) with mapi id
	14.03.0195.001; Fri, 19 Sep 2014 17:08:36 -0700
From: "Summers, John S" <john.s.summers@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Packages util-linux and gettext both showing undefined reference
Thread-Index: Ac/UZukDqRQi6fEkRgawA0lmIJuUTA==
Date: Sat, 20 Sep 2014 00:08:35 +0000
Message-ID: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 22 Sep 2014 07:59:42 -0700
Subject: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Sat, 20 Sep 2014 00:08:41 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AC825E12842FCA4C9E6DDED8AF00318F1FB70C57FMSMSX106amrcor_"

--_000_AC825E12842FCA4C9E6DDED8AF00318F1FB70C57FMSMSX106amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am showing build failures for both util-linux (bitbake util-linux) and ge=
ttext (bitbake gettext):
| .../tmp/work/core2-64-poky-linux/util-linux/2.24.2-r1/util-linux-2.24.2/t=
ext-utils/more.c:1947: undefined reference to `mbrtowc'
| .../tmp/work/core2-64-poky-linux/util-linux/2.24.2-r1/util-linux-2.24.2/t=
ext-utils/more.c:1970: undefined reference to `wcwidth'

I am trying to build a core-image-minimal-initramfs image and get the above=
 error.

I have build-essential installed on my Ubuntu host as well as the rest of t=
he recommended Ubuntu packages.

Has anyone seen this error before?

Thanks,
Stuart

--_000_AC825E12842FCA4C9E6DDED8AF00318F1FB70C57FMSMSX106amrcor_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am showing build failures for both util-linux (bit=
bake util-linux) and gettext (bitbake gettext):<o:p></o:p></p>
<p class=3D"MsoNormal">| .../tmp/work/core2-64-poky-linux/util-linux/2.24.2=
-r1/util-linux-2.24.2/text-utils/more.c:1947: undefined reference to `mbrto=
wc'<o:p></o:p></p>
<p class=3D"MsoNormal">| &#8230;/tmp/work/core2-64-poky-linux/util-linux/2.=
24.2-r1/util-linux-2.24.2/text-utils/more.c:1970: undefined reference to `w=
cwidth'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to build a core-image-minimal-initramfs =
image and get the above error.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have build-essential installed on my Ubuntu host a=
s well as the rest of the recommended Ubuntu packages.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Has anyone seen this error before?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Stuart<o:p></o:p></p>
</div>
</body>
</html>

--_000_AC825E12842FCA4C9E6DDED8AF00318F1FB70C57FMSMSX106amrcor_--
