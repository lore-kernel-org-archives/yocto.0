Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F959E00D16; Mon, 25 Sep 2017 22:25:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.13 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 859A5E00D13
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 22:25:53 -0700 (PDT)
Received: from [216.82.251.35] by server-13.bemta-12.messagelabs.com id
	58/B6-01808-0E4E9C95; Tue, 26 Sep 2017 05:25:52 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJKsWRWlGSWpSXmKPExsVySpdNU/fBk5O
	RBnM3KllMermGzYHRo/1EH1sAYxRrZl5SfkUCa8aEH3OYCtrFK/ZNS2lgfC/SxcjFISSwlVGi
	928vI4SzhVFi3+7vrBDOQUaJbb1zWboYOTnYBAwlrvTcZQSxRQRMJV4c+8IGYgsLKEtc2/uIG
	SKuIXH5zkUoW09izZ29YDUsAqoSxxdOYgWxeQXcJbp/zQCzGQVkJb40rgarZxYQl7j1ZD4TiC
	0hICCxZM95ZghbVOLl43+sELaBxNal+1ggbAWJld0NbBC2tcT+eUtZIebkSLx+cANql6DEyZl
	PwOqFgG7YsvA3ywRGkVlI1s1C0jILSQtEXEdiwe5PbBC2tsSyha+ZYewzBx4zIYsvYGRfxahR
	nFpUllqka2Kgl1SUmZ5RkpuYmaNraGikl5taXJyYnpqTmFSsl5yfu4kRGGH1DAyMOxhf7Y8+x
	CjJwaQkylt26WSkEF9SfkplRmJxRnxRaU5q8SFGGQ4OJQlec2DECgkWpaanVqRl5gBjHSYtwc
	GjJML7/RFQmre4IDG3ODMdInWK0Zhjw827f5g49oFIIZa8/LxUKXHey4+BSgVASjNK8+AGwVL
	QJUZZKWFeRgYGBiGegtSi3MwSVPlXjOIcjErCvDNApvBk5pXA7XsFdAoT0Cm9U0+AnFKSiJCS
	amA0Pl4i5Kj/SDR9nd5a1QC/q7zfMpNjlgS/D/u88OHvm/fiK1Zu9vcyDHAQZFq698SnqTNfa
	O7fkaTpkX5LQWmtpfvx5msHpwdrf2me9+B3kGfSo8rbzxll3G2NtV1y5m+6Lzax5O3hRVmcMd
	P05Sz2eO81yPs3aUJx56Nohb/NaVWmB4JiX9QqsRRnJBpqMRcVJwIATMeZGzwDAAA=
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-11.tower-151.messagelabs.com!1506403544!82597807!3
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 134989 invoked from network); 26 Sep 2017 05:25:52 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
	by server-11.tower-151.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 26 Sep 2017 05:25:52 -0000
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Tue, 26 Sep 2017 10:55:45 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB02.ad.harman.com (10.99.236.92) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Tue, 26 Sep 2017 10:55:44 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b]) by
	HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b%16]) with mapi id
	15.00.1263.000; Tue, 26 Sep 2017 10:55:44 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: rootfs encryption support 
Thread-Index: AdM2h8s39sFuLV9eR3OG4m4is0AjFw==
Date: Tue, 26 Sep 2017 05:25:43 +0000
Message-ID: <8d5fdef5dbbf4544a4fa08c657cd0404@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: rootfs encryption support
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
X-List-Received-Date: Tue, 26 Sep 2017 05:25:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8d5fdef5dbbf4544a4fa08c657cd0404HIBDWSMB02adharmancom_"

--_000_8d5fdef5dbbf4544a4fa08c657cd0404HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Team ,

Is it possible to get encrypted rootfs during image build  ?

Currently , I am running "cryptsetup" (as sudo) manually   after the final =
image(rootfs.ext4) is produced  . The idea is to get this done within yocto=
 environment without sudo problem .


Thanks and Regards
Shrawan

--_000_8d5fdef5dbbf4544a4fa08c657cd0404HIBDWSMB02adharmancom_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hello Team ,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to get encrypted rootfs during image =
build &nbsp;?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Currently , I am running &#8220;<b>cryptsetup</b>&#8=
221; (as sudo) <b>manually</b> &nbsp;&nbsp;after the final image(rootfs.ext=
4) is produced &nbsp;. The idea is to get this done within yocto environmen=
t without sudo problem .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shrawan<o:p></o:p></p>
</div>
</body>
</html>

--_000_8d5fdef5dbbf4544a4fa08c657cd0404HIBDWSMB02adharmancom_--
