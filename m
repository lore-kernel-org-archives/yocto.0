Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.70])
 by mx.groups.io with SMTP id smtpd.web12.15867.1584540581559041383
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 07:09:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=rbpKhY+L;
 spf=pass (domain: topicproducts.com, ip: 40.107.14.70, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BrCfyW8QpbxbsROCqY1k+gIDVLiaKn26JTUrWHin1vY=;
 b=rbpKhY+LUZ77jrmMrmlVtKQ0MdYXu4UhId2/JfVRjErgwC+OTWzsq9rqT6xdw/Lc0dJBX2YUiAItLWvESV5bXyLAKEec5vv4vOaRyZkhjJ499CdQHdgITmDzZCRGkbA8u5atNd87pv3y35J2wNsK0m2t6dxRyGL+eq/WhrM/oYs=
Received: from DB8P191CA0013.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:130::23)
 by VI1PR0402MB3824.eurprd04.prod.outlook.com (2603:10a6:803:22::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Wed, 18 Mar
 2020 14:09:38 +0000
Received: from DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:10:130:cafe::88) by DB8P191CA0013.outlook.office365.com
 (2603:10a6:10:130::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21 via Frontend
 Transport; Wed, 18 Mar 2020 14:09:38 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=fail (signature
 did not verify) header.d=topicbv.onmicrosoft.com;lists.yoctoproject.org;
 dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 DB5EUR01FT045.mail.protection.outlook.com (10.152.4.180) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14 via Frontend Transport; Wed, 18 Mar 2020 14:09:37 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (104.47.17.109) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 18 Mar 2020 14:09:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VRH0D2egq1WDgEkdLZ88FVFiUBL+gGtrXRb+4dvnXlxzFwqagbOi5D/ypRCYaj4rqFKdMPbjIZ9lcIu20VuOZF00nyQ93LDZOrQm2qZ9q2c32puWV4ThJrKmB+0Mt7RaiAY7IT/7o3mfTQizU4yC5ihgXbiyTob9V6ZWMPPRlp7vX+Wh2W1bp2XpzQWi5nGN+7DAlJfxxr1jml7xRFKE/cHx6xnY4UagghWPgUcQr3KbhQkUkTZnf2wpvs2bCi1vurbBZ9TbOv9etzvIphnE9w5cwXnBo5rAtmjRYATWDhL3pV7MrTnp+VqrVwWeWJ3rezOck/WgtO4q/UpBrjciHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BrCfyW8QpbxbsROCqY1k+gIDVLiaKn26JTUrWHin1vY=;
 b=embSVnjKxkLaJ86I2rGOrPq5gjZk8efrl3zi3Ma7ZfztH+BHwye2XofOWoDMwC0l/yaccKVPQCbeh3vtgH7v9sPxenx9AGh2RGntyH18Pi6IZLte6qe9L/WLW0e0JGq5FkRaStZO26zO+1fAgjiuuVSdaSDGC0RusY6bqMfKxwOytMQ2JHtDSKuOsF7Zsart0aeF9cpet6VbLFF/JI0580aWdufRegXGuk7KrQPcdQb2nAWCWXFZW4Sq7ORR6VEDoxCupamaBYYEZ96MkQuj4M7Pcg+CJ5GQ8/aVVRIQ3Khnk4btUtyIkwaA50GE0hb5/bfSjfD7zCiek8rFnjrW8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BrCfyW8QpbxbsROCqY1k+gIDVLiaKn26JTUrWHin1vY=;
 b=Oi4NZKmlaEMMwYdbwQtKkvV2ViuFnCPhvYKOZ+R3KCzI2FoNyxM93SZbHpWABEyBInxDkreOTCX1pcRhY47VYV3HarH8JN8KruHYZHbJ8TIyaYQwmlT//FJDNkfxLKvwxkXFpXzVgPHYbcv3HkwtGc+FNejEqA1xs2cBbkzvxjw=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3820.eurprd04.prod.outlook.com (52.134.65.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 18 Mar 2020 14:09:24 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2814.025; Wed, 18 Mar 2020
 14:09:24 +0000
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: yocto@lists.yoctoproject.org
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
Date: Wed, 18 Mar 2020 15:09:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
X-ClientProxiedBy: AM0PR10CA0051.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::31) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR10CA0051.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:150::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.19 via Frontend Transport; Wed, 18 Mar 2020 14:09:24 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a766a765-4ebd-4617-e580-08d7cb45fe86
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3820:|VI1PR0402MB3824:
X-Microsoft-Antispam-PRVS: 
	<VI1PR0402MB382455F9833430661985BBF196F70@VI1PR0402MB3824.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;OLM:7691;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(376002)(396003)(39840400004)(346002)(366004)(136003)(199004)(31696002)(52116002)(8676002)(81166006)(8936002)(81156014)(53546011)(26005)(36916002)(36756003)(6916009)(42882007)(508600001)(956004)(44832011)(16526019)(16576012)(316002)(2616005)(5660300002)(6486002)(31686004)(66556008)(66476007)(66946007)(2906002)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3820;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 QB+DxsXSR90vPEqHPeH/cCIy3aPTMKCH9DelWRbM0xAqNbkcSzna691f4aodUITgJZZPnRtXA1XnE7bnoRcEb5y4MGaALm3U7BmRYq45y7Ddcf7KNldWnHCZalGWDLJKoKebaHCyaTfA+I6IDJEawy8hfHw1wb3ar0DnmAyspyozCGxX+u43JyUhWaCxFAlI0QxozZvRDjcOANXq43i7B+UzUq71pOawpe/57x/yL9AmLhXiijO5sZqumprmGdou5rfQ68lqYOPvDP2UF/GSSlMCTqCXYoqmZKjC9iuCM1K9ZV+4HCz12gW9l97MGU3lWw7qvXKDQDbQN/9o/SvjPI1YCH5L1YftOqOM5tAj7+Kkd7Hzv357PWEZUBi/NbhEjepMBSHDYL0ki5fKLjn5tfY0cN2xm/JW/U/3/PrB4jruY6rHZeh7vs51w9v5l4NP
