Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEC2BE00CD5; Mon, 25 Sep 2017 03:06:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.16 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02782E00BB7
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 03:06:17 -0700 (PDT)
Received: from [216.82.251.37] by server-16.bemta-12.messagelabs.com id
	39/FC-01781-815D8C95; Mon, 25 Sep 2017 10:06:16 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPKsWRWlGSWpSXmKPExsVySpdNU1fi6ol
	Ig6st6hY3Lv5gsZj0cg2bA5PHzll32T3aT/SxBTBFsWbmJeVXJLBmzGpcwlIwXabi8PaZbA2M
	LyS7GLk4hAS2MkrMfnuMGcLZwihxvvE6lHOQUWL1lF7WLkZODjYBQ4krPXcZQWwRAVOJF8e+s
	IHYzALWEn0TZrKD2MICLhKTVq9lh6hxlTi4+zZUvZFE++JGsDksAqoSN85fZOpi5ODgFXCXeH
	c4HSTMKCAr8aVxNTPESHGJW0/mM4HYEgICEkv2nGeGsEUlXj7+xwphG0hsXbqPBcJWkFjZ3cA
	GYVtL7J+3lBViTo7EisPHwObwCghKnJz5BKxeCOiELQt/s0xgFJ2FZN0sJC2zkLRAxHUkFuz+
	xAZha0ssW/iaGcY+c+AxE7L4Akb2VYwaxalFZalFusaWeklFmekZJbmJmTm6hoZGermpxcWJ6
	ak5iUnFesn5uZsYgdFYz8DAuIPx/MLoQ4ySHExKorx3+U5ECvEl5adUZiQWZ8QXleakFh9ilO
	HgUJLgnXcFKCdYlJqeWpGWmQNMCzBpCQ4eJRFedpA0b3FBYm5xZjpE6hSjMceGm3f/MHHsA5F
	CLHn5ealS4rwmIKUCIKUZpXlwg2Dp6hKjrJQwLyMDA4MQT0FqUW5mCar8K0ZxDkYlYd7zl4Gm
	8GTmlcDtewV0ChPQKb1TwU4pSURISTUwXsycb8IXKfbL+V7X1pjmqOa5U2da/Sh78fh4cnuQa
	JPSI+17M7hqp10MKDrgz3Pin8mq0C0BwrmaoUven1O7F89/Scvvj7HBlvrX1kv0ZmSKif2K5Z
	rpcPpheEnhheuPu6ftd+Q4/CtGf+0CYb3+CU3zXojfuDxZ/eXCwKpPUZ2slxn/X/3apcRSnJF
	oqMVcVJwIAN2CiYJSAwAA
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-16.tower-153.messagelabs.com!1506333972!54628650!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24959 invoked from network); 25 Sep 2017 10:06:16 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-16.tower-153.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 25 Sep 2017 10:06:16 -0000
Received: from HIBDWSMB01.ad.harman.com (10.99.236.91) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Mon, 25 Sep 2017 15:36:11 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB01.ad.harman.com (10.99.236.91) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Mon, 25 Sep 2017 15:36:10 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b]) by
	HIBDWSMB02.ad.harman.com ([fe80::d8dd:3dec:76ff:8e7b%16]) with mapi id
	15.00.1263.000; Mon, 25 Sep 2017 15:36:10 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: want to execute a script having sudo : sudo cryptsetup 
Thread-Index: AdM143jx6lcBje2WR2ykMhUgrdGRlAAAmpmg
Date: Mon, 25 Sep 2017 10:06:09 +0000
Message-ID: <fd4ac0fa23004ac68067a20335322058@HIBDWSMB02.ad.harman.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Cc: "connect.shrawan@gmail.com" <connect.shrawan@gmail.com>
Subject: Re: want to execute a script having sudo : sudo cryptsetup
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
X-List-Received-Date: Mon, 25 Sep 2017 10:06:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_fd4ac0fa23004ac68067a20335322058HIBDWSMB02adharmancom_"

--_000_fd4ac0fa23004ac68067a20335322058HIBDWSMB02adharmancom_
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


--_000_fd4ac0fa23004ac68067a20335322058HIBDWSMB02adharmancom_
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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

--_000_fd4ac0fa23004ac68067a20335322058HIBDWSMB02adharmancom_--
