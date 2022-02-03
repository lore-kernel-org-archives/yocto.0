Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F555C433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Feb 2022 06:37:10 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.56])
 by mx.groups.io with SMTP id smtpd.web11.5935.1643870227280922541
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 22:37:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com
 header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=k4cmk5NV;
 spf=pass (domain: optimeas.de, ip: 40.107.1.56,
 mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b45uY1lUANv4+7EQ70lZvufwTA3FlEb6yCLDKDTe/zDiOfSovC2QVzK1CCElQEvk6aYWlI1bxIq4ESGqN3yRyRTyXOy4BYk4s6ghbadiXCfkfQjPnDwS/u9X+9AXi+Rv8b6Plz9TYn/p+WjMO1pPcg0Po9Ty6thlbnSJ4BLrNhWLrkNaXeaMKUmAaUDkQK0Z6rK7Hk3MEmY4FfHjGNtCuF43el3Lft5lsTC10qOOX7RnEIxtO3DWydE+LHZVXx9HtTLpAknVfVEtzjcuPNod6JMxnfSP5IKwt6g9mitLyF5mzlhtod5JvcGgSuYCYW6wg0cbkPbSmYn/guKq+sigjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rKLDT+x4h4rHGURTMHy4j3AWxIp75elMvwpKtnVH6As=;
 b=PHJfu+3lqhNhb6yxa8VKmrAlftxAUvymOFpqgRnalqxyexQsWvX77wLwF9KwN0EbnqduD3Z0vVQRoXUdRaxSsCmnfUI1bX/r4fedYCm3FeIQ9gQiMt0Mop7OzgFzTmtlHsr8239Xse+NU0625hlArM6BRkXCeMff7T14Vxpj5CX7/HBUTG+LTsn1aSvXNHCgcUoGmpY2xSEkSkuAsxNQ91bUMXt1hw83We5WM8sXdxcooYqH/B1g3SggzdZ9NsY5Gu/7cUMdUSYJDx2n+driUBoUWfv9FYIWR1rL3SSEFtnApeA73XhRmEBlFokWB6VO5r5zrfUaqZdp4Lo8DBNw9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rKLDT+x4h4rHGURTMHy4j3AWxIp75elMvwpKtnVH6As=;
 b=k4cmk5NVi++qkM3VmpsN+/GxUm7LajYV1SIcPpcAEuqf9CgHKT3UHQZqp/QTCrd2prxjpNhLK7pc6HUJ8tF2rfiM6kflpjhtFqIb4o4Swn6OmXKvnZpaefHp8ULZqKVgAqtGS9LFwUybSUt0y0drcg7onjJcwl0pBbh+8nrk9+w=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by DB8PR10MB3420.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:ef::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 3 Feb
 2022 06:37:01 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::5469:dc0c:7012:d085%4]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 06:37:01 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: wget - The certificate has not yet been activated
Thread-Topic: wget - The certificate has not yet been activated
Thread-Index: AdgYxwNdHSJPIT2USkGyBs4Gv/iaGw==
Date: Thu, 3 Feb 2022 06:37:01 +0000
Message-ID: 
 <AM0PR10MB3107FA2B22E2F87535D4896C99289@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f3ccb62-2636-446e-a4fd-08d9e6df95e8
