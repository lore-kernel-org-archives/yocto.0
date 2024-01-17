Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F111C47258
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 13:57:19 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.52])
 by mx.groups.io with SMTP id smtpd.web10.2626.1705499836925502168
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 05:57:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@witekio.com header.s=selector2 header.b=ELkE+v8n;
 spf=pass (domain: witekio.com, ip: 40.107.7.52, mailfrom: jguittet.opensource@witekio.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROd8uaPyzkzVya9HjQ8yEPHodpxIC1e2jAHzY5D1Ep2IuBp4ksJwh+FV/LJ9EI0M+TQwpOacSFgIpKXU0aPCCDN4tSOFKPakMhPRawu3oHj6WaDkx5CPWtWPuKUU0qDgHMrkvvVgUPd1EUNdBtt6+B1llJ/G2IO9qhuXKII2Ull+rIi/+9w+0vDMRqoelYdzkNyjYctplkdWYjl1fU3JVMPX0Ud6un8IzpbGlcs5XAJ9DYJVloRxFwsSqEpgJts29LYX4WlK71Os6d33B7Wxj/hRkeqmV1l7ChmwcfWBXZ9m/K2YKsw7it/i2d2tmICgQ+9CBF3TGPz8OdncPmjTUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RiJgLSxkRN/mxKnXkriocDS+n0OpWY6x/UL0XxJKb+M=;
 b=cuyjVBuMHG6pKooPbtNrS647o0D3dPiZN919MEhG/52diL2CgCjZkklCMW2zCrD6Qev+vJPsF0yGrOR7VjXVCg+PjPSeIOd3Z2Epm3/v+WZPe61itfF6GD77xokAHxatL9Ofg0f6iHMh/q1nj9WXnp+lGY42Ah/zc4RS+ID3XCy+7aCB7NPtCzpLTFaRibyGeYFcHsSkq4KvS9GXthEGLuCRa1jNlrXF0gOqg46HK2P+0uV5iHufhQuqFnpsn3ZJbfO4m655QBJlTcCMDdoTYRz222go1XbgzniUyIoJMIqdLDugzFLwHAxTm0W3VBFl9vaO2pUNN0OqcD8EdbIi0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=witekio.com; dmarc=pass action=none header.from=witekio.com;
 dkim=pass header.d=witekio.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=witekio.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiJgLSxkRN/mxKnXkriocDS+n0OpWY6x/UL0XxJKb+M=;
 b=ELkE+v8nmk96FKODYevJOGHuYZvbD64jjLpeCiHocCM17a+l4gthDl+5vyxUlmFjMJLdeCuNjWbjvrSV8fOVH9cmJOEWtT/XMfOt5R51A+mCZo44PsLD3rscZ7nF0q+Z5IjOZkI8/2Qx8hDAElRsRBiFd62oAzAFoF1HKS4250QmTdEerIP3ksyXw8x/txe2yrK/yRBQ2wHlN8SWc/UbUDuX72MjRdcgfZWSPGHxLbRLtGb4+FAsNu1DrMlaNnPH+7Ob0JDMwvBauRORn062+hxU0R8uydqZr6I0+PNmK0rFJTZA8p1XzoiEchxQqXwrgMOM8XI2FU6QJjaAxO+TMw==
Received: from AM9P192MB1316.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3af::14)
 by AS8P192MB1947.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:53d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.26; Wed, 17 Jan
 2024 13:57:12 +0000
Received: from AM9P192MB1316.EURP192.PROD.OUTLOOK.COM
 ([fe80::19a2:e045:6ba3:6bb7]) by AM9P192MB1316.EURP192.PROD.OUTLOOK.COM
 ([fe80::19a2:e045:6ba3:6bb7%6]) with mapi id 15.20.7202.020; Wed, 17 Jan 2024
 13:57:12 +0000
From: Joel GUITTET <jguittet.opensource@witekio.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: initramfs and system logs
Thread-Topic: initramfs and system logs
Thread-Index: AQHaSUz3LbxQCyWeN0e/+puhc0sANA==
Date: Wed, 17 Jan 2024 13:57:12 +0000
Message-ID: 
 <AM9P192MB13168F23414A4AA443C243F4D7722@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=witekio.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P192MB1316:EE_|AS8P192MB1947:EE_
