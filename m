Return-Path: <RGC@hms.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35509E00777; Thu,  8 Dec 2016 08:20:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0089.outbound.protection.outlook.com [104.47.2.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54413E0050B
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 08:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=hms365.onmicrosoft.com; s=selector1-hms-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=hlKjR+cP3CItd6b7cAxP0xZgMLxBbf387le/SWale+c=;
	b=fWco+mPMRazQfEcMSm2+0fiZXrG6rsLIl4e9V6EhXjnjNiFhO3BwgfXl398KwrdVU6BQetjZbcEO4EcJHuUtVvnKYqvXiZcdWHgHe2I4cjpFeIOQXcprTVV3AzKkneuEb1gC4EpPNWe6UFbzy1H2coHO3UerJ6Anf44HdCJ9rxc=
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com (10.166.12.135) by
	DB5PR0601MB1990.eurprd06.prod.outlook.com (10.166.12.27) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.9; Thu, 8 Dec 2016 16:05:04 +0000
Received: from DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) by
	DB5PR0601MB1992.eurprd06.prod.outlook.com ([10.166.12.135]) with
	mapi id 15.01.0761.018; Thu, 8 Dec 2016 16:05:05 +0000
From: Rafael Gago Castano <RGC@hms.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: libssp_nonshared.a not present in native SDK.
Thread-Index: AQHSUGL4NIxqRMiI1EOprFRfBZV2SKD+ONDW
Date: Thu, 8 Dec 2016 16:05:04 +0000
Message-ID: <DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
In-Reply-To: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=RGC@hms.se; 
x-originating-ip: [25.165.200.132]
x-ms-office365-filtering-correlation-id: 3766c634-b4ba-433c-cdef-08d41f83f953
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB5PR0601MB1990; 
x-microsoft-exchange-diagnostics: 1; DB5PR0601MB1990;
	7:B5x86CqXni5T2fO36q5u+64AvJzzqrK5H9R0bMPtAT9wRkXJtx6rvcfHgqELHFRc55abpvalRcGEj95wugA0aPiYwMX79SuA8j0v5BwDKPHxn3l25NWCjBrieqIm0MeOCThgwUAoATmYyRLqYAE/zeccFMom2iMPJ7pzBWxGvV8Xdcq4FDwwxqlLRwZ56UOZfGFki0FbOTlu3zaL32hiVPv3J3c8G/mIwwsor8ZGClauaT43iMWHWaXf0dyOuVrHM+ZzbA6gK/8Yv8Zu0imgvZoREbgRw85lg+HKcmBp1I3CKeCXCiL2ws5WlWVp40IqGxAc6sQn7yFIUyZ6um0JlWs0JxbngYLGnf7nZl8S5TjV0+/bKI/93HAvPdb5TMpOLfNBYwRYx4HsOjVvq60ypdrPB/f7JZxjbokObydegqC5va/ksw0Rq23Hscis0FyM2ui627z8MhMNd7tTSSgw1A==
x-microsoft-antispam-prvs: <DB5PR0601MB1990AE0D761C5C9F96C402ACC2840@DB5PR0601MB1990.eurprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(5213294742642);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123560025)(20161123562025)(20161123564025)(20161123555025)(6072148);
	SRVR:DB5PR0601MB1990; BCL:0; PCL:0; RULEID:;
	SRVR:DB5PR0601MB1990; 
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(101416001)(19627405001)(2351001)(105586002)(106116001)(106356001)(66066001)(76576001)(33656002)(38730400001)(107886002)(3660700001)(189998001)(6506006)(97736004)(450100001)(122556002)(3280700002)(74482002)(2501003)(5640700002)(2906002)(8676002)(2950100002)(7696004)(6916009)(68736007)(8936002)(6116002)(9686002)(81166006)(1730700003)(110136003)(5660300001)(102836003)(6606003)(77096006)(2900100001)(81156014)(92566002)(50986999)(7846002)(3846002)(74316002)(86362001)(76176999)(54356999)(7736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR0601MB1990;
	H:DB5PR0601MB1992.eurprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hms.se does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hms.se
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2016 16:05:04.7766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7c1590-4488-4e42-bc9c-15218f8ac994
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR0601MB1990
Subject: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Thu, 08 Dec 2016 16:20:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840DB5PR0601MB1992_"

--_000_DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840DB5PR0601MB1992_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello!

We are using krogoth for generating our images.

Yesterday, when cross-compiling with the SDK (relocatable/non-extensible), =
I noticed that CMake projects weren't generated because the compiler featur=
e detection was failing. CMake enables fstack-protector for each of its pla=
tform tests and hance requires "libssp_nonshared.a" for linking. A quick se=
arch revealed that "libssp_nonshared.a" is actually missing from the SDK.

I found that "libssp_nonshared.a" comes from "gcc-utils.inc". So adding...

IMAGE_INSTALL_append +=3D "libssp"

...fixes (or workarounds) the issue and allows CMake projects to cross-comp=
ile fine.

What I see is that I can't manually add all the libraries present in "gcc-u=
tils.inc" as "IMAGE_INSTALL_append"s. Some of them (e.g libquadmath) fail w=
ith the error:

"Couldn't find anything to satisfy 'libquadmath'"

So I added those that doesn't cause errors by trial and error. This looks w=
rong.

All the statics in "gcc-utils.inc" look to me like they should be on the SD=
K by default, as they are gcc/libc related and in this case (libssp) essent=
ial to use some of the compiler features, so I'm wondering:

If this is a bug in krogoth?
If it isn't a bug, what is the right way to add all these gcc-runtime libs?

Best regards,
Rafa.

--_000_DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840DB5PR0601MB1992_
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
<p><span style=3D"font-size: 10pt;">Hello!</span><br>
</p>
<div style=3D"color: rgb(0, 0, 0);"><font size=3D"2"><span style=3D"font-si=
ze:10pt;">
<div class=3D"PlainText"><br>
We are using krogoth for generating our images.<br>
<br>
Yesterday, when cross-compiling with the SDK (relocatable/non-extensible), =
I noticed that CMake projects weren't generated because the compiler featur=
e detection was failing. CMake enables fstack-protector for each of its pla=
tform tests and hance requires &quot;libssp_nonshared.a&quot;
 for linking. A quick search revealed that &quot;libssp_nonshared.a&quot; i=
s actually missing from the SDK.<br>
<br>
I found that &quot;libssp_nonshared.a&quot; comes from &quot;gcc-utils.inc&=
quot;. So adding...<br>
<br>
IMAGE_INSTALL_append &#43;=3D &quot;libssp&quot;<br>
<br>
...fixes (or workarounds) the issue and allows CMake projects to cross-comp=
ile fine.<br>
<br>
What I see is that I can't manually add all the libraries present in &quot;=
gcc-utils.inc&quot; as &quot;IMAGE_INSTALL_append&quot;s. Some of them (e.g=
 libquadmath) fail with the error:<br>
<br>
&quot;Couldn't find anything to satisfy 'libquadmath'&quot;<br>
<br>
So I added those that doesn't cause errors by trial and error. This looks w=
rong.<br>
<br>
All the statics in &quot;gcc-utils.inc&quot; look to me like they should be=
 on the SDK by default, as they are gcc/libc related and in this case (libs=
sp) essential to use some of the compiler features, so I'm wondering:<br>
<br>
If this is a bug in krogoth?<br>
If it isn't a bug, what is the right way to add all these gcc-runtime libs?=
<br>
<br>
Best regards,<br>
Rafa.</div>
</span></font></div>
</div>
</body>
</html>

--_000_DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840DB5PR0601MB1992_--
