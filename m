Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71F30E009E2; Fri, 27 Apr 2018 07:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.4.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 19735 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Apr 2018 07:57:35 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-oln040092004053.outbound.protection.outlook.com [40.92.4.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F267E0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 07:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Rvmai2ubq3c7Y7B2/Oxar6rxyR4maVJJkg6/lTVyN7U=;
	b=CT0DY7PULjJn+YxVBPZYwtRrd2ZLO6Er041UOY2cXAWn7yDOo/eI/BwHmCBg7vRuY0WHFruc/emAugkksQ/rY8rYt5p9V2VgsXidfxzk2+nXCsJN8CceGWOOUFhItOSfnzNRNXGknVSGvlzDzVSjJMfNooGY72hGCBuULV+SIUjLaN6EqqffgPfxtVyyKGoRQIc5Bib8OHOxK8hUQ1TkxW2IPdIcRXTTjvb0MwRQ8BKySysM1qsMdABAjDFMkFpy7okSDY0AQQJFZVXCFGLH8t3PykMD1um9A+aYXq9Cq4FmRAKBIiugupvRV8X0q9txnIhPHTBHzYY5Pe5pYmAJSQ==
Received: from CY1NAM02FT005.eop-nam02.prod.protection.outlook.com
	(10.152.74.59) by CY1NAM02HT017.eop-nam02.prod.protection.outlook.com
	(10.152.74.82) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.696.11;
	Fri, 27 Apr 2018 05:56:16 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.74.54) by
	CY1NAM02FT005.mail.protection.outlook.com (10.152.74.117) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.696.11 via Frontend Transport; Fri, 27 Apr 2018 05:56:16 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0696.020;
	Fri, 27 Apr 2018 05:56:16 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: "Waiting for Removable Media" hang
Thread-Index: AQHT3ex02b65xtcklUGo7h3ur3SXzA==
Date: Fri, 27 Apr 2018 05:56:16 +0000
Message-ID: <MWHPR19MB11831CD5E5251FD498AE1F1BC58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183FFEEF33178BA3331F6A6C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<A05DCA0C0293664FB237A9C4B0E55E4601515890@PGSMSX107.gar.corp.intel.com>,
	<MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183CCEDF7F16991BF5BCCA9C58E0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8605A5B1FAC0ED470E72421DA89F1FFE3A149D343C318E51BD23FC3323208CC1;
	UpperCasedChecksum:14F9E6645C7D38826044620AC3D01F28BC6F78248B1A9A77BFFD3A5518AF8EB9;
	SizeAsReceived:7319; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [C0Sogk8KqpWlD9X3m+MIgY6iuY99VP2WOJ5kWnlHgQFy6J/9HMLHam2aEqTOTUM6]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1NAM02HT017;
	7:V+nvProRVq4KeGJKTS0h0pJZICeOPTqsJeGJBnFdmEFBdQasORh0Wt/y3/H/eYH6Ztd9ER1eoXwaVamuvvKjvXCScywOVd58rMDr93DZWZ7bttwPTJ015EdU3oQNxG/nAOLHV8bMZRJzHY4+P+18r5oj0DF7XdRrtJT7YD1C9cIsFdUjXI2C4cMM990En7utzSHFGfjmiMv3+HJfoR4ss2NQrVYEZKK1+8JLZlJEnpzjz6Q7XEGYJmw8ir3k6nHf;
	23:N7HCJUAMM69YtKTdtJmq9nqp5W42LX6gOrNmJq8sFsj0Uith0EDLlbM9/F8oaAj0SyyJqBOkdMWA2Sq+RYdwR+V8gZxMNzN1jgxMhymla7kPHHe523vQAiGVtOX3ruNEBWNwRnKDHJfV/q66qKY1aQ==;
	23:Ra2e+K+g4IVdgv84RsbWqsTxCk9kEHCA2pe6r6JvuSVEpTMDCUPStkQKYvrQVzCZVDdp+3gJ6MtL8hKCSytuwXWy8H/4Cyb0crFZi1hXophrHNEH+6kxxHypbFmFgYvJufpnphCGP/Hgwr4PEcSfXg==
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:CY1NAM02HT017; 
X-MS-TrafficTypeDiagnostic: CY1NAM02HT017:|CY1NAM02HT017:|CY1NAM02HT017:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CY1NAM02HT017; BCL:0; PCL:0; RULEID:; SRVR:CY1NAM02HT017; 
x-forefront-prvs: 0655F9F006
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:CY1NAM02HT017;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: e2yOhXjM8nQVlgaPqMiGNjydAx8j/Zkfhb4TZXLs/wXO1lVnWv6AEimlza/56JYn0Ij8qJNUn/y1DOMbi+ftVq0hyOJeEuw4/H6MylpCr2FVRdYgVYORPbOD8nI3d8bqEYWJ58pscL/t0MH9g1CR1LomZiHsLAAsI2g16PIVFSmXpzGUWPfQWAJ0oi1HzRK2
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: f7677767-efe0-42de-de30-08d5ac0396fc
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: f7677767-efe0-42de-de30-08d5ac0396fc
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2018 05:56:16.0514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT017
X-OriginatorOrg: hotmail.com
Subject: "Waiting for Removable Media" hang
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
X-List-Received-Date: Fri, 27 Apr 2018 14:57:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11831CD5E5251FD498AE1F1BC58E0MWHPR19MB1183namp_"

