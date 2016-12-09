Return-Path: <RGC@hms.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3276DE00C5B; Fri,  9 Dec 2016 03:58:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0044.outbound.protection.outlook.com [104.47.2.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86291E00B96
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2016 03:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hms365.onmicrosoft.com; s=selector1-hms-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=E7eBEZQZglCbnteGaljjoa7fxERKfsWlNaZeRDh0mPY=;
	b=qkxfnvqaNikXGqXU6uwUPHNJ8Bxq1dDtP3wyrtORFnFR4pb/cHfBu5CF8I/rCZkGOQiHpTuv6q51M1jH7/+kjqbzyn8gMD1Qm8i9po3b6ewH7BtLRTWmNL7acv4u290z68lY03RKC+rWDiCEdYqK3bVkbGGaj/f3oLZ+oHD8KKQ=
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com (10.166.12.135) by
	DB5PR0601MB1992.eurprd06.prod.outlook.com (10.166.12.135) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.9; Fri, 9 Dec 2016 09:24:41 +0000
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) by
	DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) with
	mapi id 15.01.0761.018; Fri, 9 Dec 2016 09:24:41 +0000
From: Rafael Gago Castano <RGC@hms.se>
To: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] libssp_nonshared.a not present in native SDK.
Thread-Index: AQHSUGL4NIxqRMiI1EOprFRfBZV2SKD+ONDWgABSUYCAAKjqqIAABngs
Date: Fri, 9 Dec 2016 09:24:41 +0000
Message-ID: <DB5PR0601MB199284DCC3769AF351189DCAC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840@DB5PR0601MB1992.eurprd06.prod.outlook.com>,
	<4750708.C3i3MIxDut@peggleto-mobl.ger.corp.intel.com>,
	<DB5PR0601MB1992734AEC739F080CCEC06FC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
In-Reply-To: <DB5PR0601MB1992734AEC739F080CCEC06FC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=RGC@hms.se; 
x-originating-ip: [25.165.200.132]
x-ms-office365-filtering-correlation-id: b9df0467-ad5c-4b05-b06b-08d4201534ab
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB5PR0601MB1992; 
x-microsoft-exchange-diagnostics: 1; DB5PR0601MB1992;
	7:rnTMXEz5PRhlDerHt+0Um2w/6pIp1g7IRg/i/HegfHx0wWmz5Cydk20U4SiUNMF+VtCdSHvjT0xM65w4mIoV3dmnQUdTSJW9nxFB/SbpJrQTBkqGLFCxtd9EvmdnCAUyALMHoldkLfhKvjenppu41NNhigmVJdhRNq7dipvSJkAhvZYP0bDQmf6x5gRhi2MgqmfmAhn3hYPxbEqwoX/IyIN0a7r6acPdLmYxjlTNTgBjn19OkHFTXqdSYuSg9eGXopdA/pUENcl6CQzrLinyQNwlVxrVvPefuTsixMJZlBHa7FEfV11YY+Jz8VYmBfOBjdeMiiYVLUntw2G2V0LsJeJTqiZefGNpYZch3kJlMPl3n59LOvE1seFwUntADxz4EHnX7zAz6Hm4SR8/b7GTQwK/N3Z6+/DIM8FXYnLy/o3i/wPDgE7miPtoc8QmnaVLhfjMeaD+4/LKlq2+pxEMOw==
