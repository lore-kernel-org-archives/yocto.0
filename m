Return-Path: <kfa@deif.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07AA9C282DE
	for <webhook@archiver.kernel.org>; Mon, 10 Mar 2025 14:59:48 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.109])
 by mx.groups.io with SMTP id smtpd.web10.40390.1741618778303480107
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 07:59:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deif.com header.s=selector1 header.b=O7D9GHKh;
 spf=pass (domain: deif.com, ip: 40.107.20.109, mailfrom: kfa@deif.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GyhYxWgdMp4lGZJXphNfQoOcnnBMR2A6jQHtbUWUHnSDEZPog8vJAV8qXCjOykkRfPAH0UnA/W8yUXwB02XawLaB8VRlzZuWIW/bY3HHa8Kq6zv5U6Jje3SmbktSkoh9xvJECOayxbzL/XN4rES1EnnDopEzEur5gHOw867a9x8hfevj2TZ2arGWYLyEg1QzQZRRqaAYpQ+MG9cuk4ms71vWzS2v93gw8OpdipEdkFvEr1DDwNk4VbUlax2I4/V/iB8xSOAC0+lz7JKyaClBP4ThFBb8Ps/02N5wEHZy0vExiu2xIWbLU0+EA6KWoPncVKo2h73io8UAryk7Qhj9Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/8yKK7+1vmp97SRMzVEebLmPRGjFzRX4OG+StofD2Kk=;
 b=k75FitDGvyBq0F2ARnIo0sIOLE9ehzqmzgF0h4VUil9ownWps7Hkqno7h9MynlEGApL10X65Z+C9zmgo7DOLXR44R3iisbia88IdIhTM8jYXt/Chyo4bY1+lf9XB2twJm7XgPBAHfRPoWX0gF8YzHUPgWJcAGhJR641G0wu4cE0zrwoZGkExeiUtkkhEO2hzaPsFA8SQqrIA9xW8Yk1UUiWm4QAkKuNb0S3lz7o3IWUxDBaQI/MfP48n3GP1QZfn5dpO/EF2BCowbKtuWRzn/to4cJDLcUf7tzk7AYlmlpmvqNldss4tK3Op+UPtHgz8jZbxuN0cF0mm1R/FfESiEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=deif.com; dmarc=pass action=none header.from=deif.com;
 dkim=pass header.d=deif.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deif.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/8yKK7+1vmp97SRMzVEebLmPRGjFzRX4OG+StofD2Kk=;
 b=O7D9GHKh4PnfaLAekaCUOkZvPk3WWi+OUJGGVbFumomdLj/Om1Fq542VcYbrTUUJporUWDQc2FkjFbrHdho9vUJjvdRmBOsOmd571AyRS4vg0yaD0Z9YyN3RBJvICJlsnF4BYcGkM0ReNOKNd0SOUvjn7reIgsaDx6gfhlwCoYM=
Received: from VI1P190MB0672.EURP190.PROD.OUTLOOK.COM (2603:10a6:800:11d::16)
 by AM8P190MB0865.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:1d6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.26; Mon, 10 Mar
 2025 14:59:34 +0000
Received: from VI1P190MB0672.EURP190.PROD.OUTLOOK.COM
 ([fe80::ebde:5f44:fac0:5edc]) by VI1P190MB0672.EURP190.PROD.OUTLOOK.COM
 ([fe80::ebde:5f44:fac0:5edc%7]) with mapi id 15.20.8511.026; Mon, 10 Mar 2025
 14:59:33 +0000
From: Kjeld Flarup Christensen <kfa@deif.com>
To: Gyorgy Sarvari <skandigraun@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Fakeroot fails with externalsrc
Thread-Topic: [yocto] Fakeroot fails with externalsrc
Thread-Index: AQHbkF8BV35K33b+2k+9m3OdFCnrr7NsePAE
Date: Mon, 10 Mar 2025 14:59:32 +0000
Message-ID: 
 <VI1P190MB06727BDE2EB8225E756B0BA2D7D62@VI1P190MB0672.EURP190.PROD.OUTLOOK.COM>
References: <Og1U.1741378092435763581.EjNi@lists.yoctoproject.org>
 <24c41f4c-6ea7-48ea-83ee-e3501044504a@gmail.com>
In-Reply-To: <24c41f4c-6ea7-48ea-83ee-e3501044504a@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
x-signature365-signatureinjectedby: OutlookAddIn
x-signature365-messageprocessed: true
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=deif.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1P190MB0672:EE_|AM8P190MB0865:EE_
x-ms-office365-filtering-correlation-id: a308997f-a650-46fa-d617-08dd5fe42aaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|376014|366016|1800799024|8096899003|4013099003|13003099007|4053099003|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?s5nI1ttEiPvwdb6PL94TS006dBIhKgLLYBxMnEvhiHrx905uGVV7/MZWfO/M?=
 =?us-ascii?Q?xjEzq9BmhgAR7nrk76zywyxIFGqoywAz4LTP7B88PJvXtOT/SOCk+bIZL6cG?=
 =?us-ascii?Q?SmotzR25GfKr8nrAHNVUu4OHXL2qYm3TO+//tVsBaSmsbSXwQSFYiRGIsmZf?=
 =?us-ascii?Q?OUID/CQw2O6/LGzkGxJwjU2NlgUYVTd+SpfcF+ftU2A3NGOrk6IF2JGuFWnC?=
 =?us-ascii?Q?luk+URF9o92OWgjS6CvKNEJoCZADvlm4lnupZcKszfd7DHWw5YqgJgXI8bT2?=
 =?us-ascii?Q?cIu1px/f0d9alYVkWXvW0/L4f8yWMfHL3oegv4sKBCFI7iWm/l23L0xSmCH0?=
 =?us-ascii?Q?J2zTW2OY/sT1vmOn6DOHDY1ESvTDJRwoHeRWZeyQj3YP8ra/nuvF60zD333G?=
 =?us-ascii?Q?pfBp9lbNha4c+u37FOzWr2DR+E+GlqF1w+lplfADJ4ZuELMocS9pM34clbsT?=
 =?us-ascii?Q?kk/fV4NxWGnjghabCEtGJkJ7MLoaFD9yDRyChvP+KRR2Y/VSArt1CCKy7KGq?=
 =?us-ascii?Q?qk8MxZnWvuFe5BsRu4ZxspaFmfPYoVprqsXQJVEdRwg64JUX4Gsk8koyeqCK?=
 =?us-ascii?Q?c9HSFNWwMa+3VIiwXAbT4R7KVHYSGhq+wDhWwb0py4KZ8xiMKvdhZCcqeDt9?=
 =?us-ascii?Q?6fzO0jcLlcHHkQnDTUmJK3c+hpp1GJ9+LIAqSWPQl1v+LxMPCUBmaLH/k1vf?=
 =?us-ascii?Q?RWzP5ybnAZYDEexVoQ1xe8wYDfwiX43pWMZXmHDuFBhRMLMhi1QtoyaHhIni?=
 =?us-ascii?Q?fi9HGvEXiQD/uAZzyijjuZKGjXb2F24q5+h/apIsvtV6BoOgx4taVitylwTo?=
 =?us-ascii?Q?XA43xFaYQJKTJ9jOZ6FzPMV07j00F5OtUgj8cRVFp9/pPpALZmSABESgBPZP?=
 =?us-ascii?Q?5NawoXmFyxnIQ5DfUIzmw8IOKkwSYRB1pCjmj2EAnH1v2bZ7cN3PO8upadHy?=
 =?us-ascii?Q?3LM8ff4CjfbeA3GkFlMn5jn59ybwBdOY3xdwfZ+LXlt8pd6417nBTwS8PFkx?=
 =?us-ascii?Q?yNGS/qI4otdqbbL1i+sUe+6vneevWeQaXmG4WvJ59ukE8IOtB9tYMtXtJ/s/?=
 =?us-ascii?Q?QCut45/upO/rz5BXkF3EPdRSXi0UmR/WJK6bHez0Ua+/hblCxIjd7QYs+064?=
 =?us-ascii?Q?NA0t6+yteGSjtDD9Wp+2Y4l09OgAjG3PbtrI0qIARZe8yPh+AdEV2D4GU9AW?=
 =?us-ascii?Q?vnjklElwTWpdI3pnk4bz43fXYxIhhgjcYrxFJpD/5qFXk4WmyjewMF+BPphc?=
 =?us-ascii?Q?s8aI9nVtk65IzWNLiM6lFJz0OwEzxHBvmM5RFDecmLzQXY8SlrQRayLfTr8A?=
 =?us-ascii?Q?fVft2sppSA3nAiF7ErUDNSkWXUz8hJABbMvQYQMJ2xCA4fX9FuOf95zXro0i?=
 =?us-ascii?Q?ExhJEBFVnuGnp0lgeCS+pgtDKlIM?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1P190MB0672.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(376014)(366016)(1800799024)(8096899003)(4013099003)(13003099007)(4053099003)(7053199007)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?hv3XAIOlsxg8+wOTbRFTNNKCDLoDBG3jd/51w8uisw0pPQU5b9hyAVsXinLa?=
 =?us-ascii?Q?V3ZXeCkWEGSOUYaXWOq/hiuPyoo1nRTd70ahsSSI5kJu8LA3RlZp20GnfTwk?=
 =?us-ascii?Q?3gwxfP0KPiz3oGJjaAHz8xOqQL4IPbIXzlSodjw618XRafP4bCcAbe3LUdPZ?=
 =?us-ascii?Q?PGSfh46IAi3qbsoUMctai/yyPHZG3U/Qlj7+EWsQqabztin3/OEA5lREdnbr?=
 =?us-ascii?Q?+uRDOjIr3H9DNCB8Km6NLxM5jKlrfwK88KH0+40w9NoL5/iv3z6hvHlrahDB?=
 =?us-ascii?Q?xzWuD5gCVEXaD4rgiFFfky1K8DlaPyFooXQkznCu+3hrbiaDX0l20a4KbbHZ?=
 =?us-ascii?Q?UmxkZAdz2ltGe6XNN0o7iVYsYe0Sh7iz+eXEifihWItSMBYZrsqs2Rd8Aa4s?=
 =?us-ascii?Q?+VrdRvcXYOPqsfeqPo+0LDwKguOLzwwtmf6LVg2zQPnsnIea+pjNJV150oOV?=
 =?us-ascii?Q?p4epQ2MHsVKQ/FWf6q8UOiUd5hxJATdCCtxcTRjnojK3bRnK8B3c7Cec/Dcp?=
 =?us-ascii?Q?dIE0JuWlvn9XKcC0iWPx+SD+kraYojfvslKcDB32cAMrknXGLWkctj2j/iSL?=
 =?us-ascii?Q?gCUQraKEx/roQjIoPdHp5jOki1KQvNjoEs7VRfrnDZS0a8qhHw7Phs7QQmOH?=
 =?us-ascii?Q?9gDW6BFrjjC7Q7K3iCeDO2w44KmXJ8PhdIrWpo8vUIYzgMbrqxj6u9FoU6O4?=
 =?us-ascii?Q?VqGZvLoBV2k5X5aeD9MafvF04fZcuSRiHcx0l+fatjyx9Mo0AwKfwHrooF5F?=
 =?us-ascii?Q?NnTwwSsbUnkdGVNdgb1G7sclYM71Kr1dAbhOgAcXq8xcb35QhUTOmGZ1a5Ug?=
 =?us-ascii?Q?V9Eblf0TrPWP5o+GwULLbgpTmI8vDyL1yd3DJqzQvAH2FIiLIeqja7OX7slN?=
 =?us-ascii?Q?fHlEpjKiwMDugmbg4qOzbSLUr9uCXIRde/zDk/XbYLe5+vvU+m9rtSaqxJiy?=
 =?us-ascii?Q?UR7kt7tQcx/44ubqXVf8N10FfJzBR3NiO5TqHwqflHIGpHr3L051/ZYLim3I?=
 =?us-ascii?Q?bGrxLVaJPl2/lml3QqikNw94WSnWrJql3fFV1JOZ5ziQEnM4cY7F4/2yEV8Q?=
 =?us-ascii?Q?C8ZrEbtQHtBeXTwuD0UNBI5DvuUQ/BbImQHsCWkuxdYZDk7HACL9d6D/8K10?=
 =?us-ascii?Q?s8N4+QGW3uBsDo9C6Moq7avJEnzACs8Var1/xTITyrAc/LmteqtyKqOecqMs?=
 =?us-ascii?Q?VUt2+LezegNM3QXWWVArMkO8uYnRI4lRPVchIxY5qhfefxBeZcigCgu61QaM?=
 =?us-ascii?Q?jSit4LbicsfZ+YMVwlFYKmdY2j64xSwkYNXht8p5n8sYICzbZVCfR6c9r9pG?=
 =?us-ascii?Q?uwBjrBv/hSIHTI57jjDRaNi3hzU1cwExTKCde0CzRx5kLVkgH5/LHk7ARUGo?=
 =?us-ascii?Q?13psDf5DuG/ttBA9I/0bLUOQmQy+GSyJ5WZr9se8ZykNhkbDzokA3xL0vYG0?=
 =?us-ascii?Q?/3hPie8zzjUBhGzWvyGIQBjMXkIrIQdcGDw/RchgJCbUrkkHnJisTXF9AS6f?=
 =?us-ascii?Q?oCX7xvuMvq7AS+Zm0IWtDFnTH0jum2O+NETzKIRyzDeuaPVUgPJStAqlorKg?=
 =?us-ascii?Q?/1B/tkX3QIUmqL8NAWE=3D?=
Content-Type: multipart/related;
	boundary="_006_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_";
	type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: deif.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1P190MB0672.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a308997f-a650-46fa-d617-08dd5fe42aaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2025 14:59:32.9430
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3c7af82f-7d06-4244-8229-4b118df8fed0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7OGpZI+AE1Lkjmox6kjCI3sncIiNrVHiXwq4D8RUUguS4SMKsB7UHup8gUJvc+nV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P190MB0865
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 14:59:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64934

--_006_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_
Content-Type: multipart/alternative;
	boundary="_000_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_"

--_000_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Thanks, that makes sense.

I kept yocto under my project, because I wanted to take advantage of the Gi=
tlab CI cache.
But I solved the problem instead by setting a TMPDIR.


Best regards

Kjeld Flarup Christensen

Software Designer
BSP Software
DEIF A/S

Email:   kfa@deif.com<mailto:kfa@deif.com> <mailto:kfa@deif.com>
Tel.:    +45 9614 3568<tel:+45%209614%203568> <tel:+45%209614%203568>
Mobile:  +45 4029 4149<tel:+45%204029%204149> <tel:+45%204029%204149>

[cid:30596ddb-7b04-4c9d-8818-8935c283e09a]

deif.com<https://deif.com/> <https://deif.com/>

[cid:2ab65bea-e110-4ebf-9280-913f7623dd02]<https://www.linkedin.com/company=
/21145/?utm_medium=3Demail&utm_source=3Dlink-to-emailsignature&utm_campaign=
=3Dsignature-only>  [cid:bfdc7927-4f6c-464f-b49b-7ef90e2a8b8e] <https://www=
.youtube.com/@deifgroup?utm_medium=3Demail&utm_source=3Dlink-to-emailsignat=
ure&utm_campaign=3Dsignature-only>    Follow us on LinkedIn and Youtube
________________________________
From: Gyorgy Sarvari <skandigraun@gmail.com>
Sent: Saturday, March 8, 2025 20:19
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Kjeld Flar=
up Christensen <kfa@deif.com>
Subject: Re: [yocto] Fakeroot fails with externalsrc

[You don't often get email from skandigraun@gmail.com. Learn why this is im=
portant at https://aka.ms/LearnAboutSenderIdentification ]

Pseudo ignores the source- and build-dirs[1] (and everything that's
inside them), via the PSEUDO_IGNORE_PATHS variable.
E.g. When you set "/userdata/codesys-runtimes" as EXTERNALSRC, that
becomes ${S} - every path that starts with this prefix will be outside
of fakeroot.
You need to change this folder structure in a way that the EXTERNALSRC
path doesn't clash with your Yocto build-dir - build-dir can contain the
source-dir, but the source-dir shouldn't contain the build-dir.

[1]: https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgi=
t.yoctoproject.org%2Fpoky%2Ftree%2Fmeta%2Fconf%2Fbitbake.conf%23n754&data=
=3D05%7C02%7Ckfa%40deif.com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d=
06424482294b118df8fed0%7C0%7C0%7C638770583664666272%7CUnknown%7CTWFpbGZsb3d=
8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbC=
IsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3DyI1xENWadC3e68SBSXfJ4u%2B6mR%2B7uJ5=
MfbEzwC4BRIg%3D&reserved=3D0<https://git.yoctoproject.org/poky/tree/meta/co=
nf/bitbake.conf#n754>

On 07.03.25 21:08, Kjeld Flarup via lists.yoctoproject.org wrote:
> Hi
>
> I'm trying to make a CI/CD Yocto build in a git repository which is
> used in a recipe.
>
> I have made an include file
>  meta-codesys/recipes-codesys/codesys-src.inc which normally contains.
>
>     SRC_URI =3D
>     "gitsm://gitlab.deif.com/codesys/codesys-runtimes.git;protocol=3Dhttp=
s;branch=3Dmaster"
>     SRCREV =3D "927fe8fa0b9e6537b3d7ec9f2231e13c4b367a61"
>
>
> When building in the codesys-runtimes repository I clone the Yocto
> project and replaces codesys-src.inc with
>
>     inherit externalsrc
>     EXTERNALSRC =3D "/userdata/codesys-runtimes"
>     EXTERNALSRC_BUILD =3D "/userdata/codesys-runtimes/build"
>
> And then I run bitbake where I get this error
>
>      *** 0418:            os.lchown(path, uid, gid)
>          0419:
>          0420:    # Return a list of configuration files based on
>     either the default
>          0421:    # files/fs-perms.txt or the contents of
>     FILESYSTEM_PERMS_TABLES
>          0422:    # paths are resolved via BBPATH
>     Exception: PermissionError: [Errno 1] Operation not permitted:
>     '/userdata/codesys-runtimes/yocto/tmp-glibc/work/cortexa53-crypto-oe-=
linux/codesys-runtime/1.0-r0/package/usr'
>
>     ERROR: Logfile of failure stored in:
>     /userdata/codesys-runtimes/yocto/tmp-glibc/work/cortexa53-crypto-oe-l=
inux/codesys-runtime/1.0-r0/temp/log.do_package.59961
>     ERROR: Task
>     (/userdata/codesys-runtimes/yocto/meta-codesys/recipes-codesys/codesy=
s-runtime/codesys-runtime.bb:do_package)
>     failed with exit code '1'
>
>
> The problem is that do_package tries to set uid to root, but that is
> not allowed, unless fakeroot is used.
> Why does this fail when externalsrc is used?
>
> Just for the record, if I do not change codesys-src.inc it builds.
>
> --
> --
> Regards
> Kjeld Flarup
> DEIF A/S
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64930): https://eur01.safelinks.protection.outlook.co=
m/?url=3Dhttps%3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Fmessage%2F64930=
&data=3D05%7C02%7Ckfa%40deif.com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af=
82f7d06424482294b118df8fed0%7C0%7C0%7C638770583664685055%7CUnknown%7CTWFpbG=
Zsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiT=
WFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Dccrbxj5hChHWJNaRG7%2BQADSYCyp%=
2BAeFSxDBGQYOT0Qs%3D&reserved=3D0<https://lists.yoctoproject.org/g/yocto/me=
ssage/64930>
> Mute This Topic: https://eur01.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Flists.yoctoproject.org%2Fmt%2F111574850%2F6084445&data=3D05%7C0=
2%7Ckfa%40deif.com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d064244822=
94b118df8fed0%7C0%7C0%7C638770583664697650%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0=
eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjo=
yfQ%3D%3D%7C0%7C%7C%7C&sdata=3DhEjj4usNfeI7HIhPLWP2lsMV1gr4iNr5iXDWS0nPMww%=
3D&reserved=3D0<https://lists.yoctoproject.org/mt/111574850/6084445>
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%=
3A%2F%2Flists.yoctoproject.org%2Fg%2Fyocto%2Funsub&data=3D05%7C02%7Ckfa%40d=
eif.com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d06424482294b118df8fe=
d0%7C0%7C0%7C638770583664709585%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnR=
ydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7=
C0%7C%7C%7C&sdata=3DNdnG1z6tl28gEiQW9igeh0%2BWn7dvKCBa0%2FqwOxtAhlo%3D&rese=
rved=3D0<https://lists.yoctoproject.org/g/yocto/unsub> [skandigraun@gmail.c=
om]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--_000_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Thanks, that makes sense.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I kept yocto under my project, because I wanted to take advantage of the Gi=
tlab CI cache.&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
But I solved the problem instead by setting a TMPDIR.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" style=3D"margin: 0cm; color: black;margin: 0cm; color=
: black;">
<table cellspacing=3D"0" cellpadding=3D"0" style=3D"border-collapse: collap=
se; border-spacing: 0px; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"width: 210.109px; height: 310px;">
<div id=3D"x_signature-365-signature" style=3D"margin: 0cm; color: black;ma=
rgin: 0cm; color: black;">
<div style=3D"margin: 0cm 0px; color: black;"><span style=3D"font-family: A=
rial; font-size: 10pt;"><br>
Best regards<br>
</span><span style=3D"font-family: Arial; font-size: 9pt;"><br>
</span><span style=3D"font-family: Arial; font-size: 10pt;"><b>Kjeld Flarup=
 Christensen</b><br>
