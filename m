Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BEDBC54E58
	for <webhook@archiver.kernel.org>; Wed, 20 Mar 2024 15:27:43 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.85])
 by mx.groups.io with SMTP id smtpd.web10.47869.1710948456156993289
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Mar 2024 08:27:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=m+qeaXQ4;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=m+qeaXQ4;
 spf=pass (domain: arm.com, ip: 40.107.21.85, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=exzdgJFXqfHLV01mfBRuut5lCcYpUcIkCdXpdYJoGcz6rlU2NVudHfKnFnfd0f4x37EXeB3fF4/kigfNPyTpySUjIfHoEBKXnrKzF1/M9q1BIQCDCcLmDjiMgUQBrfk0CGoAGqbfbugZFdWTCGroEuorT5ViBLGimjWp+9dLKUrMjd0OVzOQGuhy5efaq3KIRGISOk98yla98m023/8GBHBrro0W5xbYpaBp+nZyYaRIcHDHnG9LGS/k6UypZx5wg+eHgPDbzJp0m/30ta0Il1OLoT7HoymMHb9763PSTc2/cUWK+XArksjzuEOZWxlGtCZl4MUsi2IMvgtGaRi7SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ke2YxuDYKioE5Nzv8LCLPNrJjecJFeHO8Vim0ZyALNE=;
 b=S1YDSypTQSWhvT29OkFqOu3eYU9Er9XRyoiSH6yZNe3XkN0/xw7cl4Z45aAYHoEkYL8huT3XiCS1ynBvKysYB8tEClTKGB02RSXTvEqZYrsw6buu5ManSLtvElrjGrzMAZWCu5PCvPe5WYfOmCBd/JFpxvCagIBt4xudTQ1KlU7KqyQNcEyw+NZX3fgUTulHADHJW5l8wqjl8JAMSwLkxmaVIbSTBuuhliasz1Wb8FJ4bvmwj9Na0Ss1ObjvCx8fJom2XDKI3qxpf8CFbCV17dTwBuVDIrw08sMay0fEie9L8Bxx5vtABgrnS+ErmbWsOovh+jsIeJMA6TVEpUexTQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ke2YxuDYKioE5Nzv8LCLPNrJjecJFeHO8Vim0ZyALNE=;
 b=m+qeaXQ4Tw88ZXGG/Yfr+Y/A51Lj+/YZvOMhoR423NE6miDdoW7Xs/7gs3oc4nmoR48Cslc5/1PFZfjnFLxd5b7G4CTmr4lOq9Lnbn5j57eQnCZAwqsdKlcyuu/gBkOllVaIn6Uwjfs5WCtxLiONamH8b1y5OL5W30WOKiip3z8=
Received: from AM9P195CA0002.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:21f::7)
 by AS8PR08MB9120.eurprd08.prod.outlook.com (2603:10a6:20b:5c1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.30; Wed, 20 Mar
 2024 15:27:32 +0000
Received: from AM3PEPF0000A798.eurprd04.prod.outlook.com
 (2603:10a6:20b:21f:cafe::10) by AM9P195CA0002.outlook.office365.com
 (2603:10a6:20b:21f::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26 via Frontend
 Transport; Wed, 20 Mar 2024 15:27:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A798.mail.protection.outlook.com (10.167.16.103) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Wed, 20 Mar 2024 15:27:32 +0000
Received: ("Tessian outbound 1b0f2681ce6f:v300"); Wed, 20 Mar 2024 15:27:32 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 27dc67bde6ddcb3f
X-CR-MTA-TID: 64aa7808
Received: from a584f0e6393b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 02A10BA9-E259-413D-8AC8-78B74CF624C2.1;
	Wed, 20 Mar 2024 15:27:25 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a584f0e6393b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 20 Mar 2024 15:27:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QrPS733OB2AjwRP6wgvhMwPPrz6eLWs8UWYJr5IGFTi+ZkDBr7FjWKPKk7CJ66lwUFs7IxShNCiAAp1exE412cHknk16jZuhRBvpoTXJrDEBu5W3elvD+8HAgLFM0KWJ6rZAKnC0FHH1t9bCVC1Tw9F0KeJ2KaH/MdUA0mOV45lsDyhGbwYATKlQjHk/JkX1Ycwzz5TC/YGZxPIggK9i2aBmbaw0op4IVbUp/z1ckKPOuSMK+892+SVL+ItAvNDUkizeBLO8QUkJghmSdJBQCmCZfPHQwkP3DKUDcSzlFViGI2OGP6OjyNUHH+zewXgiB1mowqerEjauXYEA9L6QwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ke2YxuDYKioE5Nzv8LCLPNrJjecJFeHO8Vim0ZyALNE=;
 b=LBWrRVHDBmToYz1Y56TWks9yPyG1Ra+dbV3yYNqp4m8SdRu8x6wuCFZ1YlFxJ8kEVx3iic4XNS9Pw9ASK7vk4ZZmpz0Beewh4Lqu0PasxmuSThTTWgXCi854FJh9vm9Tf1MdfDH5FVNGWUl1oSDlNU5wA1WfYzuREKVDX6pDeh4AKmuKW7XH5Mei2XRyBQPTM/0EFs3sOxC0y4DD1tN5M/U4Mkg8MQyw92ynInPrFaOqGfNltBHrQyQCAM50VTujYDxio+R7ekOu6dHgO4NUJv+IS9jPLER3lWHp0EB+5X129abuWlmF/jpoJMaoP+0k9ES4/afu4Je2MQvxOGyf5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ke2YxuDYKioE5Nzv8LCLPNrJjecJFeHO8Vim0ZyALNE=;
 b=m+qeaXQ4Tw88ZXGG/Yfr+Y/A51Lj+/YZvOMhoR423NE6miDdoW7Xs/7gs3oc4nmoR48Cslc5/1PFZfjnFLxd5b7G4CTmr4lOq9Lnbn5j57eQnCZAwqsdKlcyuu/gBkOllVaIn6Uwjfs5WCtxLiONamH8b1y5OL5W30WOKiip3z8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8950.eurprd08.prod.outlook.com (2603:10a6:20b:5f9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.31; Wed, 20 Mar
 2024 15:27:22 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.025; Wed, 20 Mar 2024
 15:27:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Bratiranjan Acharya <bratiranjan12@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] install-vs-shipped
Thread-Topic: [yocto] install-vs-shipped
Thread-Index: AQHaeV70Yyua3NjSREKRdBxpEW/mwLE+4vcAgAHdbQCAAAMFgA==
Date: Wed, 20 Mar 2024 15:27:22 +0000
Message-ID: <A68B9688-967B-446E-A241-728BE913E100@arm.com>
References: 
 <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
 <E8642BEB-E07A-458D-BD67-B738A2C8321A@arm.com>
 <CALSmAY7ySwZm07iFW+Wfh9wXxtC63QX1W6LWCZrLmvWxbmAMDg@mail.gmail.com>
In-Reply-To: 
 <CALSmAY7ySwZm07iFW+Wfh9wXxtC63QX1W6LWCZrLmvWxbmAMDg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8950:EE_|AM3PEPF0000A798:EE_|AS8PR08MB9120:EE_
X-MS-Office365-Filtering-Correlation-Id: 3beece02-ed5f-46e0-ca48-08dc48f2431c
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 OtttwGcKBMMiH/d+SbKGdJ4uAYSJHVHRmVs4GPkPo60JpOLFXAmnCwFJw8TR2Z1N5Xust9QH0OSaBAaLJdr2n+xujHSrFQuuaRTMcoe5UK4lhezBryvWIdk1ua51n46ls0t+BrUG83HEJqgy6OXT4Hs+PHJmT+POqMajVWH6v1i4waj8swCdTwTpWFdkWa1myvQciGzDUgmPrY0jDWra1l0khclkhCC9eg1M8iFGceMcBaK6U18t2KZP/Wwq3hKD+X+ay8Dx36kkbXc8clywzn8g9begkjFXDYUvJfn2FtA4IGJxVzyhRcQfzhIl0qvtzoWdTug6hknp+PYvtetwoxJu+0gf5Cwll4nfR2yJfguAAn5KB9h5MMSNbsRqnymsUd+Bicu2jpUkHbmJAP0gxE45GkIW/t3NA7IxrB+xQonJqHalbqF2hcxbi+ywaXJ9T4zoApBjK+QI9r/d8CHBK/G6SWPGVFIsxIl3txRmerEOS3mleMSONUYnOxi8cmcGrjhF1tsltK++e6Ni7KuFWBO4yzVm4TFs2nGotDZRTgES1nElCJrBAIah31Gr1KAg6UlKkG2x1hPRa3GQfV2Dw8t7vbobKI2DluLmhAPTcVCxb70aQtgrj0QzZXzuCmwNuAYvdXxEOm1vKKDIL0G0OCRgm20dHyC+0qedgBAQJ81N8kc+uI7VslW5CcQuCqd5ehpWc6AEsJN/BF80RcgAd4oBR4rlvDYrndaSdxhakW0=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <361FD76E8879DF44BB4F94ADCE2EA53D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8950
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A798.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	141f67f2-6224-49a3-05ca-08dc48f23d06
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K2ka9IHEPAIYkeKENJYbfMPMJzV7eUk/8VbN6ig7YRSfmaRK2D1U4RMUjVUUgKzPEZwVnysUF4LT9bnN/2HIhtC0VT5axKJM0Zfmt6/nowyXwWHBzwA+Ra7MxCJ2/0TkuZjoaxcFXXyTomKuAjV/puUsaHH2RZeFuM5GFnU/4K9y58nBGcwuGVNOaeEhBVmJwIHydYxzgt9DdST7yxPg2EpwRCtXMi2AP7qlcjXLfRSr7pG8m1NXs20CFWW7jBD55/CvhHuXRrc5LD9dJ7UNfTDJJRJZM2CUsJNNuAo0Wvuhp0/v3CQhNlbs6h3Q0nWQfjW6PQ8Ii3Nvl6mBAfu3p3qbYoDqSaUdi9s174l0tK/R5a/Pd2CTuZZnAWB50Lop6YLxT/aem+Zw19/J2yzqxSNg2cjXlQD6oWZsUzn2oITy4ZJnsHb0PXn+d39FHkInBx9DJ6lFMyL3FpLXBdL+1nnk3vkTnl9T4GbEASzXE5/I8VcKEa3hBQ+BjSlkF/Yv49kH2IgAsmOUzY95uQhv3JGaG10MokoOHuXi4jMGGvHBdM8DN+RHZp878OYl+GW2Hmak0QDDb8mYAe4HNhdJE628wfdqdqgDxOp/o8zfNtivUuA/GtoCtwqg9bhc6NZTx9rcsz3ei1ZeEjqeozewZQmEHAGlaSThib5W0a+xATSykeAzHwTRNMdRYihpct9taCeUNI4tXt7CNIibaPRzNyDw7ByqyrVi0u7v5kUZqwj/ZyU6zxshc4vca0brRh19
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400014)(376005)(36860700004)(1800799015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 15:27:32.4388
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3beece02-ed5f-46e0-ca48-08dc48f2431c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A798.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9120
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Mar 2024 15:27:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62805

On 20 Mar 2024, at 15:16, Bratiranjan Acharya <bratiranjan12@gmail.com> wro=
te:
>=20
> HI,
> it is informative yeah i am able to getting the hold of the problem. yeah=
 you were right after running the command i got libdir as usr/lib64 .I coul=
dn't get any clearer from the links of fix patch can you please tell how i =
can solve this shall i try to export the path of libdir to usr/lib for the =
recipe?

Download the patch, add it to SRC_URI for the recipe, hope it works.

Ross=

