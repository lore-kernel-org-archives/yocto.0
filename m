Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13651E00D8E; Wed, 30 Oct 2019 08:37:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FORGED_SPF_HELO,
	FREEMAIL_FROM, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.64.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064108.outbound.protection.outlook.com [40.92.64.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36816E00D47;
	Wed, 30 Oct 2019 08:37:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=NWXPTd5S/61KotZCxTWZCoBk8LydzR9BV6mW6k1wxnj/MXcGJR0w740rRPlqIDxet284rsaVHGT6rcgxGLlHrXPM8IWTvNVYFFBoiXjgYojDSRZ+nwYtWUxuOo2Ca0hwtfYa10o2Ts4vAhZTuzoZsBlN/DNNRx+wQ5P5axbvlgnWdOGh47AuDjjw3pEX3QtuuYMqfEvtcyD8AROHpoprfdNrnM9LSiMJLS7F4LiOMUWDTgccR0bQoZrSNPKZRwfD9BCUjYpyCchxKhEYJ4wY50fWp9AJeUTr7NGKxgn23vGjpXxNH66f5JvZpwadJpSU+w1vbbrD5WKGtpa1S53ytw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KaGaj0E0X2KdIuEq8lT/VYJtcxl5ZfU5gMenqBAy5es=;
	b=LcVzYhyTy9pi677umIYcnWGx0HNlt6tU0uPNmdkcIFcy/37xRT0VddjyJSV9pCEkMhymu/GPOZK22JrF9Zbo0JdoW5+j4qx1afYvPdHFxAhiN/C4EsvoLfigNBZDXm1flCdFCv1x6ZDjWWRmYHMAhdNDaFd4WU3+WHXnttKmXKJsfpLj8f2+73DttS79z/gojHz60STKK0+szbMujZNYCTaOmiWDWXGH3M1Dok54ZiLL3+eFdkkgPG1botuBET5GkJvVTMgl6QPjgU2WY0scwngFz9aCLz9wrZhBirAFc3rU/iPozg8p2rwVTESHkBsyXDhZLiuk3EBSnUXcfEGn1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KaGaj0E0X2KdIuEq8lT/VYJtcxl5ZfU5gMenqBAy5es=;
	b=YeAmeyBOs1xkICEfCJgiprcbyqDOSZKN4P+IDFLOQemVzsQYIjgVbmdgtaBPavJZsYyfRRRQ7ubcQalV1SczShbqrzYzAlBID0uRK+zzNnpmA3X6CoszBSlO1NZj6DmtW4DpiUtLyGj9Fxh0XljEwHSGd4Ds0w8e/gGpMey4rDifQczLV9kSGAjDaT5YjfFwGOpPyiQG1WUL2UABWdSR4z3NA5fb/Zs2udbIQeHjKsT9+4XK8g8hKt69M4735F8wwkSAsut25tNtTun6pYQzs9cdEhq7B6eWyIMphUQlNaeO+DMrcTRRXV2vgkbIy7PD54bfNQj7cTwvSI+5OhIZtw==
Received: from DB5EUR01FT016.eop-EUR01.prod.protection.outlook.com
	(10.152.4.58) by DB5EUR01HT218.eop-EUR01.prod.protection.outlook.com
	(10.152.4.177) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2387.20;
	Wed, 30 Oct 2019 15:37:41 +0000
Received: from AM6PR01MB4646.eurprd01.prod.exchangelabs.com (10.152.4.56) by
	DB5EUR01FT016.mail.protection.outlook.com (10.152.4.255) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.2387.20 via Frontend Transport; Wed, 30 Oct 2019 15:37:41 +0000
Received: from AM6PR01MB4646.eurprd01.prod.exchangelabs.com
	([fe80::c5b2:79d8:be22:f9c7]) by
	AM6PR01MB4646.eurprd01.prod.exchangelabs.com
	([fe80::c5b2:79d8:be22:f9c7%7]) with mapi id 15.20.2387.028;
	Wed, 30 Oct 2019 15:37:41 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-freescale][NXP] Failed to build gstreamer1.0 ith Yocto
	thud on NXP IMX8MQ
