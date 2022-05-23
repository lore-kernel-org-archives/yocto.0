Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E8EC433F5
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 12:29:34 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.81])
 by mx.groups.io with SMTP id smtpd.web10.26535.1653308968522868166
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 05:29:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=vQYkSun6;
 spf=pass (domain: topicproducts.com, ip: 40.107.2.81,
 mailfrom: mike.looijmans@topicproducts.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=FzaTuUPm8tBr08aFuIFYrpad5Gi5LVlOfmCOTKYeuDjNMANTG5peZ5/VMj/kZpkPJjDP+QaXqpauoyrdU+knvtvbtqDDxCB/SXYFMSsZeN0Meb6M9HV7SgqA0x7j9q/HXxggf3vcPfoTQIyM3S/8BD7kQiWGOVuUm4AuR2+hbJfUqglVHpFwmL7BgbhGXIYK0r0Is7ZcvAYmfVrFjEVDDU5AF8Iay3o6yZlVZ+Q5I2whD9lPGTMyvS06fKoWWCj1U1T8gYxIw6cHaCMt3xLDkMqhtqI/6dLW4UQXICfXsmU7ov8fu7NmzVsJG/X7Abw8edzosRHJ1Od9qhWkOKq0HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0i+ZjoxnafhQUC3ixgeFOvwfF3RuvER5m9kgiCVrE3Q=;
 b=mfFKH1ApgAxYJSFYEN45OLYkC6cJpKxa/JTFOH6e6UTu94oiWliZctuBzhC/daG3M1LrLOD1WdBmufQqMCoRUwo0KM1LNOJ5qlMHSkgKvsF1fouMez49JbmxE3AZ6VUHDwCDP8ERkRo2cAJ6rikxFPkvgYjy1QBnNDGuAnj1XV+x/r0MDeQvFPJQf/m7iec5tik/hV6r03jzUJKCZVcoJAzjkTFNguaAFXrCAds5n5JTA28IWhDDK5GhuKQxYeSBphLyT+LBnHGp4B+AyZnsrRQWvBKX6bFV1zveH7nPUkHLUX2KaiGDM+ajQKl6Owqdjmkrra/NmyPQuM0E5bBvdw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topicproducts.com; dmarc=none action=none header.from=topic.nl;
 dkim=none (message not signed); arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0i+ZjoxnafhQUC3ixgeFOvwfF3RuvER5m9kgiCVrE3Q=;
 b=vQYkSun6pGVwIdniillL45SYDI39BPiAWUkP0kXwVpaBqoHrNsrpyiZiwAdkWaXj/d9n2nakp5hS5vkL39hzeaCTjlOblDJVIRdiS6DOXxYtNMTQFhOSDx3wooqjFOELCMWkKjMvHxXuvbJ/z6Rj1PI/+M5DQTrSqmtyUAm2r9PcIphevBVdmGycx2HS+FoFkS/oYZCf2EcdLswtYbvdpZszafyL33NE9DQOy8j3YNdwuXvgSva4eSNP5WySjpNuFtJn2wkJnCBisrJUUPryZz5NmxjJwdqfDBXbNQO1o7olvaNDVjm9jpJ6DSVDiiEAHuvNvZ11iOA334Fedw/LPA==
Received: from AM6PR10CA0009.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:89::22)
 by VI1PR0401MB2560.eurprd04.prod.outlook.com (2603:10a6:800:58::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Mon, 23 May
 2022 12:29:23 +0000
Received: from VE1EUR01FT054.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:209:89:cafe::3c) by AM6PR10CA0009.outlook.office365.com
 (2603:10a6:209:89::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14 via Frontend
 Transport; Mon, 23 May 2022 12:29:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 VE1EUR01FT054.mail.protection.outlook.com (10.152.2.169) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.14 via Frontend Transport; Mon, 23 May 2022 12:29:21 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (104.47.9.59) by
 westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Mon, 23 May 2022 12:29:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4uaJNjah0ZWb7Ub3wvJukOm4mNasfug1v7Jrz+jJhtd7FkDRi4Wn1JQ/BPL9Mcg6aEFfdMqE2lGumIdBSXMZlicCqzSUsGTZ/ndZnnXcS/7UkPWdjRc3LCv3kY6SX8X/+Kc9bqRm0O1ph8WB0CcsQvMiVR6aOw9Y6Y0Fa5yMP8ZBchfZkADv1ESW8DIhcNdROe2QUTP4KcrcV/vajCuut8Iu0+HpIGIY0ukRQsjEWOFiuXqD3ZO6I3pxuNZCIi3b4Hre1HstuhLFBjY5NtD8V2qG+vl5RoEs8TrwS7PBkknY+m5VvLCgMOqJvHE5MSRSvh3SMqSilKH8Pn8DhgpUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIy6/+5UcLi4bjb/Ju+Lt4yVwEENDBlOWvNTLP2aakk=;
 b=FQJvW58My7jBQ18ZoF6Awi7V748+clRT6Pk8feLZU+FywMwNIFIhqVbHuWidsGnFMECmB506YogTloUFJXT+vvK4ngFeL5y2zTHIPkD0V2fK3QmcnCPH94+eINcFzdsc6eAhzlzchk44nwbcilFw8DRWcRuxY3Yk+x/6OtxAer0//lqXXHS9spnPjTY5OI2U/9x1+ocWNd6yed+iRjXc8Ozh2Sq53rfCB2sudkJXyrizCkrzEqH6gJdr1t3/2JAAvYHjRiSv2e4dCra2a+dC3L0xD/AyiJre5kwdkMOisSsOBsqPybNTG06Uhp5EmAcYpuqfqQXpdCetdfsYJmEIXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DU2PR04MB8984.eurprd04.prod.outlook.com (2603:10a6:10:2e3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Mon, 23 May
 2022 12:29:12 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::7075:13eb:3b6e:4e14]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::7075:13eb:3b6e:4e14%6]) with mapi id 15.20.5273.022; Mon, 23 May 2022
 12:29:12 +0000
