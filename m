Return-Path: <Ankit.Rastogi@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E75AE0108F; Mon, 18 Jun 2018 22:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1036 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Jun 2018 22:51:45 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0044.outbound.protection.outlook.com [104.47.100.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16D65E0044F
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 22:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Qchb8zV6gsfEbVZ12CLee7y4KrXShDeY2XLjvtqyO4w=;
	b=Ed4CjFPSiSuHEcPLTlgMYBkBsi4hjUBco9fvmDG72WRcA9CrJvQICUrluVcxJkASodV5ZL9woCC+ClT7J/mrnrD3tzP6XcaTMkYe+VyIWQEsA/raYdYqQeDWyczApsa80C8h62i6glV+uO40bXNRA9dt7gQR9Fp2cQcvLaa1+/k=
Received: from BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM (52.133.132.139) by
	BM1PR0101MB1971.INDPRD01.PROD.OUTLOOK.COM (10.174.223.137) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.14; Tue, 19 Jun 2018 05:19:20 +0000
Received: from BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM
	([fe80::3923:5afd:3d96:579f]) by
	BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM
	([fe80::3923:5afd:3d96:579f%10]) with mapi id 15.20.0863.016;
	Tue, 19 Jun 2018 05:19:20 +0000
From: Ankit Rastogi <Ankit.Rastogi@kpit.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to export kernel specific headers to userspace
Thread-Index: AQHUB4ymBTF/8rn+YUeAI1HnLX+rsqRnCoaK
Date: Tue, 19 Jun 2018 05:19:20 +0000
Message-ID: <BM1PR0101MB12830193263FDC30B66D225E91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Ankit.Rastogi@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BM1PR0101MB1971;
	7:41mheqCoaTaaPg9weDnIxLig6EgpcpQoRM93TA4Ou4GvMpFHNJyWfQDm8U7SE0lTqkyzWclwDffDjkPTjZCUjw/bLFZphc7e5DdCdITIjZE4ABvc24B2EBqXjeSNp9ceGPTN4jFRkV3YrpzgS5KhVb4CXHMspudX0gPbD+nB6adu9pzlmSYIFaFw5CYqPk6S2aL4dPn1gZsh9Wwa/i0FzZSi6LhEeD7CYIfmr5fu07m3X7f8MIQEcYQpJFDtsQ2p
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 1b02bb77-7a65-415e-35f8-08d5d5a43683
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:BM1PR0101MB1971; 
x-ms-traffictypediagnostic: BM1PR0101MB1971:
x-microsoft-antispam-prvs: <BM1PR0101MB197195A6F7FEDC3E7114F83B91700@BM1PR0101MB1971.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(93006095)(93001095)(10201501046)(3002001)(6055026)(149027)(150027)(6041310)(20161123564045)(20161123558120)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011)(7699016);
	SRVR:BM1PR0101MB1971; BCL:0; PCL:0; RULEID:;
	SRVR:BM1PR0101MB1971; 