</span><span style=3D"font-family: Arial; font-size: 4pt;"><br>
</span><span style=3D"font-family: Arial; font-size: 8pt;">Software Designe=
r<br>
BSP Software<br>
DEIF A/S<br>
</span><span style=3D"font-family: Arial; font-size: 9pt;"><br>
</span><span style=3D"font-family: Calibri, Candara, Segoe, &quot;Segoe UI&=
quot;, Optima, Arial, sans-serif; font-size: 11pt;"></span></div>
<table cellspacing=3D"0" cellpadding=3D"0" style=3D"border-collapse: collap=
se; border-spacing: 0px; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"width: 34.3594px; height: 16px;"><span style=3D"font-family: A=
rial; font-size: 8pt; color: black;">Email:</span></td>
<td style=3D"width: 74.3906px; height: 16px;"><span style=3D"font-family: A=
rial; font-size: 8pt; color: black;">&nbsp;</span><span style=3D"font-famil=
y: Arial; font-size: 8pt; color: rgb(0, 0, 0);"><u><a href=3D"mailto:kfa@de=
if.com" style=3D"color: rgb(0, 0, 0);">kfa@deif.com</a></u></span><span sty=
le=3D"font-family: Arial; font-size: 8pt; color: blue;"><u><a href=3D"mailt=
o:kfa@deif.com" style=3D"color: blue;">
</a></u></span></td>
</tr>
<tr>
<td style=3D"width: 34.3594px; height: 16px;"><span style=3D"font-family: A=
rial; font-size: 8pt; color: black;">Tel.:</span></td>
<td style=3D"width: 74.3906px; height: 16px;"><span style=3D"font-family: A=
rial; font-size: 8pt; color: black;">&nbsp;</span><span style=3D"font-famil=
y: Arial; font-size: 8pt; color: rgb(0, 0, 0);"><u><a href=3D"tel:+45 9614 =
3568" style=3D"color: rgb(0, 0, 0);">+45 9614 3568</a></u></span><span styl=
e=3D"font-family: Arial; font-size: 8pt; color: blue;"><u><a href=3D"tel:+4=
5 9614 3568" style=3D"color: blue;">
</a></u></span></td>
</tr>
<tr>
<td style=3D"width: 34.3594px; height: 16px;"><span style=3D"font-family: A=
rial; font-size: 8pt; color: black;">Mobile:</span></td>
<td style=3D"width: 74.3906px; height: 16px;"><span style=3D"font-family: A=
rial; font-size: 8pt; color: black;">&nbsp;</span><span style=3D"font-famil=
y: Arial; font-size: 8pt; color: rgb(0, 0, 0);"><u><a href=3D"tel:+45 4029 =
4149" style=3D"color: rgb(0, 0, 0);">+45 4029 4149</a></u></span><span styl=
e=3D"font-family: Arial; font-size: 8pt; color: blue;"><u><a href=3D"tel:+4=
5 4029 4149" style=3D"color: blue;">
</a></u></span></td>
</tr>
</tbody>
</table>
<div style=3D"margin-right: 0px; margin-left: 0px; font-family: Arial;"><sp=
an style=3D"font-size: 9pt; color: black;"><br>
<img size=3D"3727" contenttype=3D"image/png" data-outlook-trace=3D"F:1|T:1"=
 src=3D"cid:30596ddb-7b04-4c9d-8818-8935c283e09a"></span><span style=3D"fon=