--_000_MWHPR19MB11831CD5E5251FD498AE1F1BC58E0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I use Krogoth (released 4/2016) Camelback Mountain BSP, trying to do networ=
k boot.  Initialization hangs indefinitely with "Waiting for Removable Medi=
a".  This is a big issue for us, because we need to deal with the diskless =
situation.


It looks like this issue was here some 7-8 years ago.  It was deemed fixed =
then:


http://poky.yoctoproject.narkive.com/2tXZ1euZ/patch-0-1-fix-for-endless-wai=
ting-for-removable-media-problem


Then, in 2016, someone ran into something similar:  https://lists.yoctoproj=
ect.org/pipermail/poky/2016-September/010706.html


Anyone knows if this is fixed in later releases (e.g. end of 2017)?


Raymond

--_000_MWHPR19MB11831CD5E5251FD498AE1F1BC58E0MWHPR19MB1183namp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, Helvetica, EmojiFont, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"=
ltr">
<p style=3D"margin-top:0;margin-bottom:0">I use Krogoth (released 4/2016)&n=
bsp;Camelback Mountain BSP, trying to do network boot. &nbsp;Initialization=
 hangs indefinitely with&nbsp;&quot;Waiting for Removable Media&quot;. &nbs=
p;This is a big issue for us, because we need to deal with the diskless
 situation.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">It looks like this issue was here=
 some 7-8 years ago. &nbsp;It was deemed fixed then:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><a href=3D"http://poky.yoctoproje=
ct.narkive.com/2tXZ1euZ/patch-0-1-fix-for-endless-waiting-for-removable-med=
ia-problem" class=3D"OWAAutoLink" id=3D"LPlnk366738" previewremoved=3D"true=
">http://poky.yoctoproject.narkive.com/2tXZ1euZ/patch-0-1-fix-for-endless-w=
aiting-for-removable-media-problem</a><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Then, in 2016, someone ran into s=
omething similar: &nbsp;<a href=3D"https://lists.yoctoproject.org/pipermail=
/poky/2016-September/010706.html" class=3D"OWAAutoLink" id=3D"LPlnk278969" =
previewremoved=3D"true">https://lists.yoctoproject.org/pipermail/poky/2016-=
September/010706.html</a></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Anyone knows if this is fixed in =
later releases (e.g. end of 2017)?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<div style=3D"color: rgb(0, 0, 0);">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,Helvetica,EmojiFont=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<div style=3D"color:rgb(0,0,0)">
<div lang=3D"EN-US">
<div class=3D"x_x_WordSection1">
<div id=3D"x_x_divtagdefaultwrapper">
<p><span style=3D"font-family:&quot;Calibri&quot;,sans-serif; color:black">=
</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11831CD5E5251FD498AE1F1BC58E0MWHPR19MB1183namp_--
