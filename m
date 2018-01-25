Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B86E00E21; Thu, 25 Jan 2018 10:18:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.102 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10796 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Jan 2018 10:18:14 PST
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0102.outbound.protection.outlook.com [104.47.41.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D202DE00CF5
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=eNLi7dAXD5s41khf4ygkwR5qC1zRJ23yAi9mKbpBGUg=;
	b=XglydAEZXnAYqx5reC8Bs3PM4OdrD3MMs9HUHAgax/T0gmPe8akrcvc62aTavp0RWpa3QnKCPWxXdG9HVbwE5den/hCVfq0nCpjs4/yvtqToL3vAYMvywYrIl9/Af7A6oyHIrpaUkPaqQGCB2RZaoR+w4T2jIyGJuidu1Yb+2mk=
Received: from MWHPR13MB1584.namprd13.prod.outlook.com (10.175.140.149) by
	MWHPR13MB1214.namprd13.prod.outlook.com (10.169.206.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.464.6; Thu, 25 Jan 2018 14:46:05 +0000
Received: from MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) by
	MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) with mapi id
	15.20.0444.013; Thu, 25 Jan 2018 14:46:06 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How do I generate a dtb for my board support package?
Thread-Index: AQHTlUrMuQ9+EGnL006VzjvxSSjFpKOETgX+gABKvACAABJ5AQ==
Date: Thu, 25 Jan 2018 14:46:05 +0000
Message-ID: <MWHPR13MB15846CB2C0E778AEA074BA4F9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>
References: <MWHPR13MB1584C1139309858BD0E22C089EE20@MWHPR13MB1584.namprd13.prod.outlook.com>
	<MWHPR13MB1584687F1F31126DF1FCA1CA9EE10@MWHPR13MB1584.namprd13.prod.outlook.com>,
	<94ea0e3c-29d4-40a1-19db-f716ddcd4dde@3mdeb.com>
In-Reply-To: <94ea0e3c-29d4-40a1-19db-f716ddcd4dde@3mdeb.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [24.222.2.222]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR13MB1214;
	7:4XwiT9sqcujp5R4xNIxOCvsDEL/F6UqUHnko/1n2rkNlZ7cuDltSj+5J5n6MWp3Cz5FGOOSTfYiZ3OGV3p9CRHRv1kFt2gyQIzKCPAiLoc9gh9QZG8JtOjolpA/Hpvpq/cp+JBP3w2GgQKYfAAHMb7xcXVwm3MRrUHwS2RN0f/dhbKQtjl549AstC6Jt+ehxW1IIwtI/yNZVm2seFgAqiRVPgpo7728cCuUeu8s9M34HVcCYEQ6QE6USNOaVUKqb
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 22e8a111-3f4f-4cb8-5120-08d564025d47
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR13MB1214; 
x-ms-traffictypediagnostic: MWHPR13MB1214:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-microsoft-antispam-prvs: <MWHPR13MB1214D49B95E1B9132E7B84579EE10@MWHPR13MB1214.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3002001)(10201501046)(3231055)(2400081)(944501161)(93006095)(93001095)(6041288)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(20161123562045)(6072148)(201708071742011);
	SRVR:MWHPR13MB1214; BCL:0; PCL:0; RULEID:; SRVR:MWHPR13MB1214; 
x-forefront-prvs: 0563F2E8B7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(39830400003)(366004)(39380400002)(346002)(376002)(199004)(189003)(102836004)(68736007)(105586002)(6916009)(86362001)(99286004)(606006)(2950100002)(7696005)(19627405001)(2501003)(6606003)(77096007)(186003)(5660300001)(54896002)(76176011)(2900100001)(26005)(53546011)(316002)(6506007)(66066001)(97736004)(5890100001)(1730700003)(25786009)(81166006)(966005)(9686003)(8676002)(236005)(478600001)(55016002)(14454004)(59450400001)(53936002)(33656002)(5640700003)(8936002)(3660700001)(7736002)(2906002)(229853002)(106356001)(53386004)(6436002)(2351001)(3280700002)(74316002)(6116002)(6246003)(3846002)(81156014)(6306002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1214;
	H:MWHPR13MB1584.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: GbMZZbIKe9o8rniNehCT2lLly9C/sIs+BBc6zEvtpPvFIyhacsk2q5izN3Xerc88bv986Qc6dG86zaIcmilNNg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e8a111-3f4f-4cb8-5120-08d564025d47
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2018 14:46:05.9679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1214
Subject: Re: How do I generate a dtb for my board support package?
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
X-List-Received-Date: Thu, 25 Jan 2018 18:18:17 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_MWHPR13MB15846CB2C0E778AEA074BA4F9EE10MWHPR13MB1584namp_"

--_000_MWHPR13MB15846CB2C0E778AEA074BA4F9EE10MWHPR13MB1584namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Maciej,


I did add a patch to SRC_URI in my linux-yocto_4.12.bbappend file. Does the=
 entry belong somewhere else instead?


Peter.



________________________________
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Sent: January 25, 2018 9:37:40 AM
To: Peter Spierenburg; yocto@yoctoproject.org
Subject: Re: [yocto] How do I generate a dtb for my board support package?



On 25.01.2018 14:16, Peter Spierenburg wrote:
| make[2]: *** No rule to make target `sc589-ezkit.dts'.  Stop.
You are building linux-yocto. You need to either add a patch to SRC_URI whi=
ch adds this
dtb target to linux source, or build from a different repository, where thi=
s support is already
included. I would check from which linux tree they build kernel in buildroo=
t BSP.
You will also need proper kernel configuration file for your board.


--
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com

This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_MWHPR13MB15846CB2C0E778AEA074BA4F9EE10MWHPR13MB1584namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Maciej,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I did add a patch to SRC_URI in m=
y&nbsp;<span>linux-yocto_4.12.bbappend file. Does the entry belong somewher=
e else instead?</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span>Peter.</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><span><br>
</span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Maciej Pijanowski &lt=
;maciej.pijanowski@3mdeb.com&gt;<br>
<b>Sent:</b> January 25, 2018 9:37:40 AM<br>
<b>To:</b> Peter Spierenburg; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How do I generate a dtb for my board support pa=
ckage?</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<p><br>
</p>
<br>
<div class=3D"x_moz-cite-prefix">On 25.01.2018 14:16, Peter Spierenburg wro=
te:<br>
</div>
<blockquote type=3D"cite"><span style=3D"font-family:Consolas,Courier,monos=
pace">| make[2]: *** No rule to make target `sc589-ezkit.dts'.&nbsp; Stop.<=
br>
</span></blockquote>
You are building linux-yocto. You need to either add a patch to SRC_URI whi=
ch adds this<br>
dtb target to linux source, or build from a different repository, where thi=
s support is already<br>
included. I would check from which linux tree they build kernel in buildroo=
t BSP.<br>
You will also need proper kernel configuration file for your board.<br>
<br>
<pre class=3D"x_moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
<a class=3D"x_moz-txt-link-freetext" href=3D"http://3mdeb.com">http://3mdeb=
.com</a> | @3mdeb_com</pre>
</div>
This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the
 contents is strictly prohibited. If you have received this message in erro=
r, please contact us immediately so we may correct our records. Please then=
 delete or destroy the original transmission and any subsequent reply. Than=
k you.
</body>
</html>

--_000_MWHPR13MB15846CB2C0E778AEA074BA4F9EE10MWHPR13MB1584namp_--
