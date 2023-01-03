Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10171C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 14:54:02 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.71])
 by mx.groups.io with SMTP id smtpd.web10.65501.1672757635454901004
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 06:53:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=LwOJKJKD;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.71, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlpKoPfcP37hMt2siEokIQxsh04eWdOEc9jUiXQ7ymc8sZwFStxQa10BR8Biknbf5jltA6GsVYhRIUssBl3Ka4Ko0Ezd+Y3YKtBIHPVMDbgHVjM621iF7gr/VTf2rHYMGVeMLG1S8ub4c7wWNZLAM3R5K6Mg9PDnc9psroO8iWXRHo+rCesYcA+kNOEdy8opdTx9wzeOV+HXyKVIiNdWFtFEulJmsaMfDu8LiPoHRKMvkDKcxmc/WLdBgKWCEf9f8Fq+lo8k24qeQKy2hNbgRzIGZFK2w+SYcOih+BFdgtUckCCrRFe+NMdKnKjy1vh2uUtNvME+o6Ivq7MmVFi2Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7XbZeBh3UOBwVbRZLSakWjhxBXOm+QvnlJ0mizxRWQ=;
 b=aZmnU9aMHu1+Bjt4KrKM28SW7pBq+q968uNg7d4dxlXFs814dn7Ci0mSZEV4ZhWte2qB1LLvmogTSU1+zm5lAUx9tSCm7kJE8LPsVeFf1z8FRlKNDYoikAAHDtMfNdLWGxLJaRkRis7sFVLGF3S4jKQdhw0BKVrTChjOip3wuGfssAscs6qq9RR159Zj7aFaZLzjn2FoRTb4z3wJCydRMq7W0+RRSi9XM7jwY/BLTDMpbOs4tbSTD9NK1E70b2ZQZVa0X5Hb+IW5tOyy4uTIsfcY3mWPrbk5UQVjdyUEthzmbOMZIQqEEkGvsJNL2TVEWCk3adjtITJqkmQZND1u4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/7XbZeBh3UOBwVbRZLSakWjhxBXOm+QvnlJ0mizxRWQ=;
 b=LwOJKJKDT+dUC2hXbq8n0vqojJgifXn4HiHhQ84AdkXZZZSTMKh2xgpeKcH1gTWKtryabrYkK7y3YYJ8hPf1XKsIliRGPdNVUP49050Cn3IDC7+ZPjDZKOTezqIgV4l9NZ38Ew7FfqlkW1JptLNCnZLqHe5R0kC6KHoyQIZ/y2JfiEKjHbhdidvRW3CO+pf8xDBfsAebx8E9RBKcyj5YDSpj3ktDg7v9sW2HHs0NYfkpyMEEOwLhzO5sw5xSqv6jmAy8tKYI5qKspJ76EEKKuLHIB9Jev4rXsnMKH9fW+rBK1950FweWFj2nE6i32PLigtIYkA6i2dUses4mP0K1rQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by VI1PR04MB7022.eurprd04.prod.outlook.com (2603:10a6:800:126::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 14:53:51 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 14:53:50 +0000
Message-ID: <4fc40b33-8eaa-2389-2edd-e01d4e5b8113@theobroma-systems.com>
Date: Tue, 3 Jan 2023 15:53:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] lsusb
Content-Language: en-US
To: Mistyron <ron.eggler@mistywest.com>, Markus Volk <f_l_k@t-online.de>
CC: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
 <CAMKF1sqUTzOykipWXr7OGyu5TeEueif57_1z8EBUX-MDEetiSA@mail.gmail.com>
 <ebad1d85-062c-9e89-12ef-4cab2b58b1ec@mistywest.com>
 <X8MENR.4MKC85CKXZNY@t-online.de>
 <2b0d1f55-d4a1-cd28-908f-7d19e700bbfa@mistywest.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <2b0d1f55-d4a1-cd28-908f-7d19e700bbfa@mistywest.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR0801CA0075.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::19) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|VI1PR04MB7022:EE_
