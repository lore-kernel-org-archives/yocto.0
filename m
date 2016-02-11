Return-Path: <gstroz@qti.qualcomm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B458EE00C23; Thu, 11 Feb 2016 11:27:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [199.106.114.251 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0136]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 122 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Feb 2016 11:27:37 PST
Received: from wolverine02.qualcomm.com (wolverine02.qualcomm.com
	[199.106.114.251])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE60E00C1C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 11:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
	s=qcdkim; t=1455218857; x=1486754857;
	h=from:to:subject:date:message-id:mime-version;
	bh=sWygR/K69u+wg5+IcBwcsVaozwQLyAex4HrUIiAd/fk=;
	b=mwEKsqHQjxM8yIhLsT1dyPmsjvKZiBaclaiWon/N5vW1LYSZanHg3HXR
	uH7xATDOiVWFoPUyiDzsIHS2S5HRx4f02EwY/A21G5CXG1eGyprrc40sJ
	QrBKifwuHukbxlixjlpbS1l05BreogVaGUe5D6xKoZO2GVqU2dPqR3uYe 8=;
X-IronPort-AV: E=Sophos;i="5.22,432,1449561600"; 
	d="scan'208,217";a="262533502"
Received: from ironmsg03-l-new.qualcomm.com (HELO Ironmsg03-L.qualcomm.com)
	([10.53.140.110])
	by wolverine02.qualcomm.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	11 Feb 2016 11:25:32 -0800
X-IronPort-AV: E=McAfee;i="5700,7163,8072"; a="1089839792"
Received: from nasanexm02h.na.qualcomm.com ([10.85.0.89])
	by Ironmsg03-L.qualcomm.com with ESMTP/TLS/RC4-SHA;
	11 Feb 2016 11:25:31 -0800
Received: from NASANEXM02C.na.qualcomm.com (10.85.0.43) by
	nasanexm02h.na.qualcomm.com (10.85.0.89) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 11 Feb 2016 11:25:31 -0800
Received: from NASANEXM02C.na.qualcomm.com ([10.85.0.43]) by
	NASANEXM02C.na.qualcomm.com ([10.85.0.43]) with mapi id 15.00.1130.005;
	Thu, 11 Feb 2016 11:25:31 -0800
From: "Stroz, Glenn" <gstroz@qti.qualcomm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Selecting a specific tuning in an application recipe?
Thread-Index: AdFlAB0rDvcMaAlrQUaStptDOJ5TYQ==
Date: Thu, 11 Feb 2016 19:25:31 +0000
Message-ID: <7eb23ce64ad7493485184af5224b8646@NASANEXM02C.na.qualcomm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.47.70.6]
MIME-Version: 1.0
Subject: Selecting a specific tuning in an application recipe?
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
X-List-Received-Date: Thu, 11 Feb 2016 19:27:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7eb23ce64ad7493485184af5224b8646NASANEXM02Cnaqualcommco_"

--_000_7eb23ce64ad7493485184af5224b8646NASANEXM02Cnaqualcommco_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We're trying to build a 64 bit arm project. However, one of our application=
s needs to be built in 32 bit mode as it isn't supported in 64 bit yet. I'v=
e looked around and it looks like I need to adjust the tuning to be for arm=
v7 instead of the default. However, when I set DEFAULTTUNE in the applicati=
on recipe it does not compile the 32 bit cross compiler and bails out with =
a dependency error. Is there a system in place where we can adjust the tuni=
ng for a specific recipe?

Multilib doesn't appear to be the solution since it's tailored towards libr=
aries and not applications. Not sure if there's anything else that would wo=
rk.

Thanks,
Glenn


--_000_7eb23ce64ad7493485184af5224b8646NASANEXM02Cnaqualcommco_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We&#8217;re trying to build a 64 bit arm project. Ho=
wever, one of our applications needs to be built in 32 bit mode as it isn&#=
8217;t supported in 64 bit yet. I&#8217;ve looked around and it looks like =
I need to adjust the tuning to be for armv7 instead
 of the default. However, when I set DEFAULTTUNE in the application recipe =
it does not compile the 32 bit cross compiler and bails out with a dependen=
cy error. Is there a system in place where we can adjust the tuning for a s=
pecific recipe?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Multilib doesn&#8217;t appear to be the solution sin=
ce it&#8217;s tailored towards libraries and not applications. Not sure if =
there&#8217;s anything else that would work.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Glenn<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_7eb23ce64ad7493485184af5224b8646NASANEXM02Cnaqualcommco_--