x-forefront-prvs: 07083FF734
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(346002)(39380400002)(39850400004)(366004)(189003)(199004)(7696005)(2501003)(8936002)(76176011)(5250100002)(102836004)(26005)(66066001)(6506007)(59450400001)(55236004)(2940100002)(86362001)(2351001)(68736007)(478600001)(6436002)(3660700001)(11346002)(3280700002)(446003)(5640700003)(486006)(476003)(2906002)(186003)(25786009)(106356001)(99286004)(5660300001)(6606003)(6916009)(72206003)(316002)(8676002)(54896002)(9686003)(74316002)(97736004)(14454004)(6116002)(105586002)(81166006)(33656002)(1730700003)(55016002)(7736002)(19627405001)(81156014)(2900100001)(53936002)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BM1PR0101MB1971;
	H:BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: b7VKBTFWi2RgbBU0ZiJCxo6qWfy0+EDIXJAKik8NbHySTAVco1PJ7GJQjXdPkjQnZEqm8mIVlOaMPBKcHsiJ75d+FFONIMbv8IWAIGGkwKTscnp6EV9Gbq4YlZwuABV1FnfF8JgYKNr4GOUOcJxWQ5t2Fv16+QHgYUyUeOrUT9PYzPxVRhJI9VyV7FAEwpDnrQAcYtTICp4UN7dPD7djODeKfLBE6mOH5ALl2cr5dkEkEXSaE5msHzAxLNknxigGq8XMxPqQZ1qpZ4NheGbeXUXp0pN7ZgtdWHjU8woudVC8Y4Jk05yFrogNwcfxiaYp5RhN8Zkj9PdprqXIlx3V4w==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b02bb77-7a65-415e-35f8-08d5d5a43683
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2018 05:19:20.6763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR0101MB1971
Subject: How to export kernel specific headers to userspace
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
X-List-Received-Date: Tue, 19 Jun 2018 05:51:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB12830193263FDC30B66D225E91700BM1PR0101MB1283_"

--_000_BM1PR0101MB12830193263FDC30B66D225E91700BM1PR0101MB1283_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Can someone provide any pointers on how to export kernel specific headers t=
o userspace?

I am getting below error while building our one of the component which requ=
ires kernel uapi headers.

Error Received:
 /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such file o=
r directory
> |  #include <linux/hdmi_info.h>
> |           ^~~~~~~~~~~~~~~~~~~
> | compilation terminated.

In yocto 2.5, userspace is boot strapped with linux-libc-headers package wh=
ich uses a set of uapi headers from Linux kernel 4.15. Can someone suggest =
for custom kernels, how to expose uapi headers to userspace? Thus create a =
separate linux-apl-headers package with those files.

Thanks,
Ankit

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_BM1PR0101MB12830193263FDC30B66D225E91700BM1PR0101MB1283_
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
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><span style=3D"font-size: 11pt;">=
Hi,</span><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;App=
le Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe =
UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<div><br>
<span style=3D"font-size:11pt"></span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">Can&nbsp;someone provide any pointers o=
n how to export kernel specific headers to userspace?</span><br>
<span style=3D"font-size:11pt"></span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt"><br>
</span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">I am getting below error while building=
 our one of the component which requires kernel uapi headers.</span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt"><br>
</span></div>
<span style=3D"font-size:11pt"></span>
<div><span><span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">Error Received:</span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">&nbsp;/hdmi-capture/main.c:16:10: fatal=
 error: linux/hdmi_info.h: No such file or directory</span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">&gt; |&nbsp; #include &lt;linux/hdmi_in=
fo.h&gt;</span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">&gt; |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;^~~~~~~~~~~~~~~~~~~</span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:11pt">&gt; | compilation terminated.</span></=
div>
<span style=3D"font-size:11pt"></span>
<div><br>
<span style=3D"font-size:11pt"></span></div>
<span style=3D"font-size:11pt"></span>
<div><span style=3D"font-size:12pt"><span style=3D"font-size:11pt">In yocto=
 2.5, userspace is boot strapped with linux-libc-headers package which uses=
 a set of uapi headers from Linux kernel 4.15. Can someone suggest for&nbsp=
;</span><span style=3D"font-size:11pt">custom
 kernels, how&nbsp;</span><span style=3D"font-size:11pt">to expose uapi hea=
ders to userspace? Thus create a separate linux-apl-headers package&nbsp;</=
span></span><span style=3D"font-size:11pt">with those files.</span><br>
</div>
<div><span style=3D"font-size:12pt"><br>
</span></div>
<div><span style=3D"font-size:11pt">Thanks,</span></div>
<div><span style=3D"font-size:11pt">Ankit</span></div>
<br>
</span></div>
</div>
</div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_BM1PR0101MB12830193263FDC30B66D225E91700BM1PR0101MB1283_--