t-size: 2pt; color: black;"><br>
<br>
</span><span style=3D"font-size: 8pt; color: rgb(0, 0, 0);"><u><a href=3D"h=
ttps://deif.com/" style=3D"color: rgb(0, 0, 0);">deif.com</a></u></span><sp=
an style=3D"font-size: 8pt; color: blue;"><u><a href=3D"https://deif.com/" =
style=3D"color: blue;">
</a></u></span><span style=3D"font-size: 8pt; color: black;"><br>
<br>
</span><span style=3D"font-size: 8pt; color: blue;"><a href=3D"https://www.=
linkedin.com/company/21145/?utm_medium=3Demail&amp;utm_source=3Dlink-to-ema=
ilsignature&amp;utm_campaign=3Dsignature-only" style=3D"color: blue; text-d=
ecoration: none;"><img size=3D"3428" contenttype=3D"image/png" data-outlook=
-trace=3D"F:1|T:1" src=3D"cid:2ab65bea-e110-4ebf-9280-913f7623dd02"></a></s=
pan><span style=3D"font-size: 8pt; color: black;">&nbsp;
</span><span style=3D"font-size: 8pt; color: blue;"><a href=3D"https://www.=
youtube.com/@deifgroup?utm_medium=3Demail&amp;utm_source=3Dlink-to-emailsig=
nature&amp;utm_campaign=3Dsignature-only" style=3D"color: blue; text-decora=
tion: none;"><img size=3D"3362" contenttype=3D"image/png" data-outlook-trac=
e=3D"F:1|T:1" src=3D"cid:bfdc7927-4f6c-464f-b49b-7ef90e2a8b8e"></a></span><=
span style=3D"font-size: 8pt; color: black;">&nbsp;&nbsp;
 Follow us on LinkedIn and Youtube<br>
