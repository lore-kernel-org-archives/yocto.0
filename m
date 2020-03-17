Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.821.1584479027624338591
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 14:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=gUbyvgBP;
 spf=softfail (domain: hotmail.com, ip: 140.211.169.56, mailfrom: tom.kellogg@hotmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 090DCE0187D; Tue, 17 Mar 2020 14:03:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,FORGED_SPF_HELO,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (tom.kellogg[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.92.41.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address, but no 'Received:'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10olkn2050.outbound.protection.outlook.com [40.92.41.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C56E0187B
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2020 14:03:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxR6WEvt6lMpb+K6j0go3Xa242+qWkdMRSGjVuuPLKswVfteggmdWG/zRtasz3ptGwqycKuLt8NG61RBGv47SveRuUHlF3UhiQ7xBiz6zY0tfxasDevpqa5/+TunhzoYbx6r1kpRB3PZQTh0175MNb7nlYHtNWg7ND/4cMmDBhFxTjzvKF2rnTYEKw45mCOmh1WS8wRLp3FAAbe/QlY9Zr+CdL2n1Lf6k9YCe0S8jY+N5tPUSQI3ZTyt2INN2YQb6xMMTDi1FEMVrvknonaQKHWaFvnYttNPEIQV2GwE5v86kUgZK2Oac2Vs6NdF66WCzUtw0ttM5lkwR4HeB8RQLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAdAR4IyG7WcrnpmyDmupRekxMH3JnE0GP3ShQfCJkM=;
 b=EIV0PFgkcp1z0/rIyXzYs8FUd7SCwJ8C4zL8vsNh5GE7tYLl3h2q2xBuFdtgtuN/9Qkf4eUvNfJ7+Ct4e7NmC/LB7lAutU1okpCREm1vtdbK78KptF0NSnMIROUjr0C3CkoTzDHlCdQLQgJevS0N5up11xAsuzt2Rss4te4UUoaxi+9Zec+2n8wL1uDlSWutQCs6G9U8BdYzKV9pbLbWElLIQc0HHYhH5Aktl6e/LjPl6ghaa3c+N8OAq7kqQLbS63A+D+Neu7+t+S1m0G6fX6Ht7zGnCd0Ra15o76KAy9zV9OX9KhdYFfL0ZSzLlE0FHSc+BDJOGMoyc2rDchrjRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAdAR4IyG7WcrnpmyDmupRekxMH3JnE0GP3ShQfCJkM=;
 b=gUbyvgBPhtp24HMcqyrs3x56M6LjNwzzrG3l3lHjUuzbSrqGRn8bl48JmwAI1O+zB7BxXMgthMYlC9W3mW9J1pHIwQlK+xaUuS1l3XKPMNYkdMNakvG9MBqvJTQrbYzqzXtVbwulW4DlZOjdUUkE6asWWZthKZUuWou8SAbmWlWKibSxGQl5jmspEYEuZdtMsmRbWGxndry5tyghcH6HurMCrauuZaoB9L9qCIZvsrIpPPxB9Qcf5N4Y9gPNjY/H9PVkIBP5DG6hIW0KtylBaMylFV2pHijTe2LzCq6Bh7KzfZGWc2U4/RNmpBPd0XjENL8Tjvn4v28BsgZkZujEvw==
Received: from MW2NAM10FT007.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e87::3c) by
 MW2NAM10HT047.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e87::348)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Tue, 17 Mar
 2020 21:03:24 +0000
Received: from MWHPR04MB0815.namprd04.prod.outlook.com (10.13.154.52) by
 MW2NAM10FT007.mail.protection.outlook.com (10.13.154.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Tue, 17 Mar 2020 21:03:24 +0000
Received: from MWHPR04MB0815.namprd04.prod.outlook.com
 ([fe80::8582:2fe4:134f:1801]) by MWHPR04MB0815.namprd04.prod.outlook.com
 ([fe80::8582:2fe4:134f:1801%11]) with mapi id 15.20.2835.013; Tue, 17 Mar
 2020 21:03:24 +0000
From: "Tom Kellogg" <tom.kellogg@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] How Build Image Supports X11 and 7" Touch Display
Thread-Topic: [meta-raspberrypi] How Build Image Supports X11 and 7" Touch
 Display
Thread-Index: AQHV/J9IjUoV76reQ0msf66IHRD3vA==
Date: Tue, 17 Mar 2020 21:03:24 +0000
Message-ID: 
 <MWHPR04MB0815213A727EBB3A7BCABB2FF6F60@MWHPR04MB0815.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:97DC2CED30C2A798305EFDCBD799F66C95C71A8CC69E1C7096E0C17DBE57E6C7;UpperCasedChecksum:423FE1E56FA4D6FFD366C8141766546D1EDE0C4B64465929F5EA219E61384D7E;SizeAsReceived:6743;Count:42
x-tmn: [dz2C7Q2TC8vLSk1PUOwo6YEaZGwZ8Ood]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1aa83353-c290-4db8-2de4-08d7cab6a1e8
x-ms-traffictypediagnostic: MW2NAM10HT047:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 cdJ6oGTPMWYSb8/Fbodq/McP7+nO/zBvjASCs1RNJ7r03pN9gustNPDMFE2ObSC5nSWCf5m3nweJgOMA5uSMa7Zp1Vz2dLFcQtWKl2C7Zlv2Ka5U+oWtVlswH9h3LczJareovtNhW6YRoje/uWQl+PcdNkyLXoMojj5Hg2gmd2sngranJAXBBh1UXReRTA/x
x-ms-exchange-antispam-messagedata: 
 vYuRPE6Dq6livw8rOo39XowKczMSnk3p+kmkw+rrZHP37gR5hCv4SryCYHSS8z3+OuKWR5VZVU1TpPibsF3C1jG4tedJDj2Z8OBjHGOFz4NsM38dkqyAm+0pJhmNF9+FE0T5SIQevqnC1lNrb5Arbw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa83353-c290-4db8-2de4-08d7cab6a1e8
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 21:03:24.5021
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT047
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR04MB0815213A727EBB3A7BCABB2FF6F60MWHPR04MB0815namp_"

--_000_MWHPR04MB0815213A727EBB3A7BCABB2FF6F60MWHPR04MB0815namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to build am image that supports X11 and will use the official 7"=
 touch screen from the Raspberry Pi organization for the raspberrypi2.  To =
test I've built both core-image-x11 and core-image sato with no changes to =
either recipe and am getting the same behavior from both.  What happens is =
when I plug in the unit the splash screen is shown on the 7" display then t=
he output from the kernel booting is shown.  At some point during the kerne=
l boot process the screen goes black but it doesn't look like the display h=
as turned off.  I am hooked up to the debug pins on the header and am able =
to log into the pi so the device has booted properly.  Also if I attach a m=
onitor via HDMI to the pi the core-image-x11 shows a terminal on the monito=
r and the core-image-sato shows the desktop.  If you touch the touch screen=
 the cursor will move around on the monitor so the touch screen is working =
properly.

I can't find anything in the meta-raspberry pi documentation for how to ena=
ble to the 7" touch screen but I did find from an old mailing archive that =
adding

RASPBERRYPI_DISPLAY =3D "1"

to the local.conf is all that is needed.  I have added that to the end of m=
y local.conf but that didn't fix the issue.  That was from ~3years ago thou=
gh so I'm wondering if things have changed.


Thanks


--_000_MWHPR04MB0815213A727EBB3A7BCABB2FF6F60MWHPR04MB0815namp_
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
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"font-family: Calibri, Helvetica, sans-serif; background-colo=
r: rgb(255, 255, 255); display: inline !important">I'm trying to build am i=
mage that supports X11 and will use the official 7&quot; touch screen from =
the Raspberry Pi organization</span>&nbsp;for
 the raspberrypi2.&nbsp; To test I've built both core-image-x11 and core-im=
age sato with no changes to either recipe and am getting the same behavior =
from both.&nbsp; What happens is when I plug in the unit the splash screen =
is shown on the 7&quot; display then the output
 from the kernel booting is shown.&nbsp; At some point during the kernel bo=
ot process the screen goes black but it doesn't look like the display has t=
urned off.&nbsp; I am hooked up to the debug pins on the header and am able=
 to log into the pi so the device has booted
 properly.&nbsp; Also if I attach a monitor via HDMI to the pi the core-ima=
ge-x11 shows a terminal on the monitor and the core-image-sato shows the de=
sktop.&nbsp; If you touch the touch screen the cursor will move around on t=
he monitor so the touch screen is working
 properly.</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
I can't find anything in the meta-raspberry pi documentation for how to ena=
ble to the 7&quot; touch screen but I did find from an old mailing archive =
that adding&nbsp;
<pre style=3D"font-family: courier, &quot;courier new&quot;, monospace; fon=
t-size: 14px; margin: 0px; background-color: rgb(255, 255, 255)">RASPBERRYP=
I_DISPLAY =3D &quot;1&quot;</pre>
<pre style=3D"font-family: courier, &quot;courier new&quot;, monospace; fon=
t-size: 14px; margin: 0px; background-color: rgb(255, 255, 255)"><span styl=
e=3D"margin: 0px; font-size: 16px; font-family: Calibri, Helvetica, sans-se=
rif; background-color: rgb(255, 255, 255); display: inline !important">to t=
he local.conf is all that is needed.  I have added that to the end of my lo=
cal.conf but that didn't fix the issue.  That was from ~3years ago though s=
o I'm wondering if things have changed.</span><br></pre>
<pre style=3D"font-family: courier, &quot;courier new&quot;, monospace; fon=
t-size: 14px; margin: 0px; background-color: rgb(255, 255, 255)"><span styl=
e=3D"margin: 0px; font-size: 16px; font-family: Calibri, Helvetica, sans-se=
rif; background-color: rgb(255, 255, 255); display: inline !important"><br>=
</span></pre>
<pre style=3D"font-family: courier, &quot;courier new&quot;, monospace; fon=
t-size: 14px; margin: 0px; background-color: rgb(255, 255, 255)"><span styl=
e=3D"margin: 0px; font-size: 16px; font-family: Calibri, Helvetica, sans-se=
rif; background-color: rgb(255, 255, 255); display: inline !important">Than=
ks</span></pre>
</div>
<br>
</div>
</body>
</html>

--_000_MWHPR04MB0815213A727EBB3A7BCABB2FF6F60MWHPR04MB0815namp_--