Message-ID: <ade01193-f987-1d40-e36e-1919c19e6eb3@topic.nl>
Date: Mon, 23 May 2022 14:29:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Make psplash wait for the framebuffer to be ready
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: 
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.b7e4c2e3-7ef8-438a-875f-c8d974c21d76@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.1195c9bc-3466-43ac-9600-56e4081b21e6@emailsignatures365.codetwo.com>
 <16F1BAD0BACA2F83.18186@lists.yoctoproject.org>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <16F1BAD0BACA2F83.18186@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR02CA0015.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::28) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: fb4576ab-c760-43c6-e620-08da3cb7dd91
X-MS-TrafficTypeDiagnostic: 
	DU2PR04MB8984:EE_|VE1EUR01FT054:EE_|VI1PR0401MB2560:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR0401MB2560A22ABB74C3BA08E4AD2B96D49@VI1PR0401MB2560.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 nIrlb/WhjBjqGFWYD7knIOEQ6zI4GpBB70REEXsCfh5FSjfbmmw5ywx8xF5SWZTEqMWIsH2Y0CNUmOb1u2nTS2rO+QqStz/NUMBmsPk2xf4wCo1VZBulF5MdYa9FLZngbOjnacZhV8C0cj66JmlqovP5Ry0zUkDfImziX10SNwbInJeE3rR4Z5PGgaU9EDklFlumWo/KuPBKiapSuLjoA2e20irDvRZZmjpkoGNdtdsqLNm5GRhSXCsqYLnam7yDItjduyfc+5x63nI9Bs4FI5qO5W/5yB5kQCvFUXoO5decsnh8RZ9yAZ5D9ZKToJKtQB1bRuomvhTbrGroyenD6z54nxTWnDVFwmfAHpvwgIahB8aUua69J3FHFJQd5R0VJxnyeuQAFTbsm03GIyqFQO4VxuBnjPaR3Q+kEBX1+97/4Dpr+vdhFFLdPtsH8OvrFZwI/brqY9DjuYWEfkloxmww89T3hnRLcaAWg/PQyQSEQhZVd3dcvU19I38XcOF/++9ZJLWM3dot5US2tGI9u8wNNqxGPRAJcm3sgB9c6aXkcfquyWbWIa3FrjVG7FA/ty/vnOqfN1GCgEKVhJIT4FdXzyqjIukOZCPvChtpU6q0nXkqHpwXJZg+J/aWYomb5qk3mQo5JysaL0tWAVUtRW4r0qUGF7IZAAz3OULLZFSYZtGdlD0BAgLAYRUf0UBF+P3dGub+qRnc9d9vqVYZNMlr2gEzzNF5UHxzAeTeU1aMZL6uxH2bPbCw7ZecwgeWuOZjKXczDk1aTMHMBf4MA9YMcgcGXb0IbdA4L1QgOne3gYF4xaR1iWhcBRO7h9UZD5HskxM+f4IpZv2bphVR+g==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(39840400004)(376002)(346002)(396003)(136003)(366004)(36756003)(8936002)(2616005)(66556008)(8676002)(66476007)(41300700001)(6916009)(31686004)(6486002)(966005)(44832011)(66946007)(316002)(186003)(38350700002)(508600001)(6506007)(53546011)(6512007)(83380400001)(5660300002)(38100700002)(26005)(42882007)(83170400001)(15974865002)(31696002)(36916002)(52116002)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8984
