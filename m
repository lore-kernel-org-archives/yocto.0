Return-Path: <christian.staffa@avl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A7E4E00DF8; Wed, 21 Feb 2018 05:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [94.199.88.76 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 565 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Feb 2018 05:23:56 PST
Received: from mailout11.rmx.de (mailout11.rmx.de [94.199.88.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02019E00816
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 05:23:56 -0800 (PST)
Received: from cryptout03.retarus.com (unknown [172.19.21.159])
	by mailout11.rmx.de (Postfix) with ESMTP id 3zmdHS54vYz3yrl
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 14:14:28 +0100 (CET)
Received: from cryptout03.dmz2.retloc (localhost [127.0.0.1])
	by cryptout03.retarus.com (Postfix) with ESMTP id 3zmdHS4nK8z4CV05
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 14:14:28 +0100 (CET)
Received: from mailcc14.dmz2.retloc (mailcc14.retarus.de [172.19.21.14])
	by cryptout03.retarus.com (Postfix) with SMTP id 3zmdHS482nz4CTfx
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 14:14:28 +0100 (CET)
Received: from unknown (unknown [10.12.64.114])
	by kdin04 (Postfix) with SMTP id 3zmdHN046NzxNmX;
	Wed, 21 Feb 2018 14:14:26 +0100 (CET)
Received: from atgrzsw1693.avl01.avlcorp.lan (10.12.64.114) by
	atgrzsw1693.avl01.avlcorp.lan (10.12.64.114) with Microsoft SMTP Server
	(TLS) id 15.0.1347.2; Wed, 21 Feb 2018 14:11:55 +0100
Received: from atgrzsw1693.avl01.avlcorp.lan ([172.18.42.157]) by
	atgrzsw1693.avl01.avlcorp.lan ([172.18.42.157]) with mapi id
	15.00.1347.000; Wed, 21 Feb 2018 14:11:55 +0100
From: "Staffa, Christian AVL/DE" <Christian.Staffa@avl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: behind corporate proxy
Thread-Index: AdOrFDhcf232TjljRuu/hoKrVRO3oA==
Date: Wed, 21 Feb 2018 13:11:54 +0000
Message-ID: <cc0b03a0ba51424bb8245fd4fbbe9ba3@atgrzsw1693.avl01.avlcorp.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.12.100.12]
x-exclaimer-md-config: f9e74532-fb7d-4806-8539-2b9574eafa9a
MIME-Version: 1.0
X-RMX-RATE-D: exceeded: [sendingMtaHostAddr:/10.12.64.114] : 2 req/s, n=3,
	id=20180221-141426-3zmdHN046NzxNmX-1054@localhost/3zmdHN046NzxNmX
X-RMX-ID: 20180221-141424-3zmdHN046NzxNmX-0@kdin04
X-RMX-TRACE: 2018-02-21 14:14:26 KdIn2013@kdin04/mailcc07 [2.1s]
	20180221-141424-3zmdHN046NzxNmX-0@kdin04 0:00:02
X-RMX-TRACE: 2018-02-21 14:14:26 RmxMSO@kdin04/mailcc01 [0.1s]
	20180221-141424-3zmdHN046NzxNmX-0@kdin04 0:00:02
X-RMX-TRACE: 2018-02-21 14:14:26 LIVERmxSTO@kdin04/mailcc01 [0.2s]
	20180221-141424-3zmdHN046NzxNmX-0@kdin04 0:00:02
Subject: behind corporate proxy
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
X-List-Received-Date: Wed, 21 Feb 2018 13:23:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_cc0b03a0ba51424bb8245fd4fbbe9ba3atgrzsw1693avl01avlcorp_"

--_000_cc0b03a0ba51424bb8245fd4fbbe9ba3atgrzsw1693avl01avlcorp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all

I have got a problem with proxy settings and the yocto build system.

I already read the 'Behind a Proxy Guide' and generally it works.
But when it comes to build the linux-yocto package the buildsystem tries to=
 clone a repo with the git:// scheme.
This results in connecting to git.yoctoproject.org:9418 but this port is bl=
ocked by the corporate proxy and causes the build to fail.

Had anyone the same problem? Is there a way to fetch the repo via http(s)?

Regards
Chris

--_000_cc0b03a0ba51424bb8245fd4fbbe9ba3atgrzsw1693avl01avlcorp_
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
	{font-family:"Cordia New";
	panose-1:2 11 3 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hi all<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I have got a problem with proxy settings and the yoct=
o build system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I already read the &#8216;Behind a Proxy Guide&#8217;=
 and generally it works.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">But when it comes to build the linux-yocto package th=
e buildsystem tries to clone a repo with the git:// scheme.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">This results in connecting to git.yoctoproject.org:94=
18 but this port is blocked by the corporate proxy and causes the build to =
fail.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Had anyone the same problem? Is there a way to fetch =
the repo via http(s)?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Chris<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_cc0b03a0ba51424bb8245fd4fbbe9ba3atgrzsw1693avl01avlcorp_--
