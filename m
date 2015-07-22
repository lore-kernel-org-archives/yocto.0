Return-Path: <Gamma.Dean@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19007E00927; Wed, 22 Jul 2015 08:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.130.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Jul 2015 08:10:50 PDT
Received: from esa1.emerson-outbound.iphmx.com
	(esa1.emerson-outbound.iphmx.com [68.232.130.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0049E008EC
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 08:10:50 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,523,1432576800"; d="scan'208,217";a="13035788"
Received: from usstlz-pinfez05.extemr.org ([144.191.128.189])
	by esa1.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	22 Jul 2015 21:09:44 +0600
Received: from USSTLZ-PMSG015.emrsn.org (10.16.72.197) by
	USSTLZ-PINFEZ05.extemr.org (10.16.8.78) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Wed, 22 Jul 2015 15:09:27 +0000
Received: from USSTLZ-PMSG016.emrsn.org ([169.254.8.133]) by
	USSTLZ-PMSG015.emrsn.org ([169.254.7.101]) with mapi id 14.03.0158.001;
	Wed, 22 Jul 2015 15:09:27 +0000
From: <Gamma.Dean@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: Re: [yocto] Exporting kernel header from patch
Thread-Index: AdDEj9S9XdwaQlrYRxG6+34ksITjOQ==
Date: Wed, 22 Jul 2015 15:09:26 +0000
Message-ID: <5B6A9B05AFA9AC4FB94345D083806F144B2BF945@USSTLZ-PMSG016.emrsn.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.249.11]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 22 Jul 2015 14:34:49 -0700
Subject: Re: Exporting kernel header from patch
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
X-List-Received-Date: Wed, 22 Jul 2015 15:10:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5B6A9B05AFA9AC4FB94345D083806F144B2BF945USSTLZPMSG016em_"

--_000_5B6A9B05AFA9AC4FB94345D083806F144B2BF945USSTLZPMSG016em_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When using a shared sstate cache which has the previously built kernel it a=
ppears that STAGING_KERNEL_DIR does not get populated - in my case there is=
 no tmp/work-shared directory at all.  If I have modified the user space ap=
p to look there for a header is there some dependency I can add that will f=
orce STAGING_KERNEL_DIR to get built?

If not, perhaps the best answer is your other proposed method of just addin=
g the header to an additional path in sysroot.

--_000_5B6A9B05AFA9AC4FB94345D083806F144B2BF945USSTLZPMSG016em_
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
<p class=3D"MsoNormal">When using a shared sstate cache which has the previ=
ously built kernel it appears that STAGING_KERNEL_DIR does not get populate=
d &#8211; in my case there is no tmp/work-shared directory at all.&nbsp; If=
 I have modified the user space app to look there
 for a header is there some dependency I can add that will force STAGING_KE=
RNEL_DIR to get built?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If not, perhaps the best answer is your other propos=
ed method of just adding the header to an additional path in sysroot.<o:p><=
/o:p></p>
</div>
</body>
</html>

--_000_5B6A9B05AFA9AC4FB94345D083806F144B2BF945USSTLZPMSG016em_--