X-CodeTwo-MessageID: 
 dbdd94c3-1484-4b48-b2d7-313c0ecfa6e6.20220523122913@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT054.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	811ed684-371b-49e3-1e1a-08da3cb7d77a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+fN3bNP7YPXGrdvrlrGGC0iDZ1ENbTFYJCuVSYq5wg++puJ5bHYj0amYHtkuQ9xc2xppXqQw8SvEgIyQthhLGVL73DIlU/SmwtaDp5Lr3TxRUC6WmXGI4kd89ujKzBpYZRv/wkLvOuV76Xez6FFm3XdPd6/K6e5DAcVQZjZqQP2+GFf+LbgbLiRMTBO/1zo/HuQU87U/zqjJ5yr8ujx4ZKFfhhP6SxrfsWLLBH7m67gWcQ1Eh4LsNRrnKos9jtppfVDge/mbCeRFNN8UcIsGyUvpHe4QOl0GNmnUo3va3pGE0wRj2azVAMK0nYkAT8hFBrcU8RFBvFYBPv4J6cSjmuzW145KrLVBXqnXrUvUJU11ombWF+7+HNZVrPyPG0thHOH8RyLEOu753e8Wpm8Qy55J3bHhfvirQhFFmIhVxmmJGFFalt2EG2K+GNQcemk3ukTXwVroT0G/n5RpJ263LjSbKuVIOOQd3ZjrcZY5+wlg1Jx30JS6pMl/y9niL9/51Y3EUjRTX8aRannGYREZe/T/X4MkGsl5FUj+sBSMvZ1Ay6Zke4deb6zysuDq6Mczl6fqCfuWXEz2iye6KGfRIbYnMQQIpmSOxnRXV2J+/aPlv6HIB9i7qZA8HJQu8pygca5vk12O5+UlzIo85yIWr8N1DPIglLdz+os+BgRRkT+04v4cWZxbL+g0fYbcrLDQY49XbTveI+3Q2IM3CqoU2QXkqDojJ+7zEPyllZIhZVobgUVc47Fa8HD+RZQAHr+xJUffFVdSH/3gpwX6WthU+9Upp7e9r/hwcmGZGAy0bS0=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230001)(4636009)(376002)(136003)(396003)(39840400004)(346002)(46966006)(36840700001)(40480700001)(47076005)(508600001)(41300700001)(36756003)(8936002)(5660300002)(336012)(44832011)(2906002)(966005)(6486002)(83380400001)(15974865002)(2616005)(356005)(42882007)(186003)(70206006)(8676002)(31686004)(6916009)(36916002)(6512007)(26005)(53546011)(36860700001)(316002)(6506007)(83170400001)(7596003)(31696002)(82310400005)(7636003)(70586007)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2022 12:29:21.9573
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fb4576ab-c760-43c6-e620-08da3cb7dd91
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT054.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2560
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 12:29:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57156

Ah, just writing to the list appeared to have helped. For the dependency=20
to work, you need both a "Requires" and an "After" directive, i.e.

[unit]
...
Requires=3Dsys-devices-platform-gpu-graphics-fb0.device
After=3Dsys-devices-platform-gpu-graphics-fb0.device

And with that change, it works. The splash appears as soon as the device=20
registers.



Met vriendelijke groet / kind regards,=0A=
=0A=
Mike Looijmans=0A=
System Expert=0A=
=0A=
=0A=
TOPIC Embedded Products B.V.=0A=
Materiaalweg 4, 5681 RJ Best=0A=
The Netherlands=0A=
=0A=
T: +31 (0) 499 33 69 69=0A=
E: mike.looijmans@topicproducts.com=0A=
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 23-05-2022 14:12, Mike Looijmans via lists.yoctoproject.org wrote:
> psplash doesn't work on my system because systemd attempts to start it=20
> at 1.6 seconds into boot, while the fb device is created 1.9 seconds=20
> after booting.
>
> This results in:
>
> [FAILED] Failed to start Start psplash boot splash screen.
>
>
> I figure I'm not the first and only person in the world to encounter=20
> this issue...
>
>
> I'm digging into udev and systemd options to properly make it wait. As=20
> suggested on the net, it should be possible using an udev rule like:
>
> SUBSYSTEM=3D=3D"graphics", KERNEL=3D=3D"fb0", TAG+=3D"systemd"
>
>
> And then add the following to psplash-start.service:
>
> After=3Ddev-fb0.device
>
> I also tried this variant, as reported by systemctl list-units:
>
> After=3Dsys-devices-platform-gpu-graphics-fb0.device
>
>
> However, neither has any effect whatsoever, the service still tries to=20
> start too early and fails. The "After=3D" apparently is ignored or so?
>
>
>
> -- Mike Looijmans
>
> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Products B.V.
> Materiaalweg 4, 5681 RJ Best
> The Netherlands
>
> T: +31 (0) 499 33 69 69
> E: mike.looijmans@topicproducts.com
> W: www.topic.nl
>
> Please consider the environment before printing this e-mail
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57155): https://lists.yoctoproject.org/g/yocto/messag=
e/57155
> Mute This Topic: https://lists.yoctoproject.org/mt/91286438/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
Mike Looijmans


