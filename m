Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C78C0E0049D; Tue, 24 Jan 2017 00:10:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 11901 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Jan 2017 00:10:18 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0067.outbound.protection.outlook.com [104.47.34.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71A60E00405
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 00:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=BavYi7yMO40twtjWK05cJFewr+rOZs8A2CBgi9jK2BA=;
	b=AcbTQKvRbILuNfStuRxaAqcCrBi29BBhThZ26PzrC1bLbHUIgzhS9KRDs1xEo3OXNi7ywyTsdwBWHfaoek2vmVixlXAaFLKYjWAs/C117xdPwGnhopo0fY7R+CCEOp6q7/BSMkfPWZOaICkuFQlebWlKBlNdNqUsflmcnfztbe0=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.860.13; Tue, 24 Jan 2017 04:37:10 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0860.021; Tue, 24 Jan 2017 04:37:09 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SRC_URI patch slection
Thread-Index: AQHSdfk25JjJh53cukuxVoefPD2yGg==
Date: Tue, 24 Jan 2017 04:37:09 +0000
Message-ID: <CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-office365-filtering-correlation-id: 840427b5-b630-44df-98ca-08d44412a8e2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:CY1PR0101MB1596; 
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	7:5APEBcDOtM78XuFj5a0lGBRArRkpbTXigVbW6YZ7ajgXYKc0RRbdgGTil2EKw4pslEQcsYrvRYt+moue8mgKlRM1GDoYSmw0a8tjGavhkiPznPpNI9Vh5vh0P3agRFdJi5vb6PnlC+QxpG+GMA+RSXou5Aj0zhSxL5dTk2BB/4MQz6Mj98Wi2ZeFCZCiMToq0rW83hIKtj/aVzOJT5zYDOqvPbQtxWdcRwyhYXU8k/uid7kn27VltQ2jfspq0IMV15WuSZUuap0hHyiSrd34uXdvGCgy3/UZM7TJ269jF186l97LUeozXLNNCwyIwGWwKsdLvYhM5n2b8Bk1bY9s1VH+SPu77y8PaaR5Q+h31KniDYMcVZr2ehqtHmbvnzkquXS8o2kyd0SPreikY15YbtAIdGmZxNfm67lyfvMo76PyQHrwycg2jGZRPYP9yma1eYhcIlx1xodwzcrkonnj4Q==
x-microsoft-antispam-prvs: <CY1PR0101MB15961F08E5DF24FECB0EBA93B6750@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123564025)(20161123555025)(20161123562025)(20161123560025)(6072148);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(45984002)(189002)(199003)(54356999)(2501003)(6506006)(38730400001)(97736004)(77096006)(92566002)(25786008)(6436002)(5640700003)(189998001)(8936002)(122556002)(9686003)(99286003)(55016002)(1730700003)(81156014)(6606003)(2906002)(54896002)(7736002)(68736007)(7696004)(110136003)(6916009)(3280700002)(8676002)(81166006)(50986999)(450100001)(7116003)(105586002)(19627405001)(86362001)(3846002)(107886002)(66066001)(102836003)(3660700001)(6116002)(2900100001)(106356001)(106116001)(53936002)(33656002)(74316002)(5660300001)(2351001)(101416001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2017 04:37:09.7183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Subject: SRC_URI patch slection
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
X-List-Received-Date: Tue, 24 Jan 2017 08:10:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750CY1PR0101MB1594_"

--_000_CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

I have following recipe files and want to remove xxxx.patch added to SRC_UR=
I at ii).


i) xxxx_git.bb - specifies RC_URI revision by SRCREV parameter

ii) xxxx_%.bbappend - adds several xxxx.patch to SRC_URI

iii) xxxx_%.bbappend - my recipe


I want  to make it (removal) conditional to SRCREV value.

i), ii) and iii) are maintained by 3 different people, and xxxx.patch is ne=
eded or not needed according to the source revision.


In other words, in my iii) recipe I could say SRC_URI_remove =3D "file://xx=
xx.patch", but I want to make it only for specific SRCREV revisions.

Or any other way of writing my iii) recipe for this?


Thank you very much for your advice.


--_000_CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750CY1PR0101MB1594_
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
<p>I have following recipe files and want to remove xxxx.patch added to SRC=
_URI at ii).&nbsp;</p>
<p><br>
</p>
<p><span style=3D"font-size: 12pt;">i)&nbsp;xxxx_git.bb - specifies RC_URI =
revision by SRCREV parameter</span><br>
</p>
<p>ii)&nbsp;xxxx_%.bbappend - adds several xxxx.patch to SRC_URI</p>
<p></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
iii)&nbsp;xxxx_%.bbappend - my recipe</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
I want &nbsp;to make it (removal) conditional to SRCREV value.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
i), ii) and iii) are maintained by 3 different people, and xxxx.patch is ne=
eded or not needed according to the source revision.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
In other words, in my iii) recipe I could say SRC_URI_remove =3D &quot;file=
://xxxx.patch&quot;, but I want to make it only for specific SRCREV revisio=
ns.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Or any other way of writing my iii) recipe for this?</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Thank you very much for your advice.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750CY1PR0101MB1594_--
