Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DE4EC43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 15:05:40 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.42])
 by mx.groups.io with SMTP id smtpd.web09.10430.1657638330906480662
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 08:05:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=X54ObR5w;
 spf=pass (domain: topicproducts.com, ip: 40.107.21.42,
 mailfrom: mike.looijmans@topicproducts.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=U9g/Q/hyxfOm39UeqoKvufac7mL/Ykx2GF1IC50WUDn22vnJ4hGkZr+v4MWgV89m2FEWA6cVvk15Nq4Fw0Y9g8fEPomy8ENmCaPdUdE301mQbzd4mhhS8XwlAl1tPk6jsPT3XNO8SrM+DdwmidQABCbvdsVtfFRB9SQUesJhXXJaArNF1G3D7Viz1z/ZWZ8vdfoGjMRxfeAHrvwObesce6r7KSlxjxrYnB0aSTk1cPTLz+kSMQCjYMy/8sre+aAt/G6f5jLHDdqq92EdgDqR3IJtyzpXZ/MPD3eoK1GFmYjHFykLE57Eyd2hS57XIPinyCvHwILYR9U0TchhmYjaHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GZPLYLRII0kskFfnuwWqUmsQ/zndc0c4Xi1wOSOaywA=;
 b=eKNSvoyP91YqQaHr6EabGDl7o42gf8+LEoO9H9KgRsGSpK7LHuOhI3HykU9vmgETVxhsV9D3B8wagUIpyYB7Go8unRewZ9/8s1KTLYaQfdy0vNkMFkqkCC/DocQ6Rffka4aCLShhKwJCeQWqME12e477FI36nP+CRetd150IN0X/YaGXP+i1t+vBKG19VYOSQmeUCNbIDvi7l2PeEnyjHvtLkPdyqEYasrzYjnY4ZFNHKTdnDt0tJPdpka3DUD/S7DIN+k5aSC4S0eTqwQbYo/sQKEMWKFSE+yV9yA6eOVYIDpTpB2HnB73ubmC9Tg0q/exTsbgBFGRjGSOfhRZDhA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topicproducts.com; dmarc=none action=none header.from=topic.nl;
 dkim=none (message not signed); arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GZPLYLRII0kskFfnuwWqUmsQ/zndc0c4Xi1wOSOaywA=;
 b=X54ObR5wkg9iwhEcMfeBS4LlRQXWAv5oEVIfXtPNIxdxXeq4rrWt0nRRq3Lfkzbb9M5g8PkqRaobvnU0YfDTZGoFJ1MfkPAK7IHB3c3MzSni3f5Uj/PdNMg8b2lhak6J6Xw3aH6Fh/5Qz0IzAseMS6r7LWw9QHvtLmkthS79Tw1SKfMYKhrBTOFvykPTNMNfhKauu+DvCrXv3SwN4SMGy2tXwSz+xjS5mbZhO26dZ4nVyVvYQA9DT+db4h2Yhn1MqhDIQea3kmcoFd+Ap45NFOs6/uaYTQKCnib/wpbYJ5o5vZYCHOf5Xs0RoWpOqn1gFzlGKgnfRVskDe9rC5TAFg==
Received: from DB6PR0202CA0006.eurprd02.prod.outlook.com (2603:10a6:4:29::16)
 by VE1PR04MB6768.eurprd04.prod.outlook.com (2603:10a6:803:129::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Tue, 12 Jul
 2022 15:05:27 +0000
Received: from DB5EUR01FT079.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:29:cafe::85) by DB6PR0202CA0006.outlook.office365.com
 (2603:10a6:4:29::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26 via Frontend
 Transport; Tue, 12 Jul 2022 15:05:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 DB5EUR01FT079.mail.protection.outlook.com (10.152.5.67) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.16 via Frontend Transport; Tue, 12 Jul 2022 15:05:26 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.54) by
 westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Tue, 12 Jul 2022 15:05:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AdBUmz9pfXdiU72N6NHM5T47ciqMjyhutoLD8un13xV6UQL4HlXKFiMKdXsactsRrGtVo0r6RiOLAlsm4azZhjqlLZZ66m7rRX7p37pWr4lWcWMjKaqJj8rpCezCs0tkjOz62nSMUprzt7WFPepgDwOnRr8+1C/AN6D6HzpITtVMKwywzQD7sae7YrBFdVpn/0Zc8FqQo/XYJan4v3lbw473yWZOpSejjWx4oSijfXt4TMYw/xjJ2/b6f5Ol1IT5Zip0hAtnDCa6bIEyafzvKwNmxd8oxReC9PYRaHqEXaVWYroD0al3Ent4e9EDsKWdVLv3ZRh5eZLLLtYTawG5Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/o647Re9JhDgexAGIBwljWgc7tzkAgjj8p31PmVmTs=;
 b=dJCStPIBHAFbiRKNfdzCOlqkloARvws33ti+C/PpWE/RxYD/KnLkf0B/+RE8E+VzHOj1ZMEHCXoDOPd0F3Qnwv7qZd7ahPjXFZUPm+bmYosytAxJSmvw9HK+TI/mHifUa5ha3jhajdDsgj07YDx6Pz75IaH5SV1f4Pa1QIuFXMur7IFoW1Bs+4erGULlYK4tNExCluU7pgpyF4xj+Rlj0+xI047xNHcMRF/X6q+B3HyuurrIlqsTYNZ9/II2tfpTrirRFy68QgswvNjBI0KiGYp+cpOBHnHX8WJESZAQWhN3oDRMxk6Yu/efsIjm9lTnfpAdtYpyP7hWEPAHBYECLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AM6PR04MB6520.eurprd04.prod.outlook.com (2603:10a6:20b:f7::16)
 by AS8PR04MB7781.eurprd04.prod.outlook.com (2603:10a6:20b:2a6::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Tue, 12 Jul
 2022 15:05:23 +0000
Received: from AM6PR04MB6520.eurprd04.prod.outlook.com
 ([fe80::815a:873e:5143:acdc]) by AM6PR04MB6520.eurprd04.prod.outlook.com
 ([fe80::815a:873e:5143:acdc%5]) with mapi id 15.20.5417.025; Tue, 12 Jul 2022
 15:05:23 +0000
Message-ID: <8f0726b6-c7ed-83a1-6069-41bf8370b3bb@topic.nl>
Date: Tue, 12 Jul 2022 17:05:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Switching between multiple DISTROs without
 "contamination"
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0579b8aa-d2a5-42d7-9e61-2548c06e61ef@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.2d9bc8b4-92c7-47b2-b9e8-ac8d32e87ee0@emailsignatures365.codetwo.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM9P193CA0025.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::30) To AM6PR04MB6520.eurprd04.prod.outlook.com
 (2603:10a6:20b:f7::16)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 1d823d57-64d4-4331-a6ec-08da6417f416
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB7781:EE_|DB5EUR01FT079:EE_|VE1PR04MB6768:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /p0vAvTwdbcBIohdbEb8Vjjw4o3bqAY8jvEuxSOQ/AiUePN7srMxPiKB4tCu1jsEhPlogqF1ZCcRg8YK4Z8JzgPjA2QQhIzDjBnFalPLAfWvey3tGAumqZqoDBvSJKtUF80wMHOdx17F9tIl4IyFIlU99k+pCQOzZFqZyhyl2hnrxzXHyb/jjUayEBQ5xJnMY2mRMZM82cwIWWLj03aLOoLFQUOdO/2nIOrA9P3hVRhxnkGUcVFGEYmyUuLW/HLzN9cwAg3q5QMcuzQSCuiMMHi5K2bi4qOdA2BkvUp2pIpBOLZruBEuzL4usIcKXkHMjRmKjyDz9HnOOnw67AYuHKQnkLkxgpS3bXZTXoUSQb6v0wDraDWesTRyWjZobJuv1AAFsBMTuclxKfO4L+6XwfzPl31mfDRHOVa/6ZLsGgZifOq0t5N+z0sNJM75bxsuP2Q9EytOhzC0ER46yRKrsbO1JcoD2Aa2FTlwOKRhCDWRgghbgVLPVA77WFcN73vVyQ8uETHeWxj80QTe7+vkH2I4SQ0t2UE9pnqTR1vr82cM+gezE9GbGtmWB63l5LX7kPhPBWaQ2UTkj7zKkRFxDeZCsDY0XhEQOyHucgbCBcBDaqDIvKaaykPNDEbUThbqJA2l8DIgRaGIA6pdKMZ9dbWKA833PSy1owc9Ac6dQdPFyWWvQm89Ra7OV+FHxvxrDIYdRwKiiKsrIIvYgV/ai468AYQIHyzAR3+d2IvcRvcXJ8U4QH1eTWd9XySwsBaemjuTDcM+xnM/RGZQWfJ0HJVkl+tAvIRHu1jA/0e+C9tXXVQhWJATSvUqC2O86DgEgL9eM4x98x30+V8uiQtebUcBXPeLG0yAXHNbom8bndAKoujLAkk7kamJKZYQCW93u5Rz5oA8pYNjT03q9kh2vw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6520.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(396003)(366004)(136003)(376002)(346002)(8676002)(31686004)(6916009)(66946007)(38100700002)(45080400002)(44832011)(316002)(5660300002)(83380400001)(36756003)(478600001)(66476007)(8936002)(966005)(66556008)(6486002)(42882007)(53546011)(36916002)(6512007)(6506007)(41300700001)(26005)(83170400001)(31696002)(52116002)(2616005)(186003)(38350700002)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7781
X-CodeTwo-MessageID: 
 58bc06dd-82d2-4d6e-9faf-91d78486da29.20220712150525@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT079.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5f516723-b1bb-4a86-824c-08da6417f1c8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2d1KwO9KTfnZy+ckfwYh8TDy3SynQmxcSJ9Q4C2+A/diw6lt0ttEc6diH2yDrDUbzixEGnN4FpmvQ11Ti5TKFwYHgXsJ3ZoB7DdJptHDiLfbFtHU5A5MrYlI2VWkGc1jIU4+OaEdlliGwYciWGff+iHnb+MVNJNx4bkitZQrbkEUGhtk8pOEq9/gQdnAks70u1eet79vIXFUAKO45G0TdffsRgQxpVLaw2xHvBBT1aaxZ1OGlyk+TG0Y2JB5dTABsz5Xhy0rw+6jKk/y8iJq6dahBQq4cuKDJsglXFNeXRMM0/fY29mp2PhyvCrQKbUitP7I+FlywGr97aOPqGp4zSwP3kQMPsH4SmkHQ79BYBqMr0D3JkYNumNdM7Nj3zJAMEjEwLMQ35q3wgQYyqCosgpHGNrMlSgegdem1mnmQVmXv2N1BROtkluij3F19AeGEqsa8cf8KX3Bnbqid0i8nCc56oSm6z2GfUv5doQa4lskMchPcAvNRSZLiUfzo+GcqdB9k34wafVNPNOhso46txtKSFhBkHS3VObhTVFYwCo+SPE8B6X+jc/UsJ8r4RoQlHFbi8s2E/FaZ1MHX8Zh1d3nHQt/y1YB3NrCssFWM8fEpkPju09lvXACuWY4lcW1+nFj3Qt2vjfqlX+ruzSnDntsSSrzfCL7xbzu5P8MM3vH43sx1zAbQ6oQ0qRDYaZT5pszmj4e++mOdG3dhpYX8aJQeN83LubFcbwVV1dT9GMUdZseAhBX3hiifCFXIJtuByaF9DMr2f01MF2czKTW4rM3gg6kNIXFRn5pPsOXRDHTsIJRUUqR31wFD2zs0pXgh61UfUNiaJnzk+xmWN+G6g==
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230016)(4636009)(39840400004)(136003)(346002)(396003)(376002)(46966006)(36840700001)(31696002)(186003)(83170400001)(36756003)(47076005)(42882007)(7596003)(336012)(83380400001)(40480700001)(70586007)(478600001)(82310400005)(70206006)(2616005)(356005)(7636003)(41300700001)(966005)(8676002)(36916002)(2906002)(6486002)(6512007)(45080400002)(6916009)(36860700001)(44832011)(26005)(53546011)(5660300002)(8936002)(31686004)(15974865002)(316002)(6506007)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 15:05:26.8042
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 1d823d57-64d4-4331-a6ec-08da6417f416
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT079.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6768
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 15:05:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57515