Thread-Index: AQHVjzbOwCk39c+aWU6y5MDkzBVZ9A==
Date: Wed, 30 Oct 2019 15:37:41 +0000
Message-ID: <AM6PR01MB46464A01A31C3497359EB2A192600@AM6PR01MB4646.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6AF32879CA6B98599B7B44EDF369332791E354D78B96AD00EE8B35C81955614D;
	UpperCasedChecksum:D48FF99A98DBF198AE0FE645DB4314DF0CA6BA676DCE947762603A2F7781656B;
	SizeAsReceived:6833; Count:41
x-tmn: [+1tOA8iPSZgq2z+ashUhht+jmq6PcKGd]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: DB5EUR01HT218:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R++RHEQ9h3CujIRsnyfN8u0UIrREabLIG6P21QWNtqD2zlYAsAklsW6YF389NuYV/MDlb5MJVjaNWR8eErctlAJ+gsh3+Rrjdpu45HIoxhwoubyoiZY9p4Jd0rypgKkcpt7+oVf/JyofzgLUBtaVCr/l+YxxoD3rQ7LKHOiTcY6KkTI1gdHDZmYo347Mt4Lw
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6699d1b8-9c8b-4f71-5b20-08d75d4f1a23
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2019 15:37:41.7879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT218
Subject: [meta-freescale][NXP] Failed to build gstreamer1.0 ith Yocto thud on NXP IMX8MQ
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
X-List-Received-Date: Wed, 30 Oct 2019 15:37:46 -0000
X-Groupsio-MsgNum: 47087
Content-Language: fr-FR
Content-Type: multipart/mixed;
	boundary="_004_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_"

--_004_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_
Content-Type: multipart/alternative;
	boundary="_000_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_"

--_000_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,



I'm currently trying to build gstreamer1.0 with Yocto Thud.

My host machine is a Debian 9 (stretch) Linux.

It always succeeded with previous version of Yocto rocko and sumo.



But there with thud I immediately get an Unpack Error I've never experience=
d before:



ERROR: gstreamer1.0-1.14.4.imx-r0 do_unpack: gitsm: submodule unpack failed=
: UnpackError Unpack failure for URL: 'gitsm://anongit.freedesktop.org/git/=
gstreamer/common.git;protocol=3Dhttps;name=3Dcommon;subpath=3Dcommon;barecl=
one=3D1;nobranch=3D1'. No up to date source found: clone directory not avai=
lable or not up to date: /opt/yocto/imx8/fsl-imx8-thud-4.19.35-1.0.0/../../=
downloads/git2/anongit.freedesktop.org.git.gstreamer.common.git; shallow cl=
one not enabled
ERROR: gstreamer1.0-1.14.4.imx-r0 do_unpack: Unpack failure for URL: 'gitsm=
://anongit.freedesktop.org/git/gstreamer/common.git;protocol=3Dhttps;name=
=3Dcommon;subpath=3Dcommon;bareclone=3D1;nobranch=3D1'. No up to date sourc=
e found: clone directory not available or not up to date: /opt/yocto/imx8/f=
sl-imx8-thud-4.19.35-1.0.0/../../downloads/git2/anongit.freedesktop.org.git=
.gstreamer.common.git; shallow clone not enabled
ERROR: gstreamer1.0-1.14.4.imx-r0 do_unpack: Function failed: base_do_unpac=
k
ERROR: Logfile of failure stored in: /opt/yocto/imx8/fsl-imx8-thud-4.19.35-=
1.0.0/build/tmp/work/aarch64-poky-linux/gstreamer1.0/1.14.4.imx-r0/temp/log=
.do_unpack.27700
ERROR: Task (/opt/yocto/imx8/fsl-imx8-thud-4.19.35-1.0.0/sources/meta-frees=
cale/recipes-multimedia/gstreamer/gstreamer1.0_1.14.imx.bb:do_unpack) faile=
d with exit code '1'



