Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.92.70.58])
 by mx.groups.io with SMTP id smtpd.web12.521.1576699811156523104
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2019 12:10:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=qjAaS7R+;
 spf=pass (domain: outlook.com, ip: 40.92.70.58, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFtcU+cJXxqLYn5XFF/UY2yrY+g9YRX2y9UsbWR/sVrCy5QY5wSRwKaeA5elWSg+g5f74wdl4CjQCfHVf27lusD14DoNFboEXQIsGcIwjtqt9fxgzqOXIZ2sgOe3bO2f6nHeLDX/0+3XEgKxyd1Z/mAw8e+1NrMgIHTHtNtDZqe+aNGqVR9qZkC39jBofVICYY513nsPk1KvsmbvjEozWhRrM2Ym73Gwu3AwOzfsU6as3A98Bynd0lTdrpI2/FoVoUYt3DerbE4SbLBKLYeuKANWd6NwjKHCL6cV+EyZOCVPoCykPXze9ECLT2a45lNwBMwNg00hc3qrNt0e1X2RZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U0V81jmRhdcB3N+F6dOaiadDuttJXjzTwSLrbWLUEaI=;
 b=MdOFpveIPQ4SQ3khDif5DNacpRTmP8QqSbKht2aV9hpAoCGZS52+1nQWWL4ly2OcspKS0r9BzhssIrX1SaJjmW60oqDH8t470aIoBxNPYOO4dyhVsEAaHK0SC2icGdMYw0aC3fl0vv6yV3HiW8qrbgqiycwgoNkbanlm420alhxCY3g3npBBXTABrDH2WgT8oxuGAFXnNto0os2xfgUhfLNruaetqCUgK3+by/i5dcyeT4x5LwxM/8rOjc0MB5TZYTf6bRrPAG8zBHL01I3QVtqLZdVuCOR9Ziz3QGui+TxkTkaaCm4X2EF4uYaxbDZBv6hmhsAJBVi/RhvXtPROjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U0V81jmRhdcB3N+F6dOaiadDuttJXjzTwSLrbWLUEaI=;
 b=qjAaS7R+mvJjXJ4T+q9UtCWb/4dN6zNPWRsFrWtDrgmvOTZmkjScVmqbl595WbW+eSOZO00x5AJY+giPdI63gX+OF+fyjVM4OGjxPBxFGP7brd7FyKAu+NMFcq8xMzEFtS2UoFJBgvSaxXS4mQL3Jbms3HzCzLY9gLGFf1PCm7nHJtdXsAt/6isB4DdKuDZhxIl/vHQ2gCpg0IQjG7PVci6VgH24up3LYLRwK6dM1mDWJszpn/vrMpRSSVe/Bf/CXURKqm9oRdxijBGK/p4xxzWAvcZbCpLIOXw7Bb6F562ZoCO3v0/qJlS39aNhTVcjflZLxL5baDujlBp0WrjxIQ==
Received: from AM5EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (10.152.16.57) by AM5EUR03HT179.eop-EUR03.prod.protection.outlook.com
 (10.152.16.208) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Wed, 18 Dec
 2019 20:10:09 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com (10.152.16.60) by
 AM5EUR03FT056.mail.protection.outlook.com (10.152.17.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Wed, 18 Dec 2019 20:10:09 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::e923:8aad:dca0:fc9d]) by AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::e923:8aad:dca0:fc9d%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 20:10:09 +0000
From: "Konrad Weihmann" <kweihmann@outlook.com>
To: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>
Subject: Inverse of BBFILES_DYNAMIC
Thread-Topic: Inverse of BBFILES_DYNAMIC
Thread-Index: AdW126wPjNQigWIdRkumHNYQz5suTw==
Date: Wed, 18 Dec 2019 20:10:09 +0000
Message-ID: 
 <AM4PR05MB3380F6E1FB4D0926B7078FDCA8530@AM4PR05MB3380.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:F58661AA4633DC6BEF8A397B41964D2AB1714A9DE6DBEA0BB2BBB12B40946A4E;UpperCasedChecksum:B668B70B916746E0B8964F8695430658763F20E756D38F82EA4EFC00EC21AA8A;SizeAsReceived:6703;Count:42
x-tmn: [oDM8QuYu/N6pgI4A8OV+t+j4Qd/cIkTZ]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 58e8e636-1a46-425d-1781-08d783f64838
x-ms-traffictypediagnostic: AM5EUR03HT179:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ghdN245KpHnwKds8sPucDIMyfVsNQpk128Y2L1jdLa73gyjJzGU4VZQzAPIvwGT1BvPI/IDLwB1KbWjZ0RiJ01aBu0biXH1O5cOtiYCqgYu1b+uEyO5l80qnLFfiRzYAeDU+dtbRSW3VfmD/6CDBMrh2xn3zKVz2JFanHK/nq5rudhhLXkOV3h6YzPL3s88A
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 58e8e636-1a46-425d-1781-08d783f64838
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 20:10:09.1654
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT179
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I was wondering if there is already a mechanism which kind of mimics the in=
verse of BBFILES_DYNAMIC.
Like I want a recipe to be put into tree only if a layer is absent.

Example: I need a fancy python-lib, which isn't part of the core-lib, but a=
ccording to the layer index can be obtained by some 3rd party layer (let's =
call fancy-layer).
For some projects I worked for, it might be challenging to use "fancy-layer=
" as it doesn't comply with some corporate rules or whatsoever, while other=
s don't see any issues here.

What I have in mind is a mechanism like BBFILES_DYNAMIC, but inverse, like

BBFILES_DYNAMIC +=3D "!fancy-layer: ${LAYERDIR}/dynamic-layers/fancy-fallba=
ck/*/*.bb"

So in case fancy-layer is absent, I could put in a recipe which isn't that =
well maintained (also might including a warning that this only a fallback s=
olution), but does make my layer usable for a wider audience.

So back to the original question, is that already existing functionality? O=
r is there a workaround hack existing?
If both not, is that something, that could be considered as valuable by the=
 project (If so I could craft some patches for that)?

Regards
Konrad

