Return-Path: <mmacrina@catchpoint.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F862C433F5
	for <webhook@archiver.kernel.org>; Mon,  8 Nov 2021 17:26:41 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.95])
 by mx.groups.io with SMTP id smtpd.web12.1507.1636392399958881340
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Nov 2021 09:26:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@catchpoint.com header.s=selector2 header.b=wVJSvCjv;
 spf=pass (domain: catchpoint.com, ip: 40.107.244.95,
 mailfrom: mmacrina@catchpoint.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GiTNzzbYVxQHt84NCuTWK0jtlyfhB2fPieHaZVO+EKrEowUDR3WTHCXrfydbcTq0/uiLCX4kfCTp76BzelOrcI8Nbw6GBOtM95+3ry706wfxJ/0bdmYWjBLb7gSRI0vCPq7QVHtI5IoNxRRoVTNUzsxmTXcVRvFG2QWr8+/D+RjflMPpnHMdkeNHZ3m41xlAsJi1AhRb3x8wL1+zy/MhrzwVSzo5elVC49hjqUtSvy2+uojH6oKq4M3OkAyd3buLiq2nslUiHX5TBtqGUcRq9uYiPpIzXGZ1oWhMgZPNRChYntfyBtcTq6RSSgnSpg/JsnBijCxPyL1hBNHadHd2tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y4kwNvHysfNVUPfaDaMwq9jfhfsb9hIJw9gqtRpIqC4=;
 b=Uxp/qCaSCVY/35ora9x6LMbi0w4w11QyUkRGSXXh2HWNls3tXMHDiVOa3b9BPiJbiqvc24b3p2eUaIN8UEZU0ZDRdjSoXA1t+p91HU+7l6S6R0eQATPCX6NS8zrRvcRtPq1lFAJ+GLcP2MDLnGlkcs2T5MT9Zfz9RItSIuOhsyPoMBSKFQAFKn/ShnxIvv/2EGbBJPs667DZFtduhJqPe2JA8EV3xFdL23eJ6YOvvsiBSbB2JoSRNQ8yWqBFHlPyjYrTlhazI4Qjw9Dv6D8lAHgbmaZoSnGsZhMudNKa8i0/6R8a9ZLX9BBX3xCy4We/iXqLOzXDOpW93CXQwX1q2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=catchpoint.com; dmarc=pass action=none
 header.from=catchpoint.com; dkim=pass header.d=catchpoint.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=catchpoint.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y4kwNvHysfNVUPfaDaMwq9jfhfsb9hIJw9gqtRpIqC4=;
 b=wVJSvCjv5NjIlWat1WK+bFzIo0kUOeByc7Lat9yHMriz2iKq0x2MgsIGob/Ley9No7qK6yCnjLt6eT0ex8/TlM0OtHg+Uk1/PYKRcIjbuMEiRqyOjfzKmJT4KqGcYmSyP554ZtGwV9cpx1DfUEomGkcyXwptnmulG0+QnmiS3ljpDsbp1YFu8H+TLJNNfcdfo6F8pS5nyB5bAXI+Z/gU61xheOD5FbecHAn5cy2uoMOes+m8WJpfTbmYiSK7akc8gIwtubf+bNgiMWibs7I9Tigf3p80Z1JbnOcP39t3wWAQBia7Sm/Dfbeshtm5hszxdIN/m47SymLaHISvLfmuZQ==
Received: from CO6PR04MB7779.namprd04.prod.outlook.com (2603:10b6:303:13d::10)
 by CO6PR04MB7876.namprd04.prod.outlook.com (2603:10b6:303:138::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Mon, 8 Nov
 2021 17:26:37 +0000
Received: from CO6PR04MB7779.namprd04.prod.outlook.com
 ([fe80::e8a3:db1f:5984:ac5a]) by CO6PR04MB7779.namprd04.prod.outlook.com
 ([fe80::e8a3:db1f:5984:ac5a%7]) with mapi id 15.20.4669.016; Mon, 8 Nov 2021
 17:26:36 +0000
From: Maurizio Macrina <mmacrina@catchpoint.com>
To: "jonas.brich@bmw.de" <jonas.brich@bmw.de>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-selinux: dunfell: libselinux:
 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch fails to
 apply
Thread-Topic: [yocto] meta-selinux: dunfell: libselinux:
 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch fails to
 apply
Thread-Index: AQHX1JE0ekG4yKowvUuWyrcqolySGqv5fM9ZgAAeFxqAAEbc2g==
Date: Mon, 8 Nov 2021 17:26:36 +0000
Message-ID: 
 <CO6PR04MB7779A8AC6224DBB131E99015B2919@CO6PR04MB7779.namprd04.prod.outlook.com>
References: 
 <CO6PR04MB7779842C1CFE7614B311F0CAB2919@CO6PR04MB7779.namprd04.prod.outlook.com>
 <CO6PR04MB7779052FDF100E8648E231DDB2919@CO6PR04MB7779.namprd04.prod.outlook.com>
 <CO6PR04MB777946FE72300248A7CAF659B2919@CO6PR04MB7779.namprd04.prod.outlook.com>
In-Reply-To: 
 <CO6PR04MB777946FE72300248A7CAF659B2919@CO6PR04MB7779.namprd04.prod.outlook.com>
Accept-Language: en-GB, en-US, it-IT
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: bmw.de; dkim=none (message not signed)
 header.d=none;bmw.de; dmarc=none action=none header.from=catchpoint.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: caef7710-0509-47b0-e961-08d9a2dceb0c
x-ms-traffictypediagnostic: CO6PR04MB7876:
x-microsoft-antispam-prvs: 
 <CO6PR04MB787661E92A5B5BE663E17420B2919@CO6PR04MB7876.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UhInxJ6kSX5/IGxOkTHnlW7q/u6NGjrGhzNw8+tPW7V8HIuQJspmldQTs4FZdJUhsHa+4VbwBiDNy6Ib1BDT03rJPXPwzFIdK/8ftHWDwrtiaz6SHReNqt3DSJcVo3n+vLH3RHaiiqss49X1KIciNQfrAArAM/CWn2PD0bafLr0hbNTaSTEH5UivHQYDcRaeOjKPs4j5TkaQaJw41wSR1NMyBdSC89RWKZGsH3PJL1KJs2cFd2Si2VkcmMwrQvqnNO0Wk6rK14EGroCf8cXIZ9quttlVB4EK/mpwz9aQ4HULxjzK9Pos85sadp88fd/CwwXHoq17ON+UMpn/IyWQX+zNiOiQhYLp4MDTHRc2KbecCvAIA0vtj+GcEBDH9c4MWhOCAPp8omgtmfstdBP05rzz0d481SeZ6DZ49oA3WIlu1vmupNSP2hAH4GyWi1iLBpcBuSYAuq/2HsRQMhAa1P3C066zQ+T+uEUwzDbcuogmAbQKV+Jz+d//SaBpwxZE0OB4EzIavhRN7qshzJFs0krOL5Beyi8g9qwbVngmkWGa5vd+6NfnxojUYb51nd2jAwj1EVdBhn/S53pPxXORIYiDDuj89ckJSm3HB+FtwsRromzO1kiWS2Fke7XmmRKPewDCjGYa0TvLnruJg6CnwTvp5zJwuFK63amjxrC+3Z2G4Oqf7v8dvllSalcBAkEjGpqTSEJ7dLMQltBWj2R9yuX1EMsh2lp6aH8A6w1v4o11IIj2+aQBE0AkhvSobl8zvfRnYA0r6W572vMDOYHt8SpPYk2LpIb/sWaY9BxCqBsYRfklvIRvt3y6plGZSzaJ+Q4AQ0NCjPQxz6hFZ29cLfD2p5z749EpmeqNT3G5/Bs=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR04MB7779.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(110136005)(316002)(64756008)(33656002)(2906002)(122000001)(66556008)(38100700002)(99936003)(76116006)(8676002)(66476007)(66446008)(66946007)(91956017)(8936002)(86362001)(166002)(83380400001)(52536014)(966005)(38070700005)(55016002)(2940100002)(9686003)(186003)(5660300002)(508600001)(6506007)(53546011)(7696005)(71200400001)(72063004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Yg7GeCvlBQfxYkz7FkZhfdJ4GJ2iYVjVgeCYGdI3sPXTxsk5LeilOROZ?=
 =?Windows-1252?Q?KImtMZ8Tuk8AU0fP/cL4bmoBEShcHPu4NVzzN61MKu0MFeB6COjf5/3+?=
 =?Windows-1252?Q?JJ83ARt7HkpvN8eY6JSrff4YDq++mC3yYq3b0X+jafJlTciamU3me9HO?=
 =?Windows-1252?Q?d85Bfd07dOVZmxDNM6K59FSbDVaaRg0lDT/vSZHiDd2/P5/sSsU2sdwz?=
 =?Windows-1252?Q?YybPSPJnJQmhKyMVOCbj3PZYD58aw6x6J4PjaNiWie40Aoht68geCJng?=
 =?Windows-1252?Q?zZtXXaMlPSelouy0kdcec2/XWUMWBaT4g1o4UxI2JFtJw2QFc+VX4TOh?=
 =?Windows-1252?Q?iBBDvGm4Iz8zcLN3yK3mhmem2icpTSqN/iCsi484PNzAbDJknQH18YSJ?=
 =?Windows-1252?Q?8Ik/BmmwqVXWwKxQ91WsdqoC5c0a9935sITfepBfa02AYRNKh//HUF+5?=
 =?Windows-1252?Q?o2UsuH02Hf7YAQVIXEwwSbV31V8PFCgTtsfK6jgrV9bBIHgJzzeLdljR?=
 =?Windows-1252?Q?pWPLGnBSEJD5KcpcckyPRv6l96hMBRunPXMHq1l6ewt/YwhVviqEkuSL?=
 =?Windows-1252?Q?Ivg3Bd/GHA7xCIWg6bzhZ1prvKrD2lhf/waRBVlQ7NPRX8rBNnsFyxiC?=
 =?Windows-1252?Q?ZYXH5EKeT6xBkkKRzDvnq1oQWeQT+9fz9mRvubCjdmVvULpwoqQJWpj6?=
 =?Windows-1252?Q?J5f/FmgDgE0plzdizfHhQCDUFZDSTCYT9Zu+ez+ZHhWsS++1FO1700++?=
 =?Windows-1252?Q?0Gq6cJypTsyyrdpenO4I25Nurn2jX6zc1+N4i6un7WqfVqJ6jysxxIzZ?=
 =?Windows-1252?Q?owdpAbQefk/UTs6TjeuLbVRnZn07daOY0qh5bmzDDefboHHCfL8x1aIM?=
 =?Windows-1252?Q?e7GOo8dSLuKO2rQ/s29TsMHpZi+/CJsE4HKXnAoTEa8LfTEEfP3B8PXO?=
 =?Windows-1252?Q?wXNNvSrbnOe9fAl58EVeuxiOW66NcJ83OpeZmunmHT21F1pg4p8k6gDZ?=
 =?Windows-1252?Q?24ZSNRh84eo6CJwvue/AW+oldSRUotSZFsseo+ps9qZ3msyUgTlPX8FE?=
 =?Windows-1252?Q?y8fDI9U1j+Sz3dYu0MDfl2XgATQ9PLJBPeLvAIrJOu7Qwy9iav10tTYV?=
 =?Windows-1252?Q?o/906NwkTcokYDH0JG7D2FpVl3k1n2xNZH5i9Aes4sgjwRY3fM/0CZR3?=
 =?Windows-1252?Q?mLq3uhcL0QbQWpWTTz3W6XFO2UVtVbvbQnsSGpcai89SegKOypHTOvgD?=
 =?Windows-1252?Q?H2hnytQq1rwJqA9wupy3SGQHb/YjlFagXXaWnKoOHeHTeQEM9OY1C46V?=
 =?Windows-1252?Q?NVhSMa29DIHyTkLlA08ukhLIdlwCjlxskuOXcP84eX4r27thX+5+thDj?=
 =?Windows-1252?Q?A1FH9VZYU6MeBYXgZK79b/k8y3CTqgQWWPu+yd1D0J+TVnjbZ6cWZV7k?=
 =?Windows-1252?Q?8aalseV+iVF1LfTRJGlSkL6N0oDXgb+3uNEzAL3OufVLRXPISQR36m+Q?=
 =?Windows-1252?Q?A1QMTChSjp2FGZdR+QAI4JdXBP9vfcwqxKkYqw6nCmfbBU6UfX5j2CHC?=
 =?Windows-1252?Q?aU2ot5UtmpuwHaOOBRWXtLN4t9lewxsjWIOmMrpwCf2ESq1+dC49iVm2?=
 =?Windows-1252?Q?ytOkkoIyPuNYXVD98WLstFZJgO831n0bOEsV2Gw8yqaLnrwqB9ujLi8C?=
 =?Windows-1252?Q?izNEt1BO/OofAHLjWC1/ZwYHs9+xL8Rn3ZwRdQSmhE2DKy81PKXzNUyG?=
 =?Windows-1252?Q?DPd4dvcsSC0QGQhkjx7coYWcuL1r2Kh1Coyauvd5kpcSYZ6n3U8UAaBm?=
 =?Windows-1252?Q?DUHP9CBfudDkiFzkBUgVcgRV41g8WAHnT31ugwD9E/Rq4GiC?=
Content-Type: multipart/related;
	boundary="_004_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_";
	type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: catchpoint.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR04MB7779.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 caef7710-0509-47b0-e961-08d9a2dceb0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2021 17:26:36.6914
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c927d7e-38e7-4a3f-a4f2-e746ec8a0842
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 WDHTKfvYv2YcnV+IU1KUF/gXY4mn4gAF+nn7G5hPPJFQqk+EMTFW4LIyPo2UMY/ijOGQwDKYaJxu3bls1K0Dbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR04MB7876
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Nov 2021 17:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55279

--_004_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_
Content-Type: multipart/alternative;
	boundary="_000_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_"

--_000_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,
A possible fix for this issue during the do_patch task might be the followi=
ng:


diff --git a/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-=
in-selinux_restorecon_set_sehandle.patch b/recipes-security/selinux/libseli=
nux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch

index 8a9fb7c..66c86ee 100644

--- a/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-seli=
nux_restorecon_set_sehandle.patch

+++ b/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-seli=
nux_restorecon_set_sehandle.patch

@@ -17,8 +17,8 @@ Acked-by: Stephen Smalley <stephen.smalley.work@gmail.com=
>



 diff --git a/libselinux/src/selinux_restorecon.c b/libselinux/src/selinux_=
restorecon.c

 index d1ce830c5..6993be6fd 100644

---- a/libselinux/src/selinux_restorecon.c

-+++ b/libselinux/src/selinux_restorecon.c

+--- a/src/selinux_restorecon.c

++++ b/src/selinux_restorecon.c

 @@ -1154,6 +1154,8 @@ void selinux_restorecon_set_sehandle(struct selabel_=
handle *hndl)

        size_t num_specfiles, fc_digest_len;


Basically in the patch file: 0001-Fix-NULL-pointer-use-in-selinux_restoreco=
n_set_sehandle.patch remove =93libselinux=94 from a/libselinux/src/selinux_=
restorecon.c and b/libselinux/src/selinux_restorecon.c

I tested it and works fine.

From: Maurizio Macrina <mmacrina@catchpoint.com>
Date: Monday, 8 November 2021 at 14:13
To: jonas.brich@bmw.de <jonas.brich@bmw.de>, yocto@lists.yoctoproject.org <=
yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-selinux: dunfell: libselinux: 0001-Fix-NULL-point=
er-use-in-selinux_restorecon_set_sehandle.patch fails to apply
Hello Jonas,
I=92ve also recently hit an error during the do_patch task of libselinux.
001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch has been =
recently added to the dunfell branch but fails to apply:

ERROR: Applying patch '0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_=
sehandle.patch' on target directory '/yocto/c2100-catchpoint-system-image/p=
oky/build/tmp/work/core2-64-poky-linux/libselinux/3.0-r0/libselinux-3.0'
Command Error: 'quilt --quiltrc /yocto/c2100-catchpoint-system-image/poky/b=
uild/tmp/work/core2-64-poky-linux/libselinux/3.0-r0/recipe-sysroot-native/e=
tc/quiltrc push' exited with 0  Output:
Applying patch 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle=
.patch
can't find file to patch at input line 22
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|From 08f5e30177218fae7ce9f5c8d6856690126b2b30 Mon Sep 17 00:00:00 2001
|From: Ji Qin <jiqin.ji@huawei.com>
|Date: Sun, 14 Jun 2020 21:20:23 -0400
|Subject: [PATCH] libselinux: Fix NULL pointer use in
| selinux_restorecon_set_sehandle
|
|error occur when selinux_restorecon_default_handle return NULL in
|restorecon_init.
|
|fixes: https://github.com/SELinuxProject/selinux/issues/249
|
|Signed-off-by: Ji Qin <jiqin.ji@huawei.com>
|Acked-by: Stephen Smalley <stephen.smalley.work@gmail.com>
|---
| libselinux/src/selinux_restorecon.c | 2 ++
| 1 file changed, 2 insertions(+)
|
|diff --git a/libselinux/src/selinux_restorecon.c b/libselinux/src/selinux_=
restorecon.c
|index d1ce830c5..6993be6fd 100644
|--- a/libselinux/src/selinux_restorecon.c
|+++ b/libselinux/src/selinux_restorecon.c
--------------------------
No file to patch.  Skipping patch.
1 out of 1 hunk ignored
Patch 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch do=
es not apply (enforce with -f)
DEBUG: Python function patch_do_patch finished
DEBUG: Python function do_patch finished

I=92ve attached the corresponding log.

What would be the suggested fix for this?
I don=92t think the leading a/b in the path is the issue here, other patch =
files have the same path.

Thanks.

Regards.

Maurizio Macrina
Senior Software Engineer  | Catchpoint
P:  +39 3472458541
E:  mmacrina@catchpoint.com<mailto:mmacrina@catchpoint.com>
www.catchpoint.com<https://nam11.safelinks.protection.outlook.com/?url=3Dht=
tp%3A%2F%2Fwww.catchpoint.com%2F&data=3D04%7C01%7Cmmacrina%40catchpoint.com=
%7C98c1d709680945f4f57608d97cfbfa25%7C0c927d7e38e74a3fa4f2e746ec8a0842%7C0%=
7C0%7C637678243963406272%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj=
oiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=3D%2BSEn3zXyaFsuKgWdv=
%2F4Z8KLoARCfg8DWsQ6LNoWh%2F%2Bk%3D&reserved=3D0>

[cid464070800*image001.png@01D7AF12.EF411150]<https://nam11.safelinks.prote=
ction.outlook.com/?url=3Dhttp%3A%2F%2Fwww.catchpoint.com%2Fsignature&data=
=3D04%7C01%7Cmmacrina%40catchpoint.com%7C98c1d709680945f4f57608d97cfbfa25%7=
C0c927d7e38e74a3fa4f2e746ec8a0842%7C0%7C0%7C637678243963416231%7CUnknown%7C=
TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0=
%3D%7C1000&sdata=3DexWPtVUWOEYmXAFIm0F2uOvy2tO6wBDxRpz5cORxWpQ%3D&reserved=
=3D0>

--_000_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
p.p1, li.p1, div.p1
	{mso-style-name:p1;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
p.p2, li.p2, div.p2
	{mso-style-name:p2;
	margin:0cm;
	font-size:8.5pt;
	font-family:Menlo;
	color:black;}
span.s1
	{mso-style-name:s1;}
span.apple-converted-space
	{mso-style-name:apple-converted-space;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"en-IT" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">A possible fix for this issue d=
uring the do_patch task might be the following:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"p1"><span class=3D"s1">diff --git a/recipes-security/selinux/li=
bselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch=
 b/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux=
_restorecon_set_sehandle.patch</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">index 8a9fb7c..66c86ee 100644</span><o:p=
></o:p></p>
<p class=3D"p1"><span class=3D"s1">--- a/recipes-security/selinux/libselinu=
x/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch</span>=
<o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">+++ b/recipes-security/selinux/libselinu=
x/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch</span>=
<o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">@@ -17,8 +17,8 @@ Acked-by: Stephen Smal=
ley &lt;stephen.smalley.work@gmail.com&gt;</span><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;</span><o:p></o=
:p></p>
<p class=3D"p1"><span class=3D"apple-converted-space">&nbsp;</span><span cl=
ass=3D"s1">diff --git a/libselinux/src/selinux_restorecon.c b/libselinux/sr=
c/selinux_restorecon.c</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"apple-converted-space">&nbsp;</span><span cl=
ass=3D"s1">index d1ce830c5..6993be6fd 100644</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">---- a/libselinux/src/selinux_restorecon=
.c</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">-+++ b/libselinux/src/selinux_restorecon=
.c</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">+--- a/src/selinux_restorecon.c</span><o=
:p></o:p></p>
<p class=3D"p1"><span class=3D"s1">++++ b/src/selinux_restorecon.c</span><o=
:p></o:p></p>
<p class=3D"p1"><span class=3D"apple-converted-space">&nbsp;</span><span cl=
ass=3D"s1">@@ -1154,6 +1154,8 @@ void selinux_restorecon_set_sehandle(struc=
t selabel_handle *hndl)</span><o:p></o:p></p>
<p class=3D"p1"><span class=3D"apple-converted-space">&nbsp; &nbsp; &nbsp; =
&nbsp; </span><span class=3D"s1">size_t num_specfiles, fc_digest_len;</span=
><o:p></o:p></p>
<p class=3D"p2"><span class=3D"apple-converted-space">&nbsp;&nbsp;</span><o=
:p></o:p></p>
<p class=3D"MsoNormal"><span class=3D"s1"><span lang=3D"EN-US">Basically in=
 the patch file:
</span><i>0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patc=
h</i></span><span class=3D"s1"><i>
</i></span><span class=3D"s1"><span lang=3D"EN-US">remove =93libselinux=94 =
from </span></span><i>a/libselinux/src/selinux_restorecon.c</i><span lang=
=3D"EN-US"> and
<i>b</i></span><i>/libselinux/src/selinux_restorecon.c</i><i><span lang=3D"=
EN-US"><o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I tested it and works fine.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">Maurizio Macrina &l=
t;mmacrina@catchpoint.com&gt;<br>
<b>Date: </b>Monday, 8 November 2021 at 14:13<br>
<b>To: </b>jonas.brich@bmw.de &lt;jonas.brich@bmw.de&gt;, yocto@lists.yocto=
project.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject: </b>Re: [yocto] meta-selinux: dunfell: libselinux: 0001-Fix-NUL=
L-pointer-use-in-selinux_restorecon_set_sehandle.patch fails to apply</span=
><span style=3D"font-size:12.0pt;color:black;mso-fareast-language:EN-GB"><o=
:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Jonas,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=92ve also recently hit an err=
or during the
<i>do_patch</i> task of <i>libselinux</i>.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US">001-Fix-NULL-pointer-use-in-=
selinux_restorecon_set_sehandle.patch</span></i><span lang=3D"EN-US"> has b=
een recently added to the dunfell branch but fails to apply:<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">ER=
ROR: Applying patch '0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_se=
handle.patch' on target directory '/yocto/c2100-catchpoint-system-image/pok=
y/build/tmp/work/core2-64-poky-linux/libselinux/3.0-r0/libselinux-3.0'<o:p>=
</o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">Co=
mmand Error: 'quilt --quiltrc /yocto/c2100-catchpoint-system-image/poky/bui=
ld/tmp/work/core2-64-poky-linux/libselinux/3.0-r0/recipe-sysroot-native/etc=
/quiltrc push' exited with 0&nbsp; Output:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">Ap=
plying patch 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.p=
atch<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">ca=
n't find file to patch at input line 22<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">Pe=
rhaps you used the wrong -p or --strip option?<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">Th=
e text leading up to this was:<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">--=
------------------------<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|F=
rom 08f5e30177218fae7ce9f5c8d6856690126b2b30 Mon Sep 17 00:00:00 2001<o:p><=
/o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|F=
rom: Ji Qin &lt;jiqin.ji@huawei.com&gt;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|D=
ate: Sun, 14 Jun 2020 21:20:23 -0400<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|S=
ubject: [PATCH] libselinux: Fix NULL pointer use in<o:p></o:p></span></i></=
p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">| =
selinux_restorecon_set_sehandle<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|e=
rror occur when selinux_restorecon_default_handle return NULL in<o:p></o:p>=
</span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|r=
estorecon_init.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|f=
ixes: https://github.com/SELinuxProject/selinux/issues/249<o:p></o:p></span=
></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|S=
igned-off-by: Ji Qin &lt;jiqin.ji@huawei.com&gt;<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|A=
cked-by: Stephen Smalley &lt;stephen.smalley.work@gmail.com&gt;<o:p></o:p><=
/span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|-=
--<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">| =
libselinux/src/selinux_restorecon.c | 2 ++<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">| =
1 file changed, 2 insertions(+)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|<=
o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|d=
iff --git a/libselinux/src/selinux_restorecon.c b/libselinux/src/selinux_re=
storecon.c<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|i=
ndex d1ce830c5..6993be6fd 100644<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|-=
-- a/libselinux/src/selinux_restorecon.c<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">|+=
++ b/libselinux/src/selinux_restorecon.c<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">--=
------------------------<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">No=
 file to patch.&nbsp; Skipping patch.<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">1 =
out of 1 hunk ignored<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">Pa=
tch 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch does=
 not apply (enforce with -f)<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">DE=
BUG: Python function patch_do_patch finished<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><i><span lang=3D"EN-US" style=3D"font-size:9.0pt">DE=
BUG: Python function do_patch finished<o:p></o:p></span></i></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I=92ve attached the correspondi=
ng log.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">What would be the suggested fix=
 for this?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I don=92t think the leading a/b=
 in the path is the issue here, other patch files have the same path.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt 6.0pt .75pt">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:13.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#2B6091;mso-fareast-language:E=
N-GB">Maurizio Macrina</span></b><span style=3D"mso-fareast-language:EN-GB"=
><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt 6.0pt .75pt">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:EN-GB"=
>Senior Software Engineer</span><span style=3D"font-size:10.0pt;font-family=
:&quot;Arial&quot;,sans-serif;color:black;mso-fareast-language:EN-GB">&nbsp=
;
 |&nbsp;<b>Catchpoint</b></span><span style=3D"mso-fareast-language:EN-GB">=
<o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#666666;mso-fareast-language:EN-GB">P:&nbsp;<=
/span></b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,san=
s-serif;color:#666666;mso-fareast-language:EN-GB">&nbsp;+</span><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-ser=
if;color:#666666;mso-fareast-language:EN-GB">39
 3472458541</span><span lang=3D"EN-US" style=3D"mso-fareast-language:EN-GB"=
><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:#666666;mso-fareast-language:EN-GB">E:&nbsp;<=
/span></b><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,san=
s-serif;color:#666666;mso-fareast-language:EN-GB">&nbsp;</span><a href=3D"m=
ailto:mmacrina@catchpoint.com"><span style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-GB">m</span><span lang=
=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-ser=
if;mso-fareast-language:EN-GB">m</span><span lang=3D"EN-US" style=3D"mso-fa=
reast-language:EN-GB">acrina</span><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,sans-serif;mso-fareast-language:EN-GB">@catchpoint.co=
m</span></a><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,s=
ans-serif;color:#666666;mso-fareast-language:EN-GB">&nbsp;</span><span styl=
e=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black;=
mso-fareast-language:EN-GB">&nbsp;</span><span style=3D"mso-fareast-languag=
e:EN-GB"><o:p></o:p></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><a href=3D"https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttp%3A%2F%2Fwww.catchpoint.com%2F&amp;data=3D04%7C01%7Cmmacri=
na%40catchpoint.com%7C98c1d709680945f4f57608d97cfbfa25%7C0c927d7e38e74a3fa4=
f2e746ec8a0842%7C0%7C0%7C637678243963406272%7CUnknown%7CTWFpbGZsb3d8eyJWIjo=
iMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdat=
a=3D%2BSEn3zXyaFsuKgWdv%2F4Z8KLoARCfg8DWsQ6LNoWh%2F%2Bk%3D&amp;reserved=3D0=
" target=3D"_blank" title=3D"https://nam11.safelinks.protection.outlook.com=
/?url=3Dhttp%3A%2F%2Fwww.catchpoint.com%2F&amp;data=3D04%7C01%7Cmmacrina%40=
catchpoint.com%7C98c1d709680945f4f57608d97cfbfa25%7C0c927d7e38e74a3fa4f2e74=
6ec8a0842%7C0%7C0%7C637678243963406272%7CUnknown%7CTWFpbGZsb3d8eyJW"><span =
style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#0=
44A91;mso-fareast-language:EN-GB">www.catchpoint.com</span></a><span style=
=3D"mso-fareast-language:EN-GB"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:black;mso-fareast-language:EN-G=
B">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"https://nam11.safelinks.protection.outloo=
k.com/?url=3Dhttp%3A%2F%2Fwww.catchpoint.com%2Fsignature&amp;data=3D04%7C01=
%7Cmmacrina%40catchpoint.com%7C98c1d709680945f4f57608d97cfbfa25%7C0c927d7e3=
8e74a3fa4f2e746ec8a0842%7C0%7C0%7C637678243963416231%7CUnknown%7CTWFpbGZsb3=
d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000=
&amp;sdata=3DexWPtVUWOEYmXAFIm0F2uOvy2tO6wBDxRpz5cORxWpQ%3D&amp;reserved=3D=
0" title=3D"Original URL:=0A=
http://www.catchpoint.com/signature=0A=
=0A=
Click to follow link."><span style=3D"color:windowtext;text-decoration:none=
"><span lang=3D"EN-US" style=3D"font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#000068;mso-fareast-language:EN-GB"><img border=3D"0" width=3D"359" =
height=3D"58" style=3D"width:3.7395in;height:.6041in" id=3D"Picture_x0020_1=
" src=3D"cid:image001.png@01D7D4CE.28C157B0" alt=3D"cid464070800*image001.p=
ng@01D7AF12.EF411150"></span></span></a><o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_--

--_004_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=22093;
	creation-date="Mon, 08 Nov 2021 17:26:35 GMT";
	modification-date="Mon, 08 Nov 2021 17:26:35 GMT"
Content-ID: <image001.png@01D7D4CE.28C157B0>
Content-Transfer-Encoding: base64

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

--_004_CO6PR04MB7779A8AC6224DBB131E99015B2919CO6PR04MB7779namp_--