x-ms-traffictypediagnostic: DB8PR10MB3420:EE_
x-microsoft-antispam-prvs: 
 <DB8PR10MB3420E1A9A414DAA4B3F5B40599289@DB8PR10MB3420.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Hpx8jARdi25xapgrETtMrW2SClsefQ5Xd82IB0qn9O4i3EYVjCme9dtrwJXzAsUpALohHM8bDuw7BW1Tw5ELrtEZ2KrAFF3BF+qLYAXEy73cpyrGjfQdKxsoIcPUy4LYVKuST6E6KbwzpoTotqeNUoO/5QY/gOB0buGfO+oVQ09iPNVd/FDU1cpkAEM7sLRjs9zzMv8vJtKSlF9KUFeu1OHBMwBEqRs0WL0g8FuzpRj0sa0RQ2BQYRQ5Rp378cR8+zS726ixzZ6aODKO69KWl2SA9Z3Js3PA2ZgeeG2q3IJ6Hf09Bk/InaWOi7rBl/Ci9raKneMTILzULq8adiQgPOW8qT272aNaHcPTaTBAekZ6fjYOLSND40Np6vP+uhq4Wnv8rpAVO1TxWzYdWevgMxWkBHp3+Ow9On3vv/ni/M4OUWFQko2VyhdgGsfBf8+iS+1cfxyfA8ajFD1IiJZu9Jtb+hMSxZWTxDH46WubZVroNTusPrXoLzuOHlfu/hG9f471NWB/ydWXOdZ9Om9f0kWk5gVy4fxgHjzKAT+8F/jnrFgoNNY5os3M4goZhbCRvWZQmBcLcb6hirGfWDqIvOKY1FRGp17EYd7vsZdet6vGZ7T/d0nBEfnHJ1bRyIoayEU/W3mem9PulHeUXcnfTfgGWgQuqvNoMCSDDBQgSRBdl+Ja8VL+3YuugdMu7ZtYxKZRI04vhfaFHt0ppQLwLKZFvzAE1EMsa2K4phueKrr5EBW7CpV8D+NGjiVrfk8vW7VAyRSAreYBshG6OI0ZDlwPytXm6bPzmSA5zoB9ZFd3XmT44BV7pynJU09eKgO+
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(346002)(39830400003)(136003)(376002)(396003)(2906002)(6506007)(186003)(5660300002)(44832011)(52536014)(7696005)(9686003)(83380400001)(33656002)(6916009)(508600001)(66476007)(66556008)(76116006)(86362001)(55016003)(38070700005)(122000001)(38100700002)(316002)(966005)(64756008)(8676002)(8936002)(71200400001)(66446008)(66946007)(2004002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?4kbhGFklmtxUNuSTIPcFa5oZ1I1bVdVpJmIP6WgqybLfCh8XDuLkzSKFzIBi?=
 =?us-ascii?Q?c9fui2n6GVzHhDFoJKiycP78elLJec+zmd+zSVORpezWovOamtIUrSK+0UCQ?=
 =?us-ascii?Q?0oJw3CyTDCoj5j/tAh51tYYgPbPXhKrI9yUCuim4VnEVTd90Tja4SnwwIn17?=
 =?us-ascii?Q?PzsIV5JMCOrryKm6XNVZfC9xPWcF2dDKZf4oRgKHwSFgmBpMVHdXRvFrBHoX?=
 =?us-ascii?Q?EnUOGRYhZLdlHo9fNcqwn3LMdjmjy1ufotQaHXXR6LZlol9jkfGPHthW/isa?=
 =?us-ascii?Q?rQrXPIDoZANSjEDzD9pFlSd8GHQv89Sroj8Bb5DlBdI++ThhC8Pie3AhCzkH?=
 =?us-ascii?Q?Hftq+1zliZa0jiP2LJVSLO3A5lC2DI6WbFXus/IAPcVgj4R9IBbTFN4x7d47?=
 =?us-ascii?Q?0ImiPICsP4cgTzs3mcEHaau4hwq8/T0vi2W8qwVDwXVU18p1F/a6/Lzlg0a8?=
 =?us-ascii?Q?Nx3YkcF+zsAe/AOuIJQMOuZ7ZkV6j6TDZM7DS/5UyKBlML7qay7G7sZKgpon?=
 =?us-ascii?Q?dpJE7mB7nseVXaRhw/Dj/TiGLPWjpZlJzXQIenIgxsqDrCS/tJXxNpfYeE7y?=
 =?us-ascii?Q?AC30Q+AP9V5emFAea9hTVzk3czfsj9sXLrnl9K8OFWD+Rr51j3fCJVL7rAvt?=
 =?us-ascii?Q?PztISVgAFrMlJ1J6VyFb/Vl+vXvmfv3Yvs8ruXBqMMNjE6s8VyD8pZdM65ye?=
 =?us-ascii?Q?XIsoLrLSzozwaseD+d+FTF/EH/iXHwc/Cxte+LX0h/dj6c4lzGauiNwBTqZW?=
 =?us-ascii?Q?0F3bdC3d77Oe1ymcDP0/F2+fiu/NqHUpHKTrNDCnK/EwiDYC4SmlYd68pkQG?=
 =?us-ascii?Q?CQXvZ+QK7alebbNf87rwihVXR+mvgpDe7Z/Ev5Y41jUyujrKUWaMGsDB2Kph?=
 =?us-ascii?Q?BKqx8LoQj1AH4PxzIZf8zqGE2qMmPo2yDYIlBW45h2xFmmXz90ujnyw2NTm6?=
 =?us-ascii?Q?88yCiOJpX6aePUHGu0GSh/9mSjrmn3clI96fkCiQZbC+nWFtpAfaEPMgyGoR?=
 =?us-ascii?Q?+BIFaECvvwNz+DB+Jp/1fBEFvAb/wLzds7kEf2snubzUsKvanPoYVesVth5c?=
 =?us-ascii?Q?nYAxndI7PjUCNirDxtq+13jqjewO1RIdGl/RCvc6aHhCaxzRBgLIOilzCupi?=
 =?us-ascii?Q?qM8HyA9IdVkKL0ZZbZXEo1SBkvoUgmSQG2vojr6tCoV3Cm8VvQVGkUn0Nt1o?=
 =?us-ascii?Q?fUJQ7BIzdMa624ekcuhqZdBzA8J5y6O4u7Iz5EBbeHCEn7ZNvvoGukJbNSL+?=
 =?us-ascii?Q?JTPp7tqNXX1dZitGoSNlQtHtexGOE9k5kLdVByGiPKfjhBChevri90RpfGrM?=
 =?us-ascii?Q?lX7v/o5Y0OG8rLrmmblENxyD7xdIKmXUjIQpQwCk6RnL2ALRYXSnjIfEImNS?=
 =?us-ascii?Q?RLRie1wlooBgW27z/9m0+V+496nzIzw9Z/GHVFzcia9J3NMr8zE/nJdw0Coq?=
 =?us-ascii?Q?YMY1MOy01vwExK9ugflGSLIpvKHkuvW8hVDVrc710V5jWDWyablaxPPkOOQE?=
 =?us-ascii?Q?bP/CZ5YvXxIo5GNB1/UrVc7T4V+YzXs5oKDpYcLf0HxBxWHNTSCSDnykPqWo?=
 =?us-ascii?Q?ippTdrZT431ScZOTGic+A6kx4F4H2wEnowvp+8foyklU1DAMB9DCaOHxazt/?=
 =?us-ascii?Q?q+nlZ8RUYIH4J1nQihg1UbDa7dGT4ePjcW8tBBBDEvYeylOixS5uLx/4BnAW?=
 =?us-ascii?Q?7rPs9RJ4mFq2RfKwpLfcFz91vvb23Y9pBuxHJzGb7BX/0ShU8T2EQj4LBqGu?=
 =?us-ascii?Q?vvkBk6nduA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4f3ccb62-2636-446e-a4fd-08d9e6df95e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 06:37:01.5845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 yuH/OuzUre1sK84i6ibZBslbjgETqCRhDL6NPikSlqTMk+XZ/QqIoObfCN+lcmzylGHttlI7ID00eYU82QhsQiDtGlbv5IIcKrT4nLgSyf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR10MB3420
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Feb 2022 06:37:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56050

Hello,

I have with the current master branch in a IMX6 Yocto the problem that with=
 wget no HTTPS downloads work:

# wget -4 https://speed.hetzner.de/100MB.bin
--2022-02-03 06:23:25--  https://speed.hetzner.de/100MB.bin
SSL_INIT
Resolving speed.hetzner.de... 88.198.248.254
Connecting to speed.hetzner.de|88.198.248.254|:443... connected.
The certificate has not yet been activated

I do not understand why the validation of the certificate does not work.
With curl it works. It is also not due to the time of the system.
I use my own kernel based on the mainline kernel 5.10.47 with PREEMPT_RT.

TARGET_SYS           =3D "arm-poky-linux-gnueabi"
TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-hard"
TARGET_FPU           =3D "hard"

Can it be that something is missing in the kernel configuration?
Does anyone have any idea what the problem could be?

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
    -mcpu=3Dcortex-a9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2
    -Wformat -Wformat-security -Werror=3Dformat-security -DHAVE_CONFIG_H
    -DSYSTEM_WGETRC=3D"/etc/wgetrc" -DLOCALEDIR=3D"/usr/share/locale" -I.
    -I../../wget-1.21.2/src -I../lib -I../../wget-1.21.2/lib -DNDEBUG
    -O2 -pipe -g -feliminate-unused-debug-types
Link:
    arm-poky-linux-gnueabi-gcc -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard
    -mcpu=3Dcortex-a9 -fstack-protector-strong -O2 -D_FORTIFY_SOURCE=3D2
    -Wformat -Wformat-security -Werror=3Dformat-security -DNDEBUG -O2
    -pipe -g -feliminate-unused-debug-types -Wl,-O1
    -Wl,--hash-style=3Dgnu -Wl,--as-needed -Wl,-z,relro,-z,now -lpcre
    -lnettle -lgnutls -lz ftp-opie.o gnutls.o http-ntlm.o
    ../lib/libgnu.a -lunistring

Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
http://www.gnu.org/licenses/gpl.html.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Originally written by Hrvoje Niksic mailto:hniksic@xemacs.org.
Please send bug reports and questions to mailto:bug-wget@gnu.org.

A test with gnutls-cli seems to work though:

root@smartrail-8037:~# gnutls-cli -d 1 imap.gmail.com -p 993
Processed 127 CA certificate(s).
Resolving 'imap.gmail.com:993'...
Connecting to '2a00:1450:4013:c02::6d:993'...
- Certificate type: X.509
- Got a certificate list of 3 certificates.
- Certificate[0] info:
 - subject `CN=3Dimap.gmail.com', issuer `CN=3DGTS CA 1C3,O=3DGoogle Trust =
Services LLC,C=3DUS', serial 0x65fa03b5a71a05070a000000012e04f6, EC/ECDSA k=
ey 256 bits, signed using RSA-SHA256, activated `2022-01-10 03:07:10 UTC', =
expires `2022-04-04 03:07:09 UTC', pin-sha256=3D"ZrSVXSwpcGu6oCbquwHwx6H2FM=
7DjzANRxMjQUC/Ng8=3D"
        Public Key ID:
                sha1:ae10ac489504779956e7acfc17631471be3e20d6
                sha256:66b4955d2c29706bbaa026eabb01f0c7a1f614cec38f300d4713=
234140bf360f
        Public Key PIN:
                pin-sha256:ZrSVXSwpcGu6oCbquwHwx6H2FM7DjzANRxMjQUC/Ng8=3D

- Certificate[1] info:
 - subject `CN=3DGTS CA 1C3,O=3DGoogle Trust Services LLC,C=3DUS', issuer `=
CN=3DGTS Root R1,O=3DGoogle Trust Services LLC,C=3DUS', serial 0x0203bc5359=
6b34c718f5015066, RSA key 2048 bits, signed using RSA-SHA256, activated `20=
20-08-13 00:00:42 UTC', expires `2027-09-30 00:00:42 UTC', pin-sha256=3D"zC=
TnfLwLKbS9S2sbp+uFz4KZOocFvXxkV06Ce9O5M2w=3D"
- Certificate[2] info:
 - subject `CN=3DGTS Root R1,O=3DGoogle Trust Services LLC,C=3DUS', issuer =
`CN=3DGlobalSign Root CA,OU=3DRoot CA,O=3DGlobalSign nv-sa,C=3DBE', serial =
0x77bd0d6cdb36f91aea210fc4f058d30d, RSA key 4096 bits, signed using RSA-SHA=
256, activated `2020-06-19 00:00:42 UTC', expires `2028-01-28 00:00:42 UTC'=
, pin-sha256=3D"hxqRlPTu1bMS/0DITB1SSu0vd4u/8l8TjPgfaAp63Gc=3D"
- Status: The certificate is trusted.
- Description: (TLS1.3-X.509)-(ECDHE-X25519)-(ECDSA-SECP256R1-SHA256)-(AES-=
256-GCM)
- Session ID: FB:E7:27:9D:B0:8F:4C:2D:0C:5C:E9:17:0F:5C:9B:28:EE:3F:C0:38:0=
C:43:15:8D:9B:73:A7:AA:BD:AA:F9:87
- Options:
- Handshake was completed

- Simple Client Mode:

* OK Gimap ready for requests from 2a02:908:4c16:7960:20c:c6ff:fe81:e7fa k1=
0mb249481499edf

Best regargds,
Matthias