</span></div>
</div>
</td>
</tr>
</tbody>
</table>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Gyorgy Sarvari &lt;sk=
andigraun@gmail.com&gt;<br>
<b>Sent:</b> Saturday, March 8, 2025 20:19<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; Kjeld Flarup Christensen &lt;kfa@deif.com&gt;<br>
<b>Subject:</b> Re: [yocto] Fakeroot fails with externalsrc</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[You don't often get email from skandigraun@gmail.=
com. Learn why this is important at
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">https://aka.ms/Le=
arnAboutSenderIdentification</a> ]<br>
<br>
Pseudo ignores the source- and build-dirs[1] (and everything that's<br>
inside them), via the PSEUDO_IGNORE_PATHS variable.<br>
E.g. When you set &quot;/userdata/codesys-runtimes&quot; as EXTERNALSRC, th=
at<br>
becomes ${S} - every path that starts with this prefix will be outside<br>
of fakeroot.<br>
You need to change this folder structure in a way that the EXTERNALSRC<br>
path doesn't clash with your Yocto build-dir - build-dir can contain the<br=
>
source-dir, but the source-dir shouldn't contain the build-dir.<br>
<br>
[1]: <a href=3D"https://git.yoctoproject.org/poky/tree/meta/conf/bitbake.co=
nf#n754">
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.yoc=
toproject.org%2Fpoky%2Ftree%2Fmeta%2Fconf%2Fbitbake.conf%23n754&amp;data=3D=
05%7C02%7Ckfa%40deif.com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d064=
24482294b118df8fed0%7C0%7C0%7C638770583664666272%7CUnknown%7CTWFpbGZsb3d8ey=
JFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsI=
ldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3DyI1xENWadC3e68SBSXfJ4u%2B6mR%2B7uJ=
5MfbEzwC4BRIg%3D&amp;reserved=3D0</a><br>
<br>
On 07.03.25 21:08, Kjeld Flarup via lists.yoctoproject.org wrote:<br>
&gt; Hi<br>
&gt;<br>
&gt; I'm trying to make a CI/CD Yocto build in a git repository which is<br=
>
&gt; used in a recipe.<br>
&gt;<br>
&gt; I have made an include file<br>
&gt;&nbsp; meta-codesys/recipes-codesys/codesys-src.inc which normally cont=
ains.<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; SRC_URI =3D<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &quot;gitsm://gitlab.deif.com/codesys/codesys-=
runtimes.git;protocol=3Dhttps;branch=3Dmaster&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; SRCREV =3D &quot;927fe8fa0b9e6537b3d7ec9f2231e=
13c4b367a61&quot;<br>
&gt;<br>
&gt;<br>
&gt; When building in the codesys-runtimes repository I clone the Yocto<br>
&gt; project and replaces codesys-src.inc with<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; inherit externalsrc<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EXTERNALSRC =3D &quot;/userdata/codesys-runtim=
es&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; EXTERNALSRC_BUILD =3D &quot;/userdata/codesys-=
runtimes/build&quot;<br>
&gt;<br>
&gt; And then I run bitbake where I get this error<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *** 0418:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; os.lchown(path, uid, gid)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0419:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0420:&nbsp;&nbsp=
;&nbsp; # Return a list of configuration files based on<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; either the default<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0421:&nbsp;&nbsp=
;&nbsp; # files/fs-perms.txt or the contents of<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; FILESYSTEM_PERMS_TABLES<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0422:&nbsp;&nbsp=
;&nbsp; # paths are resolved via BBPATH<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; Exception: PermissionError: [Errno 1] Operatio=
n not permitted:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; '/userdata/codesys-runtimes/yocto/tmp-glibc/wo=
rk/cortexa53-crypto-oe-linux/codesys-runtime/1.0-r0/package/usr'<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ERROR: Logfile of failure stored in:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; /userdata/codesys-runtimes/yocto/tmp-glibc/wor=
k/cortexa53-crypto-oe-linux/codesys-runtime/1.0-r0/temp/log.do_package.5996=
1<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ERROR: Task<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; (/userdata/codesys-runtimes/yocto/meta-codesys=
/recipes-codesys/codesys-runtime/codesys-runtime.bb:do_package)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; failed with exit code '1'<br>
&gt;<br>
&gt;<br>
&gt; The problem is that do_package tries to set uid to root, but that is<b=
r>
&gt; not allowed, unless fakeroot is used.<br>
&gt; Why does this fail when externalsrc is used?<br>
&gt;<br>
&gt; Just for the record, if I do not change codesys-src.inc it builds.<br>
&gt;<br>
&gt; --<br>
&gt; --<br>
&gt; Regards<br>
&gt; Kjeld Flarup<br>
&gt; DEIF A/S<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#64930): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/64930">
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fg%2Fyocto%2Fmessage%2F64930&amp;data=3D05%7C02%7Ckfa%40de=
if.com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d06424482294b118df8fed=
0%7C0%7C0%7C638770583664685055%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRy=
dWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C=
0%7C%7C%7C&amp;sdata=3Dccrbxj5hChHWJNaRG7%2BQADSYCyp%2BAeFSxDBGQYOT0Qs%3D&a=
mp;reserved=3D0</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11157485=
0/6084445">
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fmt%2F111574850%2F6084445&amp;data=3D05%7C02%7Ckfa%40deif.=
com%7C289daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d06424482294b118df8fed0%7=
C0%7C0%7C638770583664697650%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWU=
sIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7=
C%7C%7C&amp;sdata=3DhEjj4usNfeI7HIhPLWP2lsMV1gr4iNr5iXDWS0nPMww%3D&amp;rese=
rved=3D0</a><br>
&gt; Group Owner: yocto+owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub">=
https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.y=
octoproject.org%2Fg%2Fyocto%2Funsub&amp;data=3D05%7C02%7Ckfa%40deif.com%7C2=
89daeeec4e44581f46008dd5e7621c3%7C3c7af82f7d06424482294b118df8fed0%7C0%7C0%=
7C638770583664709585%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOi=
IwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C=
&amp;sdata=3DNdnG1z6tl28gEiQW9igeh0%2BWn7dvKCBa0%2FqwOxtAhlo%3D&amp;reserve=
d=3D0</a>
 [skandigraun@gmail.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_--

--_006_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_
Content-Type: image/png; name="npdm4j1gdfazvyynimg_KT7e9Y7cD2UeyI9Hv1.jpg"
Content-Description: npdm4j1gdfazvyynimg_KT7e9Y7cD2UeyI9Hv1.jpg
Content-Disposition: inline;
	filename="npdm4j1gdfazvyynimg_KT7e9Y7cD2UeyI9Hv1.jpg"; size=3346;
	creation-date="Mon, 10 Mar 2025 14:58:11 GMT";
	modification-date="Mon, 10 Mar 2025 14:58:11 GMT"
Content-ID: <30596ddb-7b04-4c9d-8818-8935c283e09a>
Content-Transfer-Encoding: base64

/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAAA8AAD/4QMwaHR0cDov
L25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENl
aGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4
OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA5LjAtYzAwMSA3OS4xNGVjYjQyZjJjLCAyMDIzLzAxLzEz
LTEyOjI1OjQ0ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3Jn
LzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0i
IiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJo
dHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFk
b2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9i
ZSBQaG90b3Nob3AgMjQuMiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6REE0
QUNCRjVCODA0MTFFRDhFOEVBQkEwRUQ4NTUyNUIiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6
REE0QUNCRjZCODA0MTFFRDhFOEVBQkEwRUQ4NTUyNUIiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RS
ZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpEQTRBQ0JGM0I4MDQxMUVEOEU4RUFCQTBFRDg1NTI1QiIg
c3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpEQTRBQ0JGNEI4MDQxMUVEOEU4RUFCQTBFRDg1NTI1
QiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0
IGVuZD0iciI/Pv/uAA5BZG9iZQBkwAAAAAH/2wCEAAYEBAQFBAYFBQYJBgUGCQsIBgYICwwKCgsK
CgwQDAwMDAwMEAwODxAPDgwTExQUExMcGxsbHB8fHx8fHx8fHx8BBwcHDQwNGBAQGBoVERUaHx8f
Hx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fHx8fH//AABEIACMAgwMB
EQACEQEDEQH/xACBAAAABgMBAAAAAAAAAAAAAAAABAUGBwgBAwkCAQEAAAAAAAAAAAAAAAAAAAAA
EAABAwIFAgMEBQYPAQAAAAACAQMEBQYAERITByExQRQVYSIyCFGBI2OjkaFCNDUWccFSYnKCsjND
g5MkVIQmFxEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8Aqy666jpprLoS+K/TgHzYHDHJ
l9IL1DpziU5VyWpyiViL06LpMurmXjtoWAm+3/klc0Cdw3UWv9KPT2VyT6cnni6/6eAeEX5N+Lmg
RHp9YkH4kUlkfzCymA8Tfk04yeBUjVKsRj8CSQyafWhM/wAeAZFyfJPV2wNy27nCQSIqhGqDRM/V
vNK7/YTAQXfXGPINjSEbuSmvxWTLSzNFd2M4vfIXgUgz/mqufswBLj511b+tpFMslqsHxX/khgOm
WASLXumkXLQWK7TDP0+QTwNm8KtFmw8bB5iXVPfbXAKyEKkooqKSd08UzwAQhVVRFRVFciRPBcs+
v5cAFMETNSREz055+OeWWAzngMKYIQipIhFnpHPquXfLAZwAwFLPlh4Ppt6VGZdFxs+YoFLkbEaC
XwSZSIhlu/S20JCqj+kq9eiKihMvNV+3vR73suw7ClR6ZMrKGj5OMNutts6hbZVBIS0gCNuKulPD
AJM7krmXja+bdpN/SKfXqBcb3lmp0JrYdaLWDZLkIh1bV0SVFFdQ9lz7AHL05mvPl27basqvQ6RR
rdUG9UmK0+m4iC2Y6lbM1UnRcX2ImAW7mrfLPHnGF1XBddyQ6tU2247dCWNEbaFh51zaIiTQKOKu
4K5KmSafbgGxc3KnK0a1uLaXTqmyF43rk7NluRmVEWpBt7GprQoiIjITUojn7q4B+UOx+ZJVSCPf
dzUuu2o8DgVOkBT2xWQJNkgCpK2OSI4ol9WArzyTw6xxzzTaZUvUtuVmpxXqcJqpEybcprdjqS9S
QNYqJL10rkuaoqqF2sBAdk2G/UY3HtPuSiSHKdEaug6hDltOIyDj1QBY3mG191dbZETaH3+JO2AS
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

--_006_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_
Content-Type: image/png; name="npdm4j1gdfazvyynimg_Sru14jrRmq0FpPVfv1.png"
Content-Description: npdm4j1gdfazvyynimg_Sru14jrRmq0FpPVfv1.png
Content-Disposition: inline;
	filename="npdm4j1gdfazvyynimg_Sru14jrRmq0FpPVfv1.png"; size=3047;
	creation-date="Mon, 10 Mar 2025 14:58:12 GMT";
	modification-date="Mon, 10 Mar 2025 14:58:12 GMT"
Content-ID: <2ab65bea-e110-4ebf-9280-913f7623dd02>
Content-Transfer-Encoding: base64

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
R7vANvwHcyxVPjH+NugAAAAASUVORK5CYII=

--_006_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_
Content-Type: image/png; name="npdm4j1gdfazvyynimg_JNKI26fLLnQM4vBZv1.png"
Content-Description: npdm4j1gdfazvyynimg_JNKI26fLLnQM4vBZv1.png
Content-Disposition: inline;
	filename="npdm4j1gdfazvyynimg_JNKI26fLLnQM4vBZv1.png"; size=2981;
	creation-date="Mon, 10 Mar 2025 14:58:12 GMT";
	modification-date="Mon, 10 Mar 2025 14:58:12 GMT"
Content-ID: <bfdc7927-4f6c-464f-b49b-7ef90e2a8b8e>
Content-Transfer-Encoding: base64

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
+X0UKSoyqi7qUbRTdHF09yzWrORZ+2e9jvGPqYy5O9tqtnJ2Z6xqbFJsY+ybuIC4qriBeIf4RfGX
EnQTJAntieTE2MQ9ieNzAudsmjOc5JpUlnRjruXcorkX5unOy553PFk1WZB8OIWYEpeyP+WDIEJQ
LxhP5aduTR0T8oSbhU9FvqKNolGxt7hKPJLmnVaV9jjdO31D+miGT0Z1xjMJT1IreZEZkrkj801W
RNberM/ZcdktOZSclJyjUg1plrQr1zC3KLdPZisrkw3keeZtyhuTh8r35CP5c/PbFWyFTNGjtFKu
UA4WTC+oK3hbGFt4uEi9SFrUM99m/ur5IwuCFny9kLBQuLCz2Lh4WfHgIr9FuxYji1MXdy4xXVK6
ZHhp8NJ9y2jLspb9UOJYUlXyannc8o5Sg9KlpUMrglc0lamUycturvRauWMVYZVkVe9ql9VbVn8q
F5VfrHCsqK74sEa45uJXTl/VfPV5bdra3kq3yu3rSOuk626s91m/r0q9akHV0IbwDa0b8Y3lG19t
St50oXpq9Y7NtM3KzQM1YTXtW8y2rNvyoTaj9nqdf13LVv2tq7e+2Sba1r/dd3vzDoMdFTve75Ts
vLUreFdrvUV99W7S7oLdjxpiG7q/5n7duEd3T8Wej3ulewf2Re/ranRvbNyvv7+yCW1SNo0eSDpw
5ZuAb9qb7Zp3tXBaKg7CQeXBJ9+mfHvjUOihzsPcw83fmX+39QjrSHkr0jq/dawto22gPaG97+iM
o50dXh1Hvrf/fu8x42N1xzWPV56gnSg98fnkgpPjp2Snnp1OPz3Umdx590z8mWtdUV29Z0PPnj8X
dO5Mt1/3yfPe549d8Lxw9CL3Ytslt0utPa49R35w/eFIr1tv62X3y+1XPK509E3rO9Hv03/6asDV
c9f41y5dn3m978bsG7duJt0cuCW69fh29u0XdwruTNxdeo94r/y+2v3qB/oP6n+0/rFlwG3g+GDA
YM/DWQ/vDgmHnv6U/9OH4dJHzEfVI0YjjY+dHx8bDRq98mTOk+GnsqcTz8p+Vv9563Or59/94vtL
z1j82PAL+YvPv655qfNy76uprzrHI8cfvM55PfGm/K3O233vuO+638e9H5ko/ED+UPPR+mPHp9BP
9z7nfP78L/eE8/stRzjPAAAAIGNIUk0AAHomAACAhAAA+gAAAIDoAAB1MAAA6mAAADqYAAAXcJy6
UTwAAAAJcEhZcwAACxMAAAsTAQCanBgAAADGSURBVCiRpdI9SwNREIXhZ9dVJGlUxCJ/I6RM6tiI
Frb+ShUsxRQxRdLYprYyWCT4zVrsLMhyUaMvHG5x5lzuzJ2sLEt/JYtzHyfYwXZoM/wSr3jGCx5x
jnvYwHUU/VZjbMHRmsFaZzm6iXYWGP3Qci+PflP0McAVlgm/lddvb7CLNm4wxGXq9lw1ySYLrHCI
CU5T4SIKm2QR6qVCwVOBWcLYC33HlGoZbq33TXdo1RvWwTEOVAMsvugD73gLPeAC8+w/u/0J4NZK
BAbXSAYAAAAASUVORK5CYII=

--_006_VI1P190MB06727BDE2EB8225E756B0BA2D7D62VI1P190MB0672EURP_--