I've attached the log.do_unpack file. I tried to clean everything up, but I=
 still get this annoying error and I'm stuck with it for a while now.




Any suggestion is really welcome



Thanks.



Karim


--_000_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
Hi,</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255); min-height: 8=
pt">
&nbsp;</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
I'm currently trying to build gstreamer1.0 with Yocto<span>&nbsp;</span><st=
rong style=3D"margin: 0px; font-weight: 700">Thud</strong>.</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
My host machine is a Debian 9 (stretch) Linux.</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
It always succeeded with previous version of Yocto rocko and sumo.</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255); min-height: 8=
pt">
&nbsp;</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
But there with thud I immediately get an Unpack Error I've never experience=
d before:</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255); min-height: 8=
pt">
&nbsp;</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px; font-size: 13px; color: rgb(255, 0, 0)">ERROR: =
gstreamer1.0-1.14.4.imx-r0 do_unpack: gitsm: submodule unpack failed: Unpac=
kError Unpack failure for URL: 'gitsm://anongit.freedesktop.org/git/gstream=
er/common.git;protocol=3Dhttps;name=3Dcommon;subpath=3Dcommon;bareclone=3D1=
;nobranch=3D1'.
 No up to date source found: clone directory not available or not up to dat=
e: /opt/yocto/imx8/fsl-imx8-thud-4.19.35-1.0.0/../../downloads/git2/anongit=
.freedesktop.org.git.gstreamer.common.git; shallow clone not enabled</span>=
<br>
<span style=3D"margin: 0px; font-size: 13px; color: rgb(255, 0, 0)">ERROR: =
gstreamer1.0-1.14.4.imx-r0 do_unpack: Unpack failure for URL: 'gitsm://anon=
git.freedesktop.org/git/gstreamer/common.git;protocol=3Dhttps;name=3Dcommon=
;subpath=3Dcommon;bareclone=3D1;nobranch=3D1'.
 No up to date source found: clone directory not available or not up to dat=
e: /opt/yocto/imx8/fsl-imx8-thud-4.19.35-1.0.0/../../downloads/git2/anongit=
.freedesktop.org.git.gstreamer.common.git; shallow clone not enabled</span>=
<br>
<span style=3D"margin: 0px; font-size: 13px; color: rgb(255, 0, 0)">ERROR: =
gstreamer1.0-1.14.4.imx-r0 do_unpack: Function failed: base_do_unpack</span=
><br>
<span style=3D"margin: 0px; font-size: 13px; color: rgb(255, 0, 0)">ERROR: =
Logfile of failure stored in: /opt/yocto/imx8/fsl-imx8-thud-4.19.35-1.0.0/b=
uild/tmp/work/aarch64-poky-linux/gstreamer1.0/1.14.4.imx-r0/temp/log.do_unp=
ack.27700</span><br>
<span style=3D"margin: 0px; font-size: 13px; color: rgb(255, 0, 0)">ERROR: =
Task (/opt/yocto/imx8/fsl-imx8-thud-4.19.35-1.0.0/sources/meta-freescale/re=
cipes-multimedia/gstreamer/gstreamer1.0_1.14.imx.bb:do_unpack) failed with =
exit code '1'</span></p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255); min-height: 8=
pt">
&nbsp;</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
I've attached the log.do_unpack file. I tried to clean everything up, but I=
 still get this annoying error and I'm stuck with it for a while now.</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
<br>
</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
<span style=3D"color: rgb(81, 98, 111); font-family: arial, helvetica, &quo=
t;helvetica neue&quot;, verdana, sans-serif; font-size: 15px;">&nbsp;</span=
><br>
</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
Any suggestion is really welcome</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255); min-height: 8=
pt">
&nbsp;</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
Thanks.</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255); min-height: 8=
pt">
&nbsp;</p>
<p style=3D"margin: 0px; font-size: 15px; font-family: arial, helvetica, &q=
uot;helvetica neue&quot;, verdana, sans-serif; overflow-wrap: break-word; c=
olor: rgb(81, 98, 111); background-color: rgb(255, 255, 255)">
Karim</p>
<br>
</div>
</body>
</html>

