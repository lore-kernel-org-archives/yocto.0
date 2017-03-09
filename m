Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE05CE007BA; Wed,  8 Mar 2017 23:19:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.54 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 8879 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Mar 2017 23:19:38 PST
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0054.outbound.protection.outlook.com [104.47.42.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D4FAE00519
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 23:19:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=th1TEylQDytAkKBGqCbdV5qteTkJy52rIl48y7yHBkE=;
	b=e1ynYwDkfh43RFUR+NLEYCzIWZJyrM36l4jVVSR43lMQYBGSeZDlsk19gD8pKaiYDHfYT5kQ1Hw5RSecvXszud33QyHmpw1DSbW6aEmPrf9Ql6z0SaR1kAUCuJ2rNYIZJCNXany6Ih18Oe9AGciNV9SdrwP3S4Nf/+uf/kLb2Ko=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2955.prod.exchangelabs.com (10.174.181.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.947.12; Thu, 9 Mar 2017 07:04:43 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0947.020; Thu, 9 Mar 2017 07:04:43 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: hddimg 4GB limit?
Thread-Index: AQHSmI6wAkgqHRn5FkGO07UmiSttYKGMFSBV
Date: Thu, 9 Mar 2017 07:04:43 +0000
Message-ID: <DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210@DM5PR0101MB2953.prod.exchangelabs.com>
In-Reply-To: <DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
x-originating-ip: [25.174.180.132]
x-ms-office365-filtering-correlation-id: 4ad2f8b8-6c43-4a66-5c31-08d466ba9063
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2955; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2955;
	7:VQXwyhpgG8q+rnZmR3fZuGfQmLI3Gu+Bhv8qlDgweHGlOkY19H4j8CU5m3Q8y0QZ7htgnHzHExI1OHU6zwQVLX28wYs1VMm1LIBRwkV21iYdRVk+ZtQ1/EcS32KAJyFY9cYuhYFfXux02STd2l5eGlEq6YI2UbLA+/ihd0Aa1BNlHYeduDJBBfaqALq17VmssCMXQ2fZrpI0fPS9mCwJHwnC8gGOC95o0XOHANqExdUdzVHfrdPWjeRZCdsy40lU1CASuG1e80BkNN8JnhWxKYjo1OF2kFfh8vmrVMY07RPr5FkJ2n5D5Oqs3qxDzWDT6arwyww7uS0yS99nKuqshw==
x-microsoft-antispam-prvs: <DM5PR0101MB29558B6174279F6B9EA7292BB6210@DM5PR0101MB2955.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123560025)(20161123562025)(20161123555025)(20161123558025)(20161123564025)(6072148);
	SRVR:DM5PR0101MB2955; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2955; 
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(377454003)(55016002)(106116001)(3660700001)(229853002)(53936002)(99286003)(2501003)(66066001)(19627405001)(2906002)(25786008)(189998001)(3846002)(102836003)(3280700002)(2351001)(7736002)(86362001)(2950100002)(74316002)(6916009)(5660300001)(7696004)(6116002)(54356999)(6506006)(50986999)(6436002)(8676002)(5640700003)(122556002)(77096006)(76176999)(2900100001)(6246003)(110136004)(8936002)(54896002)(38730400002)(53546006)(33656002)(1730700003)(81166006)(9686003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2955;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2017 07:04:43.6432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2955
Subject: Re: hddimg 4GB limit?
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
X-List-Received-Date: Thu, 09 Mar 2017 07:19:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210DM5PR0101MB2953_"

--_000_DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

I found hddimg 4GB-1 bye restriction because it creates a file called rootf=
s.img which is copied into FAT.

That means rootfs.img size must be below FAT max file size...


________________________________
From: Takashi Matsuzawa
Sent: Thursday, March 9, 2017 1:51 PM
To: yocto@yoctoproject.org
Subject: hddimg 4GB limit?


Hello, Yocto.


I have looked into hddimg file.

According to image-live.bbclass, it is hardcoded to maximum 4GB size.

But should not this more large?

hddimg is generated by mkdosfs -F 32 that means the filesystem capacity is =
larger than 4GB.


I just hit this limit when generating an image that exceeds 4GB size.


I think I am look into using hdddirect instead (hopefully it does not have =
this limit?),

but I also want to check if hddimg 4GB limitation has some practical reason=
 (other than above image-live.bbclass checking).


--_000_DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210DM5PR0101MB2953_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello.</p>
<p>I found&nbsp;hddimg 4GB-1 bye restriction because it creates a file call=
ed rootfs.img which is copied into FAT.</p>
<p>That means rootfs.img size must be below FAT max file size...</p>
<p><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Thursday, March 9, 2017 1:51 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> hddimg 4GB limit?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello, Yocto.</p>
<p><br>
</p>
<p>I have looked into hddimg file.</p>
<p>According to image-live.bbclass, it is hardcoded to maximum&nbsp;4GB siz=
e.</p>
<p>But should not this more large?</p>
<p><span style=3D"font-size:12pt">hddimg is generated by mkdosfs -F 32 that=
 means the filesystem capacity is larger than 4GB.</span><br>
</p>
<p><br>
</p>
<p>I just hit this limit when generating an image that exceeds 4GB size.</p=
>
<p><br>
</p>
<p>I think I am look into using hdddirect instead (hopefully it does not ha=
ve this limit?),</p>
<p>but I also want to check if hddimg 4GB limitation has some practical rea=
son (other than above&nbsp;image-live.bbclass checking).</p>
<p><br>
</p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210DM5PR0101MB2953_--
