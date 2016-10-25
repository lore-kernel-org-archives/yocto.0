Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A66EE009B1; Tue, 25 Oct 2016 04:24:34 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51AF2E00912
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 04:24:30 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ExAgAxQA9Y/yYyC4dcHgYMgnQhGwEBA?=
	=?us-ascii?q?QEBHViBBAG4aoIHhiECgXo/FAECAQEBAQEBAQNfHQuEZgMSG14BFRVWJgEEGxq?=
	=?us-ascii?q?IMQGkdIUYl1MMASSGPoRUhEmDLoIvBZoWAYE6mGWFepEJHjaFYIgDAX8BAQE?=
X-IPAS-Result: =?us-ascii?q?A2ExAgAxQA9Y/yYyC4dcHgYMgnQhGwEBAQEBHViBBAG4aoI?=
	=?us-ascii?q?HhiECgXo/FAECAQEBAQEBAQNfHQuEZgMSG14BFRVWJgEEGxqIMQGkdIUYl1MMA?=
	=?us-ascii?q?SSGPoRUhEmDLoIvBZoWAYE6mGWFepEJHjaFYIgDAX8BAQE?=
X-IronPort-AV: E=Sophos;i="5.31,545,1473134400"; 
	d="scan'208,217";a="200152429"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	25 Oct 2016 07:24:27 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	25 Oct 2016 07:24:27 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0319.002; Tue, 25 Oct 2016 13:24:26 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Requires section of RPM Spec
Thread-Index: AdIuslIBudgP1/mpTm+w9PvJafxQxQ==
Date: Tue, 25 Oct 2016 11:24:25 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7DC7A0@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Requires section of RPM Spec
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
X-List-Received-Date: Tue, 25 Oct 2016 11:24:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3E7DC7A0AZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3E7DC7A0AZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Is there a way we can avoid pre-populating the Requires section of the gene=
rated RPM Spec from a recipe?
I have not set any RDEPENDS or other such section but still the section get=
 populated. Below is an example

Requires: libcrypto.so.1.0.0(OPENSSL_1.0.2d)
Requires: libdl.so.2
Requires: libuuid1 >=3D 2.26.2
Requires(pre): libgcc1 >=3D 4.9.2
Requires(pre): libssl1.0.0 >=3D 1.0.2h
Requires(pre): libgcc_s.so.1(GCC_3.0)
Requires(pre): libc.so.6(GLIBC_2.1)
Requires(pre): /usr/bin/perl
Requires(pre): libboost_system.so.1.58.0
Requires(pre): libstdc++.so.6(GLIBCXX_3.4.20)
Requires(pre): libc.so.6(GLIBC_2.3)

We just want to avoid populating the sections.

Any pointers in this direction will be great help.

Thanks,
Abhinav

--_000_F38A866CD026F746A3BF0928A84397BE3E7DC7A0AZFFEXMB01globa_
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
<p class=3D"MsoNormal">Is there a way we can avoid pre-populating the Requi=
res section of the generated RPM Spec from a recipe?<o:p></o:p></p>
<p class=3D"MsoNormal">I have not set any RDEPENDS or other such section bu=
t still the section get populated. Below is an example<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Requires: libcrypto.so.1.0.0(OPENSSL_1.0.2d)<o:p></o=
:p></p>
<p class=3D"MsoNormal">Requires: libdl.so.2<o:p></o:p></p>
<p class=3D"MsoNormal">Requires: libuuid1 &gt;=3D 2.26.2<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(pre): libgcc1 &gt;=3D 4.9.2<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(pre): libssl1.0.0 &gt;=3D 1.0.2h<o:p></o:p>=
</p>
<p class=3D"MsoNormal">Requires(pre): libgcc_s.so.1(GCC_3.0)<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(pre): libc.so.6(GLIBC_2.1)<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(pre): /usr/bin/perl<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(pre): libboost_system.so.1.58.0<o:p></o:p><=
/p>
<p class=3D"MsoNormal">Requires(pre): libstdc&#43;&#43;.so.6(GLIBCXX_3.4.20=
)<o:p></o:p></p>
<p class=3D"MsoNormal">Requires(pre): libc.so.6(GLIBC_2.3)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We just want to avoid populating the sections.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any pointers in this direction will be great help.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Abhinav<o:p></o:p></p>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3E7DC7A0AZFFEXMB01globa_--
