Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF60E00ABE; Wed, 23 Nov 2016 02:31:18 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD6AE00A61
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 02:31:15 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FlCQBXbzVY/yYyC4deHQEFAQsBgnMhF?=
	=?us-ascii?q?g4BAQEBAR9YgQkBuUWCB4YhAoIbQRIBAgEBAQEBAQEDXx0LhGwDEhteAQwJBRB?=
	=?us-ascii?q?WFw8BBBsaiEsBn0GFGY0MKgKLQQwBJIY/iSWDL4ISHgWaTwGBSJlVhhNJkS0lA?=
	=?us-ascii?q?y2GXIgqAYEMAQEB?=
X-IPAS-Result: =?us-ascii?q?A2FlCQBXbzVY/yYyC4deHQEFAQsBgnMhFg4BAQEBAR9YgQk?=
	=?us-ascii?q?BuUWCB4YhAoIbQRIBAgEBAQEBAQEDXx0LhGwDEhteAQwJBRBWFw8BBBsaiEsBn?=
	=?us-ascii?q?0GFGY0MKgKLQQwBJIY/iSWDL4ISHgWaTwGBSJlVhhNJkS0lAy2GXIgqAYEMAQE?=
	=?us-ascii?q?B?=
X-IronPort-AV: E=Sophos;i="5.31,537,1473134400"; 
	d="scan'208,217";a="204455816"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	23 Nov 2016 05:31:13 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	23 Nov 2016 05:31:13 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0319.002; Wed, 23 Nov 2016 11:31:09 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding a PACKAGE_ARCH packages to image
Thread-Index: AdJFdLQLgM7HK19JQraNJ25fAag6Ng==
Date: Wed, 23 Nov 2016 10:31:10 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7F61C9@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Adding a PACKAGE_ARCH packages to image
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
X-List-Received-Date: Wed, 23 Nov 2016 10:31:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E7F61C9AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E7F61C9AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

We have defined our arch type to align it as part of the our release naming=
 convection. But when I use PACKAGE_ARCH to set the architecture the packag=
e didn't get included in to the image even if it is defined as part of the =
package group definition.

So how to include this custom architecture as part of the machine definitio=
n so that it get included as part of the image build.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3E7F61C9AZFFEXMB01globa_
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We have defined our arch type to align it as part of=
 the our release naming convection. But when I use PACKAGE_ARCH to set the =
architecture the package didn&#8217;t get included in to the image even if =
it is defined as part of the package group
 definition.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">So how to include this custom architecture as part o=
f the machine definition so that it get included as part of the image build=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav <o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3E7F61C9AZFFEXMB01globa_--
