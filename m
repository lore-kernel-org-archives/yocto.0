Return-Path: <krzysztof.m.sywula@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9766E00F20; Fri, 20 May 2016 13:17:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56292E00D19
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 13:17:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 20 May 2016 13:17:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,340,1459839600"; 
	d="scan'208,217";a="811501501"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
	by orsmga003.jf.intel.com with ESMTP; 20 May 2016 13:17:15 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
	FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 20 May 2016 13:17:14 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
	fmsmsx120.amr.corp.intel.com ([169.254.15.242]) with mapi id
	14.03.0248.002; Fri, 20 May 2016 13:17:14 -0700
From: "Sywula, Krzysztof M" <krzysztof.m.sywula@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: documentation change - DISTRO_FEATURES
Thread-Index: AdGy1AFEX/h4rbXOTY6Ci2zuLJzPjg==
Date: Fri, 20 May 2016 20:17:13 +0000
Message-ID: <6741EAAB26B57F4995668065CB62D86B50802B52@fmsmsx116.amr.corp.intel.com>
Accept-Language: en-GB, pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: documentation change - DISTRO_FEATURES
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
X-List-Received-Date: Fri, 20 May 2016 20:17:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6741EAAB26B57F4995668065CB62D86B50802B52fmsmsx116amrcor_"

--_000_6741EAAB26B57F4995668065CB62D86B50802B52fmsmsx116amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-feature=
s-distro

11.2 Distro Features section doesn't list 'bluez5' as an available option.
5.7.2 bluez section however mentions that 'bluez5' is valid DISTRO_FEATURES=
 value.

I recommend we add 'bluez5' to 11.2 Distro Features section as that's where=
 people go to find available values for DISTRO_FEATURES variable.

Thanks,
Krzysztof Sywula

--_000_6741EAAB26B57F4995668065CB62D86B50802B52fmsmsx116amrcor_
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
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
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
<p class=3D"MsoNormal"><a href=3D"http://www.yoctoproject.org/docs/2.1/ref-=
manual/ref-manual.html#ref-features-distro">http://www.yoctoproject.org/doc=
s/2.1/ref-manual/ref-manual.html#ref-features-distro</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">11.2 Distro Features section doesn&#8217;t list &#82=
16;bluez5&#8217; as an available option.
<o:p></o:p></p>
<p class=3D"MsoNormal">5.7.2 bluez section however mentions that &#8216;blu=
ez5&#8217; is valid DISTRO_FEATURES value.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I recommend we add &#8216;bluez5&#8217; to 11.2 Dist=
ro Features section as that&#8217;s where people go to find available value=
s for DISTRO_FEATURES variable.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Krzysztof Sywula<o:p></o:p></p>
</div>
</body>
</html>

--_000_6741EAAB26B57F4995668065CB62D86B50802B52fmsmsx116amrcor_--