X-MS-Exchange-AntiSpam-MessageData: BB7TiQaneT3SfMpYAMBZOlIt9mEUAdBF2dWOmZYhLvWQy9R85Law2E4PDDd4fEMxXmaJf5GpMK2ca0qCJeRm4Yjmjla6RKJvdgoqDmc/NhuwGqOixjTJjVBi8DR81RR9qv/DrkQg1dTgiOd55pFKOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3820
X-CodeTwo-MessageID: f2742f24-18be-4238-8600-cecd26bb80bd.20200318140925@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;IPV:;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(396003)(39840400004)(346002)(136003)(376002)(199004)(46966005)(8936002)(246002)(8676002)(82310400001)(2906002)(31696002)(31686004)(53546011)(7596002)(6916009)(316002)(5660300002)(508600001)(7636002)(16576012)(36916002)(36756003)(356004)(70586007)(70206006)(26005)(44832011)(336012)(186003)(16526019)(47076004)(956004)(2616005)(42882007)(6486002);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR0402MB3824;H:westeu13-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu13-emailsignatures-cloud.codetwo.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5fe3c174-d25c-427f-93f0-08d7cb45f650
X-Forefront-PRVS: 03468CBA43
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JR9q3/3Mcz4TWPgN2zZAvpq4iI3ARqPbMudqvlLKg81Ts4M50TwdzgFteYQ7WnUpQDaueITRGmo9LkgaHG6qXLrfDtaKHMGY9vF9cBDgTKeiszYp9IflCLrp933L/8aP4Y+gUONKTuvbMTk2EgpzElSLZMr1yW94lnymRG3ktRrbo5BTLSiDSfBlyCMbK6o8DcBZmj1DS2+qsjIpdw4XY1k3Bg47qXmn5nwGTeT7giECgcm42736g2ZHb9rTht7XtMmbBchvsGVfx6kZTNEGu8CbPUGDSoODGg1xXe8Yf+g0uq7fS1qtnwRro9XmWmiAb5qBp4uOzTPu1OlDorzp1QeqBQjN7/UsUkcoCXpJvFeBqi+ee4u93N6f1Mr0gd7bFTUVl/R0wMehDJK8O9xMDgFWCJRtaggA+WY4YcltpI6/Bwic53Gbhq0SR4FPUWNWkXXQ3hx+W/mS7buryVfMnX/+FGTLXcFRIbkwSOnGyNpYzrBydlCRWNUeC00L980g3qK+gVCE7Ifi0TkcM7hCkQ==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 14:09:37.9220
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a766a765-4ebd-4617-e580-08d7cb45fe86
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3824
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Big ryzen is a good choice.

My home rig is a Ryzen 1900, with only 8GB RAM. It's way faster at OE 
yocto builds than the i7 at work that has 32GB RAM installed. My 8GB rig 
does not use swap space while building huge images (like satellite 
receivers and full-blown XFCE desktops).

For the CPU, the more cores the better. OE loves cores. Real cores are 
better than SMT cores (a.k.a. hyperthreading), and AMD's SMT has more 
effect than Intel's.

Harddisk speed has very little impact on your build time. It helps with 
the "setscene" parts, but doesn't affect actual compile time at all. I 
recall someone did a build from RAM disks only on a rig, and it was only 
about 1 minute faster on a one hour build compared to rotating disks.

SSD or NVMe doesn't make much difference. If you have budget to spend, 
spend it on RAM and CPU but not on disks.

I'd go for a reasonable NVMe disk, mostly for storing and booting the OS 
itself.

If you plan to share sstate-cache and downloads from this machine to 
other clients, I'd even suggest a plain big (4TB or so) rotating disk 
for storing that kind of stuff.

Again, don't spend your budget on disks. Disks are way easier to add 
later than any other component.


On 18-03-2020 13:52, Oliver Westermann via Lists.Yoctoproject.Org wrote:
> Hey,
> 
> We're currently using a VM on Windows and it's a lot slower than the 
> native linux build (which is expected).
> We're looking into getting a dedicated build server for our team 
> (basically a self-build tower PC). Any suggestions what to put in that 
> build to get the most out of it?
> 
> Currently we're looking at a big Ryzen, 64G of RAM and one or multiple 
> SSDs on a "consumer grade" board like the X570.

-- 
Mike Looijmans
