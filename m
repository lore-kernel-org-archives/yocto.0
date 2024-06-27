Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 180C3C2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 12:26:23 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.135])
 by mx.groups.io with SMTP id smtpd.web10.6657.1719491178728052781
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 05:26:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=mRutJyqu;
 spf=pass (domain: cherry.de, ip: 40.107.249.135, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJOTXNm3SuSC47VEjnEWgbibLyrDzHLFANvNIaJF9gp8/RPpb4/YZK8meR8PIt6aOu1qP4UQp2VWHv0JFhj6CQrafjswurm7AzFb0NGmSLxzV1IRHivqpMdSlVFJTmKMvPFOrmu6gqpjsSbPw/RN7EUsiO9MS7SAZN13cvXsFiYZxXXc4OP3A2OuouvU2EyKdMaoLnfFfgNgqL264fYvNIuSFjJT7lvUYOiopLMsQFTJhKcABmSfv/x9P4c40hAEIqPxnmIyJEViiJ8KWcZZU1qusFNb2c5GhFpO4ZGO2u9uwP59noAkH2RXJSWl0gALAvXBcKckxw8S6BHRGdVxNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQWp1sccM44Q3qUAZ7cZn+Lrv+O3FtqhRUG7gfxGgQg=;
 b=hO6IQWS2GtIhWo3mzkQynrBg4Eq9k5qBNsK8AziKWWfgmF1zc4Q5ShttKOYDbqaOk4wcLYt78u+S/h+fERuh/kYmu1vp/hvvgTjx82uydly0y/ux06vLHxqMCB3D3JrdcJ27BQlz5pCJdrvfT8ZJa9WtJFuuFdftQJ4KGFAfeqLC0BX0VKWMqrZNUV6ZfyqAUV3sEiyguLJjOQ4NN00APOvMh7Q9pAGyd95vK0pd+9WudIiTxI+NwhYaHxVrjYRHOzMmAPL1+PSDeJmYd7mizgGGmoVSkH0BQV71OJsEIjqaBMRyLpjTDu9envmI/cqG+RrSDMNTCSCg28+1bBcTVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fQWp1sccM44Q3qUAZ7cZn+Lrv+O3FtqhRUG7gfxGgQg=;
 b=mRutJyqu3V+4KWzGVQkpXpXG/k1LGH0CT9FiQRyK1i8Wmt6VR/Oanautu4O+CbQ2mEROPbEljs6MnXNBOtZkDoUTUDARoIZehgnREelj1LNvBbnE7kT/EP1LUBJsEZtflU9qXOAqnrJepWY8Z5jXahS8KVHAZgvbkWw3j/W2efQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com (2603:10a6:102:c4::9)
 by PAXPR04MB9154.eurprd04.prod.outlook.com (2603:10a6:102:22d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Thu, 27 Jun
 2024 12:26:15 +0000
Received: from PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af]) by PA4PR04MB7982.eurprd04.prod.outlook.com
 ([fe80::3c4:afd5:49ac:77af%4]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 12:26:15 +0000
Message-ID: <a2e19be4-4ad8-4205-a2e1-a338a56a1363@cherry.de>
Date: Thu, 27 Jun 2024 14:26:13 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] meta-rockchip: rk3568 GPU support
To: Belisko Marek <marek.belisko@gmail.com>
CC: yocto@lists.yoctoproject.org
References: <CAAfyv355-ZMkGobQnzpOBHgpaU+=heHVVv0M9mLh+P78XnwEpw@mail.gmail.com>
 <d31565dd-301e-4f48-ad0e-d24561a7e6ae@cherry.de>
 <CAAfyv34jfFccpV9fMU9LkQz2XVDaAW6iNBaFjVBfO6TC76JZ1Q@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAAfyv34jfFccpV9fMU9LkQz2XVDaAW6iNBaFjVBfO6TC76JZ1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: WA2P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::22) To PA4PR04MB7982.eurprd04.prod.outlook.com
 (2603:10a6:102:c4::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7982:EE_|PAXPR04MB9154:EE_
X-MS-Office365-Filtering-Correlation-Id: 47252996-842f-4f11-008f-08dc96a4566a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?RxELoY3LvyBVyh6WmAiClMoj/fURn6Jg1eyEZKAyC21GxNlyQuMseztqHHdQ?=
 =?us-ascii?Q?YM9wzB/jwZTBNTbITw2mQKBaaY9mODCfchW/PBrpo1y41VfA7C+W8iMbQi1b?=
 =?us-ascii?Q?U+jIYUuQMccorACjzlECcB3Fu9GKrMlh44kKGq38Xi4dr/kQ2/rN4qy/vtut?=
 =?us-ascii?Q?PikkG76N3Jzp9XXOKO71okGc/MWzYCnikGkBvaUnnKKfIkxqloDjmPWFecBg?=
 =?us-ascii?Q?ZsddwLXF4RRwPaVRZLb5lmB2BKiIZhZf0CV2IIErHAa4lD0B+UZbG3L1GX5Z?=
 =?us-ascii?Q?2tLtkWu8hcSJ8tVzbaiGEIhCBvcHvJW/YYEVYmi/HWnkp34t2WjqcMl/ovZr?=
 =?us-ascii?Q?hX2Qvm8rRFkibkpJBsbtHbvkGi79KDhaHG6ZsXoGmdkwqZkJ/WSWhh5d7b4l?=
 =?us-ascii?Q?1o+uBDT1IL6BMI8WH/nQFNZyeEoG2HrbE7q2siAmYAjqagADboU5RRfCLtu9?=
 =?us-ascii?Q?p0vJLtHbGnhN05w5/m0Dd226NzfaVxtEJ2xArW0LRGaeHIudHDx1lbSlORHv?=
 =?us-ascii?Q?gvLi36hThz+1fdyP+F9xaPa35dEVse33Uh3hklEgbJvz50L+kaZcz2CfQwjJ?=
 =?us-ascii?Q?vGIQe+XbvSFWUyOM//vLJFAKM2vuM6Kch0e8U+gZF3GfKpJmkkUBkHAchs7e?=
 =?us-ascii?Q?ukQDli/EFQ5L7iiOTVGi7sf2OXydHDy6OlofpY185XAC6libOTScBmJBel3Z?=
 =?us-ascii?Q?8SAJkkJVIn2vVPednxuZKCRaNHTFfwIBWPb0SGFc032Ksh/CAgi3pWMDgzNs?=
 =?us-ascii?Q?t9eZMg2+GQRTlzZ8xJB/qyg61fD0gmpbBIF0UPQeLASU9lw6ruiRU4PLdl5E?=
 =?us-ascii?Q?biqxAycLZ5xznUvQzuir/WY/pLpbTIN7kn7IBjCUw2ue0Qj9gYy2816bj/ZR?=
 =?us-ascii?Q?Y7OA7+e5vGdLZ95MF6dSIpgZC70XmCwesfq9KpbBideOz86jUiWXTQ7ty6pS?=
 =?us-ascii?Q?qi4iRW7mokTAZdL1jKOwwz72vQ2geHABrR3DgjwKize9oWskHpMJPCz8bysa?=
 =?us-ascii?Q?oEfJ6Q14P6qxKAp5x7P0wzHFMPxLtLCc8OHUNBH8ambAjDNnoLdfy1rrXsZH?=
 =?us-ascii?Q?avbxBxzGYWVSzKmUmkVwAvO1Tw5iQYMQ0pLy2ngevw9ImagsKhjpesgMbkL+?=
 =?us-ascii?Q?ejh1eIxkKD1g/HeZwPHKSyW3MeEhF1jU80dNvGffhJyKQopPdjbwOiQK67Dr?=
 =?us-ascii?Q?lWhHUzSuP2TAjKtigwMa0LXMtZEifIk/uhGZIWc72I3jQYSbX1O1zM3yJujl?=
 =?us-ascii?Q?BoU/DyFkKFy75sejVK/oC+CYEML2WOJluYm+KUJqJjUF2sxj5WsEk9X7wg80?=
 =?us-ascii?Q?kjM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7982.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?PHkqSyTK6SA1gHDWN0dtE1Uw3JCfWRw277q2rTcj02DteyalCrGQ/j3lFF7M?=
 =?us-ascii?Q?HRzSohqeHsUrbJcKzC8OBn9EMFyY3ElpmYZdqOs+eLRmHjgZA9lw3BA/Zq2l?=
 =?us-ascii?Q?LGaFxWDAvioL0QDtJvY1mGJgWckfX8JWu8CXK23aZ1onQM0GWdzQ++8pgygq?=
 =?us-ascii?Q?DsF4R6++cl1ESrPuA1Kt8DkzB8dbcfyDsOTVIwUM7ogvHEOLgw+VzmMfD0zg?=
 =?us-ascii?Q?i6GtQr/wu21HZ343pAVDgMVEMdvsidvniWKkc2lkGk7hew2Hm/GsYinp5+WI?=
 =?us-ascii?Q?69Gv0jV57HolEyg5pZ8QFzzclLW6De/SYy5xkldJrEGAb+hxo/nDMo082uIb?=
 =?us-ascii?Q?5YC66ZCkxWZXNAzMZMpMKJQkN3maHllmHLFF5w5o4YGrM8tdxVgvteJJNDPo?=
 =?us-ascii?Q?ExsP9t4gJc23c4lXkS2Nje58cALHHBecC5qEK0rydHcOBMLC0v7m7yYm5NO9?=
 =?us-ascii?Q?j20K5sPcDEN6jNvk19mCQ5RZz6fVOOWHIiU5qXfLUNMr2UJvmaEdaNIkFJnk?=
 =?us-ascii?Q?0/JJ1b9CZbeLRBUakV00HgYzKo9UMMjkPnhZUViuSPW7O/pgqajh6d74E5+p?=
 =?us-ascii?Q?+b7y4lgKLNzgao+adxDEnBB/p1kTT4HMd9PTIF5Pok4IN12G3/EE+6GzfaHX?=
 =?us-ascii?Q?+yTlPiZ/FU60ZTrPZbst/fSXqfX6by7G1ZLR6NsAOSLL91xq5rG5jMydG5tC?=
 =?us-ascii?Q?uAVkmMScVxpk+Vp5j+/uC1BmMjKsZDNz3ZSwzkAiI8DvRuPBRNz4yNtpIJQn?=
 =?us-ascii?Q?KombapI701kfKeIMZVWrtcKysajOeD0b4zqHlO0QikkLxDCF9vElDTSJzCpn?=
 =?us-ascii?Q?vOBQu7907n6BaRav3ey99R9Wx6o/tW8fRVkFBQNlS2bLbBIvO0eNR96xo2U2?=
 =?us-ascii?Q?lDAg4iJO3Yfs3rIHlev95reQUhpcUueHjs+pDJkPByxTpUGx38FBlqEivQ+g?=
 =?us-ascii?Q?JZFzBmoTAa6DGvV0mZFOB+exXxtXM5AdiaJOSDxnPiUKe24naKtQuCTi5HP8?=
 =?us-ascii?Q?QfigD9L/4iSgdoZ7z1K/ajf+QiIw25DNSOZyBPaUDHM6g5NpAXo6hnuvXdb/?=
 =?us-ascii?Q?b6VeV1gm8ptp1x0O4Sj9LlYEB+ak774LOfy6mHXz41VXLhunp8pr95LQNYUI?=
 =?us-ascii?Q?E56BnR5rGkzaKx9jnXVYo+bCTsXNRogClq3/b8C5dmhazbTWvdWllQ1eneuh?=
 =?us-ascii?Q?etOOF87qp35HIeswYLRiH3dJ8sFdYlvYQWHtrq/VTrkFqBhsD5xkl3i8BcZy?=
 =?us-ascii?Q?lhgdaogrnAcIlPEJWG/RtpnIsWfUZyrjQgEqi505LuDzqlUMSYBcQ8ycTK+t?=
 =?us-ascii?Q?Gzd33DO/JeS6v2mKhBhsZzctjLtP4g1tRb2jeaztoGttHe9lY4C2IcPbltc5?=
 =?us-ascii?Q?5qtPrHdT/80W5CEkxeaS6mWAtFmuQeDYnIZ/BQuk7d6pA1QdNGJ6A4ibDez+?=
 =?us-ascii?Q?jsNiOZSa7WhtVEIHt1Hyc26yuaJN67ZqQfpGrW3JXQqOUs0S7ptayodaMV2X?=
 =?us-ascii?Q?hPHZgFO3tlYqk1FDxVccRa+cBsoWsM71Tv/vG0XCcATAfFJZWmh8W1zmlksD?=
 =?us-ascii?Q?FTqOkDf/OR2FRn0JZIIOJZadSa1GpNySqkWvDw/afNw1j3gfOSmEYBSYl7h6?=
 =?us-ascii?Q?Zg=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 47252996-842f-4f11-008f-08dc96a4566a
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7982.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 12:26:14.9472
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3UTQDIqcI/Z5Xa1t5W8PnI221Q6jAmriGS6athhqdcZpsRFVrt0CtRJL24WWH3dRwtqS6XFgu3bLsZTvGUlE0eNQPJxmlxZKWYxdldDa2zc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9154
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 12:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63399

Hi Marek,

On 6/27/24 2:07 PM, Belisko Marek wrote:
> Hi Quentin,
> On Thu, Jun 27, 2024 at 1:49=E2=80=AFPM Quentin Schulz <quentin.schulz@ch=
erry.de>
> wrote:
>=20
>> Hi Marek,
>>
>> On 6/27/24 11:49 AM, Marek Belisko via lists.yoctoproject.org wrote:
>>> You don't often get email from marek.belisko=3D
>> gmail.com@lists.yoctoproject.org. Learn why this is important<
>> https://aka.ms/LearnAboutSenderIdentification>
>>> Hi,
>>>
>>> I'm just checking how to enable GPU acceleration for e.g. gstreamer for
>> cm3-io board using rk3568 CPU. I saw that mesa have some options but not
>> for rk356x CPU's:
>>> PACKAGECONFIG:append:rk3288 =3D " kmsro panfrost"
>>> PACKAGECONFIG:append:rk3399 =3D " kmsro panfrost"
>>> PACKAGECONFIG:append:rock64 =3D " kmsro lima"
>>> PACKAGECONFIG:append:px30 =3D " kmsro panfrost"
>>>
>>>
>>> I've added a cm3-io machine and will post a patch soon (snippet below)
>>> require conf/machine/include/rk3568.inc
>>>
>>> KERNEL_DEVICETREE =3D "rockchip/rk3566-radxa-cm3-io.dtb"
>>> MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
>>>
>>> UBOOT_MACHINE =3D "radxa-cm3-io-rk3566_defconfig"
>>>
>>> Any ideas please?
>>>
>>
>> We have it enabled on the master branch already, c.f.
>>
>> https://git.yoctoproject.org/meta-rockchip/commit/?id=3D9b20f029184798b4=
193945bbf286505e88b97da6
>>
>> You can send patches to backport it to other branches if you want?
>>
> Thanks I'll probably backport it to scharthgap. I think I mixed things up=
.
> panfrost is used for GPU acceleration. I need vpu acceleration (gstreamer

Correct, Panfrost =3D GPU.

> decode h264) so I've enabled hantro driver
> but gstreamer is still taking a lot of cpu. Maybe gstreamer support is no=
t
> yet added? According this:
> https://wiki.pine64.org/wiki/Mainline_Hardware_Decoding it should work so
> I'm puzzled.
>=20

I would suggest to ask LibreElec folks for help on that topic, I know=20
they have at least one person working on RK356x and RK3588 boards so=20
they should be able to help with this. #linux-rockchip on libera.chat=20
has a few people that could probably help with that.

FWIW, with Rockchip 5.10 kernel on RK3588, I still had a lot more CPU=20
usage for video decoding than I expected for VDPU, so maybe define=20
"taking a lot of cpu" whenever asking there, it's a bit too vague and=20
subjective :)

Cheers,
Quentin

