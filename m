Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BB3C001DF
	for <webhook@archiver.kernel.org>; Fri, 28 Jul 2023 06:16:25 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.57])
 by mx.groups.io with SMTP id smtpd.web10.26852.1690524976504790349
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 23:16:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=HD81KqWL;
 dkim=fail reason="dkim: body hash did not verify" header.i=@topic.nl header.s=selector2 header.b=qSBBe79s;
 spf=pass (domain: topicproducts.com, ip: 40.107.8.57, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uv9nmBYdAovigYnVwgRvTHMfrlTIZH1n4nFfnV93Fmg=;
 b=HD81KqWLqBbMdz71iJckho9vP1+ITSxOUM8dXpWz5GNBm79CnA7mTl9izgUJptXF/MPuXTDAQACNP+tU6ucgZJhJfigCFl5mpGVrQF9iYMaRvocWGimjvhSfiLvOhy6RTDelqZOR1UTHSv2DYJUZ46XRrJ6mPHGBYByDnfUerNJIWQnZAzfj6HZgN3T1jk25NrdC7Zle4+QVX0Sls7HTXembISJeMPKPIgIjGKYus2jN6BpoLG/xt/3MJMH8+F2f5LO3nZHgjLlOGpJnBe8f98G7E9LLPJHz65qjwK5maYXtv8K4HE7/wtfULfkDBM0fffdU75JnvniyYULCZo60Ag==
Received: from DBBPR09CA0045.eurprd09.prod.outlook.com (2603:10a6:10:d4::33)
 by DB8PR04MB7180.eurprd04.prod.outlook.com (2603:10a6:10:12c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 06:16:10 +0000
Received: from DU6PEPF00009523.eurprd02.prod.outlook.com
 (2603:10a6:10:d4:cafe::31) by DBBPR09CA0045.outlook.office365.com
 (2603:10a6:10:d4::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29 via Frontend
 Transport; Fri, 28 Jul 2023 06:16:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topicproducts.com; dkim=fail (signature did not verify)
 header.d=topic.nl;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 20.93.157.195 as permitted sender)
 receiver=protection.outlook.com; client-ip=20.93.157.195;
 helo=westeu11-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 DU6PEPF00009523.mail.protection.outlook.com (10.167.8.4) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.22 via Frontend Transport; Fri, 28 Jul 2023 06:16:09 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (104.47.17.110) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Fri, 28 Jul 2023 06:16:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TGnC12VVfZYQO0zW0qXLbHQBp914toFUB8UAGmFfHy7XKmMM82Mxury+8sIaIrB7NUUydTAlJNaspQJgcDc9Cg+9C4K8aCpx1y/GpUEv0HxbLSZm2tshiRHRgQE9SBU07JAUffU4qcTZsV6KQDy9daCHbk9OTxDvykXl+HZG4GbRlIiWjzFLC/EwXdYjLZKXFQUb1dGupzLv4sCxQEkZQnXZhTc0gRK3uwwmkctwvr17VHefoAPFZoGv/eo5CuUe9VIlkMS439hS2Zutf/3oP4JyZKPCErHFvvBYCvoGGK/oc+tTxQfP9WN7UqEa/IqgyAvWmQp87PpSslVKOQ3gdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ykl71VDl5U5zuNFQ4N8EHkRniuT4RYTAZgPbHpnJkvk=;
 b=GiMAQZtFkDMSlWQGgG0l8dcvXt7VtFRDl/fzN2KXAm/M8FRyOeYI+uSWuq6rPGjhfj5iXg3VCsEMpWkJ4D0M9nLfjP8CzZiI/D7ctboiVkJTO54X6XsHguolUURhpvBpM1cdj74vYfA6P5bHJ+7N1okt2Xur4F04FlgrJa+VTwAHucO7Fj3qzTINMJToko1BtJMRO7jCayTuJME68VcvVRmAgveLxVEisTqhwDX8GIQX/+tSGczyw+aetFvQfL7OLdn1ay0reK+S1mSoSXtOGCJyC4uBymsIqaa9eNY1PsKHpGVZBwjIOk7vFeGR872m0/KfY3/3x4a70im0Vie8oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ykl71VDl5U5zuNFQ4N8EHkRniuT4RYTAZgPbHpnJkvk=;
 b=qSBBe79soCfoUm0OW/WNL+c3dM3OMGs+N3c4iZ9Xb/q9+j0mAaUZVZeJZu1XTS05beA7gO4f6wYzNS1p9mUTId8BtMIZPp8P0k5Ox6c8I7Xw74kMsA6YCQImsaBSJZ/YAlnOcTT9c/l4RwX9TlhzufviwLgqx6vtWiV4Oy6Sr1zBkQ+bN1+HVpxOhXxbbM2gm4EKcwbQvX3IAfQqw3oJxEJY7xkGxf5DdMwsMdHNRFn9iuh705e1xj3jY6/bqiuHNMp7ZJjyk2LRsZBYf8QE05rckXqfzTdeds0H2RMOArUvFaUjPx3CmrZidgEeKR6nuCMFa2oRBTuHwBnCfsIgsA==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by AS8PR04MB8803.eurprd04.prod.outlook.com (2603:10a6:20b:42e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 06:16:07 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::6b6e:1525:72e9:d02f]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::6b6e:1525:72e9:d02f%4]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 06:16:07 +0000
Message-ID: <90948cc2-b8d4-dd9b-e419-ffa683c273e1@topic.nl>
Date: Fri, 28 Jul 2023 08:15:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] connman + busybox-hwclock startup failure
To: yocto@lists.yoctoproject.org
References: <CAHkgX0uZ0Hd5aMx+OcGuYnNdjVjY-nGCWLwL-D9-TbsnXo-m6w@mail.gmail.com>
Content-Language: nl, en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <CAHkgX0uZ0Hd5aMx+OcGuYnNdjVjY-nGCWLwL-D9-TbsnXo-m6w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM8P189CA0024.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:218::29) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	DB8PR04MB6523:EE_|AS8PR04MB8803:EE_|DU6PEPF00009523:EE_|DB8PR04MB7180:EE_
X-MS-Office365-Filtering-Correlation-Id: 20eb1c20-eb50-43a8-c668-08db8f3222ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 pdrSHLbOIDXjZEuo0ZXp3pMSO76XhBKdIDLNoebUqk7FKpJkSCiPV7vCXbi3unoYjlek0wRYo+XdISUwqBG/J43he262mGeBYzh17k8hXIQ6jEu7+gF/hmWSGE3ggXqcdpKf6X/WDwyP3N+VG0NgW/Lw4D5PdwMswDR58K0uXNBLfWn1TGuKZxB/Qvo+b7hJBrGncwHS1u3m4XbkNz5LNYPq7L8LuMNNI/2zCMe07iwLv4lN8/P7NLOAZf4cLMRUb0GKo8C1ContTNmPgUjYH0c5A0YE5APmCA2SvZ7s2+EQoMuNvaV1TCQAQIci5TqmD2C0Z+c1HICFdBhAVvcq7S+EFR2dCA4fhEIeaO/Jl+pKnInhgEoOt9qctcoXdG1f26CY90NTG8LYOO/nfqNX33d955XYpEOSljn2RWc5X8GlDEXuNVOPu5AliZ1HxEyLLvh9JbandtIkzGxM9bA/E46U4y8WQSp1bCPN20Al2uqNFpiGvCBRGR8RvnJICvrcgA5E1QszkYURYTfllK3TjZhMaqy5FMa9myPGE7Q8P5NhWSD50oHpe0FJKR2+tqiX8waWSRrXQm2+TBEPv2EUxF35oSHZYyS5uTIGINUqXFIxjd04EXoQ2XjM9BWVPyx2Ii/dpjbxJQdlfgsmcNfz9A==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(346002)(39840400004)(366004)(376002)(451199021)(6666004)(36916002)(6486002)(83380400001)(478600001)(83170400001)(53546011)(6506007)(6512007)(26005)(66556008)(6916009)(66946007)(66476007)(186003)(42882007)(38100700002)(31686004)(2616005)(44832011)(8676002)(8936002)(5660300002)(2906002)(316002)(41300700001)(31696002)(15974865002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8803
X-CodeTwo-MessageID: 8e9f9370-b0a3-4e74-a090-f06c5ad1c8f8.20230728061609@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF00009523.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	527aea28-e381-4b8b-9e0f-08db8f322133
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2rCGp2+vxurjehSgWMQuVBpo6oMBMQz5pLG6Oxb0ZIxH9URXWuWoLGcUNEMAVBdyP5eOSfGYmsFQ7MgPyD64zMTygGw1ScZVj8gzSorCpkxG2tzV0yAjOmAZPRg7PilKJ/3MZNhymH0om0W/r/BjnbXbOtnRZZ1yXC5AXj+0JXNO0PUQmYK0mUyX+cAnRavkKvmUwOyVmy5yt7jwvnN8hAh7U2isazXRb2+CdvPdta65TC1PD9vHK5vSc+RtzZvvaHdXCwbVs62bo3zXc7pBPwqHtziBlbGWVvdVKCH21fSvDQryoBrG2/VMK76U9FEPiqZm0CHvAppmdQBtQHXxvjvkk2mfvc7JJK9ZHaaN4cy+5kDunIz/oiHgRe9Su/py56FddR7IgpNk9jAx0bM2U9zdtbQD81r/MmVb/dVoYKquhzRGoufwRhNe4nbXQhBlMQaW8SwSB/9LokYh8XxJSdqOcwWnNWdgJVFPNXqPkCskENoPYJxunyZIkyvnTSO3uA+pQT12s3DY/TsGtQe5u4oo+X5NPu1bzpWA42JBStCxSbNPVCFpEvygGnYRuaya5HJIOvae5N2l2yFVdDLWPt+4xhWBA7hMvamMmJM28R96AxyjWlL/yCrlypJLy3tndNidIxNNeE789t4Z3sQdpJCXfUYKypgdXhgylX22qhK84mFVECaa1fJ51hfmEvvncGdWq1n3oGaufWdCg0dDlvhyfVEY+sgfugVfAlnS1+wiqvE7XKtb5l1A07K4KG9coJ9rKO0B1QaKEG5oAsccdQ==
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(39840400004)(396003)(376002)(136003)(451199021)(82310400008)(46966006)(36840700001)(47076005)(36860700001)(478600001)(6512007)(36916002)(6666004)(6486002)(6506007)(336012)(42882007)(53546011)(2616005)(6916009)(70586007)(26005)(2906002)(70206006)(8936002)(316002)(7636003)(8676002)(356005)(5660300002)(41300700001)(44832011)(83170400001)(7596003)(15974865002)(36756003)(31696002)(83380400001)(40480700001)(31686004)(186003)(43740500002)(18886075002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2023 06:16:09.9889
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 20eb1c20-eb50-43a8-c668-08db8f3222ed
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF00009523.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7180
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 06:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60672

A bit late, but might be useful to others.

The Linux kernel has options to set the RTC time at boot. This will happen =
as=20
soon as the RTC probes, which is often before the rootfs mounts.

The kernel also has an option to synchronize the RTC to NTP time (userspace=
=20
provides the actual NTP) when available.

Combined this completely replaces the hwclock functionality. In fact, I fou=
nd=20
that I had to bbappend the busybox recipeand remove the hwclock scripts, th=
ey=20
actually interfere with proper operation:
- At boot, the RTC clock is copied twice
- At shutdown the RTC is set. But most RTC clocks have more accurate time=20
keeping (e.g. temperature compensated crystal) than what the system has, so=
=20
this usually makes things worse. Better to set the RTC time from userspace =
and=20
leave it alone.
- Most RTCs have only "second" resolution and setting it too often makes it=
=20
drift more.



On 31-03-2023 00:04, Chris Elledge via lists.yoctoproject.org wrote:
> I've encountered an issue when using a system that has both connman and t=
he=20
> hwclock.sh script enabled during startup. The default combined startup or=
der=20
> for these two services is wrong.
>=20
> Currently connman starts at 05, and hwclock.sh is at 20 (default for=20
> update-rc.d). This means that we have a situation where connman starts up=
 and=20
> obtains a correct NTP time, then hwclock.sh clobbers the system time with=
=20
> whatever is in the RTC even if it is way in the past. The big issue cause=
d by=20
> that is connman schedules its next NTP update at an absolute time of (cur=
rent=20
> time=C2=A0+ 1024s). Once the hwclock.sh script knocks the system time way=
 into the=20
> past, the NTP update will not run for a potentially very long time.
>=20
> I would suggest adding a line to poky/meta/recipes-core/busybox.inc to mo=
ve=20
> hwclock.sh earlier.
> For example:
> INITSCRIPT_PARAMS:${PN}-hwclock =3D "start 04 2 3 4 5 . stop 20 0 1 6"
> or
> INITSCRIPT_PARAMS:${PN}-hwclock =3D "start 40 S . stop 20 0 1 6"
>=20
> Thanks,
> Chris Elledge
>=20
>=20

--=20
Mike Looijmans
System Expert

TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topic.nl
W: www.topic.nl



