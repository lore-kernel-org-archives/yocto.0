Return-Path: <joseantonio.cardenas@niko.eu>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41138C433F5
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 07:00:25 +0000 (UTC)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.59])
 by mx.groups.io with SMTP id smtpd.web11.6548.1653375614075063785
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 00:00:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@niko.eu header.s=selector2 header.b=C6V1R9bF;
 spf=pass (domain: niko.eu, ip: 40.107.3.59,
 mailfrom: joseantonio.cardenas@niko.eu)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YAzfU8FJCcfWYXdwQxTTbwU50eYbdRdUBX/N9EFQbftb6O2m8ax5uR+7IiHJ5+odFO9m2jUruTu5bec8xH4dGtWLSlqxlXKATSbEs6FkpO5NVU3uY88Ax7iwN383IhdUGXaQ5cISA1iYmJYNvnNiho+yjFVX7+W7qwicXbwGRfwUPqp4WSy0PM3Bcs0VMB95DMmr5P9OeQfe1zhA1oQI+q+oVgJwjtydnZXwYnd0wKYO6ePDc3jnyqoGdCh6blxe/6FEzsb/CP9YuVYr3sShnqNZ2/Mx+rS+9wIM9MOgBEBOHUjmob7uEqj6ATzLMmNaom7FN/7mPX9kutJoRYJp1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5e+495Gk4F4H5ho6m33x73FAtkCjxiI8SLDr6s9QGo=;
 b=WslpT5Xw7sv4II5JpBaj5zPTf8kx/SnC2S7cyaI3ipUOy1B5BXVs2JDI7aL4JycmmjB0jmOVOALyv1vDh/TG+qIXyo1mluu1yLfz1rjj6W3aY0ey+88SRVKUFSlB17LkBu25fPDCh83KPEXZy0mJZZivbgw4yThwMTBHGHeFWqsyKuiA9eKz/93qrLWoL35vUDfLPwfJsnLOAYT7461TdAivV0CC0MI5XNWTttgyzJ5ZTRw1HHCfimi1cDNIYLY3b7FKipWjPW6d4Ys2bphlnGOguX9mAQ/+p2t3r8fTCCsbNXN+PJZdP9jD9LR5h7gxvepG/X4C8sV5PDTmVQn/Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=niko.eu; dmarc=pass action=none header.from=niko.eu; dkim=pass
 header.d=niko.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=niko.eu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O5e+495Gk4F4H5ho6m33x73FAtkCjxiI8SLDr6s9QGo=;
 b=C6V1R9bFrtz8YCf62EAlKF0q9KcmjAmc/ciE7EXm8FeUcRQpVzgrfZSVId/gkU+EuwDJFaLsowvdzbNn0jpsSKGZhK2QhW3J3nERR8gz3wLKXHtLKnZDRCrDWliOOyDZKFbYHtWCvt4dADPzbONGPVYtOP9cGlWFf+RRdAyi3YI=
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com (2603:10a6:7:2d::18) by
 VI1PR08MB3087.eurprd08.prod.outlook.com (2603:10a6:803:4b::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.14; Tue, 24 May 2022 07:00:08 +0000
Received: from HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec]) by HE1PR08MB2859.eurprd08.prod.outlook.com
 ([fe80::4802:5d02:3cac:58ec%4]) with mapi id 15.20.5273.023; Tue, 24 May 2022
 07:00:08 +0000
From: "Cardenas Jose Antonio (JCARDENA)" <JoseAntonio.Cardenas@niko.eu>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: yocto-check-layer fails checking signatures. 
Thread-Topic: yocto-check-layer fails checking signatures. 
Thread-Index: AdhvOyoPgawxw3uFQy6P4YIH7d1qxQ==
Date: Tue, 24 May 2022 07:00:08 +0000
Message-ID: 
 <HE1PR08MB2859080F640B0A940794D6FC8BD79@HE1PR08MB2859.eurprd08.prod.outlook.com>