Quick answer: Don't build multiple distros in one build directory.

You might get away with setting TMPDIR =3D "tmp-${DISTRO}" to give each=20
its own.

But I'd rather advice to set up two separate builds and just point the=20
downloads and sstate-cache to the same location. It'll be faster than=20
the TMPDIR option.

Or figure out how to put the difference in the IMAGE only. Then you can=20
just build both images (in parallel, woot), which is faster, more=20
convenient and saves on diskspace.

What I often do is have my-application.bb generate a=20
my-application-utils package that only gets installed in the "dev" image=20
but not in the production one, which only installs "my-application".

You could also create a "my-application-dev.bb" recipe that includes=20
my-application.bb and just changes what it needs to be different.




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
On 12-07-2022 15:37, Nicolas Jeker via lists.yoctoproject.org wrote:
> Hi all,
>
> I'm currently using an additional layer and image to differentiate
> between a release and development build (enabling NFS, SSH, root login,
> etc.). To create a development build, I manually add the layer to
> bblayers.conf. This works quite well, but feels a bit clumsy to
> integrate into a CI/CD pipeline.
>
> Per these past discussions here [1][2], I'm now trying to migrate to
> multiple DISTROs, something like "mydistro" and "mydistro-dev".
>
> While migrating some of the changes, I discovered that I run into
> caching(?) issues. I have a recipe for an internal application and want
> to include additional systemd service files in the development image.
>
> What I did was this:
>
> Added "application-dbg.service" to recipes-internal/application/files
>
> Adapted application.bb recipe:
>
> SRC_URI:append:mydistro-dev =3D " file://application-dbg.service"
>
> do_install {
>      # ...snip...
>      # systemd service
>      install -d ${D}${systemd_system_unitdir}
>      install -m 0644 ${WORKDIR}/application.service
> ${D}${systemd_system_unitdir}
> }
>
> do_install:append:mydistro-dev() {
>      # debug systemd services
>      install -d ${D}${systemd_system_unitdir}
>      install -m 0644 ${WORKDIR}/application-dbg.service
> ${D}${systemd_system_unitdir}
> }
>
>
> When I run "DISTRO=3Dmydistro-dev bitbake application" followed by
> "DISTRO=3Dmydistro bitbake application", the debug service file is still
> present in the package. This seems to be caused by the "image"
> directory in the recipe WORKDIR not being cleaned between subsequent
> do_install runs. Is this expected behaviour? What's the best solution?
>
> Kind regards,
> Nicolas
>
> [1]:
> https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=3DJ_Jk6cd3eiGaOiQd78=
8+iSLTuU+g@mail.gmail.com/
> [2]:
> https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI=
1PR0602MB3549.eurprd06.prod.outlook.com/
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57508): https://lists.yoctoproject.org/g/yocto/messag=
e/57508
> Mute This Topic: https://lists.yoctoproject.org/mt/92332946/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
Mike Looijmans


