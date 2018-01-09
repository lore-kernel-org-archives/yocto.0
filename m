Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3137BE00D99; Tue,  9 Jan 2018 14:13:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10851 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Jan 2018 14:13:15 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0125.outbound.protection.outlook.com [104.47.38.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58631E00D74
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 14:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JU+jsD9Ccutlir18G/fJnFHQ2cGTFxgzxSjuIsoFxx4=;
	b=SMbrL58AuS8Q7bKutCPMgtnF4N0OHB8Jb4HxHdN944F3FGDxa61h+R7BvuMAlSB5hmkOvmfe8DeX4N/UaMkZHLorX8F6Zt7FCAoxSVCSlQJtwP+ObYcSAf6h6uFpVnLzobTq8o9uEVXko7NOwEUov/cQDHoWH8W72bs+oU4Va2I=
Received: from MWHPR13MB1584.namprd13.prod.outlook.com (10.175.140.149) by
	MWHPR13MB1487.namprd13.prod.outlook.com (10.175.140.12) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.407.1; Tue, 9 Jan 2018 18:38:57 +0000
Received: from MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) by
	MWHPR13MB1584.namprd13.prod.outlook.com ([10.175.140.149]) with mapi id
	15.20.0407.005; Tue, 9 Jan 2018 18:38:57 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: What is the procedure for creating a board support package?
Thread-Index: AQHTiXfFeRFwFm8k+UqsqeyHh7zOGw==
Date: Tue, 9 Jan 2018 18:38:57 +0000
Message-ID: <MWHPR13MB1584B447167EE2B7AE940AC49E100@MWHPR13MB1584.namprd13.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [24.138.24.95]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR13MB1487;
	7:9b4hqgmR/4c3WG7U1LFsnv4e4v3nTp3PGnUB2o4Un4Vt1XuK/Lkx3P0E3OJkVrzzjGBwQRtrr9Ao9C9SHlyr/4z3hrxHnni0I7FfimxFVg7Eef2vsONi8TOYUjLhqEIk8L2xh6h792vE86AEpp+rSZvLTUJ7GGdoWpFsyDDeDRzf5vuBx7TUIZlc15wL2OolCvuHoOA4gZEnBk4PpJDo88nq8z+0egqai+UjQstkaaHnsOS9cjuuxtrg0HAaU3ju
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 88f169db-a67e-4447-1b1f-08d557903e46
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020040)(4652020)(4534070)(4602075)(4627166)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:MWHPR13MB1487; 
x-ms-traffictypediagnostic: MWHPR13MB1487:
x-microsoft-antispam-prvs: <MWHPR13MB14874855CA725B889A7540009E100@MWHPR13MB1487.namprd13.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93001095)(3231023)(944501110)(6041268)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123558120)(20161123564045)(6072148)(201708071742011);
	SRVR:MWHPR13MB1487; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:MWHPR13MB1487; 
