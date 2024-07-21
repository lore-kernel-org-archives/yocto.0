Return-Path: <rasmus.villemoes@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C5C3DA61
	for <webhook@archiver.kernel.org>; Sun, 21 Jul 2024 21:17:00 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.86])
 by mx.groups.io with SMTP id smtpd.web11.5212.1721596615961437434
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Jul 2024 14:16:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@prevas.dk header.s=selector1 header.b=hryNXiRo;
 spf=pass (domain: prevas.dk, ip: 40.107.104.86, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Os/PqqY2SA5vbmF8VJas5o8xBNYM2lDmwNLd7iIlXrfJ8701WkB10v/9JTTr8Z8zJ3v6BQbBsfeCSjUfA0GEWRcog0dh9vE3X4xFp6//mSY+oVBf6gNJxKmmI0C1ikp+dkjD11qMMWXJZDYHHMyx8zTsclpcMkUAK+X1pU4QGTKezydCDzxJFGv5eDXCeML8NWOT+0XVu8/EQ0aiSDTgUEf4G6ETxTMPz7TdZa36q+i3MMhemtYNGkb1CHU1X4P78HvJ+DznpADeQjU6ZOXjzL4myAnCVhFG+nlN6gsh8XcO+GTQK15qHx7680mbaz9FP62H8mKl/VD7OnlT1YIg/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/sQiv8Jg+0N2LMDax846U72zeN9UtLmKKCM7rzQgpXU=;
 b=KHHZqKw1kWVyWTuATtd1Tyrd0QDPIU+f2w4sc6AIQRjRuFoZ+3zRri+s36k6sWiQoybtp5+cSIkFMmI0XfO6DBDFmzOChwQg0jgo89kMYmw74toe4JPJqwkIVadX2ny9awAzwOGecA78rq3N38Wyri3Jo4Ztr9WvQsqcNjR3UTdQaR4GBG1a70z5gaMKNyuvGqo96vsHC0B7AhyMskDgaESf5Ckzm/E04smQoRAGpgV6jAi3m6055QGORx0fuyAN2TmVVhnXk7Fi8onLE9h5yu9YU0oapTkXwQ4yPblNiMTYpuevWN6mrLU/5Q5gG/lRMUsrrQz+T3chVRFJkHIZRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/sQiv8Jg+0N2LMDax846U72zeN9UtLmKKCM7rzQgpXU=;
 b=hryNXiRoq3sOxFzF3Pi3rgrn1wWtdh0WNmMGFH+9BLxHUogUE1Odpx0IC9hzRXNAbRyeWbFe7CoPqoTTlHt4HNFcY3HTCCWOTFA/xw2l4fUuf/+4FKOuGQDsKfZL1rO3yJiZ/pgUEfyQKBlKHAVtIDOh13pvkMVqwUmj9gjR6ew=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::14)
 by DU0PR10MB6018.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3b2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Sun, 21 Jul
 2024 21:16:51 +0000
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9fcc:5df3:197:6691]) by DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::9fcc:5df3:197:6691%5]) with mapi id 15.20.7784.017; Sun, 21 Jul 2024
 21:16:51 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-security][PATCH] fail2ban: update to 1.1.0+
In-Reply-To: <6080b3ef-fd52-43e0-a7a1-17e81c21455f@gmail.com> (akuster's
	message of "Thu, 18 Jul 2024 10:14:48 -0400")
References: <20240708131138.3125264-1-rasmus.villemoes@prevas.dk>
	<6080b3ef-fd52-43e0-a7a1-17e81c21455f@gmail.com>