x-ms-office365-filtering-correlation-id: 061216ef-8015-4ff8-9bd1-08dc17643490
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 04oq21jv4U8uyDEK0xqFHg9lwgV0fyMK/0PLsjKqiCqCUTRaVn0Zt2yR/hfInk64s6FRH6UE0gFq78AtWjXGs96QC1CFYO8a/9QWiWVA2qI6p7Vma2HwXpbIbW2CHiz4UsrJ5DNMeFRo/5wun2+V1i7EuvAPFD9TZIzX4mP+puocqHZZ5EQQCsTrubPgP+XT+LkCbbH6s56qOdJysqzsiz79X49wlijNu0DdY3KkipqziBRNcaYMC6J25MCmKch5ukEfRhDT0RtTVqNTmk5OSAjkmsWL0/IcOL+Ukr+0SEi3S5Az64gr5lXGwIeMRVJHKxD0k1bSPvs7qjDxMcOATWIklf7wIn39UwyvdK+CH+UkWbeTQ01D1VThiitjXEpiTT3br7LnuTM8uC51qfB9BFSDorW2br2fhEP1DPw41oiKm8B6DQffRmalkk4nXZ5zarhqhvKnYrNMlPHKSdgTXf/H2u0eWfY67Q0+vcw/yJwWxQdzXdw2qEPeaD1NCF4lj7cbf/PYg5F+9SUR4xWg70vwsXZocC3WpEYOw9Xzw98DawbE8OTFLabT5AaqqIG13HHudhoSbuL4vhVGwtZo5IUwc5M7IGU5woDC4ihvTAOatWcpMgB8NbP0Q40Zfo6Q
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P192MB1316.EURP192.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(376002)(136003)(396003)(39850400004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(71200400001)(478600001)(6506007)(7696005)(9686003)(41300700001)(3480700007)(83380400001)(5660300002)(76116006)(66446008)(4744005)(2906002)(8936002)(66556008)(52536014)(64756008)(66476007)(316002)(6916009)(66946007)(8676002)(122000001)(86362001)(33656002)(38100700002)(38070700009)(91956017)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?pnxssFhojIEyKpsYhQetdyRSdb0eTD42QSEq9G2UqP3snkWd5XN3MMfQxM?=
 =?iso-8859-1?Q?NqOLyKngHpkr4aiv6VIwX75Yqz7b7uqdnkVOtGHpzlb2qkHtgVBe0jGZRv?=
 =?iso-8859-1?Q?1H5SFJ0k/bfj2WGwsBNdakH/mOt5CtVgXMuT7cPsmake55UO3vYyQann5E?=
 =?iso-8859-1?Q?0FWcm5UW37JDy3EVZZIA8zNh0+LMpBa2Al696I4XgOX3G8TPee7JOxXstL?=
 =?iso-8859-1?Q?2xQ3oaZt4iJOzzIOS/WJ4xW00meZzoc2DU1AAbM3ZmUaG4cZNZpLrNZPUK?=
 =?iso-8859-1?Q?Cwov/Wsolue9a6O+JWcpuEvM5ChIi9P/lK2mk5+u/m2rLXMFNXIo4H0q6m?=
 =?iso-8859-1?Q?daG+630tmyxwGIyeMheKuEm82Ljkmu9FzAgtoXSfcWc/6GQGNcHynkA+c7?=
 =?iso-8859-1?Q?qjFm0zdZRXLp9SXsFiVwOqc0L2jWh4aZJ8ULuXXzyQviqrPYmwfzOrNOWi?=
 =?iso-8859-1?Q?1KB+NdJTPMY1huUqsp+KpJVTR/XJr0xBabopIOVUasu1Odizm1Zyl2prBc?=
 =?iso-8859-1?Q?azfQtvxz6YKrB17Ao56AEkN60mILdw9qIckk5xatvk2HpuyZCki3lnt+s4?=
 =?iso-8859-1?Q?ndSARZsIbwqGvQ8fv+BdHmu+gcKBaYDKqCJE1leEAjxcVuQDn8FzSKjP0F?=
 =?iso-8859-1?Q?/kOhaVt4A42C4sxeluSUqkBUpU/oaF0cqfO3oySCAXBIVEJ8rDosPal9Hv?=
 =?iso-8859-1?Q?2Hxt4AM+h4QFlAWWsgUlFZCvmx0Y9SA59K4IJUKxQtkoSdb3I7gtucyD6r?=
 =?iso-8859-1?Q?iDZCy+A2NQueLSizR/0odrY0zC68Hs1AuaHZNngO5g5n9VvmUpiXV35V9w?=
 =?iso-8859-1?Q?2GM/4d1vlkbka8obc12kNyH6/frbwHx6pcY0mIDllSu91GFFKmKcpivcgI?=
 =?iso-8859-1?Q?NYDon+nJVIqEkw8bx2hwNlBZ8C84ojRJSn9A/o5m0qIvg7Nli2yvDvNt+j?=
 =?iso-8859-1?Q?yQicSl0ixgFDMaq0ujHpAwczn4IbuzBsvQo4XMgJPND9sYiUn1JBPMmW54?=
 =?iso-8859-1?Q?VV4+ph936AaRaB/N3jpig1trO+lw7hGzkSTH8iY8McdhJ/d92LFiz9NNAv?=
 =?iso-8859-1?Q?row54WpW7AwkvJC/PpiwnA8YAVX6sQQQ20JQdEtHE3jf2iUtd1czHtC7sC?=
 =?iso-8859-1?Q?2CY90qnpJPmUX6xR1ehLNxHUnIrwNcimEb+PqcJwlzDI+VxAhdNAi5dmpa?=
 =?iso-8859-1?Q?O1Lc6K4mXyfVGAiX3Io4C/kv7ZFYwuMFMwCKi3O32xXgMsxgIEZ1LNoJQN?=
 =?iso-8859-1?Q?9A5I9+C+DQxXFGrYPfPp2ZY6aFZpS49VtKgrlxQY4HG8N70QHtX9V/k0FC?=
 =?iso-8859-1?Q?qkmgbZ+y59R98kJtg9QQ2ZP4crRCiy30KcYVyKTyLGWS3uhCYOyzerSxun?=
 =?iso-8859-1?Q?fVU1MEGiBVqQkfw68vRSPq454cvRyXvDfVigdDjAU7TSF5x7x7mHKl3N6V?=
 =?iso-8859-1?Q?LkBcG2QRMagKRIOAtd9VeUMVUlb98Yrybt3OpJ1rFoCgPJohyqbL/PBB0V?=
 =?iso-8859-1?Q?NSOuyxH7n2BG0Zo85s8dMXpu4LDeB5T9zCNEAtlT+H5RiK5NPRorx9Gve3?=
 =?iso-8859-1?Q?2kN47/qrIVrVSKGrjTcA9eG4fWi18hsHx/IyDTGbpvO3MywmsojUnJYH0Z?=
 =?iso-8859-1?Q?tdKzWI52bOW77iSGtbxjgmk8dKPArQHUL9e+uQQmt2lRCfER75CwtCBPCX?=
 =?iso-8859-1?Q?ZuonJbrw6Ok8ACWwxuAWibE7mnpyKl39fAd/tgSQ?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: witekio.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P192MB1316.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 061216ef-8015-4ff8-9bd1-08dc17643490
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 13:57:12.5778
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 317e086a-301a-49af-9ea4-48a1c458b903
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XCQmXtINQHaSvlVVhiNoDlYiGcLNWJ6/AUKc+9F1UI/wr0M3uxREAZIX9US7p7LYpCLDjvUMW+OM87+OVkOFBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P192MB1947
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 13:57:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62178

Dear community,=0A=
=0A=
I'm currently building a professional yocto project.=0A=
There are 2 variants of the image I'm building: the first one is using clas=
sical rootfs on SD card (dev and test purpose). The other one is building a=
n initramfs fitImage (production). I'm using INITRAMFS_IMAGE to indicate th=
e name of the recipe building the initramfs + INITRAMFS_IMAGE_BUNDLE =3D "1=
".=0A=
=0A=
Problem I get is that the initramfs image produces no logs (except kernel l=
ogs) in the console while the dev with the rootfs on the SD card have logs =
printed in the console. I don't understand why and where I should patch to =
have logs. The wanted logs are logs from init.d scripts for example (creati=
ng ssh keys, setting hwclock etc) + logs from my own applications that are =
properly output on the serial console with the "classic" image.=0A=
=0A=
Thanks for any feedbacks!=0A=
Joel=