X-MS-Office365-Filtering-Correlation-Id: 1954411b-16d0-48ff-1d05-08daed9a537d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Hxt8sX8VLgfKotDPg+ZKe2+chFidGNklsGM2E6kvrkfSI7OVFD192M7HmhCBeK2L+A9ssRHwUwf7HM8KpU7uJtLdvgcDDvdxOUwYUiiPFcJ+FlGlNiOxABpTTqcrlqBJAVp4VMtGLgI5+6hwdAEIXGrX1O1sFpGADQwTVTpa9w7iSidlehEoOBnkhbDZIKAMKNM1nfyDhBLtOj+JsisekQJCl0XWfeObeixsdAPJunaP7SIQK1pQgPMSoA3BkWcQNHNj2VIvHkLz/8h4nKLVU9htOLbWS2ugxWEIb7spQz32qpohnzVFTq2rZsvYJ4mn20uzFv1FJ8fZrudnk9yBY67HT+97Lv2E/ObUu8mr1INsCZeGV5OklRdNQ69647Y39E1mHpk03z7RO2K1Zyi/4AAhkWacqk8Msi7ABilBUTrwr/IJpNCZo+/kE4SIUeuUhDryuAVJMi91IMJ/335VzhTeDjPio1z/BMiaonQrUOZ2KAvmN1r/8P0RIWJ5OhkhMNAAOG8MKZ94ICbYRvtmDURshzq7tEK0wFuUP9aIaDlgYLfkJ1aBD5sGHXjcC+FAV6FJH9c2m1zFkOiSnkzj36vT0fSKc5zRhh4fKgKI5pM+e7W6d6xRnXIdmAXanN/xM8EiRgMNNedxDSxvNgnpHe/ae1sJZNKcwNznOQsSD1MS2v6nI3ZA8G2lQome1YiSuDzmZheL0u3B07Wi+ZA59gET/ZJpJWMa4o266drLzi+UroLybAOyVSUwL7gOhcCQ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(366004)(39840400004)(136003)(376002)(396003)(346002)(451199015)(8936002)(41300700001)(8676002)(4326008)(5660300002)(66946007)(66556008)(110136005)(4001150100001)(2906002)(316002)(66476007)(6506007)(478600001)(6486002)(6512007)(186003)(53546011)(44832011)(31686004)(6666004)(31696002)(86362001)(2616005)(83380400001)(38100700002)(36756003)(22166006)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?xG7zPYrmXvhLrTI/hFqzqV+kRV4aanhl16TPusIW956mj7Ow73DA8BoqBXLi?=
 =?us-ascii?Q?ejbtuWNvq9Ft8zPBGQcGFfli0dSfFSOGpXhWD6mhwNx8rWYu7AySyKnwBLaG?=
 =?us-ascii?Q?ASYXC0ZFpHizzYyIGHBSwTc2DsTdqlpQ1AqXE4qSm1ulugX9dxVvBnRkXAu8?=
 =?us-ascii?Q?IKb59XDw4qWXE2aRWBaexAzKGVpqPfRJO3bjH3f9LASvdkhghPpYGss4esIs?=
 =?us-ascii?Q?u2BzzS0VoG5ihsduwoiANiOGM3qS/r9q1PHYrcdZBkaK9FQOwLbQiNBfMj85?=
 =?us-ascii?Q?37Mvi27TRCAEggFr5nHqMMnXYR5eMbeiDyilmh4+54C3K74Q39V+pEak69xg?=
 =?us-ascii?Q?qvq0rQkgLRA1k9f1trby+vMfpeDCPLN3WpTSfjKG4RmIVZZDapfSDNLI3/Hq?=
 =?us-ascii?Q?s9D4IW/zwtUkMDcNPRikezsyNjfihC1O+jiNm/n2JDR9ETvg+LbmszQDf5ah?=
 =?us-ascii?Q?mHbmhx4u2UoN21MVGltt9hqQiSRftuuOhKTdqTziIH2Fyme3gdk3Vhz8arCK?=
 =?us-ascii?Q?sFdDxvZMDh+mw+YR7tN7beRs3szBgCiuh4rMvzv9FeJcfmVaaN1TE1KSoTBZ?=
 =?us-ascii?Q?FlA7yADTcsLawkS/jdvnb2bPT7WmLx0HDDKvcbUth9ecIPuOUWUfQFFHZYDT?=
 =?us-ascii?Q?DTlTBluhF1IPxqW5BLvay7cbIy/fMgoyihQk/ET2h7aORr4elUtTobea7WzJ?=
 =?us-ascii?Q?R543CZv8GXGh7bBlhycnj4AyjSLUDVd22mR3/qKFJyUMAn785Hea5AOBUDUG?=
 =?us-ascii?Q?8O4Q70fX2UC/FAqTuIoHgxiCeqI/1Y7AQkun0aVL15yrh9B0Ob+GntJDcSiP?=
 =?us-ascii?Q?NacoMav7+4h9CiCBFKPTeKHY1XMFMSib4zR/vNxjh1HClBGe2FSnZMhigs/B?=
 =?us-ascii?Q?TeEc6fMqx1I+TRybKgGXQvA6rWWz4qof9YZNx1ZH7a5gK/2ECXOkKVQy8Loh?=
 =?us-ascii?Q?urZTcW3rbp+3yKWVH38lxiodWMHedqIK2dG2us5qKUaU2EGkTfAk3c85rl4R?=
 =?us-ascii?Q?cUiORIVbaxVISRt+F6YudaM9hJGF2If6vld0dftVWAFY5LB4+cTZUmpSHgDd?=
 =?us-ascii?Q?Y9wXYHyq/9EcdO8QZtgOI+eeFjj28M1RVfEZM79lBt25Rk8JHgz843SnAM3f?=
 =?us-ascii?Q?Qh1hsgBLJGV2Rfxs/xCRrpF1unAmbx8auM0XePag7AgezI/xKnNMroTMtzZp?=
 =?us-ascii?Q?PqpadZ6CeBGAxSPYJ80brW1ySmfBsVCa97rtULZj51IGnngkS9prBqgHCDsp?=
 =?us-ascii?Q?I3WIFc59vNERUDZYw3/oqB/y5QH0C9AaqhJR6LuZciag10VE6q/EaNTmQnd4?=
 =?us-ascii?Q?2Yy5zS/5zuTgjQikJrKY2rcv8Lsssc30r+peW7rsLld4gYHOe+AEwmTE1ip7?=
 =?us-ascii?Q?qnt0TEQMQa9kl75YmBtNY0rcYHznBNhwOTTNpnnvHLC5kRDQ7PwrnRK/GpJN?=
 =?us-ascii?Q?MJIU/XrcqnE3mHkU86zonwKBowGj7GGC7MLP4fHBk4Sa6ZwTLcfxpH/OaQwu?=
 =?us-ascii?Q?LU+xWDxcGN/yqMCDk6GSBMNTM3sdngvu8IzPT4ueV/UptOlkx3ycAf+GdLSL?=
 =?us-ascii?Q?l0cyWbD3E3ZNqt+gZb8xSn/ei2pzhiyiAx7Hedh2TCRqtM82u6WfdGn25gE9?=
 =?us-ascii?Q?CAa6V3patT46YO3D2pr0HxHoML+MF22Lq1c4c7uSYjQS0Bsd3CyHbc4tvYJD?=
 =?us-ascii?Q?IwBEcA=3D=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1954411b-16d0-48ff-1d05-08daed9a537d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 14:53:50.9362
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EfSm5Wzxss9w+17y8fnJCsWKNwKrFkdf8zk/fMZqJD6O0no8IR1Xgb0ubkzC7xg6Wazn8tBOIxyveUXQpjlcrKvOrhjynxyaqcDvwuwI87FnXW+eFspzFrMzbn/EH80x
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7022
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 14:54:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58901

