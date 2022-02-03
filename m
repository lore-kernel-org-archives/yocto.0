Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A0DC433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 09:20:55 +0000 (UTC)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.57])
 by mx.groups.io with SMTP id smtpd.web09.6982.1643880053376936677
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Feb 2022 01:20:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=m7Y4eeAy;
 spf=pass (domain: optimeas.de, ip: 40.107.0.57,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFwO5b8qCydPs1ITx5n/yIszuwZ0pGCRZ5r1hlhznk84MdSyElLbDXJy4g63/uzek7rpPKBblqgj28++KfvrXLaJCTnnz+Pi7EGUkf5RiaHta1h9UZTYj4bd9rPz4FQS2j/a1/o8XZBjKV2ix0kBzgERmwCWYnxx4Ydv0/3EgoatwquYk3QOeSYSyEq0QevoRcrpDRnxkb40gw32HjUt8TfC6Sf9LbE36rGlmC4bwxryMQBE9qhGv2SpVz24MxAViY6INWQpgFuyvU9b/Vb7rRD4dg9kmdOK8HuU+qOol5YiAz/6lPzYvA6gHTBKCxDT8GVjT9+gToSbTk3qMqyZVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0DK/c5NuwJk15qOw2Jl8IszXxWlkcIQUMTnQ7SbUdqU=;
 b=njTw/8CDB6lM+4k2zI4gl1KvQMqJGN8cdnr2Xtl94ezcYpGETxZivtoyVxFcXrE293wpw4HENf106k7kPI7tqzY/XUhvgE61GtpBAEWMEI468aZXVVstQdS0uvs3dfWKf538ay9NGv5rc3OsvhBXEw2cunfKI08/csKHutvG031IMCiUrDVHgvN8CLdPJOiZtuvZ2iOPuXnkHS2SYDJyTEgLlMWcJi3t2EYjfUt5UAzqFgf0icSuCTheGL0BahfGhK1XOcx0QIQg/uY8Fufbc1LxvdbgOZXF1SBoF2gegKjXlKLyaJJfUT3bJ/5Yo+sRqjF/I1mpObpt0cSNQfHJ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0DK/c5NuwJk15qOw2Jl8IszXxWlkcIQUMTnQ7SbUdqU=;
 b=m7Y4eeAyp+Z4nnSI68KTGM+v2tyG3ziGMWpLAgHX5GNyiAl3fInlK1HM1Aq9DbzTIljJKi1soHKj01Mg8VNffMY3dX2Ml7IU1Js9AzJOlEpZu3ro7ABB88Y4DlJn99uCZlin+B9ASs44Bmr3aHFRh7ZJ7hYuG3AaHG2Gr6yNNyo=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by VI1PR1001MB0989.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:6f::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 09:20:48 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 09:20:48 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: wget - The certificate has not yet been activated (does also happen
 in qemuarm "virt" machine)
Thread-Topic: wget - The certificate has not yet been activated (does also
 happen in qemuarm "virt" machine)
Thread-Index: AdgY3zrA9A54wWBoS1Kqbp790o9XYw==
Date: Thu, 3 Feb 2022 09:20:48 +0000
Message-ID: 
 <AM0PR10MB310787F71EFDFE37D2543C0399289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e043df51-74ae-4403-094c-08d9e6f67725
x-ms-traffictypediagnostic: VI1PR1001MB0989:EE_
x-microsoft-antispam-prvs: 
 <VI1PR1001MB098900F780F94712E5187F1499289@VI1PR1001MB0989.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wKkgoKmXlsOZ7fgmhT4WT13/tdmX/wa2N6fvzNVcewK5mQ5xRuDRDfcuyEzizQCF5F5lBEuNoSdnwmcVQoMfoayVui2Ueiw2GBxi49KnY82BkGsDcsftOriYXM1la6PTZmH/zc9t3uO5DafQFSLwVR3D9fP2szdrbD7UxoLqD0T3hu/Q1Hpjv1r9XBrATvkC1eU61nleta/KCTojPWYDR65K1fbtnikwaaP3ch0RAfK+r842opAFyL57xc+yx7lu2l/lctBdCphNl6aYIUSsCGzATjG0aWfXZh8LfLValm+Sr8SVCtVy3Otr1HNjcKjZzOotEdQwjxuo1uODmxu0dbPvrUJ6DeQl6wM81t9sBXs8PrBnsDwMx8EOCpk5qWmQQ/rS/RmZWZPaEAt7JN4nBtTMzuMf1ENImat9U3+w+o/cZPxoJ6aVyPcy3HtIwuiyR8WMxBTgoa4nJjyo+6i4CWM7vTOn8fRHi1284zFw0/PalNE+3Y9SS6L4B2CruBt6ZWUPnBPM0YdcKm22W0URBONpdl7NOv1Hb5zlVx/iY38EZSXOadCK78PLDMcu0lvC3rCGesVHS9/Xuh0vcgsu7aQMWOlFCgMv6KTvIBqy1OFgIXpZwj4dQZkl+5Uf+VZJw9Ff8NlIApNKSdB5bwLJB7s6dd2JrXJoeTW0Wg2P4yfIjAHfOeAfzD0inmVIcUo9m68B5LAPfnBFjuMi7UqE2Uj7k72Mtf9RwaryEl9l9mR5g5VHEbohzsZ5lngM00udWoccfXnraRAJ36Fa3xxaBgThLnPuJmQUImc5OOB3x//Grh2nrofIPYlSxD+FEShs
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(39830400003)(366004)(396003)(136003)(376002)(346002)(186003)(9686003)(6506007)(76116006)(8936002)(44832011)(38100700002)(55016003)(66946007)(316002)(7696005)(8676002)(6916009)(86362001)(66556008)(71200400001)(122000001)(33656002)(38070700005)(2906002)(52536014)(64756008)(66446008)(66476007)(5660300002)(508600001)(966005)(83380400001)(2004002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Qsk0VZCKu8UnQJ3wswysEro/Zjm3mBBof6nTWLhmwrnPhRISHo+BRZZTU4Q8?=
 =?us-ascii?Q?f70lkjXwcy4lS32ETJHWMIFEjd5Fjq/5x5HNwvnxz+h2pEsy9//G2ADGOiV/?=
 =?us-ascii?Q?SN97N24UYQuDyJ2Pz0Qhuo7hgTQ8gCQMEflx1qeY0fj1314ohYpZvkJWDCLG?=
 =?us-ascii?Q?U/wbyjSRcC4UU10pp74J5d9zKBws5NyBKGO49do/2V8OLOcqkUHZbPXULVqC?=
 =?us-ascii?Q?jhwqqRrRkcAtPzUQy7pohyiyuhuRqMYaP29I5p9Y0PgTy+WmtAkqGe6YZvZg?=
 =?us-ascii?Q?KCnLSnlY/28ERzaJytfrQgDCLMA20xdcVEoMcvWqUv/55lbx/umOWWLl5AUu?=
 =?us-ascii?Q?i/z/rjYZQvsetThURMpOlaR6bGJax0uH9UEn9ljWeHbCXP7jCmobentVkhST?=
 =?us-ascii?Q?VNibJkF+RQDTkIFgiF0HPzZVDi4zTLJxmuIV4aB4QIHMT5/jnyUfQcWY/cXE?=
 =?us-ascii?Q?EOzYbQafAcaJ8QpL7EG/IIk3TqmjV9YZaSbt14BIEBHqZpiB4kelIRMCV0CN?=
 =?us-ascii?Q?KwGMuLSJnzZ3Po2VcV+KiOA3ZwxDJ6wilb2uoie7ZRBCMm7RgclE6NLbCYUD?=
 =?us-ascii?Q?31AWI52UUGd9FrnuoQedNvjS9X/JHT4sKm1uHFWhWW+/b4iV7ts8S8CLiAcv?=
 =?us-ascii?Q?UEeOIhpHMPF66nigFOJReJW/rgfbCW2bh44QJqCAP/7+5Q+IyI/DNd8RvZX8?=
 =?us-ascii?Q?APA4WtQCoaWxkToBUrtmknJmDtKPszl+0Bme2D5urdc+fA7/X5yJbMzpHv8C?=
 =?us-ascii?Q?lOBe/c+nVV3vbpQCmxvjmwFPCR8413pX1ru++wve+aNhoiR7T2o6WpxcUU8A?=
 =?us-ascii?Q?01ZaLHPuuSQwtsRPJsNyZUCt5R1Ek97jjeC9SBEP1mdCRkP64XaNi4w47d5R?=
 =?us-ascii?Q?v683ygMyVb7+cZugB8+pUQGgQdMGTWM3522nX+Ms/jCD1NU9I2lgY4+B9KFM?=
 =?us-ascii?Q?SNdPU6Wx7rISa8jy4iOOFBhM+LkmnEE6/T4MWP2oTNILjsizEnmaEiFLtQsl?=
 =?us-ascii?Q?WT3ENsQB1Y3qaJNPJF8gAnoGAfgAOK48DIsZypSvPY55it+viXj2Tiind0DE?=
 =?us-ascii?Q?OSzKYsSiVC96TM0fV/0BroimZMAGC3eckmXkHcTau3w5NOnco+LicteBchH+?=
 =?us-ascii?Q?+jQKv4wBXzahhRi0EJqId2wm3puQnnHO9WM+H7l3ZBFYXFrduJSEnDfI6tFG?=
 =?us-ascii?Q?LlaRg5VFWV721rrRCkRkwPct+QsYWbhbCdyqxfS6D0avrW0TS7oMxDQPOV/e?=
 =?us-ascii?Q?nDt73c+7SVX0w2tLs7L2ouX5siNh0T381roP/186dNKP+sg6BonVfJbgjtzb?=
 =?us-ascii?Q?GVXrEmfR3Utiwy3XSSTAr5QeAVZHOQllHg3wTOev27wDU50mHB9MS9VDFPDL?=
 =?us-ascii?Q?ZCnsDW4TnLE4rQhPVG+/yVbMRvk3thOstEuNsRdtXwEcu/ih3jzlm8hqfND7?=
 =?us-ascii?Q?MzjB3FWYPzC/lTfZ+Sp20t/tGk7II56Y3f0sABc8WfuDCZ2CXBX+A41140nd?=
 =?us-ascii?Q?ddRTDfi5NGf7ek8ILYx/UHrVYQkiCDe0ToS4XT7F/cQ40aHTDC89k4kXlz1M?=
 =?us-ascii?Q?rlCIMI5ZRY/XZXD9szg5odAZ8Nbi5q4cH8MlJSY/36XS7Mtl1QpvDIm4lUkx?=
 =?us-ascii?Q?P6dG1cV483whLnxhVrvIVDDXyLSnKSFYu5i6Whzh3uelcyl2YK47pBwvJ4zn?=
 =?us-ascii?Q?loIoIR2wMmJl47ND4iSGpKByYf++t+D1mJ735hOddL7q2vtPsag8J0UX7ns+?=
 =?us-ascii?Q?skUsltm6Ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e043df51-74ae-4403-094c-08d9e6f67725
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 09:20:48.4270
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 GJrFWhZEY9BmYTCWQiOdugDlheJRfnJi/bW7oUqiUBSSiO2WlbO82nPeTIlrK7ay2WvoAP0hGmH8Mo+uoQt0am3h6iGDZdd1m9nZc2oGgRg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR1001MB0989
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 09:20:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56053

Hello,

another addition to the problem:
The problem does not seem to be directly related to the custom kernel or th=
e one yocto, as I can recreate the problem in a second yocto.

The yocto is for the qemuarm "virt" machine. I have the complete sources fo=
r it here: https://github.com/matthiasklein/meta-yocto-coffee-qemuarm

Is it possible that it is somehow related to 32 bit ARM?

# uname -a
Linux qemuarm 5.15.16-yocto-standard #1 SMP PREEMPT Tue Jan 25 14:32:58 UTC=
 2022 armv7l GNU/Linux

# wget -4 https://speed.hetzner.de/100MB.bin
--2022-02-03 09:18:37-- https://speed.hetzner.de/100MB.bin
SSL_INIT
Resolving speed.hetzner.de... 88.198.248.254
Connecting to speed.hetzner.de|88.198.248.254|:443... connected.
The certificate has not yet been activated

# wget --version
GNU Wget 1.21.2 built on linux-gnueabi.

-cares +digest -gpgme +https +ipv6 -iri +large-file -metalink +nls
+ntlm +opie -psl +ssl/gnutls

Wgetrc:
    /etc/wgetrc (system)
Locale:
    /usr/share/locale
Compile:
    arm-poky-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard
    -mcpu=3Dcortex-a15 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2
    -Wformat -Wformat-security -Werror=3Dformat-security -DHAVE_CONFIG_H
    -DSYSTEM_WGETRC=3D"/etc/wgetrc" -DLOCALEDIR=3D"/usr/share/locale" -I.
    -I../../wget-1.21.2/src -I../lib -I../../wget-1.21.2/lib -DNDEBUG
    -O2 -pipe -g -feliminate-unused-debug-types
Link:
    arm-poky-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard
    -mcpu=3Dcortex-a15 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2
    -Wformat -Wformat-security -Werror=3Dformat-security -DNDEBUG -O2
    -pipe -g -feliminate-unused-debug-types -Wl,-O1
    -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z,relro,-z,now -lpcre
    -lnettle -lgnutls -lz ftp-opie.o gnutls.o http-ntlm.o
    ../lib/libgnu.a -lunistring

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://www.gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic <hniksic@xemacs.org>.
Please send bug reports and questions to <bug-wget@gnu.org>.

Best regards,
Matthias