x-forefront-prvs: 0547116B72
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(346002)(366004)(39380400002)(39840400004)(199004)(189003)(105586002)(86362001)(106356001)(6116002)(3846002)(5640700003)(74316002)(2351001)(97736004)(3280700002)(606006)(3660700001)(6436002)(316002)(19627405001)(6346003)(66066001)(77096006)(5660300001)(25786009)(7736002)(2900100001)(99286004)(966005)(68736007)(53936002)(2906002)(81166006)(14454004)(478600001)(81156014)(1730700003)(8676002)(33656002)(59450400001)(236005)(54896002)(55016002)(6606003)(6306002)(9686003)(6506007)(7696005)(2501003)(5890100001)(8936002)(6916009)(102836004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR13MB1487;
	H:MWHPR13MB1584.namprd13.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-microsoft-antispam-message-info: Mwyv02XplqyD/XTLWnvjcXrsm0jUe1K1HJrr9iUE5/Ko2qy7p/61ft/z7shO2v9KHjn1zteoIJb/OSx3UiyAyg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88f169db-a67e-4447-1b1f-08d557903e46
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2018 18:38:57.3700 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR13MB1487
Subject: What is the procedure for creating a board support package?
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
X-List-Received-Date: Tue, 09 Jan 2018 22:13:18 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_MWHPR13MB1584B447167EE2B7AE940AC49E100MWHPR13MB1584namp_"

--_000_MWHPR13MB1584B447167EE2B7AE940AC49E100MWHPR13MB1584namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to follow the instructions at:


http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.html#creating-=
a-new-bsp-layer-using-the-yocto-bsp-script


I followed the prompts exactly as specified (although the SMP support promp=
t did not appear), and I chose the default 4.12 kernel (presumably the guid=
e is slightly out of date).


I included the generated bsp in bblayers.conf as indicated.


I invoked:

bitbake core-image-minimal

However, the resulting build was intel based, and not arm as one might expe=
ct since I asked for ARM when prompted by the yocto-bsp script.

Is there a more hands-on document that I could be following?

Peter.


This communication, including any attached documentation, is intended only =
for the person or entity to which it is addressed, and may contain confiden=
tial, personal, and/or privileged information. Any unauthorized disclosure,=
 copying, or taking action on the contents is strictly prohibited. If you h=
ave received this message in error, please contact us immediately so we may=
 correct our records. Please then delete or destroy the original transmissi=
on and any subsequent reply. Thank you.

--_000_MWHPR13MB1584B447167EE2B7AE940AC49E100MWHPR13MB1584namp_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0);">
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
I'm trying to follow the instructions at:</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
<a href=3D"http://www.yoctoproject.org/docs/current/bsp-guide/bsp-guide.htm=
l#creating-a-new-bsp-layer-using-the-yocto-bsp-script" class=3D"OWAAutoLink=
" id=3D"LPlnk242364" previewremoved=3D"true">http://www.yoctoproject.org/do=
cs/current/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-yoct=
o-bsp-script</a></p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
I followed the prompts exactly as specified (although the SMP support promp=
t did not appear), and I chose the default 4.12 kernel (presumably the guid=
e is slightly out of date).</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
<br>
</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
I&nbsp;included the generated bsp in bblayers.conf as indicated.</p>
<p style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;A=
pple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;S=
egoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; margin-top: =
0px; margin-bottom: 0px;">
<br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">I invoked:</p>
<pre class=3D"literallayout" style=3D"font-family: Calibri, Helvetica, sans=
-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot=
;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, =
EmojiSymbols; overflow: auto; color: rgb(51, 51, 51);">bitbake core-image-m=
inimal</pre>
<pre class=3D"literallayout" style=3D"overflow: auto; color: rgb(51, 51, 51=
);"><font face=3D"Calibri, Helvetica, sans-serif, EmojiFont, Apple Color Em=
oji, Segoe UI Emoji, NotoColorEmoji, Segoe UI Symbol, Android Emoji, EmojiS=
ymbols">However, the resulting build was intel based, and not arm as one mi=
ght expect since I asked for ARM when prompted by the yocto-bsp script.</fo=
nt></pre>
<pre class=3D"literallayout" style=3D"overflow: auto; color: rgb(51, 51, 51=
);"><font face=3D"Calibri, Helvetica, sans-serif, EmojiFont, Apple Color Em=
oji, Segoe UI Emoji, NotoColorEmoji, Segoe UI Symbol, Android Emoji, EmojiS=
ymbols">Is there a more hands-on document that I could be following?</font>=
</pre>
<pre class=3D"literallayout" style=3D"overflow: auto; color: rgb(51, 51, 51=
);">Peter.</pre>
<pre class=3D"literallayout" style=3D"overflow: auto; color: rgb(51, 51, 51=
);"><br></pre>
<p></p>
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

--_000_MWHPR13MB1584B447167EE2B7AE940AC49E100MWHPR13MB1584namp_--
