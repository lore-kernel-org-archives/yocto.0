Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02CFFE00C25; Sun,  6 Nov 2016 21:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8575E0098A
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 21:54:01 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FJDQCtFiBY/yYyC4ddHQEFAQsBgnMhG?=
	=?us-ascii?q?gEBAQEBH1h8BwGmMgGSToIIJYV/AoIKQBMBAgEBAQEBAQEDXx0LhGUDEhseAT8?=
	=?us-ascii?q?BDAkVViYBBBsaiDYBoFOFGI0iOAKDZQGHGQwBJIY/iR2DL4IvBZonAYE+hHaLf?=
	=?us-ascii?q?YRwgy+GA5EwHwE1KG2FD3IBhnwBgQsBAQE?=
X-IPAS-Result: =?us-ascii?q?A2FJDQCtFiBY/yYyC4ddHQEFAQsBgnMhGgEBAQEBH1h8BwG?=
	=?us-ascii?q?mMgGSToIIJYV/AoIKQBMBAgEBAQEBAQEDXx0LhGUDEhseAT8BDAkVViYBBBsai?=
	=?us-ascii?q?DYBoFOFGI0iOAKDZQGHGQwBJIY/iR2DL4IvBZonAYE+hHaLfYRwgy+GA5EwHwE?=
	=?us-ascii?q?1KG2FD3IBhnwBgQsBAQE?=
X-IronPort-AV: E=Sophos;i="5.31,605,1473134400"; 
	d="scan'208,217";a="215000273"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	07 Nov 2016 00:53:32 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	07 Nov 2016 00:53:31 -0500
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0319.002; Mon, 7 Nov 2016 06:53:28 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to build a recipe having two versions
Thread-Index: AdI4uzt6RWHkpg8ARvKyJylPq5PPuQ==
Date: Mon, 7 Nov 2016 05:53:28 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7E956A@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: How to build a recipe having two versions
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
X-List-Received-Date: Mon, 07 Nov 2016 05:54:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E7E956AAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E7E956AAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I was looking into a way to build an recipe which has two version files. Fo=
r the xerces-c we have two version of files. Below is the list of the same
./customlayer/xerces-c/xerces-c_2.8.0.bb
./meta-openembedded/meta-oe/recipes-devtools/xerces-c/xerces-c_3.1.2.bb

Now as the code we are using need to use xerces-c_2.8.0.bb and not the xerc=
es_3.1.2.bb files. So when we try to fire command as bitbake xerces-c it al=
ways tries to build 3.1.2 and not 2.8.0 files. So is there a way we can exp=
licitly call the older version file for building instead of the new version=
.

Please let me know if you need more information.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3E7E956AAZFFEXMB01globa_
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
<p class=3D"MsoNormal">I was looking into a way to build an recipe which ha=
s two version files. For the xerces-c we have two version of files. Below i=
s the list of the same<o:p></o:p></p>
<p class=3D"MsoNormal">./customlayer/xerces-c/xerces-c_2.8.0.bb<o:p></o:p><=
/p>
<p class=3D"MsoNormal">./meta-openembedded/meta-oe/recipes-devtools/xerces-=
c/xerces-c_3.1.2.bb<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now as the code we are using need to use xerces-c_2.=
8.0.bb and not the xerces_3.1.2.bb files. So when we try to fire command as=
 bitbake xerces-c it always tries to build 3.1.2 and not 2.8.0 files. So is=
 there a way we can explicitly call
 the older version file for building instead of the new version.<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please let me know if you need more information.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3E7E956AAZFFEXMB01globa_--