Hi Ron,

On 12/24/22 20:17, Mistyron wrote:
> On 2022-12-24 08:38, Markus Volk wrote:
>> Am Sa, 24. Dez 2022 um 08:34:49 -0800 schrieb Mistyron=20
>> <ron.eggler@mistywest.com>:
>>> $ grep usb path/to/package.manifest =C2=A0 libusb-1.0-0 =C2=A0 usbutils=
=20
>>> usbutils-python
>>
>> lsusb is part of usbutils, so it is not explicitly listed, but should=20
>> be included in your image
> Oh, I think the cleanall didn't wipe the cache sufficiently, after I=20
> deleted contents in sstate-cache/ I get the following:
> $ tar -tvf path/to/myimage-20221224185313.rootfs.tar.gz=C2=A0 | grep lsus=
b
> lrwxrwxrwx 0/0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0 2018-03-09 04:34 ./usr/bin/lsusb ->=20
> /usr/bin/lsusb.usbutils
> -rwxr-xr-x 0/0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 14266 2018-03-09 04:34 ./usr/bin/lsusb.py
> -rwxr-xr-x 0/0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2479=
76 2018-03-09 04:34 ./usr/bin/lsusb.usbutils
> -rw-r--r-- 0/0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 43 2018-03-09 04:34=20
> ./usr/lib/opkg/alternatives/lsusb
>=20
> I would expect "$ lsusb" to work now when I copy this to my board=20
> (cannot est right now)
>=20
> the package.manifest however still only lists:
>=20
> libusb-1.0-0
> usbutils
> usbutils-python
>=20

The package.manifest only contains packages so it's normal that lsusb=20
does not appear there since there's no package *named* lsusb.

E.g. there's no lsusb package in Debian, but you can install it on your=20
system via the usbutils package.

However, one can check which package provides the libusb binary by running
oe-pkgdata-util find-path '*/libusb'
it should return usbutils I believe.

Cheers,
Quentin

