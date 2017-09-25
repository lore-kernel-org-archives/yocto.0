Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA420E00CD5; Mon, 25 Sep 2017 02:56:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.16 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0206]
X-Greylist: delayed 425 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Sep 2017 02:56:20 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225FCE00CBA
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 02:56:20 -0700 (PDT)
Received: from [216.82.251.36] by server-16.bemta-12.messagelabs.com id
	1F/A1-01781-B11D8C95; Mon, 25 Sep 2017 09:49:15 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPKsWRWlGSWpSXmKPExsVySpdNU1fq4ol
	Ig5ZWa4sbF3+wWEx6uYbNgclj56y77B7tJ/rYApiiWDPzkvIrElgzdvWrFrySrNi9YwF7A+NV
	8S5GLg4hga2MEh/3XmSEcLYwSkyd/44dwjnIKNE/7xtTFyMnB5uAocSVnruMILaIgKnEi2Nf2
	EBsZgFrib4JM9lBbGEBB4m7ax6xQdS4ShzcfRuqXk/ixNmpYDaLgKrEjy9XwWxeAXeJMz82gP
	UyCshKfGlczQwxU1zi1pP5YHslBAQkluw5zwxhi0q8fPyPFcI2kNi6dB8LhK0gsbK7gQ3Ctpb
	YP28pK8ScHIlDv3cyQewSlDg58wlYvRDQDVsW/maZwCg6C8m6WUhaZiFpgYjrSCzY/YkNwtaW
	WLbwNTOMfebAYyZk8QWM7KsYNYpTi8pSi3RNDPWSijLTM0pyEzNzdA0NjfRyU4uLE9NTcxKTi
	vWS83M3MQKjsZ6BgXEH45v90YcYJTmYlER57/KdiBTiS8pPqcxILM6ILyrNSS0+xCjDwaEkwa
	t6ASgnWJSanlqRlpkDTAswaQkOHiURXjaQNG9xQWJucWY6ROoUozHHhpt3/zBx7AORQix5+Xm
	pUuK8384DlQqAlGaU5sENgqWrS4yyUsK8jAwMDEI8BalFuZklqPKvGMU5GJWEeS+BTOHJzCuB
	2/cK6BQmoFN6p4KdUpKIkJJqYOS1ZGTlfLM7ej5TKqfJDfbjn9/vDnDQ+8n/sdLRSHEp24XIF
	sPWGRKX/qozbS+72Wm+6+HyHmux7deef0q1O7yF76twbctv+90FZk+SHi1qk5a4FKXqvIPF3+
	2yxFKLdTazuE0WstzZu8GCRd5n1v2lxaueH9E4YtC0Oqrh3cKTKiWS7vohikosxRmJhlrMRcW
	JAAoEQmRSAwAA
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-11.tower-152.messagelabs.com!1506332912!101230799!5
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 49558 invoked from network); 25 Sep 2017 09:49:14 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-11.tower-152.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 25 Sep 2017 09:49:14 -0000
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Mon, 25 Sep 2017 15:18:59 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB02.ad.harman.com (10.99.236.92) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Mon, 25 Sep 2017 15:18:58 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b]) by
	HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b%16]) with mapi id
	15.00.1263.000; Mon, 25 Sep 2017 15:18:58 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: want to execute a script having sudo : sudo cryptsetup 
Thread-Index: AdM143jx6lcBje2WR2ykMhUgrdGRlA==
Date: Mon, 25 Sep 2017 09:48:57 +0000
Message-ID: <6e5f6176b28d4d5397a7a7e36c40d4a9@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 27 Sep 2017 08:04:27 -0700
Cc: "connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: want to execute a script having sudo : sudo cryptsetup
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
X-List-Received-Date: Mon, 25 Sep 2017 09:56:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6e5f6176b28d4d5397a7a7e36c40d4a9HIBDWSMB02adharmancom_"

--_000_6e5f6176b28d4d5397a7a7e36c40d4a9HIBDWSMB02adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Team ,

I am trying to achieve below from yocto , do we have a way  ?


dd if=3D/dev/zero of=3Dhello.enc bs=3D4k count=3D$400
mknod /dev/loop_dev_0
losetup /dev/loop_dev_0 hello.enc
sudo cryptsetup --type=3Dplain open /dev/loop_dev_0  plainMap < $2




Thanks and Regards
Shrawan


--_000_6e5f6176b28d4d5397a7a7e36c40d4a9HIBDWSMB02adharmancom_
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
<p class=3D"MsoNormal">Hello Team ,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to achieve below from yocto , do we have=
 a way &nbsp;?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">dd if=3D/dev/zero of=3Dhello.enc bs=3D4k count=3D$40=
0<o:p></o:p></p>
<p class=3D"MsoNormal">mknod /dev/loop_dev_0<o:p></o:p></p>
<p class=3D"MsoNormal">losetup /dev/loop_dev_0 hello.enc<o:p></o:p></p>
<p class=3D"MsoNormal"><b><u><span style=3D"background:yellow;mso-highlight=
:yellow">sudo</span></u></b> cryptsetup --type=3Dplain open /dev/loop_dev_0=
 &nbsp;plainMap &lt; $2<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks and Regards<o:p></o:p></p>
<p class=3D"MsoNormal">Shrawan<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_6e5f6176b28d4d5397a7a7e36c40d4a9HIBDWSMB02adharmancom_--
