Return-Path: <gowtham.pandi@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33761E0098A; Wed, 18 Jan 2017 05:34:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.124.132 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3604 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Jan 2017 05:34:07 PST
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-hk2apc01on0132.outbound.protection.outlook.com
	[104.47.124.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D77AE00942
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 05:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=+Ji1wX7Vfh8Lw+BluPssPD62LxqpN2fWpe58sbjqmm4=;
	b=H3tJGT1JiMVbKzLbP3YhYB18RsNJDSrrtzHLHdr6rZ77Tmlclh+FCUJ5EQIR7CPCsnccFaFQlkU+zcKDkt73eyAzhG8ZAcdpiLU9ldC8c90PFL+qWNu2donYnhUA6T55PD9H2KYSXl4v1niry/9Xq5Od1GpmoRhH8mYIUqG0svk=
Received: from SINPR0401MB1808.apcprd04.prod.outlook.com (10.242.55.18) by
	SINPR0401MB1806.apcprd04.prod.outlook.com (10.242.55.16) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.12; Wed, 18 Jan 2017 12:00:52 +0000
Received: from SINPR0401MB1808.apcprd04.prod.outlook.com ([10.242.55.18]) by
	SINPR0401MB1808.apcprd04.prod.outlook.com ([10.242.55.18]) with mapi id
	15.01.0845.013; Wed, 18 Jan 2017 12:00:52 +0000
From: Gowtham Pandi <gowtham.pandi@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Pulseaudio: build issue
Thread-Index: AQHScYKEm6YhId2aa0yYsIR4UlK9Ow==
Date: Wed, 18 Jan 2017 12:00:52 +0000
Message-ID: <SINPR0401MB1808A26F945A2E7ACB69D115A97F0@SINPR0401MB1808.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=gowtham.pandi@tataelxsi.co.in; 
x-originating-ip: [115.114.77.194]
x-ms-office365-filtering-correlation-id: 8f7aaf21-4172-4a6a-ddfd-08d43f99a6b6
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:SINPR0401MB1806; 
x-microsoft-exchange-diagnostics: 1; SINPR0401MB1806;
	7:kUquM5lWhW0LqGI0XSHRnIL12stg+ZBbWgiUIzPPDU/eGzIpgfaJIGwoPGRm6fB4XtvRCx/fxFA3wGstdyESdWy6ym8dSZ31YyeGcsWn+0jOTsR2brrsYuMy1P+8L6G9E5zf8tVdwD7MCIrmPBOdprAZtfB8YXYYOIa4Eg6vwcHuoWn5niVPGSmrHjXZZA+tmZ3YkggnUhvoe3MHT8kSshFVjHvR5rnHiVIiPHcqRpQEoz1NME9MfpqUFjAELnENpvZsb+q4EuW2zQmYt3BmO5Xct4p0h8/IqMiN8ul/lWfvxm281jdb11tnpi7zxyET7cXLhIu/iz54fZJYVOLc13QYQk0FVjfgVwzY5GL9i2+8lBaKXvUTiQnh/DLn2JNtTkY1URi6RfWWejXw2cKqnK3G+3mJ9t9J0EztKPqCM5LV/m2eWmjBV7ANySiDMZjcDPpnS0ivaK1+lOHjKB+Elg==
x-microsoft-antispam-prvs: <SINPR0401MB1806A47B6DCE0F91AB25A61BA97F0@SINPR0401MB1806.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026)(6041248)(20161123564025)(20161123555025)(20161123560025)(20161123562025)(6072148)(6047074);
	SRVR:SINPR0401MB1806; BCL:0; PCL:0; RULEID:;
	SRVR:SINPR0401MB1806; 
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39860400002)(39840400002)(39410400002)(39450400003)(39850400002)(189002)(199003)(53754006)(81156014)(19627405001)(5640700003)(450100001)(106356001)(2351001)(110136003)(81166006)(25786008)(74482002)(77096006)(189998001)(122556002)(6606003)(105586002)(6916009)(42882006)(101416001)(92566002)(53936002)(54896002)(2501003)(106116001)(9686003)(3280700002)(6506006)(33656002)(2900100001)(38730400001)(1730700003)(7736002)(97736004)(74316002)(66066001)(6436002)(68736007)(2906002)(86362001)(8936002)(3660700001)(5660300001)(3846002)(50986999)(99286003)(102836003)(6116002)(8676002)(54356999)(107886002)(55016002)(7696004)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SINPR0401MB1806;
	H:SINPR0401MB1808.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:0; LANG:en; 
received-spf: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jan 2017 12:00:52.4109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SINPR0401MB1806
Subject: Pulseaudio: build issue
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
X-List-Received-Date: Wed, 18 Jan 2017 13:34:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SINPR0401MB1808A26F945A2E7ACB69D115A97F0SINPR0401MB1808_"

--_000_SINPR0401MB1808A26F945A2E7ACB69D115A97F0SINPR0401MB1808_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am using Raspberry Pi 3 model B. I am facing build issues while building =
bitbake pulseaudio.

Please find my configuration details:

Yocto : Jethro branch
pulseaudio.inc RDEPENDS_pulseaudio-server +=3D "alsa-plugins-pulseaudio-con=
f"
we are using alsa-plugins_1.0.29.bb
bitbake pulseaudio
ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but /home/guest/op=
enembedded-core/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb RDEPEN=
DS on or otherwise requires it)

NOTE: Runtime target 'alsa-plugins-pulseaudio-conf' is unbuildable, removin=
g... Missing or unbuildable dependency chain was: ['alsa-plugins-pulseaudio=
-conf'] ERROR: Required build target 'pulseaudio' has no buildable provider=
s. Missing or unbuildable dependency chain was: ['pulseaudio', 'alsa-plugin=
s-pulseaudio-conf']



Please share your inputs.


Thanks

Gowtham  P

--_000_SINPR0401MB1808A26F945A2E7ACB69D115A97F0SINPR0401MB1808_
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
<p></p>
<div>Hi All,</div>
<div><br>
</div>
<div>I am using Raspberry Pi 3 model B. I am facing build issues while buil=
ding bitbake pulseaudio.</div>
<div><br>
</div>
<div>Please find my configuration details:</div>
<div><br>
</div>
<div>Yocto : Jethro branch</div>
<div>pulseaudio.inc RDEPENDS_pulseaudio-server &#43;=3D &quot;alsa-plugins-=
pulseaudio-conf&quot;</div>
<div>we are using alsa-plugins_1.0.29.bb</div>
<div>bitbake pulseaudio</div>
<div><b>ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but /home/=
guest/openembedded-core/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.b=
b RDEPENDS on or otherwise requires it)</b></div>
<div><br>
</div>
<div>NOTE: Runtime target 'alsa-plugins-pulseaudio-conf' is unbuildable, re=
moving... Missing or unbuildable dependency chain was: ['alsa-plugins-pulse=
audio-conf'] ERROR: Required build target 'pulseaudio' has no buildable pro=
viders. Missing or unbuildable dependency
 chain was: ['pulseaudio', 'alsa-plugins-pulseaudio-conf']</div>
<br>
<p></p>
<p><br>
</p>
<p>Please share your inputs.</p>
<p><br>
</p>
<p>Thanks</p>
<p>Gowtham &nbsp;P</p>
</div>
</body>
</html>

--_000_SINPR0401MB1808A26F945A2E7ACB69D115A97F0SINPR0401MB1808_--