x-microsoft-antispam-prvs: <DB5PR0601MB19923C381C556EB149A6AA5BC2870@DB5PR0601MB1992.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123564025)(20161123560025)(20161123562025)(20161123555025)(6072148);
	SRVR:DB5PR0601MB1992; BCL:0; PCL:0; RULEID:;
	SRVR:DB5PR0601MB1992; 
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(39450400003)(51444003)(199003)(189002)(3660700001)(93886004)(3280700002)(66066001)(2950100002)(2501003)(6916009)(97736004)(229853002)(6606003)(110136003)(92566002)(2900100001)(38730400001)(7696004)(77096006)(606004)(5660300001)(7736002)(74316002)(7906003)(6506006)(101416001)(86362001)(189998001)(8936002)(106116001)(105586002)(2351001)(6116002)(102836003)(19627405001)(74482002)(3846002)(76176999)(106356001)(8676002)(50986999)(122556002)(54356999)(575784001)(33656002)(2906002)(9686002)(76576001)(68736007)(6436002)(81166006)(4326007)(81156014);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR0601MB1992;
	H:DB5PR0601MB1992.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hms.se does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hms.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2016 09:24:41.3709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7c1590-4488-4e42-bc9c-15218f8ac994
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR0601MB1992
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Fri, 09 Dec 2016 11:58:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR0601MB199284DCC3769AF351189DCAC2870DB5PR0601MB1992_"

--_000_DB5PR0601MB199284DCC3769AF351189DCAC2870DB5PR0601MB1992_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello again.


I tried to fix this in my layers by adding a "recipes-devtools/gcc_5.3.bbap=
pend" file to containing the additions that you did to poky on...


http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D1c0fc7fcf7772ef=
8774f623126050972f526fe83


...as I think that adding these dependencies to gcc is the right thing.


Running "bitbake gcc -e" shows the next:


# $RRECOMMENDS_gcc
#   rename from RRECOMMENDS_${PN} data.py:169 [expandKeys]
#     "     libssp     libssp-dev "
RRECOMMENDS_gcc=3D"     libssp     libssp-dev "

So the recipe is at least processed.

The problem is that "libssp_nonshared.a" is still not present on the SDK. I=
t may happen that this is still happening in poky.

--_000_DB5PR0601MB199284DCC3769AF351189DCAC2870DB5PR0601MB1992_
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
<p>Hello again.</p>
<p><br>
</p>
<p>I tried to&nbsp;fix this in my layers&nbsp;by adding&nbsp;a &quot;r<span=
 style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple C=
olor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe U=
I Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">=
ecipes-devtools/</span>gcc_5.3.bbappend&quot;
 file to containing the additions that you did to poky on...</p>
<p><br>
</p>
<p><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D1=
c0fc7fcf7772ef8774f623126050972f526fe83" class=3D"OWAAutoLink" id=3D"LPlnk6=
02485" previewremoved=3D"true">http://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/commit/?id=3D1c0fc7fcf7772ef8774f623126050972f526fe83</a><br>
</p>
<p><br>
</p>
<p>...as I think that adding these dependencies to gcc is the right thing.<=
/p>
<p><br>
</p>
<p><span style=3D"font-size: 12pt;">Running &quot;bitbake gcc -e&quot; show=
s the next:</span><br>
</p>
<p><span style=3D"font-size: 12pt;"><br>
</span></p>
<p><span style=3D"font-size: 12pt;"></span></p>
<div># $RRECOMMENDS_gcc</div>
<div># &nbsp; rename from RRECOMMENDS_${PN} data.py:169 [expandKeys]</div>
<div># &nbsp; &nbsp; &quot; &nbsp; &nbsp; libssp &nbsp; &nbsp; libssp-dev &=
quot;</div>
<div>RRECOMMENDS_gcc=3D&quot; &nbsp; &nbsp; libssp &nbsp; &nbsp; libssp-dev=
 &quot;</div>
<div><br>
</div>
So the recipe is at least&nbsp;processed.
<p></p>
<p></p>
<div><br>
</div>
<div>The problem is that &quot;libssp_nonshared.a&quot; is still not presen=
t on the SDK.&nbsp;<span style=3D"font-size: 12pt;">It may happen that this=
 is&nbsp;</span><span style=3D"font-size: 12pt;">still happening in poky.</=
span></div>
<div><span style=3D"font-size: 12pt;"></span></div>
</div>
</body>
</html>

--_000_DB5PR0601MB199284DCC3769AF351189DCAC2870DB5PR0601MB1992_--
