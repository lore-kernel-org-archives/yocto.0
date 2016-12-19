Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B734FE004E5; Mon, 19 Dec 2016 03:34:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5214CE004E5
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 03:34:20 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HxEACbxFdY/xUHmMZeHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhIwEBAQEBH1qBBgcBpiABkwyCCiKGAAKCBkATAQIBAQEBAQEBA18dC4RsAxI?=
	=?us-ascii?q?bXgEMCRVWJgEEGxqISQGaZoUejQoqAopfDAElhjeJGoMvgjAFmnABgUqFB4MTB?=
	=?us-ascii?q?YoPh3CGGJIoIQMzMYZ1codPAYEMAQEB?=
X-IPAS-Result: =?us-ascii?q?A2HxEACbxFdY/xUHmMZeHAEBBAEBCgEBgnMhIwEBAQEBH1q?=
	=?us-ascii?q?BBgcBpiABkwyCCiKGAAKCBkATAQIBAQEBAQEBA18dC4RsAxIbXgEMCRVWJgEEG?=
	=?us-ascii?q?xqISQGaZoUejQoqAopfDAElhjeJGoMvgjAFmnABgUqFB4MTBYoPh3CGGJIoIQM?=
	=?us-ascii?q?zMYZ1codPAYEMAQEB?=
X-IronPort-AV: E=Sophos;i="5.33,373,1477972800"; 
	d="scan'208,217";a="207960712"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	19 Dec 2016 06:24:57 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	19 Dec 2016 06:24:57 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0319.002; Mon, 19 Dec 2016 12:24:56 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build one package from a split package recipe
Thread-Index: AdJZ6oM16Dp+Z5fTSPyfeud9NppEEg==
Date: Mon, 19 Dec 2016 11:24:55 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E80F585@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Build one package from a split package recipe
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
X-List-Received-Date: Mon, 19 Dec 2016 11:34:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E80F585AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E80F585AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have an recipe which built multiple package. Below is the contents of the=
 recipe

Test.bb

PACKAGES =3D "test1 test2 test3 test4 test5"

do_install () {
}
....


Now when I fire a bitbake command like "bitbake test" all the packages list=
ed into the recipe get build. But sometime I need to build only one package=
 say test1.

How that can be achieved as when I tried "bitbake test1" its reports below =
error
ERROR: Nothing PROVIDES test1'


Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3E80F585AZFFEXMB01globa_
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have an recipe which built multiple package. Below=
 is the contents of the recipe<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Test.bb<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PACKAGES =3D &#8220;test1 test2 test3 test4 test5&#8=
221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install () {<o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal">&#8230;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now when I fire a bitbake command like &#8220;bitbak=
e test&#8221; all the packages listed into the recipe get build. But someti=
me I need to build only one package say test1.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How that can be achieved as when I tried &#8220;bitb=
ake test1&#8221; its reports below error<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Nothing PROVIDES test1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3E80F585AZFFEXMB01globa_--