Accept-Language: es-ES, en-US
Content-Language: es-ES
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=niko.eu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9566f69e-216a-4d3f-0463-08da3d5309ec
x-ms-traffictypediagnostic: VI1PR08MB3087:EE_
x-microsoft-antispam-prvs: 
 <VI1PR08MB3087600BC4363A04FF7485DC8BD79@VI1PR08MB3087.eurprd08.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 VKf++70PjBG7aCD4fok4L4+oJcPcHkZHryQqx1T0tIR6RYh3BTQ+CM7cHTWoWQajUW2xP9NcSf/K4u7ldUGqrYASsUqkM46mOvKXdDw/Vmt0ZEUkcsR0VRUjBZYzAhVTK8/ksljOVR7EkR6TqO2ba7cC3LO+/OTbJ4JPJ+3VV3gBZKS09IOkJ4x5474wMhmunGXdnM7+kXqF0U7DLPGMxhaCXqK290a+vDQ3XM7NwTfLfHRIOBpjsiVXdkdHHWCa/ziytRB9TZFwJ+rzo6hkqer2Swtc9f98qo5hVQXFQvgl9+krFvG+6v8zp1a1/9GORWQ4mdc3MDzig+U28gfH+pPECdH15ItbmOFOxNI6Xdk0aTY1jY29RsDtU483GjV9r7/N3eyNKKxEef+nRKfXzSW3NqO1y6ZDFIdA/Q7/TL6hVycOMdQh1Onptb4zSWXby9UKlat1PAgnVjz9lwSm8xU/suCXiinaRqjKVYRxvciQgdz8oyPjtR66OD78C0Vsgf9SR9SZpuNxO6Qoz/3Y2MyybN8Cx5zjdjgqW+cDmiL7EE+B5Aj0B5Dq2UF3ZlnDW4PRajH3EY1kU/QyVHbAF3HO3o/TuXezdUQK4FCqIg+NFY+Id1ZPzLbvQg1Bm1narq+bPFSvbcS69EdCZYIbCvAXtnbW6raetR8FV9JRDeRzAJOUttN8IjYVJrm2fVavUpr5BNBuDK0QDmRyaCrB5w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR08MB2859.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(71200400001)(33656002)(316002)(19627235002)(6916009)(122000001)(55016003)(9686003)(26005)(7696005)(76116006)(6506007)(8676002)(66556008)(64756008)(66476007)(66446008)(4743002)(66946007)(86362001)(52536014)(2906002)(38070700005)(8936002)(38100700002)(5660300002)(83380400001)(508600001)(186003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lxayOtcL5uSueBuLUKlyOeF9TGTFIVoCQ7mZ80jxeDoaqgBdnpX1Iw4ezilv?=
 =?us-ascii?Q?xORRRYzXfkkmL/HNlcMXVfGtDG0qprPR8oPwOHfVGuNY5172oxX1NsyVDbLK?=
 =?us-ascii?Q?IZgvI52fsk94zUPy/G3c0l6djgVgY5pxes660HuCvxhKABhXDBgTBqb6Bq9j?=
 =?us-ascii?Q?pN43q7qc+tG3nF3iW9nfpRMKSVnpWDXAugF9yPAXUecCCXDXGg34DRJFoKoT?=
 =?us-ascii?Q?385K/Q4d/l2UeJixOTFPABqo0ua1cV8mSj2X46GzyFBujrWPh3NUi23Szu6d?=
 =?us-ascii?Q?R+RRBS5wia/8NRCpHuFauyS/53Pl1/D18jRpJ9eBpMFejNo/Z+U1POXBOq/0?=
 =?us-ascii?Q?yYip9z+IjXsXCnuxunMWz7VKMZJ6/IvBV+CgnWuBN+OgnbcG85Bv7byfhS3k?=
 =?us-ascii?Q?0mDLtDQGa4i7xavxqfQs8Rc6uliYmtgDb89ISv3vkTE0BCKT0rHNozIDGINL?=
 =?us-ascii?Q?j+wxaQfzcoBxZD++kYDbziyh2Ga5R607t8JXZ09K4lm0Z+2r3XgOtvEYcOLC?=
 =?us-ascii?Q?KZxOfU656VmJLvaUmPNxv9F4JewEaN0dIslKxgFXVSmrgeNogBtcF8dRnErh?=
 =?us-ascii?Q?nF7X/pPtBZ04DYLx97CDrB/T1V3vo3gi0QDWwGLwutZAbpMjcUwOrqbQRfAE?=
 =?us-ascii?Q?9c9rTIaJpn238weDVO94fBHFgk+TKvrIcb9JrkNXUTnaiRj6Cc0JfAKaU2Ro?=
 =?us-ascii?Q?9wsYM6gqNDI4NEw8ijb31CiOLRJhrZkUXjlOGYZqFDEAPZZ+w75AxMvXDG9f?=
 =?us-ascii?Q?oYuhlaCEXXDQav66g3bbvL5UyrcsMFZolvHZ/yoVDRrTLz08Ef2/f+aLyhmg?=
 =?us-ascii?Q?xGj/p+ZWy/xg+lK4ElDaqw1/EGhN0im9xdA2oRm0JM0cqCkhB6cOFEfJFzPD?=
 =?us-ascii?Q?tEVLzehQOLf/ZfHdENc2p9hWmzWcYpKT/uhQcBkJtl1Ed6EbNOTqPX3/iMq7?=
 =?us-ascii?Q?PVnPPwnVR1FnH1G4Xd0iPkkjXJH6EB3QsXPfF/+ymmxW/FGQGogpSfAxUuAP?=
 =?us-ascii?Q?gdSDpfTyMp9UxvLs+k9hPriwpIodIfUD9b7vt5FvAwuMo2mPwov7AUCH5w08?=
 =?us-ascii?Q?PYrGkv+1mdunvVA/teYcl3O25e7KvJethywTZlwjHj8pwjKGP7PGwrd9okBz?=
 =?us-ascii?Q?liwZLVfrV3sOpYmzBWrkNnVe3EKz95mzvDt0Mr4MBGLOF7hDa5p+09XHN8k8?=
 =?us-ascii?Q?G8xfwet7gqaQU2ZBc9wIHLEpEiDhZ/ZKG4WsACa5glTmPz0RPd5y588HTsb+?=
 =?us-ascii?Q?2KdwM6a8NUu2iG5X5mb8/RQ0vDLHhdYijafIathYqyawRywdJnpdOUJdXoad?=
 =?us-ascii?Q?yVSZZ4HLF3WiqaU/Bd2jz0FTOr5E4jBcByvhXjN1DlDmBWN/l+28ahMl+e2k?=
 =?us-ascii?Q?SN14jDqaCWLh40e2mKfZAmPqpMJ2pRg4vAKCT9234PMaDe+glSlk2XWsqizN?=
 =?us-ascii?Q?6XvXIXIZ8UqRYYvnxkctzRafxXD6cKZsHEZvUJwuukI+PqbY6Wyq7imwfile?=
 =?us-ascii?Q?93IBabTVML3QrU7bLSKkTTG2HImFkTrKtC/3fNVqWynq9/be986BgYyctkPo?=
 =?us-ascii?Q?WOpaqifyPMDEFBeInJzN933lxDEgQVWTPIAFVcNXB+i9M22V/N0yctuFk1lQ?=
 =?us-ascii?Q?fPgu5GZ94ZBBuXduuhNrW9FU3znV1TNS1GIZMc09nSQ1RMi7xOzOz+9VkkRb?=
 =?us-ascii?Q?GCfVJ2+zMGAqfm3sP2uA7cbu8BQ9UveArpECr3k3eUOVYeNrIPQCv8YMdZ60?=
 =?us-ascii?Q?PxsrNVlvQWp1QtsJro4m238zjQVjV4w=3D?=
Content-Type: multipart/alternative;
	boundary="_000_HE1PR08MB2859080F640B0A940794D6FC8BD79HE1PR08MB2859eurp_"
MIME-Version: 1.0
X-OriginatorOrg: niko.eu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR08MB2859.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9566f69e-216a-4d3f-0463-08da3d5309ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2022 07:00:08.4232
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a4faf0fe-ff3f-4912-b675-3cfe1470e385
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 xdx5HZpOpttF9R1wfcTpuEnFQZPqQEqpNKl5NWetKSqE2zDWQahVZu1OYZXhy0RtiEKG3wunU34yIGwTTqsdsWXFEvg9gpdppAp2OHnT1sQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 07:00:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57167

--_000_HE1PR08MB2859080F640B0A940794D6FC8BD79HE1PR08MB2859eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys.

For learning purposes have used yocto-check-layer against meta-qt5 layer an=
d I have got that fails checking signatures with this output:

INFO: test_signatures (common.CommonCheckLayer)
INFO:  ... FAIL

Stdout:
Loading cache...done.
Loaded 3995 entries from dependency cache.
WARNING: No bb files in default matched BBFILE_PATTERN_meta-geeking-bsp '^/=
home/geeking/workspace/yocto/meta-geeking-bsp/'

Summary: There was 1 WARNING message.
INFO: Traceback (most recent call last):
  File "/home/geeking/workspace/yocto/scripts/lib/checklayer/cases/common.p=
y", line 81, in test_signatures
    self.fail('Adding layer %s changed signatures.\n%s' % (self.tc.layer['n=
ame'], msg))
AssertionError: Adding layer meta-qt5 changed signatures.
39 signatures changed, initial differences (first hash before, second after=
):
   gdb:do_prepare_recipe_sysroot: 3ebb2d1477e3eae773b471b0a588105804fe52ac0=
0bd2da1c03a62baad61bd21 -> 03cce43eee8f464a76ee7ba901aa1b750f1a9d3aa99afe51=
da5d5687c2aae948
      bitbake-diffsigs --task gdb do_prepare_recipe_sysroot --signature 3eb=
b2d1477e3eae773b471b0a588105804fe52ac00bd2da1c03a62baad61bd21 03cce43eee8f4=
64a76ee7ba901aa1b750f1a9d3aa99afe51da5d5687c2aae948
      NOTE: Starting bitbake server...
      runtaskdeps changed:
      ['autoconf/autoconf_2.71.bb:do_populate_sysroot:virtual:native automa=
ke/automake_1.16.5.bb:do_populate_sysroot:virtual:native bison/bison_3.8.2.=
bb:do_populate_sysroot:virtual:native', -elfutils/elfutils_0.186.bb:do_popu=
late_sysroot, 'expat/expat_2.4.7.bb:do_populate_sysroot gcc/gcc-cross_11.2.=
bb:do_populate_sysroot gcc/gcc-runtime_11.2.bb:do_populate_sysroot gdb/gdb_=
11.2.bb:do_fetch gettext/gettext_0.21.bb:do_populate_sysroot:virtual:native=
 glibc/glibc_2.35.bb:do_populate_sysroot gmp/gmp_6.2.1.bb:do_populate_sysro=
ot libtool/libtool-cross_2.4.7.bb:do_populate_sysroot libtool/libtool-nativ=
e_2.4.7.bb:do_populate_sysroot lttng/lttng-ust_2.13.2.bb:do_populate_sysroo=
t ncurses/ncurses_6.3.bb:do_populate_sysroot pkgconfig/pkgconfig_git.bb:do_=
populate_sysroot:virtual:native pseudo/pseudo_git.bb:do_populate_sysroot:vi=
rtual:native', +python/python3_3.10.4.bb:do_populate_sysroot, 'readline/rea=
dline_8.1.2.bb:do_populate_sysroot texinfo-dummy-native/texinfo-dummy-nativ=
e.bb:do_populate_sysroot zlib/zlib_1.2.11.bb:do_populate_sysroot']
      elfutils/elfutils_0.186.bb:do_populate_sysroot with hash 6bdde5ef4f55=
929012830ea7cbe8f3f0ef52c42d38832346d8eda3614e420f50
       changed to
      expat/expat_2.4.7.bb:do_populate_sysroot with hash c5fa50500fe0639a93=
edb56c76deebe115a4f43885fddabc939cca903ca1f5db
      expat/expat_2.4.7.bb:do_populate_sysroot with hash c5fa50500fe0639a93=
edb56c76deebe115a4f43885fddabc939cca903ca1f5db
       changed to
      gcc/gcc-cross_11.2.bb:do_populate_sysroot with hash 8332df50d2a22a200=
3d6b9a77c21eccc4fafeb813af16c134a67b09e64e5a922
      gcc/gcc-cross_11.2.bb:do_populate_sysroot with hash 8332df50d2a22a200=
3d6b9a77c21eccc4fafeb813af16c134a67b09e64e5a922
       changed to
      gcc/gcc-runtime_11.2.bb:do_populate_sysroot with hash 440ce22e9e7e13e=
a604e5fd9b7c5d05272c05c76d8504b20fe8761527bb23d28
      gcc/gcc-runtime_11.2.bb:do_populate_sysroot with hash 440ce22e9e7e13e=
a604e5fd9b7c5d05272c05c76d8504b20fe8761527bb23d28
       changed to
      gdb/gdb_11.2.bb:do_fetch with hash fc6369109e600af9324aa58c7b0cedcc52=
fd85400913b53ecabebdf990352add
      gdb/gdb_11.2.bb:do_fetch with hash fc6369109e600af9324aa58c7b0cedcc52=
fd85400913b53ecabebdf990352add
       changed to
      gettext/gettext_0.21.bb:do_populate_sysroot:virtual:native with hash =
32cc46ce9ab8e254999fe15746e6ac565211f08f248902a303acea27318ff6a5
      gettext/gettext_0.21.bb:do_populate_sysroot:virtual:native with hash =
32cc46ce9ab8e254999fe15746e6ac565211f08f248902a303acea27318ff6a5
       changed to
      glibc/glibc_2.35.bb:do_populate_sysroot with hash 805ac1d9b8ed5009950=
195c8a0ad39052c612438b26acec72deff9c440f9dc8c
      glibc/glibc_2.35.bb:do_populate_sysroot with hash 805ac1d9b8ed5009950=
195c8a0ad39052c612438b26acec72deff9c440f9dc8c
       changed to
      gmp/gmp_6.2.1.bb:do_populate_sysroot with hash 14f5ccddddc5581727d981=
6bd3d994634a110104fce81d906a9680f023de221e
      gmp/gmp_6.2.1.bb:do_populate_sysroot with hash 14f5ccddddc5581727d981=
6bd3d994634a110104fce81d906a9680f023de221e
       changed to
      libtool/libtool-cross_2.4.7.bb:do_populate_sysroot with hash 47db5d7b=
09f5366e991add0acac1c1070ba8719df6b7e230eade5b56fb91cdc4
      libtool/libtool-cross_2.4.7.bb:do_populate_sysroot with hash 47db5d7b=
09f5366e991add0acac1c1070ba8719df6b7e230eade5b56fb91cdc4
       changed to
      libtool/libtool-native_2.4.7.bb:do_populate_sysroot with hash ee4d549=
3221cd8cad2d048e512dd0b15a7a9ee3022e71ec92262bdd3ab7f056f
      libtool/libtool-native_2.4.7.bb:do_populate_sysroot with hash ee4d549=
3221cd8cad2d048e512dd0b15a7a9ee3022e71ec92262bdd3ab7f056f
       changed to
      lttng/lttng-ust_2.13.2.bb:do_populate_sysroot with hash 7478a63943331=
a4b6801ed8962ad5bf02f3445987eccf8ab61f37bac112f72cd
      lttng/lttng-ust_2.13.2.bb:do_populate_sysroot with hash 7478a63943331=
a4b6801ed8962ad5bf02f3445987eccf8ab61f37bac112f72cd
       changed to
      ncurses/ncurses_6.3.bb:do_populate_sysroot with hash 60338af1862be456=
ff3b34adbaf6f4ea48b2ca6b1768f47dfb9bb4d5a9b776d7
      ncurses/ncurses_6.3.bb:do_populate_sysroot with hash 60338af1862be456=
ff3b34adbaf6f4ea48b2ca6b1768f47dfb9bb4d5a9b776d7
       changed to
      pkgconfig/pkgconfig_git.bb:do_populate_sysroot:virtual:native with ha=
sh 9783abba1d732d634758b05c7736aba8e628ff0d6d350447b36fc5f104620695
      pkgconfig/pkgconfig_git.bb:do_populate_sysroot:virtual:native with ha=
sh 9783abba1d732d634758b05c7736aba8e628ff0d6d350447b36fc5f104620695
       changed to
      pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native with hash fa8=
2418d475d7cb527af2e0d0a79685ea319a968609f86b499ac0db6624e0207
      pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native with hash fa8=
2418d475d7cb527af2e0d0a79685ea319a968609f86b499ac0db6624e0207
       changed to
      python/python3_3.10.4.bb:do_populate_sysroot with hash 843496c5bd9f69=
b5179f3c87208b700874348ceaf310b6e7e2a82e0363303336
      Dependency on task python/python3_3.10.4.bb:do_populate_sysroot was a=
dded with hash 843496c5bd9f69b5179f3c87208b700874348ceaf310b6e7e2a82e036330=
3336
      Dependency on task elfutils/elfutils_0.186.bb:do_populate_sysroot was=
 removed with hash 6bdde5ef4f55929012830ea7cbe8f3f0ef52c42d38832346d8eda361=
4e420f50


Stdout:
Loading cache...done.
Loaded 3995 entries from dependency cache.
WARNING: No bb files in default matched BBFILE_PATTERN_meta-geeking-bsp '^/=
home/geeking/workspace/yocto/meta-geeking-bsp/'

Summary: There was 1 WARNING message.

INFO: test_world (common.CommonCheckLayer)

If I see in the gdb.bbappend file there is this.

# Just a comment line to avoid PAK archive (application/x-pak)
PACKAGECONFIG ??=3D "readline python"

How this incompatibility can be fixed? I understand that when there is a di=
fference in signature the task must be rebuilt but in this case I really do=
n't understand what it means because I'm checking compatibliby, not buildin=
g a recipe.

Regards.




--_000_HE1PR08MB2859080F640B0A940794D6FC8BD79HE1PR08MB2859eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ES" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi guys. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">For learning purposes have used=
 yocto-check-layer against meta-qt5 layer and I have got that fails checkin=
g signatures with this output:<br>
<br>
<i>INFO: test_signatures (common.CommonCheckLayer)<o:p></o:p></i></span></p=
>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">INFO:&nbsp; ... FAIL<o:p></o=
:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Stdout:<o:p></o:p></span></i=
></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Loading cache...done.<o:p></=
o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Loaded 3995 entries from dep=
endency cache.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: No bb files in defa=
ult matched BBFILE_PATTERN_meta-geeking-bsp '^/home/geeking/workspace/yocto=
/meta-geeking-bsp/'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Summary: There was 1 WARNING=
 message.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">INFO: Traceback (most recent=
 call last):<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp; File &quot;/home/geek=
ing/workspace/yocto/scripts/lib/checklayer/cases/common.py&quot;, line 81, =
in test_signatures<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp; self.fail=
('Adding layer %s changed signatures.\n%s' % (self.tc.layer['name'], msg))<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">AssertionError: Adding layer=
 meta-qt5 changed signatures.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">39 signatures changed, initi=
al differences (first hash before, second after):<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp; gdb:do_prepare_=
recipe_sysroot: 3ebb2d1477e3eae773b471b0a588105804fe52ac00bd2da1c03a62baad6=
1bd21 -&gt; 03cce43eee8f464a76ee7ba901aa1b750f1a9d3aa99afe51da5d5687c2aae94=
8<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; bitbake-diffsigs --task gdb do_prepare_recipe_sysroot --signature 3ebb2d=
1477e3eae773b471b0a588105804fe52ac00bd2da1c03a62baad61bd21 03cce43eee8f464a=
76ee7ba901aa1b750f1a9d3aa99afe51da5d5687c2aae948<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; NOTE: Starting bitbake server...<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; runtaskdeps changed:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ['autoconf/autoconf_2.71.bb:do_populate_sysroot:virtual:native automake/=
automake_1.16.5.bb:do_populate_sysroot:virtual:native bison/bison_3.8.2.bb:=
do_populate_sysroot:virtual:native', -elfutils/elfutils_0.186.bb:do_populat=
e_sysroot,
 'expat/expat_2.4.7.bb:do_populate_sysroot gcc/gcc-cross_11.2.bb:do_populat=
e_sysroot gcc/gcc-runtime_11.2.bb:do_populate_sysroot gdb/gdb_11.2.bb:do_fe=
tch gettext/gettext_0.21.bb:do_populate_sysroot:virtual:native glibc/glibc_=
2.35.bb:do_populate_sysroot gmp/gmp_6.2.1.bb:do_populate_sysroot
 libtool/libtool-cross_2.4.7.bb:do_populate_sysroot libtool/libtool-native_=
2.4.7.bb:do_populate_sysroot lttng/lttng-ust_2.13.2.bb:do_populate_sysroot =
ncurses/ncurses_6.3.bb:do_populate_sysroot pkgconfig/pkgconfig_git.bb:do_po=
pulate_sysroot:virtual:native pseudo/pseudo_git.bb:do_populate_sysroot:virt=
ual:native',
 +python/python3_3.10.4.bb:do_populate_sysroot, 'readline/readline_8.1.2.bb=
:do_populate_sysroot texinfo-dummy-native/texinfo-dummy-native.bb:do_popula=
te_sysroot zlib/zlib_1.2.11.bb:do_populate_sysroot']<o:p></o:p></span></i><=
/p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; elfutils/elfutils_0.186.bb:do_populate_sysroot with hash 6bdde5ef4f55929=
012830ea7cbe8f3f0ef52c42d38832346d8eda3614e420f50<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; expat/expat_2.4.7.bb:do_populate_sysroot with hash c5fa50500fe0639a93edb=
56c76deebe115a4f43885fddabc939cca903ca1f5db<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; expat/expat_2.4.7.bb:do_populate_sysroot with hash c5fa50500fe0639a93edb=
56c76deebe115a4f43885fddabc939cca903ca1f5db<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gcc/gcc-cross_11.2.bb:do_populate_sysroot with hash 8332df50d2a22a2003d6=
b9a77c21eccc4fafeb813af16c134a67b09e64e5a922<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gcc/gcc-cross_11.2.bb:do_populate_sysroot with hash 8332df50d2a22a2003d6=
b9a77c21eccc4fafeb813af16c134a67b09e64e5a922<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gcc/gcc-runtime_11.2.bb:do_populate_sysroot with hash 440ce22e9e7e13ea60=
4e5fd9b7c5d05272c05c76d8504b20fe8761527bb23d28<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gcc/gcc-runtime_11.2.bb:do_populate_sysroot with hash 440ce22e9e7e13ea60=
4e5fd9b7c5d05272c05c76d8504b20fe8761527bb23d28<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gdb/gdb_11.2.bb:do_fetch with hash fc6369109e600af9324aa58c7b0cedcc52fd8=
5400913b53ecabebdf990352add<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gdb/gdb_11.2.bb:do_fetch with hash fc6369109e600af9324aa58c7b0cedcc52fd8=
5400913b53ecabebdf990352add<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gettext/gettext_0.21.bb:do_populate_sysroot:virtual:native with hash 32c=
c46ce9ab8e254999fe15746e6ac565211f08f248902a303acea27318ff6a5<o:p></o:p></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gettext/gettext_0.21.bb:do_populate_sysroot:virtual:native with hash 32c=
c46ce9ab8e254999fe15746e6ac565211f08f248902a303acea27318ff6a5<o:p></o:p></s=
pan></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp; &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; glibc/glibc_2.35.bb:do_populate_sysroot with hash 805ac1d9b8ed5009950195=
c8a0ad39052c612438b26acec72deff9c440f9dc8c<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; glibc/glibc_2.35.bb:do_populate_sysroot with hash 805ac1d9b8ed5009950195=
c8a0ad39052c612438b26acec72deff9c440f9dc8c<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gmp/gmp_6.2.1.bb:do_populate_sysroot with hash 14f5ccddddc5581727d9816bd=
3d994634a110104fce81d906a9680f023de221e<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; gmp/gmp_6.2.1.bb:do_populate_sysroot with hash 14f5ccddddc5581727d9816bd=
3d994634a110104fce81d906a9680f023de221e<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; libtool/libtool-cross_2.4.7.bb:do_populate_sysroot with hash 47db5d7b09f=
5366e991add0acac1c1070ba8719df6b7e230eade5b56fb91cdc4<o:p></o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; libtool/libtool-cross_2.4.7.bb:do_populate_sysroot with hash 47db5d7b09f=
5366e991add0acac1c1070ba8719df6b7e230eade5b56fb91cdc4<o:p></o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; libtool/libtool-native_2.4.7.bb:do_populate_sysroot with hash ee4d549322=
1cd8cad2d048e512dd0b15a7a9ee3022e71ec92262bdd3ab7f056f<o:p></o:p></span></i=
></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; libtool/libtool-native_2.4.7.bb:do_populate_sysroot with hash ee4d549322=
1cd8cad2d048e512dd0b15a7a9ee3022e71ec92262bdd3ab7f056f<o:p></o:p></span></i=
></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; lttng/lttng-ust_2.13.2.bb:do_populate_sysroot with hash 7478a63943331a4b=
6801ed8962ad5bf02f3445987eccf8ab61f37bac112f72cd<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; lttng/lttng-ust_2.13.2.bb:do_populate_sysroot with hash 7478a63943331a4b=
6801ed8962ad5bf02f3445987eccf8ab61f37bac112f72cd<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ncurses/ncurses_6.3.bb:do_populate_sysroot with hash 60338af1862be456ff3=
b34adbaf6f4ea48b2ca6b1768f47dfb9bb4d5a9b776d7<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; ncurses/ncurses_6.3.bb:do_populate_sysroot with hash 60338af1862be456ff3=
b34adbaf6f4ea48b2ca6b1768f47dfb9bb4d5a9b776d7<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; pkgconfig/pkgconfig_git.bb:do_populate_sysroot:virtual:native with hash =
9783abba1d732d634758b05c7736aba8e628ff0d6d350447b36fc5f104620695<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; pkgconfig/pkgconfig_git.bb:do_populate_sysroot:virtual:native with hash =
9783abba1d732d634758b05c7736aba8e628ff0d6d350447b36fc5f104620695<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native with hash fa8241=
8d475d7cb527af2e0d0a79685ea319a968609f86b499ac0db6624e0207<o:p></o:p></span=
></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; pseudo/pseudo_git.bb:do_populate_sysroot:virtual:native with hash fa8241=
8d475d7cb527af2e0d0a79685ea319a968609f86b499ac0db6624e0207<o:p></o:p></span=
></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; changed to<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; python/python3_3.10.4.bb:do_populate_sysroot with hash 843496c5bd9f69b51=
79f3c87208b700874348ceaf310b6e7e2a82e0363303336<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; Dependency on task python/python3_3.10.4.bb:do_populate_sysroot was adde=
d with hash 843496c5bd9f69b5179f3c87208b700874348ceaf310b6e7e2a82e036330333=
6<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; Dependency on task elfutils/elfutils_0.186.bb:do_populate_sysroot was re=
moved with hash 6bdde5ef4f55929012830ea7cbe8f3f0ef52c42d38832346d8eda3614e4=
20f50<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Stdout:<o:p></o:p></span></i=
></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Loading cache...done.<o:p></=
o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Loaded 3995 entries from dep=
endency cache.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">WARNING: No bb files in defa=
ult matched BBFILE_PATTERN_meta-geeking-bsp '^/home/geeking/workspace/yocto=
/meta-geeking-bsp/'<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">Summary: There was 1 WARNING=
 message.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">INFO: test_world (common.Com=
monCheckLayer)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I see in the gdb.bbappend fi=
le there is this.
<br>
<br>
<i># Just a comment line to avoid PAK archive (application/x-pak)<o:p></o:p=
></i></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">PACKAGECONFIG ??=3D &quot;re=
adline python&quot;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></i>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">How this incompatibility can be=
 fixed? I understand that when there is a difference in signature the task =
must be rebuilt but in this case I really don&#8217;t understand what it me=
ans because I&#8217;m checking compatibliby, not
 building a recipe. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards. <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_HE1PR08MB2859080F640B0A940794D6FC8BD79HE1PR08MB2859eurp_--

