Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 283FBE003D7; Sun, 29 Jan 2017 22:39:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4142 seconds by postgrey-1.32 at yocto-www;
	Sun, 29 Jan 2017 22:38:58 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0048.outbound.protection.outlook.com [104.47.38.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 088D2E0030B
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 22:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=WvmhXd/2BsnFe3S0Tmbk2zMKTBkaw59g/ww7k4FGlaA=;
	b=PPEuOk4BPzhly9WhsM+6WreV6gPFLzB/mActtvVLHvNaF0hBB9vKhLUw/MDwA+jFSzckytkRFZcvewUyYEiMNDLaOCiwJ/IKzFJrRFuXewQnVmO8K5dUq5UQJhpcogJSHej71d+LeEGSEHKE3cKyjo4ZKEY091HNzkipq11KFnQ=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.860.13; Mon, 30 Jan 2017 06:38:56 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0860.026; Mon, 30 Jan 2017 06:38:56 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: patching .bbclass files?
Thread-Index: AQHSepyncpo3Pz/Vkka7Vim2pvlBLqFQkXeu
Date: Mon, 30 Jan 2017 06:38:55 +0000
Message-ID: <CY1PR0101MB159426412AA0C373C827823BB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
In-Reply-To: <CY1PR0101MB1594DCF757DEC39182FB3F8FB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: e0eddccb-4f91-4970-f8b5-08d448daaa25
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1594; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1594;
	7:jXO9ipTc5wbe8YgeefyPLdjMSejKpcN0k1THAnSYcifLN6R0+XJCWbkXIt4Z1vOwCK6G/SftqK/q9YrWg61uV1bJbUN0yToePd2GB+PS4UUr6zyPJrBBh0VjaWeserVNOMYnkBAjfGH2KGEBbL2Q75yq0tvVfKUX/6WXSaUzLFLpfd6YqcxKCfska38IWJnDhhKPbwndmt7C1WcKYtQOmiNbfTCxvyIGApDBHlSvzper6Dx7o4cl8ZJBBrYhbEotXc76q1SLUDtxh/JMyMnXa2NoaAWR1Lydef3/JkGJUr6WLdwxOvt4YY56CGp81rJD7btZLqC45Et9+VtT7j8XoT+EwExwCnk7XvpwqieMiJg4sZ+V2MBAciqnpAYnqRmqGMWTXGyk7s/VtqMiKCkRcdBmexBMhVLi1i4rPW3XcAVCJzd59wZOnhsd2WIGOUeDLBGGhnqc9PXOM8Zcw+K5OA==
x-microsoft-antispam-prvs: <CY1PR0101MB1594CD45DBF69B6F4E3A3B1DB64B0@CY1PR0101MB1594.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(228788266533470)(211936372134217);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041248)(20161123564025)(20161123562025)(20161123555025)(20161123560025)(6072148);
	SRVR:CY1PR0101MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1594; 
x-forefront-prvs: 0203C93D51
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(377454003)(199003)(106356001)(106116001)(122556002)(189998001)(107886002)(76176999)(6916009)(2950100002)(54356999)(97736004)(6606003)(86362001)(33656002)(6506006)(8676002)(105586002)(3280700002)(38730400001)(6436002)(81156014)(229853002)(81166006)(8936002)(1730700003)(77096006)(50986999)(6116002)(3846002)(102836003)(6306002)(54896002)(450100001)(2906002)(19627405001)(99286003)(2351001)(5640700003)(55016002)(25786008)(110136003)(53936002)(3660700001)(9686003)(7736002)(74316002)(2900100001)(101416001)(3900700001)(92566002)(68736007)(66066001)(5660300001)(2501003)(7696004)(142923001)(21314002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1594;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2017 06:38:55.8996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1594
Subject: Re: patching .bbclass files?
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
X-List-Received-Date: Mon, 30 Jan 2017 06:39:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159426412AA0C373C827823BB64B0CY1PR0101MB1594_"

--_000_CY1PR0101MB159426412AA0C373C827823BB64B0CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Well, doing repo -diff and apply produced patch when I newly repo sync coul=
d work.


https://groups.google.com/forum/#!topic/repo-discuss/43juvD1qGIQ


________________________________
From: Takashi Matsuzawa
Sent: Monday, January 30, 2017 11:00 AM
To: yocto@yoctoproject.org
Subject: patching .bbclass files?


Hello Yocto
I am curious if there is a better way of doing this manually every time I r=
e-synch to Yocto based BSP.

Say, I have a patch or customization I want to try on .bbclass files (inste=
ad of .bb or .bbappend, or the source files that are fetched.)
The reason for this is sometimes I want to try the latest fix to the BSP wh=
ile building old versino of my image, or debbuging image by modifying the b=
uild system files.

I think by using .bbappend files I can try modification to the .bb file beh=
aviros, but it does not for .bbclass files.
I could add slightly modified xxx.bbclass to my own layer so that it may ov=
erride what is available in poky/meta/..., but it may mean I just duplicate=
 a lot of bitbake related files in my layer for just a few lines of changes=
.

'repo' having a feature copying files when repositories are synched.  This =
may work for me?

Ideally, the poky and other remote gits have branches or releases that have=
 the patches I want to try, or I should be using the latest releases that s=
hould include meaningful fixes already.
But it is not possible always.


--_000_CY1PR0101MB159426412AA0C373C827823BB64B0CY1PR0101MB1594_
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
<p>Well, doing repo -diff and apply produced patch when I newly repo sync c=
ould work.</p>
<p><br>
</p>
<p></p>
<div>https://groups.google.com/forum/#!topic/repo-discuss/43juvD1qGIQ</div>
<div><br>
</div>
<p></p>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Takashi Matsuzawa<br>
<b>Sent:</b> Monday, January 30, 2017 11:00 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> patching .bbclass files?</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div><span style=3D"font-size:12pt">Hello Yocto</span><br>
</div>
<div>I am curious if there is a better way of doing this manually every tim=
e I re-synch to Yocto based BSP.</div>
<div><br>
</div>
<div>Say, I have a patch or customization I want to try on .bbclass files (=
instead of .bb or .bbappend, or the source files that are fetched.)</div>
<div>The reason for this is sometimes I want to try the latest fix to the B=
SP while building old versino of my image, or debbuging image by modifying =
the build system files.</div>
<div><br>
</div>
<div>I think by using .bbappend files I can try modification to the .bb fil=
e behaviros, but it does not for .bbclass files.</div>
<div>I could add slightly modified xxx.bbclass to my own layer so that it m=
ay override what is available in poky/meta/..., but it may mean I just dupl=
icate a lot of bitbake related files in my layer for just a few lines of ch=
anges.</div>
<div><br>
</div>
<div>'repo' having a feature copying files when repositories are synched. &=
nbsp;This may work for me?</div>
<div><br>
</div>
<div>Ideally, the poky and other remote gits have branches or releases that=
 have the patches I want to try, or I should be using the latest releases t=
hat should include meaningful fixes already.</div>
<div>But it is not possible always.</div>
<div><br>
</div>
<p></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0101MB159426412AA0C373C827823BB64B0CY1PR0101MB1594_--
