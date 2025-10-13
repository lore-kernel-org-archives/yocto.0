Return-Path: <bmarty@kochag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB90CCD183
	for <webhook@archiver.kernel.org>; Mon, 13 Oct 2025 15:40:00 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.72])
 by mx.groups.io with SMTP id smtpd.web10.47049.1760369999860354060
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Oct 2025 08:40:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kochag.ch header.s=selector1 header.b=didndenb;
 spf=pass (domain: kochag.ch, ip: 52.101.84.72, mailfrom: bmarty@kochag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iEol5Sxh47T30BIAEydSDtpkbQzR16z6cjQiY71mFQXhvghxUqRjZAsFFwC4dda7w2giu9FSrU4KsYAyuLf9VfqDK7agCh3uwNnecRYzSWrY6IjIUmqOGZW7ZiIBjNqzR9gbNrzJ125jHwf0bT9bEG5U82p3vh/d/5KeeA2/gcwBf67W8LmTsQPBqnrOqqK2D0F4XgI1kin34P9Jr2YbbGvwiGAzQ+DuOrV1Li8jiOLJRtKbvw0q2/NYTJiEo8STMv6BH1HZYZqm27I8cHm2hplwviTGs2bvXSaQLqxizMso1QmeUnk/MUv4RiULiMDU+YrXTjPz+PwieUQsYykm8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+umK4AQBEyOnVvW3NYMWPCFkA2Rzo58tvNnZliJSuA=;
 b=k+HLJbt0T20nAAowqYksKtcPS3/eq2jX5cvI+AgmavQ5qgyD7lsenso+D661sP8IgGTBLvcLHULLP2WZx4vwPYG2Gum6HDqRbRyOhUaRXv/3VQXxI+t0x9SSFurbKBq1VCweq7pZzNrfNM1cRGQa/HrbWRPWpg6K2BIe2ALdm0iydvdHs/SleYgqyuQ/MGXIflYt6OI5H5URn7lLYqyMUko8/H8UmOgueDQxj2KcX4AgWpVahYnJINt4Syll+KIYFfqwoLoeGTldj1c+wV+K+ZdM22KdiE31aXBh1WcR3ahAzkCgO5GxLCURhQbw9bKMY5jAXl1O6+C9PRUR10MvvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kochag.ch; dmarc=pass action=none header.from=kochag.ch;
 dkim=pass header.d=kochag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kochag.ch;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s+umK4AQBEyOnVvW3NYMWPCFkA2Rzo58tvNnZliJSuA=;
 b=didndenbqMkt6BwuMfhzFOklSEBpbIt1QYxC5dK1e1PfpqrJvHRnJptedo4SoR8yQ1tAF5tyzHNRFgIdtTCyHMau9TOn+E1GQ2boRZc4GKz/8j3Emb2XSxS3K6R89NFw7WFcEFKjWUYyHbFFHVJJahSEEk+MC9sD+pp7B00xD+Q=
Received: from AS8PR08MB10097.eurprd08.prod.outlook.com
 (2603:10a6:20b:63f::18) by DB9PR08MB8412.eurprd08.prod.outlook.com
 (2603:10a6:10:3d4::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.11; Mon, 13 Oct
 2025 15:39:56 +0000
Received: from AS8PR08MB10097.eurprd08.prod.outlook.com
 ([fe80::1148:ef73:18e1:c831]) by AS8PR08MB10097.eurprd08.prod.outlook.com
 ([fe80::1148:ef73:18e1:c831%6]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 15:39:56 +0000
From: "Benjamin MAB. Marty" <bmarty@kochag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Secure Boot and LUKS-encrypted rootfs on Raspberry Pi CM4
Thread-Topic: Secure Boot and LUKS-encrypted rootfs on Raspberry Pi CM4
Thread-Index: AQHcPFdH+b0Qz2+Gy0KylZ09GKepjw==
Date: Mon, 13 Oct 2025 15:39:56 +0000
Message-ID: 
 <AS8PR08MB100979905EC066383DD0FA283C7EAA@AS8PR08MB10097.eurprd08.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kochag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB10097:EE_|DB9PR08MB8412:EE_
x-ms-office365-filtering-correlation-id: 05d413ce-3f55-4a66-3f78-08de0a6ec2ce
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?bnMKt2YvyrMTWMw7ruzfT1D+8LIcjmLFISNN3iQAoIilkm0+x3BadNSa?=
 =?Windows-1252?Q?K5tCuWvVnEEldfH1NdVwiMfTManXVEbgo/k5Wfa0VNm/VvgK6aaX9Pr8?=
 =?Windows-1252?Q?A6ZKDxLTaX7Bd8E1+KENONa5KpJF3d5ZeFLeCImfu6UuYCxCrsv1E8HN?=
 =?Windows-1252?Q?2wDJaIaHmIP2bcFyaV/UoU5/e5dFzu4MA8NsJDvKScSgmwCgOZ/Y+qbH?=
 =?Windows-1252?Q?N5riCqTsfRi1nwoZxKfj4vPVLRCI9f86rMVKvzimA0WBxZ9MgQFpeI5J?=
 =?Windows-1252?Q?YtOD2EAw4IUnia+jBuUCiLEDje/k+IxD3j0M5v4FibrhE/E8jGR5FW0L?=
 =?Windows-1252?Q?sJFLQ5PuHN1yQknFnqF2gWzROrxaLZCav6jCBB0jznGv+DDRtcNazF6Z?=
 =?Windows-1252?Q?yNcNTxqCNIbd7YkjX0f86Wv9lKMgCobJ4KqPcOINSAtlF6Bx9PvtK1eM?=
 =?Windows-1252?Q?kQDib9xv+ysDTyNiIw+zEUpjt2yhIWhxsny07KvspZAlGFAU3ZDyG/F3?=
 =?Windows-1252?Q?wAyr+9OCqRsvBiDHsgiTc2hmejMaJ91I8bh/yPj3JMKq01YDJhyTi/hh?=
 =?Windows-1252?Q?UZJVRlzfl/2KGzlz58I0ktCP1EpQC98p22+gxzdkkeR4SFqag264gAdh?=
 =?Windows-1252?Q?EN1h1NjzJM1510nGeJDmLUfaXPhyIJfpygbVRNeur7Wr1U5rBAUbhks8?=
 =?Windows-1252?Q?cFo129VoEArPVKxXLUczyjf6aRVOoeTqAX21/zxtZSyejo5HiJCqO1Aw?=
 =?Windows-1252?Q?AxV8KGD0B7lon8lzqvGa+am9h605CWxlnXLtRtsz4I4NJ5AotoES+jsO?=
 =?Windows-1252?Q?kU8VfSsbwJ5FVcdKpXnW7dJ2bF8r6Wb/Sg8ygsn0cFdHtSFSJTZVrs+I?=
 =?Windows-1252?Q?c4bxXAvTNrlUf6rszc45y27HB0HOQt6VxJ7rV096yzqAWBWzfLfv+XyB?=
 =?Windows-1252?Q?zabJhxnxnM88zR+BbkfwOgcm3R0LkMOk1yYTTJMNylN9h0L0Hp2Yy45X?=
 =?Windows-1252?Q?tvI+0i2XH6Kiunl0hUc2TT3pWOmSX3+QyMNT0uz+8gwmeo0xrm5Tgx5E?=
 =?Windows-1252?Q?vFB7VVLuvkdSTlFiXpCoexC74W7VR3ceAusQwirheA9NePw+jwJUxGWg?=
 =?Windows-1252?Q?WkydZdLBFT2wI1E83Kdno9EIsvYnS9gCwFRtF2anxBrLi/1EDYzcbfq1?=
 =?Windows-1252?Q?JgOV+dghVGeDMMLPKMfY7rGJz5U/VLnZpArg6s+26QKyTaLB5B7Ep+6g?=
 =?Windows-1252?Q?Oso4EtZFuqLOeNfpvT1WRcoJDyOh++2YxP1KnuIHVGMTBwXzFhwbCIQ7?=
 =?Windows-1252?Q?GNCK7Z1PKWNLbzq6um4KSAEzKNoDk3DUAGLiLJAQtE04tc3GdaQeP48w?=
 =?Windows-1252?Q?+mo1GMuM7VBC+y6YxTxQumi/kEg7vSj6qHa2JagfJ8GYJmtX5OWDSh24?=
 =?Windows-1252?Q?eLzNtMAP+c1wCWxzRLjeesQnq8yBi3YJUD54uWmMSORhdaY54rd2oJ20?=
 =?Windows-1252?Q?w0Fb6qyIsDs0ETXjA4988F0WIYtYvlkWWlwYc6MwquKqiGrLgyy83Pp7?=
 =?Windows-1252?Q?MuHUjSeyOQjrNyeofDn83pHUN+EaZag9YfLQUuD3UNm8c/t5KraW5qIW?=
 =?Windows-1252?Q?PdH1ckHuVDRL4fRji7yJ8tTA?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB10097.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700021);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?BnIOOuvuwEoHQgsWHCrHiUhJjSRuFESm3+kxWvVFPfVJgFbxSpAI7eMR?=
 =?Windows-1252?Q?+tR5JVRj6VtxWJI+kUMxbtU9tPVFhguhlrwjqVtgQGyNRsp7R1n8xSdg?=
 =?Windows-1252?Q?FlUIoVX34usBuESPGKfLRQkW2D3G8cUjuJaC1j49JbiXYHNBzeguEmMe?=
 =?Windows-1252?Q?ZMe2r6goAsVGLY8H21RCQha/tmxRHCl4P2TROBh2M5gYxlcA5yF+JGdG?=
 =?Windows-1252?Q?wST78csLib3X+APc9toiskRpqwv+RwiujfhS4FuUF+hZaTrgn/acLx/k?=
 =?Windows-1252?Q?tWKZ0CeS/3BWB+A1Y0M2rR00XCF9XbCMn0R3EJcGsPlEZOGwK4Zp2zai?=
 =?Windows-1252?Q?D8GKZRhOzhi33kv81on05JHRHA3El2/w38QEsHT5Q9iszWtCwtUV8oJD?=
 =?Windows-1252?Q?1MSvrPT3oYtZcE/DIwV+hJAUHIguzUmNaBRRuHczK/b/D0bRw+1tJQyV?=
 =?Windows-1252?Q?Hpu2hr+U1VprGjhmIcjdbvMFGuSVWCT7rKKlT+woFnP/Byr5BHog+CG3?=
 =?Windows-1252?Q?/CRYUXjuKj4ucbBT2hG2BL6uZ+jzz7zKuVG81YXfDIaFKl7dIVrpKT+s?=
 =?Windows-1252?Q?E0cTjio42X/EYUheVxeVUhwurWW1T9+Pu8Rba3uoWWuJm64fdmGAcnOa?=
 =?Windows-1252?Q?hGz05OjW1wRSiIfIJT8giAduYsRxmH+/8wDrI1CtGq9cOO3DWm6ZViRE?=
 =?Windows-1252?Q?7jct7mhrn1dmvjxhg2U+YfThrRw/iFVVdE5Am2l00JPo0R1Sz2ZuUNcb?=
 =?Windows-1252?Q?a+I4PKucZHRoZruuCyx/vu8j4osQ/SylMRWxt+6VPqglg0ww/Hql3Abx?=
 =?Windows-1252?Q?x+roMHKu+quLuhCn6XsZlPsp3xOoO5BA+gGiLoEiCueuJ75EKUFi3vx+?=
 =?Windows-1252?Q?rxfx8oaD7XaCC7Kz0sEcrRLzbBJgePiz472mxmzxXFZttAL6JrohrSF1?=
 =?Windows-1252?Q?hGLL3WJq6/W0rqxowyCZhqmQ0kQS0X4oEBdm5vnUHJ6vuWvmPB4MvSa9?=
 =?Windows-1252?Q?2rvQPPm+DIkb/j7AX7/YGx4aoecej8aT1F4aIwhz2NqkzlcWUfEFzma4?=
 =?Windows-1252?Q?QZ31b67FgDh4YXW1IwLKBpbIOMtezOgOF18r613RWmSnbbS4nqALSuls?=
 =?Windows-1252?Q?urNJ2kupl2EjKA/qBGRI3igTDRI5QOSvESZOArndKSw1JMtL8sZ6qmVA?=
 =?Windows-1252?Q?R9pdtUzWnR9xofmmCG3Zim5SXnsit7Cb81HuDmCz7TdF0p143OH0E0RI?=
 =?Windows-1252?Q?GsY6rFqppxbz8T+e5CwJXHRWh6DRncmklskikUDBREPIr6yq7/nhW2a5?=
 =?Windows-1252?Q?JUmXm45b2f9LFNj7nCfe5GS85mVLPrcOeyxK0bnp2igf4j+n9pR/gMc1?=
 =?Windows-1252?Q?w7/OM4afcPvZBJndB7v/UR8U0QlpTd//of+wz4dnx52gt+ACIjm/5iFH?=
 =?Windows-1252?Q?MYDwnY/mC7yzQM0CuGVMccQKki7BqWGOKZAwC+TdsUzGJ6UqeRPap88a?=
 =?Windows-1252?Q?QaSxh0TxFnKYpcBLuWq2oHss9gZihZg4V0K2YJNnEyr9E1O9fIi+g/C1?=
 =?Windows-1252?Q?wk1SQKlpbI97HAonGXxr+GJ2QOeBjKBvj/MNb7UYwZvIVztmIXLQfLZh?=
 =?Windows-1252?Q?DbuHi/rzA3SIUF7+AN+2eDtvlXl+Y3Pbm19WNUFpqDOA9sXw8vGmvlf9?=
 =?Windows-1252?Q?IDhH+BIVALk=3D?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: kochag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB10097.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d413ce-3f55-4a66-3f78-08de0a6ec2ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 15:39:56.3383
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ee0c295-71f9-4a16-ba3d-1d3ad5c80ba6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roD93R2nd6JJqXEZ9JLdKyVY/GG9gv/5INjMjcaoSQfjd4d+ZIyGtpTskOnnRS1MF3lNxDh8j1Fjm0It5X5FVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8412
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Oct 2025 15:40:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65919

Hello all=0A=
=0A=
I have an A/B system running on a Raspberry Pi CM4 using the tryboot_a_b mo=
de from the Raspberry Pi Firmware (via the https://github.com/agherzan/meta=
-raspberrypi layer).=0A=
=0A=
I=92m now exploring how to implement Secure Boot using the Raspberry Pi Fir=
mware (without U-Boot) and have run into a few design challenges:=0A=
- The files on the boot partition (cmdline.txt, config.txt, kernel8.img, in=
itramfs etc.) need to be packed into a boot.img file using the Raspberry Pi=
 script https://github.com/raspberrypi/usbboot/blob/master/tools/rpi-make-b=
oot-image. I believe this could be integrated with a .bbclass file.=0A=
- The resulting boot.img file then needs to be signed using https://github.=
com/raspberrypi/rpi-eeprom/blob/master/rpi-eeprom-digest, which could also =
be handled through a .bbclass file.=0A=
- Both rootfs partitions (A/B) should be LUKS-encrypted, unlocked during bo=
ot via an initramfs. This seems like the biggest challenge, I'm not sure if=
 this is even possible with WIC, especially because the key for the partiti=
on needs to be device-specific.=0A=
=0A=
Has anyone worked on something similar, or have pointers on how to best app=
roach this?=0A=
=0A=
Thanks=0A=
=0A=
Benjamin=