--_000_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_--

--_004_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_
Content-Type: application/octet-stream; name="log.do_unpack.27700"
Content-Description: log.do_unpack.27700
Content-Disposition: attachment; filename="log.do_unpack.27700"; size=11194;
	creation-date="Wed, 30 Oct 2019 15:37:35 GMT";
	modification-date="Wed, 30 Oct 2019 15:37:41 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZG9fdW5wYWNrCkRFQlVHOiBFeGVjdXRp
bmcgcHl0aG9uIGZ1bmN0aW9uIGJhc2VfZG9fdW5wYWNrCkRFQlVHOiBSdW5uaW5nIGV4cG9ydCBQ
U0VVRE9fRElTQUJMRUQ9MTsgZXhwb3J0IERCVVNfU0VTU0lPTl9CVVNfQUREUkVTUz0idW5peDpw
YXRoPS9ydW4vdXNlci8xMDAwL2J1cyI7IGV4cG9ydCBQQVRIPSIvb3B0L3lvY3RvL2lteDgvZnNs
LWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51
eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jp
bi9weXRob24zLW5hdGl2ZTovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEu
MC4wL3NvdXJjZXMvcG9reS9zY3JpcHRzOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQu
MTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEu
MC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FhcmNoNjQtcG9r
eS1saW51eDovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxk
L3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9y
ZWNpcGUtc3lzcm9vdC91c3IvYmluL2Nyb3Nzc2NyaXB0czovb3B0L3lvY3RvL2lteDgvZnNsLWlt
eDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9n
c3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL3NiaW46
L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29y
ay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5
c3Jvb3QtbmF0aXZlL3Vzci9iaW46L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4z
NS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEu
MTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3NiaW46L29wdC95b2N0by9pbXg4L2Zz
bC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGlu
dXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2Jpbjov
b3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL3NvdXJjZXMvcG9reS9i
aXRiYWtlL2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1
aWxkL3RtcC9ob3N0dG9vbHMiOyBleHBvcnQgSE9NRT0iL2hvbWUva2FpIjsgZ2l0IC1jIGNvcmUu
ZnN5bmNvYmplY3RmaWxlcz0wIGJyYW5jaCAtLWNvbnRhaW5zIGQ0MjU0OGRhMDk3MjRhZDhjYzFh
YTRmMTk0NDYwNzkyMGJlMmY0YzAgLS1saXN0IE1NXzA0LjA0LjA2XzE5MDZfTDQuMTkuMzUgMj4g
L2Rldi9udWxsIHwgd2MgLWwKREVCVUc6IFJ1bm5pbmcgZXhwb3J0IFBTRVVET19ESVNBQkxFRD0x
OyBleHBvcnQgREJVU19TRVNTSU9OX0JVU19BRERSRVNTPSJ1bml4OnBhdGg9L3J1bi91c2VyLzEw
MDAvYnVzIjsgZXhwb3J0IFBBVEg9Ii9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTku
MzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8x
LjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL3B5dGhvbjMtbmF0aXZl
Oi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvc291cmNlcy9wb2t5
L3NjcmlwdHM6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWls
ZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAv
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vYWFyY2g2NC1wb2t5LWxpbnV4Oi9vcHQveW9j
dG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2
NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290L3Vz
ci9iaW4vY3Jvc3NzY3JpcHRzOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUt
MS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0
LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2Jpbjovb3B0L3lvY3RvL2lteDgv
ZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1s
aW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNy
L2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3Rt
cC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNp
cGUtc3lzcm9vdC1uYXRpdmUvc2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5
LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAv
MS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvYmluOi9vcHQveW9jdG8vaW14OC9m
c2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvc291cmNlcy9wb2t5L2JpdGJha2UvYmluOi9vcHQv
eW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL2hvc3R0b29s
cyI7IGV4cG9ydCBIT01FPSIvaG9tZS9rYWkiOyBnaXQgLWMgY29yZS5mc3luY29iamVjdGZpbGVz
PTAgY2xvbmUgLXMgLW4gL29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAu
MC8uLi8uLi9kb3dubG9hZHMvZ2l0Mi9zb3VyY2UuY29kZWF1cm9yYS5vcmcuZXh0ZXJuYWwuaW14
LmdzdHJlYW1lci5naXQvIC9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4w
LjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQu
aW14LXIwL2dpdC8KREVCVUc6IFJ1bm5pbmcgZXhwb3J0IFBTRVVET19ESVNBQkxFRD0xOyBleHBv
cnQgREJVU19TRVNTSU9OX0JVU19BRERSRVNTPSJ1bml4OnBhdGg9L3J1bi91c2VyLzEwMDAvYnVz
IjsgZXhwb3J0IFBBVEg9Ii9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4w
LjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQu
aW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL3B5dGhvbjMtbmF0aXZlOi9vcHQv
eW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvc291cmNlcy9wb2t5L3Njcmlw
dHM6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAv
d29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBl
LXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vYWFyY2g2NC1wb2t5LWxpbnV4Oi9vcHQveW9jdG8vaW14
OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5
LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290L3Vzci9iaW4v
Y3Jvc3NzY3JpcHRzOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAv
YnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14
LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlt
eDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9n
c3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbjov
b3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3Jr
L2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lz
cm9vdC1uYXRpdmUvc2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEu
MC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40
LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvYmluOi9vcHQveW9jdG8vaW14OC9mc2wtaW14
OC10aHVkLTQuMTkuMzUtMS4wLjAvc291cmNlcy9wb2t5L2JpdGJha2UvYmluOi9vcHQveW9jdG8v
aW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL2hvc3R0b29scyI7IGV4
cG9ydCBIT01FPSIvaG9tZS9rYWkiOyBnaXQgLWMgY29yZS5mc3luY29iamVjdGZpbGVzPTAgcmVt
b3RlIHNldC11cmwgb3JpZ2luIGh0dHBzOi8vc291cmNlLmNvZGVhdXJvcmEub3JnL2V4dGVybmFs
L2lteC9nc3RyZWFtZXIuZ2l0CkRFQlVHOiBSdW5uaW5nIGV4cG9ydCBQU0VVRE9fRElTQUJMRUQ9
MTsgZXhwb3J0IERCVVNfU0VTU0lPTl9CVVNfQUREUkVTUz0idW5peDpwYXRoPS9ydW4vdXNlci8x
MDAwL2J1cyI7IGV4cG9ydCBQQVRIPSIvb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5
LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAv
MS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9weXRob24zLW5hdGl2
ZTovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL3NvdXJjZXMvcG9r
eS9zY3JpcHRzOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVp
bGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIw
L3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FhcmNoNjQtcG9reS1saW51eDovb3B0L3lv
Y3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNo
NjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC91
c3IvYmluL2Nyb3Nzc2NyaXB0czovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1
LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4x
NC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL3NiaW46L29wdC95b2N0by9pbXg4
L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3kt
bGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vz
ci9iaW46L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90
bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVj
aXBlLXN5c3Jvb3QtbmF0aXZlL3NiaW46L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4x
OS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4w
LzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2Jpbjovb3B0L3lvY3RvL2lteDgv
ZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL3NvdXJjZXMvcG9reS9iaXRiYWtlL2Jpbjovb3B0
L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC9ob3N0dG9v
bHMiOyBleHBvcnQgSE9NRT0iL2hvbWUva2FpIjsgZ2l0IC1jIGNvcmUuZnN5bmNvYmplY3RmaWxl
cz0wIGNoZWNrb3V0IC1CIE1NXzA0LjA0LjA2XzE5MDZfTDQuMTkuMzUgZDQyNTQ4ZGEwOTcyNGFk
OGNjMWFhNGYxOTQ0NjA3OTIwYmUyZjRjMApERUJVRzogUnVubmluZyBleHBvcnQgUFNFVURPX0RJ
U0FCTEVEPTE7IGV4cG9ydCBEQlVTX1NFU1NJT05fQlVTX0FERFJFU1M9InVuaXg6cGF0aD0vcnVu
L3VzZXIvMTAwMC9idXMiOyBleHBvcnQgUEFUSD0iL29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRo
dWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVh
bWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vcHl0aG9u
My1uYXRpdmU6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9zb3Vy
Y2VzL3Bva3kvc2NyaXB0czovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEu
MC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40
LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9hYXJjaDY0LXBva3ktbGludXg6
L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29y
ay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5
c3Jvb3QvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQt
NC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVy
MS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9zYmluOi9vcHQveW9j
dG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2
NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5h
dGl2ZS91c3IvYmluOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAv
YnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14
LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9zYmluOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10
aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJl
YW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9iaW46L29wdC95b2N0
by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9zb3VyY2VzL3Bva3kvYml0YmFrZS9i
aW46L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAv
aG9zdHRvb2xzIjsgZXhwb3J0IEhPTUU9Ii9ob21lL2thaSI7IGdpdCAtYyBjb3JlLmZzeW5jb2Jq
ZWN0ZmlsZXM9MCBicmFuY2ggTU1fMDQuMDQuMDZfMTkwNl9MNC4xOS4zNSAtLXNldC11cHN0cmVh
bS10byBvcmlnaW4vTU1fMDQuMDQuMDZfMTkwNl9MNC4xOS4zNQpERUJVRzogUnVubmluZyBleHBv
cnQgUFNFVURPX0RJU0FCTEVEPTE7IGV4cG9ydCBEQlVTX1NFU1NJT05fQlVTX0FERFJFU1M9InVu
aXg6cGF0aD0vcnVuL3VzZXIvMTAwMC9idXMiOyBleHBvcnQgUEFUSD0iL29wdC95b2N0by9pbXg4
L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3kt
bGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vz
ci9iaW4vcHl0aG9uMy1uYXRpdmU6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4z
NS0xLjAuMC9zb3VyY2VzL3Bva3kvc2NyaXB0czovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1
ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFt
ZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9hYXJjaDY0
LXBva3ktbGludXg6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9i
dWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgt
cjAvcmVjaXBlLXN5c3Jvb3QvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L29wdC95b2N0by9pbXg4L2Zz
bC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGlu
dXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5pbXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9z
YmluOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1w
L3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lw
ZS1zeXNyb290LW5hdGl2ZS91c3IvYmluOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQu
MTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEu
MC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9zYmluOi9vcHQveW9jdG8vaW14
OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5
LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9i
aW46L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC9zb3VyY2VzL3Bv
a3kvYml0YmFrZS9iaW46L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAu
MC9idWlsZC90bXAvaG9zdHRvb2xzIjsgZXhwb3J0IEhPTUU9Ii9ob21lL2thaSI7IGdpdCAtYyBj
b3JlLmZzeW5jb2JqZWN0ZmlsZXM9MCBzaG93IGQ0MjU0OGRhMDk3MjRhZDhjYzFhYTRmMTk0NDYw
NzkyMGJlMmY0YzA6LmdpdG1vZHVsZXMKREVCVUc6IFJ1bm5pbmcgZXhwb3J0IFBTRVVET19ESVNB
QkxFRD0xOyBleHBvcnQgREJVU19TRVNTSU9OX0JVU19BRERSRVNTPSJ1bml4OnBhdGg9L3J1bi91
c2VyLzEwMDAvYnVzIjsgZXhwb3J0IFBBVEg9Ii9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVk
LTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1l
cjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL3B5dGhvbjMt
bmF0aXZlOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvc291cmNl
cy9wb2t5L3NjcmlwdHM6L29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAu
MC9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvZ3N0cmVhbWVyMS4wLzEuMTQuNC5p
bXgtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vYWFyY2g2NC1wb2t5LWxpbnV4Oi9v
cHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsv
YWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEuMC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNy
b290L3Vzci9iaW4vY3Jvc3NzY3JpcHRzOi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQu
MTkuMzUtMS4wLjAvYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L2dzdHJlYW1lcjEu
MC8xLjE0LjQuaW14LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2Jpbjovb3B0L3lvY3Rv
L2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQt
cG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRp
dmUvdXNyL2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wL2J1
aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFtZXIxLjAvMS4xNC40LmlteC1y
MC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvc2Jpbjovb3B0L3lvY3RvL2lteDgvZnNsLWlteDgtdGh1
ZC00LjE5LjM1LTEuMC4wL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9nc3RyZWFt
ZXIxLjAvMS4xNC40LmlteC1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvYmluOi9vcHQveW9jdG8v
aW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvc291cmNlcy9wb2t5L2JpdGJha2UvYmlu
Oi9vcHQveW9jdG8vaW14OC9mc2wtaW14OC10aHVkLTQuMTkuMzUtMS4wLjAvYnVpbGQvdG1wL2hv
c3R0b29scyI7IGV4cG9ydCBIT01FPSIvaG9tZS9rYWkiOyBnaXQgLWMgY29yZS5mc3luY29iamVj
dGZpbGVzPTAgbHMtdHJlZSAteiAtZCBkNDI1NDhkYTA5NzI0YWQ4Y2MxYWE0ZjE5NDQ2MDc5MjBi
ZTJmNGMwIGNvbW1vbgpFUlJPUjogZ2l0c206IHN1Ym1vZHVsZSB1bnBhY2sgZmFpbGVkOiBVbnBh
Y2tFcnJvciBVbnBhY2sgZmFpbHVyZSBmb3IgVVJMOiAnZ2l0c206Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9naXQvZ3N0cmVhbWVyL2NvbW1vbi5naXQ7cHJvdG9jb2w9aHR0cHM7bmFtZT1jb21t
b247c3VicGF0aD1jb21tb247YmFyZWNsb25lPTE7bm9icmFuY2g9MScuIE5vIHVwIHRvIGRhdGUg
c291cmNlIGZvdW5kOiBjbG9uZSBkaXJlY3Rvcnkgbm90IGF2YWlsYWJsZSBvciBub3QgdXAgdG8g
ZGF0ZTogL29wdC95b2N0by9pbXg4L2ZzbC1pbXg4LXRodWQtNC4xOS4zNS0xLjAuMC8uLi8uLi9k
b3dubG9hZHMvZ2l0Mi9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy5naXQuZ3N0cmVhbWVyLmNvbW1v
bi5naXQ7IHNoYWxsb3cgY2xvbmUgbm90IGVuYWJsZWQKRVJST1I6IFVucGFjayBmYWlsdXJlIGZv
ciBVUkw6ICdnaXRzbTovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dpdC9nc3RyZWFtZXIvY29t
bW9uLmdpdDtwcm90b2NvbD1odHRwcztuYW1lPWNvbW1vbjtzdWJwYXRoPWNvbW1vbjtiYXJlY2xv
bmU9MTtub2JyYW5jaD0xJy4gTm8gdXAgdG8gZGF0ZSBzb3VyY2UgZm91bmQ6IGNsb25lIGRpcmVj
dG9yeSBub3QgYXZhaWxhYmxlIG9yIG5vdCB1cCB0byBkYXRlOiAvb3B0L3lvY3RvL2lteDgvZnNs
LWlteDgtdGh1ZC00LjE5LjM1LTEuMC4wLy4uLy4uL2Rvd25sb2Fkcy9naXQyL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnLmdpdC5nc3RyZWFtZXIuY29tbW9uLmdpdDsgc2hhbGxvdyBjbG9uZSBub3Qg
ZW5hYmxlZApERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGJhc2VfZG9fdW5wYWNrIGZpbmlzaGVkCkRF
QlVHOiBQeXRob24gZnVuY3Rpb24gZG9fdW5wYWNrIGZpbmlzaGVkCkVSUk9SOiBGdW5jdGlvbiBm
YWlsZWQ6IGJhc2VfZG9fdW5wYWNrCg==

--_004_AM6PR01MB46464A01A31C3497359EB2A192600AM6PR01MB4646eurp_--