Date: Sun, 21 Jul 2024 23:16:49 +0200
Message-ID: <871q3m8mym.fsf@prevas.dk>
User-Agent: Gnus/5.13 (Gnus v5.13)
Content-Type: text/plain
X-ClientProxiedBy: MM0P280CA0070.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:8::29) To DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:45a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB7100:EE_|DU0PR10MB6018:EE_
X-MS-Office365-Filtering-Correlation-Id: ccd86917-cd31-4779-844e-08dca9ca7079
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|52116014|376014|38350700014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?DnDZUENrMdvlGX2bbLuRNFPZDj+j8CVm8P2PLkWga8PkUC0v2q4bCcJjt9YO?=
 =?us-ascii?Q?a4UMfLXiElmYXArDNt+eFDsM4tHbj9yaRsHwr4zaXy6RV+YE8NHeJjKbqWjZ?=
 =?us-ascii?Q?ZKbmQ0X1V04fyg+cd6XZfn3NhdG7oVXISn22x72i5G6DS8BuWRqVEJ+Au02R?=
 =?us-ascii?Q?U1LTLpeTMvAOT3t6OzqBfY6+EUrgY+nPTQJt78pSFNqcvA9bernnb8pObyww?=
 =?us-ascii?Q?4xfmz//8Pqmy+iLb4dSUIu0WwpXp7uCb0B5yaSx2pJtdDGBzQ0tW0BkoZ9le?=
 =?us-ascii?Q?7NfK1VgzK9reExgVxzxzsOC3NsO9tVPauKUbPSjV+fLoQaCNtfAGyl54A/xm?=
 =?us-ascii?Q?S7xPlhLxtMYVmFR55L02nvy1SkGoe/HWdKAA/HEn78QPe9cC/oBe6XqH8eHZ?=
 =?us-ascii?Q?yEze0boX4nL+42WN2ZV6a7lJTo5l9oQRc3V5zxUtlTsNJFonMiEbfPe2M0Zh?=
 =?us-ascii?Q?jxnYaF7jqom6aabyrLSJEhIiFHAwqxGuADT2HReYj11PtROycniChg+hjLY7?=
 =?us-ascii?Q?WYr4HSFi5yu8dv9Hb7uzByN66if3AXpjl3cedzLzC3W7Nl5qtg/DsSNpyDIR?=
 =?us-ascii?Q?VpzbS1d5nvsqBCj2B5POsqBQGRqANwkDFYZ8Bk6RS7BxTpLK9rLcrIDtBmyX?=
 =?us-ascii?Q?y5kkOmcO7SqGUDnvJ9ngJCCWKvct00JMi+apx7aTTFE5U4wEOi0WWYVUcaqD?=
 =?us-ascii?Q?iig4Y3IqFNT/EXLvsQE3OS99qXKwdTyHH2o9gAM/gRMSF2MgL+Sf2hNS/dI9?=
 =?us-ascii?Q?2Wku/DN8YJbUPFrBb7MO4BniLjhiMYv3/esqlTFBKIP5HC3Ajhtur7vG/u2c?=
 =?us-ascii?Q?hA4gPoh5o8oz0veQ0OCFZYNpSo7QKHra1yOs6ovG+gJlg4hNAxsDhidKA4Y/?=
 =?us-ascii?Q?snMAKrOFJxP+qsKmzPRJBbCc+nxhjhnR4I4r/vesz45KM0V0VbqBqAR+p4oV?=
 =?us-ascii?Q?dvqP8W26WDA66qMXUd0I1gKt4l7Z2DlrnL03DamONIysk18KNF4ejSX0+v/U?=
 =?us-ascii?Q?1EKKWSjyFqM0UViK4MDEjqfl+e2mwwKiJ0bbAreZ2FkhiWeYrwZtxFfleiev?=
 =?us-ascii?Q?5Y4bCUiRYc2YB+x58PGf0pEIfk/++ArkPDICqaV94MTKLZhYo6rSreSO5Lou?=
 =?us-ascii?Q?4OxCerWvG0YHORAVkNGDtzyXEO55ArR/Lre/+DRly3I5/BMNVXAxfOdfbHCL?=
 =?us-ascii?Q?/t13zkZLhinkOWljn8cy9VWnDZssUke6nrJ8ZbI7fmkRcaMkdApvZevrvsGo?=
 =?us-ascii?Q?2PZtuQG5AExmMjlwx/OE0HWsQHtmZkUFvIGBk+pGMb/tbED4iYIIAnScdW5F?=
 =?us-ascii?Q?yYZkh4180KPN9Mi+9uogMjrgwGLPoVpn8sTQVP747hiaSA=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?BT8uTFVXcgMN5RqvLBN18ZyU6S9d3nmPW0DPts+zbVTwPQCsOsPEIYhuXFtt?=
 =?us-ascii?Q?Hk3JkpFFdHNdj1Ft8r9Bn60sevJbGH2Lm1ww9Ia2mMr+h7PYXEybjWOpoMyk?=
 =?us-ascii?Q?6thCuDT8mmxfrGmFwbK8WHN8SuEMsNoP8Cp0UZB6+dNWbm28QEZjgLKZLbf/?=
 =?us-ascii?Q?dyIndQW9HCFdUcZykX4aGAwh2KxrC2quOSFl2GkEANLf+uYUqLsRbdf24Ty8?=
 =?us-ascii?Q?3tKse5pJpCIsGXOeq2bZ43uTqmhYM0iXQmcanPdSZyAqFG4ImUsZzX4MsUYn?=
 =?us-ascii?Q?Pe3styaAFva7rHVJbuIvjkDRBhyTUCGH5xinurL7zWfSJyBzhua3lRgt8sU1?=
 =?us-ascii?Q?jP8FVLDtQ+lAaWMP4X9af+Qa+q2NqDkeHFyLJy4rAPBoipyCY9ia9+rBlvzX?=
 =?us-ascii?Q?IxrqICcSFsutfjRa8GOjsdQSkzeoSD0nSYKdTn1XfQhR3Dvjh7lIonhWWRis?=
 =?us-ascii?Q?korOrj1bwqYOW0b5Wvs0mMx3aL23IQ/jR9jX1nu7fa3/+GIMD3bVvDRsYnAH?=
 =?us-ascii?Q?lWC0GgoUpqSMYd6qShKtWaQy6VhqH5+H5bfStC1r5c4U2I2A5RbZaGtpmRQE?=
 =?us-ascii?Q?rnaFLp6W1onMOMl47ucZBg7mOPGc5So6OD4lmC5ZatK6hZrv3sQlQZUpg+2a?=
 =?us-ascii?Q?or+BVnh5KRkBWPmG+4c1CuKaN4dfRNT/igo7bQCuqJuqKM2YvED/kkbgQ9o4?=
 =?us-ascii?Q?bWH9D4aFTNmDWx4NILdmWXEYQWbHGoxkYNxnQidErW/rmQtPrW9K5cBuMgen?=
 =?us-ascii?Q?exQKRccMDGJ3s4hBr+zCvIWLk7XVw6DuWTOiKoV5MxtYv4lDYuBnmlQwwvz+?=
 =?us-ascii?Q?bRroaxb2dQ4eP/j45mV61mAnm1/0ypDUFrkeql4XzVGPRkcqK9X/xBpsrlcS?=
 =?us-ascii?Q?izDsJ+V0L6ZwbIndRzSLL8iVuRoqBQSeWgWLZQIkJzWR5Ra/+tRSI9yaRaFH?=
 =?us-ascii?Q?/tYLNDVNSY8WORBlp0JJvrW7r3jJdFGmR0PtPOq8sXdHdP1YFARPmXxPeRuR?=
 =?us-ascii?Q?cTDoeE+vC8q3K5UohnVvr+Crk0Q7OwbECi3CAe4kx/T3mPcDwk7bD0vZ+2xj?=
 =?us-ascii?Q?AXTxYxw3kZJuXXtGewFWttJqKucht8yd4jDB7fNkwkuFAELSHEGsegNKdhgx?=
 =?us-ascii?Q?jPAO8tVEXPjdS9MRcXPbqfkihTtGIuCGYIeS0QgsuoI55Y2/px1iiYYzF4g+?=
 =?us-ascii?Q?oOX4qErvQOJOHI1Ne9u0ZbKECY6TU5t5jmPIk06tG1nmO25Id2MkvtTjKT95?=
 =?us-ascii?Q?++9yIscnEZPGZETFfDPVLONS96MbBXk1WieVJsLpTZFxHeIUNn1kqVx1oduz?=
 =?us-ascii?Q?XGoitvr7pz+zybMmsbWob0l3jkqraeX1zsQdNJC5uk9VvJFvKNze+jkF8lT5?=
 =?us-ascii?Q?ePlaBfaAfqwST1TCBvd2SjZLDTQ5k3CqCvMm60Kke0DTRiFHSwbIACaqUCy+?=
 =?us-ascii?Q?6+Fwq3UZsYo1GM7mrKFP6v+Q+Ydw7ho+HoLR/NTBNQz996C3oqPHdhd0qoms?=
 =?us-ascii?Q?UNE2d1HyQQPk1B98ySVgF6LL1841hzVDHZMsGkhGF47V0tYJBeOOu/jaLDrM?=
 =?us-ascii?Q?lVjrIVr0prMzXsDPnCUspGXZfFVca13nAFZOs89Xy1wHMFqWBQL+KwfgNbPZ?=
 =?us-ascii?Q?OA=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: ccd86917-cd31-4779-844e-08dca9ca7079
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2024 21:16:51.6213
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GLHOIxkJ9umekXlpW/yZ1XCYe5y8YODaF3aZAA9Xwjzso/mRP4zB9MDR4J9qlvoQzbkM29LMxq1OCVQi4slLS3sikUGH69UI1t8de4eGTv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6018
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jul 2024 21:17:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63543

