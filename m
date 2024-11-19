Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06940D62041
	for <webhook@archiver.kernel.org>; Tue, 19 Nov 2024 09:08:19 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.85])
 by mx.groups.io with SMTP id smtpd.web10.16646.1732007296950103048
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Nov 2024 01:08:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=Y2zdPRr/;
 spf=pass (domain: cherry.de, ip: 40.107.20.85, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cs+VChCvR8cZIZkAg1yTY8B5yU10qxkUVEWvjTKq6vjFOQv4I7CgQEhOhs+a8Blh+cRUgfaERqt+eX1jnsB2j4KrtDog8D/GUP6m88Qf495CqCG4WEUTQ0UStUq1idWCB6AV2po3+EC2ckD0o5x5vGrDyUsKkMWD9lffJ+bKiY735IwTSCpfCQw6VNJHgBvBF5rbORmcPOVI/789pzHNsFGHK7nkshatg8BKOOAIF2/Y6fXk6cfHB6BNrgC20r6WPiPBY5pAUxSE6EtMl74h4o4cxGFpwgT+KNBhDRWf9097y6VMg2tH5zS+n7s1D05yz/CXW0Ze31udcKQ56+BzvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q0UeOWEswhnorLV3/a7TDwpJKV2oTA5qPlRPil+SnPI=;
 b=tpCntTvL2clSHdJs+XYZcsWYv9mG2mRGO92+TZHtRJTaFqr83RU1CUfX4TOzR7RjUMcF5gWdIlZV4X7AIq6Z6IYubZvwdMwajfVxipSyVTLE9AIanImic63WtO0BOFsobrJWGcWduK14dauBw9j3bQMaX/jysz3JILWxdDPBhHNINuaHoA2qOVMbzU/9UJ4/RE2L3RMh3lfYItms6F5Ry/LCr1ODpc2TwHWpx9LQzzgjl6QpCxQnlJisqfdCu3J7kooU5Jb04kw26wm6M0cKq7A2OTxXSLdBF7JhYzhCz+kALicv4Eii5+BI52q6SqA/oPzP9JjJDDb+V0RqVINZQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q0UeOWEswhnorLV3/a7TDwpJKV2oTA5qPlRPil+SnPI=;
 b=Y2zdPRr/mI2dlSP1rKQ9ItW40F/ThXw27X5i+ftykHIv1DB7y42h3aWP/9y7tYGBOxbJukFrNuwr9Cu8pMKxJHpfPzlGqYqiWa1xY/tynMRdPRDfjvVhbXpZRdvxADfbcO4URVn7m4yv31poOF+pY/l68vEvkLfRNUjMqbh3fRg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7627.eurprd04.prod.outlook.com (2603:10a6:10:208::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Tue, 19 Nov
 2024 09:08:13 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 09:08:12 +0000
Message-ID: <2964238f-6eee-44ff-a259-975241806fa2@cherry.de>
Date: Tue, 19 Nov 2024 10:08:11 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Sanity check on a flashing process design
To: yocto@lists.yoctoproject.org, hchanuy@gmail.com,
 Yoann Congal <yoann.congal@smile.fr>
References: <CAMSfU+6Jp4=WmLE1UZVUsEk6FaApuOAqEsqkjZQ9TCj=_CNsLQ@mail.gmail.com>
 <6663.1731964778664692649@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <6663.1731964778664692649@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR4P281CA0109.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::13) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7627:EE_
X-MS-Office365-Filtering-Correlation-Id: c04b60cc-5a8a-46fd-5edb-08dd0879b1e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?B8b+oIZ0zaPSoRrZkmPgYyJzFWrKJBWIVikyV0cT+OZsbWLn5NDKM0EXqi+a?=
 =?us-ascii?Q?Ga4J6pFJr56LaA5X5gZMInHiFtaXGkPciWV6MMewW/l49ZR1OluiArRuS5JN?=
 =?us-ascii?Q?enXOFXl5lMAWM1EIKQCGzWf6nA1/ty7TUXOZ7mrA6JyoA8Dus3qs2zWnhoFO?=
 =?us-ascii?Q?qHCmb/cW2SzmdWsGfIqrvR9th9lJ+jRBLFSC2JIoI+H7GxqNaufjWdbJSqMd?=
 =?us-ascii?Q?Lk0Avo3Oou0RYrKqpXbMwjwgVJrZSTUtjWj5O4bVhyHF8k3vDvvGpRXHaacf?=
 =?us-ascii?Q?Qcnd+VKeRGF284IeP4p2bUUKyDV28qdS8yV4/CnTUyQQMvaIi4pID1C4eGRi?=
 =?us-ascii?Q?POucoerVMDw8q3bicEaTVC+542oKEPbuvdRUV/eiJpKjnEQmo1pg/ixue6Yj?=
 =?us-ascii?Q?ZEVAgu/QgS6Yh2KgGXE9n7s7RQBBwnrkTvFoyQnvUMe4aewHJWCw1XHdRo+9?=
 =?us-ascii?Q?kQPBkjc3lb3S5mS0xkB14zhSRa0gMHorYX06rHtx+yosob4YsmVu63gFIm6I?=
 =?us-ascii?Q?W/mFTwbsVDMIpYu5OTWFoQsJKoDSCA2U47hcK49NZalZA/SH6f/kEQGaBnow?=
 =?us-ascii?Q?Xg/WAWEMiLi6ZWdRqtxvdU4SCKYtMRnTWkkn+EcTuClCfG27mSm/yhncMtVD?=
 =?us-ascii?Q?BaW+oZG66zc3OTKCQljRK8dA7RDyqpsr9B5x7GXVOCWVMsJc8H2CzyFJ4zgW?=
 =?us-ascii?Q?zL9knsSYRa3wucW1o7QwDM44eAwV+N0Q9cTic1wHSZsypUu6Da4sz3GlGq6M?=
 =?us-ascii?Q?NKQ+WLQ1ac80FAzUkuk1Ac1820YaK8VkU+Bp1UJRSXt1sGiE6cS0Tr7FlyBF?=
 =?us-ascii?Q?Sq1DcaPyn78U9fTo5NDZ873ig8kayaJ3TnUSGLLOQOQWsxFjXRH6NU5mBAwg?=
 =?us-ascii?Q?hRmiOYd6UoQg5jGuWNZrzgh7bu04I13sEDCKhxJnaAcub090gH/C7ySf9ajE?=
 =?us-ascii?Q?w3cesZ9FpTe6DD9s0GGqQvqi/tnrP/M113tQ3J1hWdiilUfahNJeim+6xGHu?=
 =?us-ascii?Q?SBY8jkF6n0C2M999JkAyMN2HifwJdJgv5m2e9qAdfY93UvM5SnQutmgsOvVa?=
 =?us-ascii?Q?/TAS9VDWSECDciWFgPk0kP+NQEW3wS1vZrJoGU/DFaJ3F+heJVZFIULVeM4g?=
 =?us-ascii?Q?Scl41lN+si+se5Tffl1G0AI/2lJTS8/KSP+zHGyfbaVhcmsZlxTJFh5NxoAd?=
 =?us-ascii?Q?yJOzpLdXohwqpJrFg7Jx5Rn7yYIzd0tAHIKFTUonWThLCc4S92E2e+0uORfo?=
 =?us-ascii?Q?UiA1zsElsye0uVdJhoabBtxxkgcZJlgGqYooz8c7xETgZ//na8TNJSS+JKSo?=
 =?us-ascii?Q?gH3k3Dp1UaX3tnkFq15xfOOf?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?sPlbwnrYnyzQw70fJs/cgCamT+EXm4NdL3Th/7edEJea3jT9WGvKG7IgxI3R?=
 =?us-ascii?Q?4l9OvTTQgdX9UZGpmEHVy3hYZWQsumECJVkGAbCUfG6elCjqqeLNKudbQmhH?=
 =?us-ascii?Q?wOfLi1g0eHemdfZC3JyWIaNUt+21f7PttZU5f3N2z2MEsEbs1ul6nXHGJaFY?=
 =?us-ascii?Q?zQdWR4tNC3sDBqr5tdd4qznNkn5UvDjcBNIoHDz5JOF+9l9P22NIBfjPMly5?=
 =?us-ascii?Q?QD3aYy57v/gc15quoP6Segl1o8hNU6mR77vp5ZY6SJnKZ9w/mlaTBHtAVxF7?=
 =?us-ascii?Q?bDAeCntHKtwPqSq5nXQmTRdlyuPBv28FzYS+RXya/rbOxW8gexIHsB6eke0T?=
 =?us-ascii?Q?8c/9RMNb8YqhkfpJ5ZdS38wQ/ZaPVxYXc3K3OLIoenptYdVT5jrkzGCGtwiT?=
 =?us-ascii?Q?fvpRB9W4hL6IurzRz8SFEu4yCwHykzmus1WWeU6y/c8U433D/Ku0OFjrBu1H?=
 =?us-ascii?Q?yDJINEWth8nwk6UUk/sjQYZCnM+Pvr/n3yy+kq3wgpooHtnjeReTv/+EXvok?=
 =?us-ascii?Q?BMTgCwuNWB52FhXRI8i/gEE+cRSogYvkOsaj6NbhzLKrrPV+MsqwoW447ddc?=
 =?us-ascii?Q?7IFDjk4Nb0VoayXo1FeZ4TegC5zM8lKYkuuXzN0dlDnE31Mow+hgjFGMeah/?=
 =?us-ascii?Q?NGXKpCro92N2/lCFSK8mxV29JxsEPSx5D0gW8MhY0qKNHbb3OCN5ukPVmqwQ?=
 =?us-ascii?Q?4S4Ao7LLUejZ+7ts/N97zqVX+6ld3CCjkj4JqexZLUNR+hua/bHFX4VOvJ0N?=
 =?us-ascii?Q?Z22xgc0p4zbR8bfcVngU0LTrRyUs6TH98B2AiT+qfNuksZVaDfWmEsSISAm8?=
 =?us-ascii?Q?bwVKNuJ23Vkvy5TEaAeB4PpREdD14wl3iezZibFeC2iE65/zUhqunmIwQ9Ju?=
 =?us-ascii?Q?dN4tIkggEgpftXfAU5VBwY9ctZ4v9i9hd5Cv6F+R82Km7gu4ByNzdBEA29uf?=
 =?us-ascii?Q?dmi3ri2pneKV+WCafTBm6G9elUbSrII1kyeSr2oPbHkr/zkQKbXFK/3gVpv1?=
 =?us-ascii?Q?v1veTgOBhuYi+AJOb1hdQb1vlv/s9IO0evbo58uCqjc/1yzXoSqG+3qZ4bQo?=
 =?us-ascii?Q?AqdAvHZ3ySJfJMCMDzddvmEKCJ1Et0wa3C4XMNNYE4OAA+N/URd5y0HVGE8d?=
 =?us-ascii?Q?s7qyhPkhd3Fiv1GSMGoQ6FbM1+xwnKPBqAbOpGqeCgsdQf6CUV5GBP0HEcSX?=
 =?us-ascii?Q?CzNsyROi3Fs9qElFT7DoWCfi/Fzi3dL0REQwhWqrFUwITvHx+vNz30J2xtvD?=
 =?us-ascii?Q?2B7DY6yt4XZ20xfyktRrRSHdcsvxOjQgnoyeNucmFWXKB3uVV7ZG14GwYgYi?=
 =?us-ascii?Q?HjZsz2ALq6ZMvrkTntwQLYVanV1SkTvjv/2ihbG74jWX7mrlznoiPbq3/bW6?=
 =?us-ascii?Q?XGgorw12nUx48xWNoP95ylGdp+VomJWNBJx2TXnSdUnP8ic/BvOxk5PAwxRh?=
 =?us-ascii?Q?p3sWm6TSrgPsnnb0jMVZWvplCFnkCwK2Fk7seH53jadfMwHnsLUahwkbt2aA?=
 =?us-ascii?Q?+/ebrcQUee6Amu5tvotRKjJDvAYcfrN9tjwgNfzdWuXF7L/2RYw1Phm5i1j3?=
 =?us-ascii?Q?rt7JSwbfcj32e5zA4l40RT/pt78ZcVdZPc/5vGzI?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c04b60cc-5a8a-46fd-5edb-08dd0879b1e9
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 09:08:12.8608
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8drx9slcQX4PTHh3OX0y/9UYaSyPZQMG4EUIEPVKx206Z9/GSoT30154v4tQ9cRCwoft99qJxgAxngnJ6cfqzrMdTPP1HwKWJvjUgZC3z2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7627
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 09:08:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64298

Hi,

On 11/18/24 10:19 PM, Uy Ha via lists.yoctoproject.org wrote:
>>
>> Or you can boot your system not using eMMC (external USB, network
>> TFTP/NFS, ...) and then use bmaptool on your target to flash the eMMC.
>>
>=20
> I am trying this approach now. I created a bootable USB (well, theoretica=
lly bootable, I haven't actually managed to boot from it) using `bmaptool`.=
 However, I am not sure how to boot from it from the U-Boot console. I trie=
d loading the `fitImage` in the /boot and run `bootm` to boot (I am just tr=
ying random things at this point, I am not really sure what I am doing) but=
 the kernel panics.
>=20
> The steps I have done:
> * Run: `usb start`
> * Load the `fitImage` into memory: `load usb 0:1 $loadaddr /boot/fitImage=
`
> * Boot: `bootm`
> Then the kernel panics with the following error message
>=20
>>
>> /dev/root: Can't open blockdev
>> VFS: Cannot open root device "(null)" or unknown-block(0,0): error -6
>> Please append a correct "root=3D" boot option; here are the available
>> partitions:
>> 0100 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram0
>> (driver?)
>> 0101 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram1
>> (driver?)
>> 0102 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram2
>> (driver?)
>> 0103 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram3
>> (driver?)
>> 0104 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram4
>> (driver?)
>> 0105 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram5
>> (driver?)
>> 0106 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram6
>> (driver?)
>> 0107 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram7
>> (driver?)
>> 0108 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram8
>> (driver?)
>> 0109 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram9
>> (driver?)
>> 010a =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram10
>> (driver?)
>> 010b =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram11
>> (driver?)
>> 010c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram12
>> (driver?)
>> 010d =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram13
>> (driver?)
>> 010e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram14
>> (driver?)
>> 010f =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram15
>> (driver?)
>> b300 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7634944 mmcblk2
>> driver: mmcblk
>> b301 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0134010 mmcblk2p1 076c4a2a-01
>> b302 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7496704 mmcblk2p2 076c4a2a-02
>> b308 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096 mmcblk2boot0
>> (driver?)
>> b310 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096 mmcblk2boot1
>> (driver?)
>> Kernel panic - not syncing: VFS: Unable to mount root fs on
>> unknown-block(0,0)
>>
>=20
> What am I missing here?
>=20

You are missing a rootfs. Usually passed via bootargs with root=3D or as=20
an initramfs if part of the fitimage configuration that is used by default.

Cheers,
Quentin