akuster808 <akuster808@gmail.com> writes:

> On 7/8/24 9:11 AM, Rasmus Villemoes wrote:
>> From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
>>
>> Current 1.0.2 version does not work with scarthgap or later releases,
>> as the asynchat module has been removed (as scheduled) from python's
>> stdlib as of v3.12.
>>
>> fail2ban 1.1.0 also does not work out-of-the-box, as the distutils
>> module which the pyinotify and systemd backends depend has also been
>> removed.
>>
>> So update the recipe to point at commit ac62658c10f4, which fixes
>> those two backends to no longer depend on distutils.
>>
>> Upstream's out-of-the-box ban action now uses the 'nft'
>> command. People can still override and customize that in
>> jail.conf/jail.local, but to make the recipe useful without
>> customizing things back to use iptables, change the dependency
>> iptables->nftables.
>>
>> Since 1.1.0, fail2ban has been python3-only, so the recipe becomes
>> somewhat simpler since the whole do_compile preparation step can be
>> removed.
>
> I am seeing an install error, see:
> https://errors.yoctoproject.org/Errors/Details/791129/

Hm, I assume that's a WORKDIR->UNPACKDIR fallout. I'm on scarthgap,
where UNPACKDIR doesn't exist, so I think my patch is correct for that
branch. I'm happy to send a separate version for master, but I can't
test that myself currently.

I do think it's simply a matter of replacing the WORKDIR in
${WORKDIR}/initd by UNPACKDIR, but I'm not completely sure.

Rasmus

