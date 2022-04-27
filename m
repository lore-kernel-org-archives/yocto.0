Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9BAC433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 10:35:18 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.58])
 by mx.groups.io with SMTP id smtpd.web08.6614.1651055715240311760
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 03:35:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=Omvpj/rt;
 spf=pass (domain: arm.com, ip: 40.107.8.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=cJt9xI0E2m8qrlDMjY1RTv6dGCYJAuFO4qycT93LIYQRD75zci4oC4VF39q6UXOATGMIZppan5AZm+MR2R+CQ6xnB4KG+jJAbt+lkZzjjTHmb79W9F1o8HCiIPTDY23k247d9IOW+SnhmXoGoLC8Jl5Z7ezTMHbFFAGZDVYRTpIos6bK5dfi57ABC1pP8Z9t+OMe8+5ImcjSFFOFB721FoNtWfPwHv5Fa2ZzSl0HSi75Yb/RYgtXFWhR3Bq0C3HPvkzD/Jgm8BnLhZcbJDEQTED0mSpV8QjOIpORgMD08sw6UtVixEcv0syRid5o3lkTgy2+IyHBs3MCVbyTpdf2eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j1itAzIXYqn7NTGxL98qCbNPNMjFP5SyKi1VYCn2Klc=;
 b=nsr/16h9UtC3R9mCy7sqfOzzv+vpsjHmUePdv82L1VXCauQ2TMHU3O8E7tFsKIvs7Dj+DDMn8roaqbYvDhW0nNxwGxxdc3udoehFvVtBE/qIu9bnalmzmCnvJKAqPWc5DaNJSYIyp0/q0FEcGZ7PAqje/0bJ6cJShfmy2yvKAYjzGqVG9NcQG9JhtKpcS/v756E9IthsEaIvd3AHtIQDCti7w8HvRz4kqLZ4TQ2NroMxJ1llULQXKzAjW4+TCcs2uINYW4Oe19RyW1zhFgdLyFo1VVm4ueYEIYRjJQEbJajgwqqCAJbJ5txtjK2ZEwbiUPGfA7V4XpIM0VC77ZVTgA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1itAzIXYqn7NTGxL98qCbNPNMjFP5SyKi1VYCn2Klc=;
 b=Omvpj/rtLcSHCtRxVSSRUACw2zZwPHobioQ2bea55Dil66QqutpqpOjUc3ZStcSmf9Yv7Zr377pkr6ArG5duzLWF+oM7FObs3BKRl+Xn8t3VwOI1yOrFUUZlbbM/Z4dpLO8GWn0b1VGrd++EyCg30SYN6EK/9eCfKV/1Nrmhut8=
Received: from AM6P194CA0052.EURP194.PROD.OUTLOOK.COM (2603:10a6:209:84::29)
 by AM8PR08MB5554.eurprd08.prod.outlook.com (2603:10a6:20b:1c5::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.12; Wed, 27 Apr
 2022 10:35:09 +0000
Received: from VE1EUR03FT042.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:84:cafe::35) by AM6P194CA0052.outlook.office365.com
 (2603:10a6:209:84::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14 via Frontend
 Transport; Wed, 27 Apr 2022 10:35:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT042.mail.protection.outlook.com (10.152.19.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.12 via Frontend Transport; Wed, 27 Apr 2022 10:35:08 +0000
Received: ("Tessian outbound ac9bb5dd84f6:v118");
 Wed, 27 Apr 2022 10:35:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5cac2a97cb312a54
X-CR-MTA-TID: 64aa7808
Received: from ed0000d55619.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 E2B56996-2857-4C88-B588-8FC9EBD44983.1;
	Wed, 27 Apr 2022 10:35:01 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 ed0000d55619.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 27 Apr 2022 10:35:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h/dBUIUPWPdDEdznLbn0+3i77w4twz7K885OV5G8kzIk5pHnY8n7eseBAWRgCzozXSUzJGLpqjX99p9p8lclcHPZRRWUyowFykCvpdlyBCo9O1norEF6qY5sBbOT+sFk0JW8z8lG6mMHfq/EyP0ZoJjsucKw2GWWdr8mr5Fj7LRqxt0HPPZn7CRfOSSI6/CUCNjw7C17b2GwBSd5A8UlKLtw+a/SN9oCpznkf/82n1HgYzLcr3AP3ua3YAxFSeIyV2BmOyjDaEtwuCA6n6Dx6mF+DewX3W2q72szAcy1OAURtEKjwfSEMonvGGuHJqxemXyZTGN4hU+C6exyT+od8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j1itAzIXYqn7NTGxL98qCbNPNMjFP5SyKi1VYCn2Klc=;
 b=h14yEQTlPOapSUKBALkBXbuHnpZPTSeR/xrQxvKk0aC4GdEDfIPFlP0jI09od6wCbfxLec6o+0xavtM40y4PWfy6qvd8aJsAyOuIMWdjVkZoPNcoMHvBHyEWRAPfRbpxtizjH9gDqIKhOvw19uz6uhviBrAMjqBSph1/NvwE/JGBgWRgdNJEkWovUyhdut3N/RDKTqpJGqYMHqLlcbPkL42mdIgKNFZNkNHVbF0wP1fYWkLCTycnktr99j4N4jyUgGiXGhsN4t4PFjUzzbUE++Znf/esLHgS+U2x9nRO17uM2J6p+rFRxSe2hKwAnT2st1taSz8aJCmMu6gTQWievQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1itAzIXYqn7NTGxL98qCbNPNMjFP5SyKi1VYCn2Klc=;
 b=Omvpj/rtLcSHCtRxVSSRUACw2zZwPHobioQ2bea55Dil66QqutpqpOjUc3ZStcSmf9Yv7Zr377pkr6ArG5duzLWF+oM7FObs3BKRl+Xn8t3VwOI1yOrFUUZlbbM/Z4dpLO8GWn0b1VGrd++EyCg30SYN6EK/9eCfKV/1Nrmhut8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB7PR08MB3323.eurprd08.prod.outlook.com (2603:10a6:5:1c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Wed, 27 Apr
 2022 10:34:57 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::8af:d35b:6628:5013]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::8af:d35b:6628:5013%5]) with mapi id 15.20.5186.021; Wed, 27 Apr 2022
 10:34:57 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [ANNOUNCEMENT] Yocto Project 4.0 is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 4.0 is Released
Thread-Index: AdhZ2DdHtQM/Y68gRU2NMpzwxA8/cwASiTBC
Date: Wed, 27 Apr 2022 10:34:57 +0000
Message-ID: 
 <PA4PR08MB74116FCA0CBB2815B0D4F0A4E8FA9@PA4PR08MB7411.eurprd08.prod.outlook.com>
References: 
 <DM5PR1101MB236176E376BD554365050E72B9FA9@DM5PR1101MB2361.namprd11.prod.outlook.com>
In-Reply-To: 
 <DM5PR1101MB236176E376BD554365050E72B9FA9@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: b2c204ef-2097-4ef9-d2a7-08da28399a2e
x-ms-traffictypediagnostic: 
	DB7PR08MB3323:EE_|VE1EUR03FT042:EE_|AM8PR08MB5554:EE_
X-Microsoft-Antispam-PRVS: 
	<AM8PR08MB555498756884793430EFAB72E8FA9@AM8PR08MB5554.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Nykh71XeQtQpXxskJGnobK6vSlUm9Wm5XSfeCEwvbsHj1bzcYTlW0ggtKBrkdpKLQtbllrAT8rAqi+naLjjGufbNsiU4Pr1tw2t7ryyo5dLgZpBcCkvPyt9fgL+zVSIvg2smx8bMJziS+QkhK5ZSCl+ven5NHng25vbJJdIdAGkTOkPLt7bQ+woRmMw0zBPxHubTbrXZPPEJJlS+rwayDf6DdevAikxu27pFjztpzbcTNoVZc87URepvnrkuRITs/NBTGCSY2ss6l75/jNf2T9HWgG5wClSgNzPWitAlPXvv1lMklhVR4Plhf6AkyFn7/cObvVkCBwW1UrRrhc/WP7oaIqjI1u+g1+CZig7k0yKTz08zcolNKO4aeWFxYY+gMo52YvLiodA0ugojqQ3P9JB2y2bPpDtMRz/QQk9VS4bKE4HT6mrl/9AWGiJZcBXxpNbjN6hpgNnBnoQwI0v2+IEOZEHs74rmh2O1oNDo3zCtWNfgUZk+HsjM2SxRvD4rPzEn6ZS+s66muu+3sSYqRT9mhCI1qphYYEAUyc1//3UTvcKFfht+MaNSGlr1e4xRGO6QyQAcFvA8yckSXt/V5IkNzdvsoHaF59ngcfe1h0FaXaADBN9IYPOXf8hVKF8aq5FavPYHQZJ5ycY4/znWF/oL/Tq24bbuF6pwe1vBRnsU7t3gF/884NUlvRijVaTN01xz/xRHfsm7LSY5XnvRPzDkSmqVEmN2uCBwSi4frmAdz/Ii/9OkknpItWNHcPHAcD8eckSDPHfFTOdFIbyIOuhFQSRaJuX/QfBD7c7XsFwWC22pwPjXXVpNL0w1eDGKhmsY39BXeE3OM2SHzx0/Z44VOsbtCvqNODDhgRa7JJs=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(71200400001)(26005)(508600001)(6916009)(83380400001)(33656002)(38070700005)(55016003)(66476007)(76116006)(122000001)(91956017)(86362001)(316002)(9686003)(64756008)(8676002)(66556008)(66946007)(66446008)(166002)(38100700002)(7696005)(5660300002)(30864003)(52536014)(966005)(66574015)(8936002)(2906002)(186003)(6506007)(579004)(559001)(139555002);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB74116FCA0CBB2815B0D4F0A4E8FA9PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3323
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT042.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	5770e27e-7e8c-46ca-63e1-08da2839936d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JuWd+3mSpN+yij7qiC7I01iQkYrU6lhbe8pMWmA2b8vgPWp9yD11i00HaKawmoOUqtEaTejiXbs8qSfvJeZfL2I//ooHM4f6rnW+EqcSf23HxAl2d6ClCChZ98XNikXaxGTtSOcfy8caLrwZyuXr3suZnlXls82dw8IbUScxa9iFo0WJpn9Nub/urgZgx9NW/AjfkBhXA8vpdevajA8KB6ZJsQg0ELlAxDVpaJkEAHFC5YRj1cpKcMqCsq0AFwSZ08kV0+4Z5sXfOSEyBj475cZEfhDdS8iKfQnGpv5QEOmJzTPDag5ZD0OyTLTUnuqgI02Af3WuKpQe1s/ItPBBF9gaLAE138sW/JbqTgZ4iNyiZd22iCAla9CRAtwWIE1+w0dB5ToFrWip+OjwF2wWMmFGJbvZS2gtY980A5wu5iFicn1541gazk1sb+3JzKEk7VySk9g6SevFUUeGYN+Rf5/wHbxrArv1sHAw2NDLfdyVwpkIjppaMBYvv/rUX1QIfvVzo6iyeL7EERvU7flek9AeKr/H7Cj5MQZGR8zvM+effldSjRDK+bXIg+UQ5UiOhM5pwqjUpKteY27ooDY6M6yd72b5HPSNb5Q/ESqLcBgwpL4SMbsphFz0O9OxopKW9A0GN/0KCc3cnvGC7AlWHivLYyE8R2UomJcw1gYNIZvfCiRM4uQ1JO2VlMan2gUeAwCsyA6hxmd4zKr1RtIXFVKQfXvApo1KhdEh9HYfEGuDDIES9UT4agj3D3YKpnPlCZanFu4xYR11YhX+mlxp8mrRajJS4dgqsYm+Rpyo8MYJHK3n+woZEuKgihzcuTbHoBkv6+pL9FF7scBV2kfR/Q==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(40470700004)(46966006)(36840700001)(82310400005)(36860700001)(2906002)(26005)(86362001)(66574015)(966005)(52536014)(508600001)(70206006)(8936002)(316002)(9686003)(356005)(40460700003)(6916009)(7696005)(81166007)(33656002)(186003)(6506007)(30864003)(336012)(166002)(47076005)(83380400001)(8676002)(55016003)(5660300002)(70586007)(559001)(579004)(139555002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2022 10:35:08.9950
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b2c204ef-2097-4ef9-d2a7-08da28399a2e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT042.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5554
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 10:35:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56910

--_000_PA4PR08MB74116FCA0CBB2815B0D4F0A4E8FA9PA4PR08MB7411eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Awesome!

Thank you to everyone who contributed to this release.

Ross

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Lee Chee Yang via lists.yoctoproject.org <chee.yang.lee=3Dintel.com@lis=
ts.yoctoproject.org>
Date: Wednesday, 27 April 2022 at 02:49
To: yocto-announce@lists.yoctoproject.org <yocto-announce@lists.yoctoprojec=
t.org>, yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: [yocto] [ANNOUNCEMENT] Yocto Project 4.0 is Released
Hi

We are pleased to announce the Yocto Project 4.0 Release is now available f=
or download.
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/poky-00cfdde791a=
0176c134f31e5a09eff725e75b905.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0/poky-00cfdde791a0176c134f31=
e5a09eff725e75b905.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/testreport.txt

Thank you for everyone's contributions to this release.

Chee Yang Lee
chee.yang.lee@intel.com<mailto:chee.yang.lee@intel.com>
Yocto Project Build and Release


Release notes for 4.0 (kirkstone)
---------------------------------

New Features / Enhancements in 4.0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Linux kernel 5.15, glibc 2.35 and ~300 other recipe upgrades

- Reproducibility: this release fixes the reproducibility issues with `rust=
-llvm` and
  `golang`. Recipes in OpenEmbedded-Core are now fully reproducible. Functi=
onality
  previously in the optional "reproducible" class has been merged into the =
base class.

- Network access is now disabled by default for tasks other than where it i=
s expected to ensure build integrity (where host kernel supports it)

- The Yocto Project now allows you to reuse the Shared State cache from
  its autobuilder. If the network connection between our server and your
  machine is faster than you would build recipes from source, you can
  try to speed up your builds by using such Shared State and Hash
  Equivalence by setting::

     BB_SIGNATURE_HANDLER =3D "OEEquivHash"
     BB_HASHSERVE =3D "auto"
     BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:8687"
     SSTATE_MIRRORS ?=3D file://.* https://sstate.yoctoproject.org/&YOCTO_D=
OC_VERSION;/PATH;downloadfilename=3DPATH<file:///.*%20https:/sstate.yoctopr=
oject.org/&YOCTO_DOC_VERSION;/PATH;downloadfilename=3DPATH>

- The Python package build process is now based on wheels
  in line with the upstream direction.

- New overlayfs and overlayfs-etc classes and
  `overlayroot` support in the initramfs framework to make it easier to
  overlay read-only filesystems (for example) with OverlayFS.

- Inclusive language adjustments to some variable names - see the
  `4.0 migration guide` for details.

- New recipes:

   - `buildtools-docs-tarball`
   - `libptytty`
   - `libxcvt`
   - `lua`
   - `nghttp2`
   - `python3-alabaster`
   - `python3-asn1crypto`
   - `python3-babel`
   - `python3-bcrypt`
   - `python3-certifi`
   - `python3-cffi`
   - `python3-chardet`
   - `python3-cryptography`
   - `python3-cryptography-vectors`
   - `python3-dtschema`
   - `python3-flit-core`
   - `python3-idna`
   - `python3-imagesize`
   - `python3-installer`
   - `python3-iso8601`
   - `python3-jsonpointer`
   - `python3-jsonschema`
   - `python3-ndg-httpsclient`
   - `python3-ply`
   - `python3-poetry-core`
   - `python3-pretend`
   - `python3-psutil`
   - `python3-pyasn1`
   - `python3-pycparser`
   - `python3-pyopenssl`
   - `python3-pyrsistent`
   - `python3-pysocks`
   - `python3-pytest-runner`
   - `python3-pytest-subtests`
   - `python3-pytz`
   - `python3-requests`
   - `python3-rfc3339-validator`
   - `python3-rfc3986-validator`
   - `python3-rfc3987`
   - `python3-ruamel-yaml`
   - `python3-semantic-version`
   - `python3-setuptools-rust-native`
   - `python3-snowballstemmer`
   - `python3-sphinx`
   - `python3-sphinxcontrib-applehelp`
   - `python3-sphinxcontrib-devhelp`
   - `python3-sphinxcontrib-htmlhelp`
   - `python3-sphinxcontrib-jsmath`
   - `python3-sphinxcontrib-qthelp`
   - `python3-sphinxcontrib-serializinghtml`
   - `python3-sphinx-rtd-theme`
   - `python3-strict-rfc3339`
   - `python3-tomli`
   - `python3-typing-extensions`
   - `python3-urllib3`
   - `python3-vcversioner`
   - `python3-webcolors`
   - `python3-wheel`
   - `repo`
   - `seatd`

- Extended recipes to `native`: `wayland`, `wayland-protocols`

- Shared state (sstate) improvements:

   - Switched to ZStandard (zstd)  instead
     of Gzip, for better performance.
   - Allow validation of sstate signatures against a list of keys
   - Improved error messages and exception handling

- BitBake enhancements:

   - Fetcher enhancements:

      - New `crate fetcher` for Rust packages
      - Added striplevel support to unpack
      - git: Add a warning asking users to set a branch in git urls
      - git: Allow git fetcher to support subdir param
      - git: canonicalize ids in generated tarballs
      - git: stop generated tarballs from leaking info
      - npm: Put all downloaded files in the npm2 directory
      - npmsw: Add support for duplicate dependencies without url
      - npmsw: Add support for github prefix in npm shrinkwrap version
      - ssh: now supports checkstatus, allows : in URLs (both required for =
use with sstate) and no longer requires username
      - wget: add redirectauth parameter
      - wget: add 30s timeout for checkstatus calls

   - Show warnings for append/prepend/remove operators combined with +=3D/.=
=3D
   - Add bb.warnonce() and bb.erroronce() log methods
   - Improved setscene task display
   - Show elapsed time also for tasks with progress bars
   - Improved cleanup on forced shutdown (either because of errors or Ctrl+=
C)
   - contrib: Add Dockerfile for building PR service container
   - Change file format of siginfo files to use zstd compressed json
   - Display active tasks when printing keep-alive message to help debuggin=
g

-  Architecture-specific enhancements:

   - ARM:

      - tune-cortexa72: Enable the crc extension by default for cortexa72
      - qemuarm64: Add tiny ktype to qemuarm64 bsp
      - armv9a/tune: Add the support for the Neoverse N2 core
      - arch-armv8-5a.inc: Add tune include for armv8.5a
      - grub-efi: Add xen_boot support when 'xen' is in DISTRO_FEATURES for=
 aarch64
      - tune-cortexa73: Introduce cortexa73-crypto tune
      - libacpi: Build libacpi also for 'aarch64' machines
      - core-image-tiny-initramfs: Mark recipe as 32 bit ARM compatible

   - PowerPC:

      - weston-init: Use pixman rendering for qemuppc64
      - rust: add support for big endian 64-bit PowerPC
      - rust: Add snapshot checksums for powerpc64le

   - RISC-V:

      - libunwind: Enable for rv64
      - systemtap: Enable for riscv64
      - linux-yocto-dev: add qemuriscv32
      - packagegroup-core-tools-profile: Enable systemtap for riscv64
      - qemuriscv: Use virtio-tablet-pci for mouse

   - x86:

      - kernel-yocto: conditionally enable stack protection checking on x86=
-64

-  Kernel-related enhancements:

   - Allow initramfs to be built from a separate multiconfig
   - Make kernel-base recommend kernel-image, not depend (allowing images c=
ontaining kernel modules without kernel image)
   - linux-yocto: split vtpm for more granular inclusion
   - linux-yocto: cfg/debug: add configs for kcsan
   - linux-yocto: cfg: add kcov feature fragment
   - linux-yocto: export pkgconfig variables to devshell
   - linux-yocto-dev: use versioned branch as default
   - New `KERNEL_DEBUG_TIMESTAMPS` variable (to replace removed `BUILD_REPR=
ODUCIBLE_BINARIES` for the kernel)
   - Introduce python3-dtschema-wrapper in preparation for mandatory schema=
 checking on dtb files in 5.16
   - Allow disabling kernel artifact symlink creation
   - Allow changing default .bin kernel artifact extension

- FIT image related enhancements:

   - New `FIT_SUPPORTED_INITRAMFS_FSTYPES` variable to allow extending init=
ramfs image types to look for
   - New `FIT_CONF_PREFIX` variable to allow overriding FIT configuration p=
refix
   - Use 'bbnote' for better logging

- New :term:`PACKAGECONFIG` options in `curl`, `dtc`, `epiphany`, `git`, `g=
it`, `gstreamer1.0-plugins-bad`, `linux-yocto-dev`, `kmod`, `mesa`, `piglit=
`, `qemu`, `rpm`, `systemd`, `webkitgtk`, `weston-init`
- ptest enhancements in `findutils`, `lttng-tools`, `openssl`, `gawk`, `str=
ace`, `lttng-tools`, `valgrind`, `perl`, `libxml-parser-perl`, `openssh`, `=
python3-cryptography`, `popt`

- Sysroot dependencies have been further optimised
- Significant effort to upstream / rationalise patches across a variety of =
recipes
- Allow the creation of block devices on top of UBI volumes
- archiver: new ARCHIVER_MODE[compression] to set tarball compression, and =
switch default to xz
- yocto-check-layer: add ability to perform tests from a global bbclass
- yocto-check-layer: improved README checks
- cve-check: add json output format
- cve-check: add coverage statistics on recipes with/without CVEs
- Added mirrors for kernel sources and uninative binaries on kernel.org
- glibc and binutils recipes now use shallow mirror tarballs for faster fet=
ching
- When patching fails, show more information on the fatal error

-  wic Image Creator enhancements:

  - Support rootdev identified by partition label
  - rawcopy: Add support for packed images
  - partition: Support valueless keys in sourceparams

- QA check enhancements:

   - Allow treating license issues as errors
   - Added a check that Upstream-Status patch tag is present and correctly =
formed
   - Added a check for directories that are expected to be empty
   - Ensure addition of patch-fuzz retriggers do_qa_patch
   - Added a sanity check for allarch packagegroups

- create-spdx class improvements:

   - Get SPDX-License-Identifier from source files
   - Generate manifest also for SDKs
   - New SPDX_ORG variable to allow changing the Organization field value
   - Added packageSupplier field
   - Added create_annotation function

- devtool add / recipetool create enhancements:

   - Extend curl detection when creating recipes
   - Handle GitLab URLs like we do GitHub
   - Recognize more standard license text variants
   - Separate licenses with & operator
   - Detect more known licenses in Python code
   - Move license md5sums data into CSV files
   - npm: Use README as license fallback

- SDK-related enhancements:

   - Extended recipes to `nativesdk`: `cargo`, `librsvg`, `libstd-rs`, `lib=
va`, `python3-docutil`, `python3-packaging`
   - Enabled nativesdk recipes to find a correct version of the rust cross =
compiler
   - Support creating per-toolchain cmake file in SDK

- Rust enhancements:

   - New python_setuptools3_rust class to enable building python extensions=
 in Rust
   - classes/meson: Add optional rust definitions

- QEMU / runqemu enhancements:

   - qemu: Add knob for enabling PMDK pmem support
   - qemu: add tpm string section to qemu acpi table
   - qemu: Build on musl targets
   - runqemu: support rootfs mounted ro
   - runqemu: add :term:`DEPLOY_DIR_IMAGE` replacement in QB_OPT_APPEND
   - runqemu: Allow auto-detection of the correct graphics options

- Capped `cpu_count()` (used to set parallelisation defaults) to 64 since a=
ny higher usually hurts parallelisation
- Adjust some GL-using recipes so that they only require virtual/egl
- package_rpm: use zstd instead of xz
- npm: new `EXTRA_OENPM` variable (to set node-gyp variables for example)
- npm: new `NPM_NODEDIR` variable
- perl: Enable threading
- u-boot: Convert ${UBOOT_ENV}.cmd into ${UBOOT_ENV}.scr
- u-boot: Split do_configure logic into separate file
- go.bbclass: Allow adding parameters to go ldflags
- go: log build id computations
- scons: support out-of-tree builds
- scripts: Add a conversion script to use SPDX license names
- scripts: Add convert-variable-renames script for inclusive language varia=
ble renaming
- binutils-cross-canadian: enable gold for mingw
- grub-efi: Add option to include all available modules
- bitbake.conf: allow wayland distro feature through for native/SDK builds
- weston-init: Pass --continue-without-input when launching weston
- weston: wrapper for weston modules argument
- weston: Add a knob to control simple clients
- uninative: Add version to uninative tarball name
- volatile-binds: SELinux and overlayfs extensions in mount-copybind
- gtk-icon-cache: Allow using gtk4
- kmod: Add an exclude directive to depmod
- os-release: add os-release-initrd package for use in systemd-based initra=
mfs images
- gstreamer1.0-plugins-base: add support for graphene
- gpg-sign: Add parameters to gpg signature function
- package_manager: sign DEB package feeds
- zstd: add libzstd package
- libical: build gobject and vala introspection
- dhcpcd: add option to set DBDIR location
- rpcbind: install rpcbind.conf
- mdadm: install mdcheck
- boost: add json lib
- libxkbcommon: allow building of API documentation
- libxkbcommon: split libraries and xkbcli into separate packages
- systemd: move systemd shared library into its own package
- systemd: Minimize udev package size if DISTRO_FEATURES doen't contain sys=
vinit

Known Issues in 4.0
~~~~~~~~~~~~~~~~~~

- `make` version 4.2.1 is known to be buggy on non-Ubuntu systems. If this =
`make`
  version is detected on host distributions other than Ubuntu at build star=
t time,
  then a warning will be displayed.

Recipe License changes in 4.0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following corrections have been made to the LICENSE values set by recip=
es:

* cmake: add BSD-1-Clause & MIT & BSD-2-Clause to LICENSE due to additional=
 vendored libraries in native/target context
* gettext: extend LICENSE conditional upon PACKAGECONFIG (due to vendored l=
ibraries)
* gstreamer1.0: update licenses of all modules to LGPL-2.1-or-later (with s=
ome exceptions that are GPL-2.0-or-later)
* gstreamer1.0-plugins-bad/ugly: use the GPL-2.0-or-later only when it is i=
n use
* kern-tools-native: add missing MIT license due to Kconfiglib
* libcap: add pam_cap license to LIC_FILES_CHKSUM if pam is enabled
* libidn2: add Unicode-DFS-2016 license
* libsdl2: add BSD-2-Clause to LICENSE due to default yuv2rgb and hidapi in=
clusion
* libx11-compose-data: update LICENSE to "MIT & MIT-style & BSD-1-Clause & =
HPND & HPND-sell-variant" to better reflect reality
* libx11: update LICENSE to "MIT & MIT-style & BSD-1-Clause & HPND & HPND-s=
ell-variant" to better reflect reality
* libxshmfence: correct LICENSE - MIT -> HPND
* newlib: add BSD-3-Clause to LICENSE
* python3-idna: correct LICENSE - Unicode -> Unicode-TOU
* python3-pip: add "Apache-2.0 & MPL-2.0 & LGPL-2.1-only & BSD-3-Clause & P=
SF-2.0 & BSD-2-Clause" to LICENSE due to vendored libraries

Other license-related notes:

- The ambiguous "BSD" license has been removed from the ``common-licenses``=
 directory.
  Each recipe that fetches or builds BSD-licensed code should specify the p=
roper
  version of the BSD license in its :term:`LICENSE` value.

- `LICENSE` definitions now have to use SPDX identifiers.
  A convert-spdx-licenses.py script can be used to update your recipes.



Security Fixes in 4.0
~~~~~~~~~~~~~~~~~~~~

- binutils: CVE-2021-42574, CVE-2021-45078
- curl: CVE-2021-22945, CVE-2021-22946, CVE-2021-22947
- epiphany: CVE-2021-45085, CVE-2021-45086, CVE-2021-45087, CVE-2021-45088
- expat: CVE-2021-45960, CVE-2021-46143, CVE-2022-22822, CVE-2022-22823, CV=
E-2022-22824, CVE-2022-22825, CVE-2022-22826, CVE-2022-22827, CVE-2022-2385=
2, CVE-2022-23990, CVE-2022-25235, CVE-2022-25236, CVE-2022-25313, CVE-2022=
-25314, CVE-2022-25315
- ffmpeg: CVE-2021-38114
- gcc: CVE-2021-35465, CVE-2021-42574, CVE-2021-46195, CVE-2022-24765
- glibc: CVE-2021-3998, CVE-2021-3999, CVE-2021-43396, CVE-2022-23218, CVE-=
2022-23219
- gmp: CVE-2021-43618
- go: CVE-2021-41771 and CVE-2021-41772
- grub2: CVE-2021-3981
- gzip: CVE-2022-1271
- libarchive : CVE-2021-31566, CVE-2021-36976
- libxml2: CVE-2022-23308
- libxslt: CVE-2021-30560
- lighttpd: CVE-2022-22707
- linux-yocto/5.10: amdgpu: CVE-2021-42327
- lua: CVE-2021-43396
- openssl: CVE-2021-4044, CVE-2022-0778
- qemu: CVE-2022-1050, CVE-2022-26353, CVE-2022-26354
- rpm: CVE-2021-3521
- seatd: CVE-2022-25643
- speex: CVE-2020-23903
- squashfs-tools: CVE-2021-41072
- systemd: CVE-2021-4034
- tiff: CVE-2022-0561, CVE-2022-0562, CVE-2022-0865, CVE-2022-0891, CVE-202=
2-0907, CVE-2022-0908, CVE-2022-0909, CVE-2022-0924, CVE-2022-1056, CVE-202=
2-22844
- unzip: CVE-2021-4217
- vim: CVE-2021-3796, CVE-2021-3872, CVE-2021-3875, CVE-2021-3927, CVE-2021=
-3928, CVE-2021-3968, CVE-2021-3973, CVE-2021-4187, CVE-2022-0128, CVE-2022=
-0156, CVE-2022-0158, CVE-2022-0261, CVE-2022-0318, CVE-2022-0319, CVE-2022=
-0554, CVE-2022-0696, CVE-2022-0714, CVE-2022-0729, CVE-2022-0943
- virglrenderer: CVE-2022-0135, CVE-2022-0175
- webkitgtk: CVE-2022-22589, CVE-2022-22590, CVE-2022-22592
- xz: CVE-2022-1271
- zlib: CVE-2018-25032



Recipe Upgrades in 4.0
~~~~~~~~~~~~~~~~~~~~~

- acpica: upgrade 20210730 -> 20211217
- acpid: upgrade 2.0.32 -> 2.0.33
- adwaita-icon-theme: update 3.34/38 -> 41.0
- alsa-ucm-conf: upgrade 1.2.6.2 -> 1.2.6.3
- alsa: upgrade 1.2.5 -> 1.2.6
- apt: upgrade 2.2.4 -> 2.4.3
- asciidoc: upgrade 9.1.0 -> 10.0.0
- atk: upgrade 2.36.0 -> 2.38.0
- at-spi2-core: upgrade 2.40.3 -> 2.42.0
- at: update 3.2.2 -> 3.2.5
- autoconf-archive: upgrade 2021.02.19 -> 2022.02.11
- automake: update 1.16.3 -> 1.16.5
- bash: upgrade 5.1.8 -> 5.1.16
- bind: upgrade 9.16.20 -> 9.18.1
- binutils: Bump to latest 2.38 release branch
- bison: upgrade 3.7.6 -> 3.8.2
- bluez5: upgrade 5.61 -> 5.64
- boost: update 1.77.0 -> 1.78.0
- btrfs-tools: upgrade 5.13.1 -> 5.16.2
- buildtools-installer: Update to use 3.4
- busybox: 1.34.0 -> 1.35.0
- ca-certificates: update 20210119 -> 20211016
- cantarell-fonts: update 0.301 -> 0.303.1
- ccache: upgrade 4.4 -> 4.6
- cmake: update 3.21.1 -> 3.22.3
- connman: update 1.40 -> 1.41
- coreutils: update 8.32 -> 9.0
- cracklib: update 2.9.5 -> 2.9.7
- createrepo-c: upgrade 0.17.4 -> 0.19.0
- cronie: upgrade 1.5.7 -> 1.6.0
- cups: update 2.3.3op2 -> 2.4.1
- curl: update 7.78.0 -> 7.82.0
- dbus: upgrade 1.12.20 -> 1.14.0
- debianutils: update 4.11.2 -> 5.7
- dhcpcd: upgrade 9.4.0 -> 9.4.1
- diffoscope: upgrade 181 -> 208
- dnf: upgrade 4.8.0 -> 4.11.1
- dpkg: update 1.20.9 ->  1.21.4
- e2fsprogs: upgrade 1.46.4 -> 1.46.5
- ed: upgrade 1.17 -> 1.18
- efivar: update 37 -> 38
- elfutils: update 0.185 -> 0.186
- ell: upgrade 0.43 -> 0.49
- enchant2: upgrade 2.3.1 -> 2.3.2
- epiphany: update 40.3 -> 42.0
- erofs-utils: update 1.3 -> 1.4
- ethtool: update to 5.16
- expat: upgrade 2.4.1 -> 2.4.7
- ffmpeg: update 4.4 -> 5.0
- file: upgrade 5.40 -> 5.41
- findutils: upgrade 4.8.0 -> 4.9.0
- flac: upgrade 1.3.3 -> 1.3.4
- freetype: upgrade 2.11.0 -> 2.11.1
- fribidi: upgrade 1.0.10 -> 1.0.11
- gawk: update 5.1.0 -> 5.1.1
- gcompat: Update to latest
- gdbm: upgrade 1.19 -> 1.23
- gdb: Upgrade to 11.2
- ghostscript: update 9.54.0 -> 9.55.0
- gi-docgen: upgrade 2021.7 -> 2022.1
- git: update 2.33.0 -> 2.35.2
- glib-2.0: update 2.68.4 -> 2.72.0
- glibc: Upgrade to 2.35
- glib-networking: update 2.68.2 -> 2.72.0
- glslang: update 11.5.0 -> 11.8.0
- gnu-config: update to latest revision
- gnupg: update 2.3.1 -> 2.3.4
- gnutls: update 3.7.2 -> 3.7.4
- gobject-introspection: upgrade 1.68.0 -> 1.72.0
- go-helloworld: update to latest revision
- go: update 1.16.7 -> 1.17.8
- gpgme: upgrade 1.16.0 -> 1.17.1
- gsettings-desktop-schemas: upgrade 40.0 -> 42.0
- gst-devtools: 1.18.4 -> 1.20.1
- gst-examples: 1.18.4 -> 1.18.6
- gstreamer1.0: 1.18.4 -> 1.20.1
- gstreamer1.0-libav: 1.18.4 -> 1.20.1
- gstreamer1.0-omx: 1.18.4 -> 1.20.1
- gstreamer1.0-plugins-bad: 1.18.4  1.20.1
- gstreamer1.0-plugins-base: 1.18.4 -> 1.20.1
- gstreamer1.0-plugins-good: 1.18.4 -> 1.20.1
- gstreamer1.0-plugins-ugly: 1.18.4 -> 1.20.1
- gstreamer1.0-python: 1.18.4 -> 1.20.1
- gstreamer1.0-rtsp-server: 1.18.4 -> 1.20.1
- gstreamer1.0-vaapi: 1.18.4 -> 1.20.1
- gtk+3: upgrade 3.24.30 -> 3.24.33
- gzip: upgrade 1.10 -> 1.12
- harfbuzz: upgrade 2.9.0 -> 4.0.1
- hdparm: upgrade 9.62 -> 9.63
- help2man: upgrade 1.48.4 -> 1.49.1
- icu: update 69.1 -> 70.1
- ifupdown: upgrade 0.8.36 -> 0.8.37
- inetutils: update 2.1 -> 2.2
- init-system-helpers: upgrade 1.60 -> 1.62
- iproute2: update to 5.17.0
- iputils: update 20210722 to 20211215
- iso-codes: upgrade 4.6.0 -> 4.9.0
- itstool: update 2.0.6 -> 2.0.7
- iw: upgrade 5.9 -> 5.16
- json-glib: upgrade 1.6.4 -> 1.6.6
- kea: update 1.8.2 -> 2.0.2
- kexec-tools: update 2.0.22 -> 2.0.23
- less: upgrade 590 -> 600
- libarchive: upgrade 3.5.1 -> 3.6.1
- libatomic-ops: upgrade 7.6.10 -> 7.6.12
- libbsd: upgrade 0.11.3 -> 0.11.5
- libcap: update 2.51 -> 2.63
- libcgroup: upgrade 2.0 -> 2.0.1
- libcomps: upgrade 0.1.17 -> 0.1.18
- libconvert-asn1-perl: upgrade 0.31 -> 0.33
- libdazzle: upgrade 3.40.0 -> 3.44.0
- libdnf: update 0.63.1 -> 0.66.0
- libdrm: upgrade 2.4.107 -> 2.4.110
- libedit: upgrade 20210714-3.1 -> 20210910-3.1
- liberation-fonts: update 2.1.4 -> 2.1.5
- libevdev: upgrade 1.11.0 -> 1.12.1
- libexif: update 0.6.22 -> 0.6.24
- libgit2: update 1.1.1 -> 1.4.2
- libgpg-error: update 1.42 -> 1.44
- libhandy: update 1.2.3 -> 1.5.0
- libical: upgrade 3.0.10 -> 3.0.14
- libinput: update to 1.19.3
- libjitterentropy: update 3.1.0 -> 3.4.0
- libjpeg-turbo: upgrade 2.1.1 -> 2.1.3
- libmd: upgrade 1.0.3 -> 1.0.4
- libmicrohttpd: upgrade 0.9.73 -> 0.9.75
- libmodulemd: upgrade 2.13.0 -> 2.14.0
- libpam: update 1.5.1 -> 1.5.2
- libpcre2: upgrade 10.37 -> 10.39
- libpipeline: upgrade 1.5.3 -> 1.5.5
- librepo: upgrade 1.14.1 -> 1.14.2
- librsvg: update 2.40.21 -> 2.52.7
- libsamplerate0: update 0.1.9 -> 0.2.2
- libsdl2: update 2.0.16 -> 2.0.20
- libseccomp: update to 2.5.3
- libsecret: upgrade 0.20.4 -> 0.20.5
- libsndfile1: bump to version 1.0.31
- libsolv: upgrade 0.7.19 -> 0.7.22
- libsoup-2.4: upgrade 2.72.0 -> 2.74.2
- libsoup: add a recipe for 3.0.5
- libssh2: update 1.9.0 -> 1.10.0
- libtasn1: upgrade 4.17.0 -> 4.18.0
- libtool: Upgrade 2.4.6 -> 2.4.7
- libucontext: Upgrade to 1.2 release
- libunistring: update 0.9.10 -> 1.0
- libunwind: upgrade 1.5.0 -> 1.6.2
- liburcu: upgrade 0.13.0 -> 0.13.1
- libusb1: upgrade 1.0.24 -> 1.0.25
- libuv: update 1.42.0 -> 1.44.1
- libva: update 2.12.0 -> 2.14.0
- libva-utils: upgrade 2.13.0 -> 2.14.0
- libwebp: 1.2.1 -> 1.2.2
- libwpe: upgrade 1.10.1 -> 1.12.0
- libx11: update to 1.7.3.1
- libxcrypt: upgrade 4.4.26 -> 4.4.27
- libxcrypt-compat: upgrade 4.4.26 -> 4.4.27
- libxi: update to 1.8
- libxkbcommon: update to 1.4.0
- libxml2: update to 2.9.13
- libxslt: update to v1.1.35
- lighttpd: update 1.4.59 -> 1.4.64
- linux-firmware: upgrade 20210818 -> 20220310
- linux-libc-headers: update to v5.16
- linux-yocto/5.10: update to v5.10.109
- linux-yocto/5.15: introduce recipes (v5.15.32)
- linux-yocto-dev: update to v5.18+
- linux-yocto-rt/5.10: update to -rt61
- linux-yocto-rt/5.15: update to -rt34
- llvm: update 12.0.1 -> 13.0.1
- logrotate: update 3.18.1 -> 3.19.0
- lsof: update 4.91 -> 4.94.0
- ltp: update 20210927 -> 20220121
- ltp: Update to 20210927
- lttng-modules: update devupstream to latest 2.13
- lttng-modules: update to 2.13.3
- lttng-tools: upgrade 2.13.0 -> 2.13.4
- lttng-ust: upgrade 2.13.0 -> 2.13.2
- lua: update 5.3.6 -> 5.4.4
- lzip: upgrade 1.22 -> 1.23
- man-db: upgrade 2.9.4 -> 2.10.2
- man-pages: update to 5.13
- mdadm: update 4.1 -> 4.2
- mesa: upgrade 21.2.1 -> 22.0.0
- meson: update 0.58.1 -> 0.61.3
- minicom: Upgrade 2.7.1 -> 2.8
- mmc-utils: upgrade to latest revision
- mobile-broadband-provider-info: upgrade 20210805 -> 20220315
- mpg123: upgrade 1.28.2 -> 1.29.3
- msmtp: upgrade 1.8.15 -> 1.8.20
- mtd-utils: upgrade 2.1.3 -> 2.1.4
- mtools: upgrade 4.0.35 -> 4.0.38
- musl: Update to latest master
- ncurses: update 6.2 -> 6.3
- newlib: Upgrade 4.1.0 -> 4.2.0
- nfs-utils: upgrade 2.5.4 -> 2.6.1
- nghttp2: upgrade 1.45.1 -> 1.47.0
- ofono: upgrade 1.32 -> 1.34
- opensbi: Upgrade to 1.0
- openssh: upgrade 8.7p1 -> 8.9
- openssl: update 1.1.1l -> 3.0.2
- opkg: upgrade 0.4.5 -> 0.5.0
- opkg-utils: upgrade 0.4.5 -> 0.5.0
- ovmf: update 202105 -> 202202
- p11-kit: update 0.24.0 -> 0.24.1
- pango: upgrade 1.48.9 -> 1.50.4
- patchelf: upgrade 0.13 -> 0.14.5
- perl-cross: update 1.3.6 -> 1.3.7
- perl: update 5.34.0 -> 5.34.1
- piglit: upgrade to latest revision
- pigz: upgrade 2.6 -> 2.7
- pinentry: update 1.1.1 -> 1.2.0
- pkgconfig: Update to latest
- psplash: upgrade to latest revision
- puzzles: upgrade to latest revision
- python3-asn1crypto: upgrade 1.4.0 -> 1.5.1
- python3-attrs: upgrade 21.2.0 -> 21.4.0
- python3-cryptography: Upgrade to 36.0.2
- python3-cryptography-vectors: upgrade to 36.0.2
- python3-cython: upgrade 0.29.24 -> 0.29.28
- python3-dbusmock: update to 0.27.3
- python3-docutils: upgrade 0.17.1 0.18.1
- python3-dtschema: upgrade 2021.10 -> 2022.1
- python3-gitdb: upgrade 4.0.7 -> 4.0.9
- python3-git: update to 3.1.27
- python3-hypothesis: upgrade 6.15.0 -> 6.39.5
- python3-imagesize: upgrade 1.2.0 -> 1.3.0
- python3-importlib-metadata: upgrade 4.6.4 -> 4.11.3
- python3-jinja2: upgrade 3.0.1 -> 3.1.1
- python3-jsonschema: upgrade 3.2.0 -> 4.4.0
- python3-libarchive-c: upgrade 3.1 -> 4.0
- python3-magic: upgrade 0.4.24 -> 0.4.25
- python3-mako: upgrade 1.1.5 -> 1.1.6
- python3-markdown: upgrade 3.3.4 -> 3.3.6
- python3-markupsafe: upgrade 2.0.1 -> 2.1.1
- python3-more-itertools: upgrade 8.8.0 -> 8.12.0
- python3-numpy: upgrade 1.21.2 -> 1.22.3
- python3-packaging: upgrade 21.0 -> 21.3
- python3-pathlib2: upgrade 2.3.6 -> 2.3.7
- python3-pbr: upgrade 5.6.0 -> 5.8.1
- python3-pip: update 21.2.4 -> 22.0.3
- python3-pycairo: upgrade 1.20.1 -> 1.21.0
- python3-pycryptodome: upgrade 3.10.1 -> 3.14.1
- python3-pyelftools: upgrade 0.27 -> 0.28
- python3-pygments: upgrade 2.10.0 -> 2.11.2
- python3-pygobject: upgrade 3.40.1 -> 3.42.0
- python3-pyparsing: update to 3.0.7
- python3-pyrsistent: upgrade 0.18.0 -> 0.18.1
- python3-pytest-runner: upgrade 5.3.1 -> 6.0.0
- python3-pytest-subtests: upgrade 0.6.0 -> 0.7.0
- python3-pytest: upgrade 6.2.4 -> 7.1.1
- python3-pytz: upgrade 2021.3 -> 2022.1
- python3-py: upgrade 1.10.0 -> 1.11.0
- python3-pyyaml: upgrade 5.4.1 -> 6.0
- python3-ruamel-yaml: upgrade 0.17.16 -> 0.17.21
- python3-scons: upgrade 4.2.0 -> 4.3.0
- python3-setuptools-scm: upgrade 6.0.1 -> 6.4.2
- python3-setuptools: update to 59.5.0
- python3-smmap: update to 5.0.0
- python3-tomli: upgrade 1.2.1 -> 2.0.1
- python3: update to 3.10.3
- python3-urllib3: upgrade 1.26.8 -> 1.26.9
- python3-zipp: upgrade 3.5.0 -> 3.7.0
- qemu: update 6.0.0 -> 6.2.0
- quilt: upgrade 0.66 -> 0.67
- re2c: upgrade 2.2 -> 3.0
- readline: upgrade 8.1 -> 8.1.2
- repo: upgrade 2.17.3 -> 2.22
- resolvconf: update 1.87 -> 1.91
- rng-tools: upgrade 6.14 -> 6.15
- rpcsvc-proto: upgrade 1.4.2 -> 1.4.3
- rpm: update 4.16.1.3 -> 4.17.0
- rt-tests: update 2.1 -> 2.3
- ruby: update 3.0.2 -> 3.1.1
- rust: update 1.54.0 -> 1.59.0
- rxvt-unicode: upgrade 9.26 -> 9.30
- screen: upgrade 4.8.0 -> 4.9.0
- shaderc: update 2021.1 -> 2022.1
- shadow: upgrade 4.9 -> 4.11.1
- socat: upgrade 1.7.4.1 -> 1.7.4.3
- spirv-headers: bump to b42ba6 revision
- spirv-tools: update 2021.2 -> 2022.1
- sqlite3: upgrade 3.36.0 -> 3.38.2
- strace: update 5.14 -> 5.16
- stress-ng: upgrade 0.13.00 -> 0.13.12
- sudo: update 1.9.7p2 -> 1.9.10
- sysklogd: upgrade 2.2.3 -> 2.3.0
- sysstat: upgrade 12.4.3 -> 12.4.5
- systemd: update 249.3 -> 250.4
- systemtap: upgrade 4.5 -> 4.6
- sysvinit: upgrade 2.99 -> 3.01
- tzdata: update to 2022a
- u-boot: upgrade 2021.07 -> 2022.01
- uninative: Upgrade to 3.6 with gcc 12 support
- util-linux: update 2.37.2 -> 2.37.4
- vala: upgrade 0.52.5 -> 0.56.0
- valgrind: update 3.17.0 -> 3.18.1
- vim: upgrade to 8.2 patch 4681
- vte: upgrade 0.64.2 -> 0.66.2
- vulkan-headers: upgrade 1.2.182 -> 1.2.191
- vulkan-loader: upgrade 1.2.182 -> 1.2.198.1
- vulkan-samples: update to latest revision
- vulkan-tools: upgrade 1.2.182 -> 1.2.191
- vulkan: update 1.2.191.0 -> 1.3.204.1
- waffle: update 1.6.1 -> 1.7.0
- wayland-protocols: upgrade 1.21 -> 1.25
- wayland: upgrade 1.19.0 -> 1.20.0
- webkitgtk: upgrade 2.34.0 -> 2.36.0
- weston: upgrade 9.0.0 -> 10.0.0
- wget: update 1.21.1 -> 1.21.3
- wireless-regdb: upgrade 2021.07.14 -> 2022.02.18
- wpa-supplicant: update 2.9 -> 2.10
- wpebackend-fdo: upgrade 1.10.0 -> 1.12.0
- xauth: upgrade 1.1 -> 1.1.1
- xf86-input-libinput: update to 1.2.1
- xf86-video-intel: update to latest commit
- xkeyboard-config: update to 2.35.1
- xorgproto: update to 2021.5
- xserver-xorg: update 1.20.13 -> 21.1.3
- xwayland: update 21.1.2 -> 22.1.0
- xxhash: upgrade 0.8.0 -> 0.8.1
- zstd: update 1.5.0 -> 1.5.2



Contributors to 4.0
~~~~~~~~~~~~~~~~~~

Thanks to the following people who contributed to this release:

- Abongwa Amahnui Bonalais
- Adriaan Schmidt
- Adrian Freihofer
- Ahmad Fatoum
- Ahmed Hossam
- Ahsan Hussain
- Alejandro Hernandez Samaniego
- Alessio Igor Bogani
- Alexander Kanavin
- Alexandre Belloni
- Alexandru Ardelean
- Alexey Brodkin
- Alex Stewart
- Andreas M?ller
- Andrei Gherzan
- Andrej Valek
- Andres Beltran
- Andrew Jeffery
- Andrey Zhizhikin
- Anton Mikanovich
- Anuj Mittal
- Bill Pittman
- Bruce Ashfield
- Caner Altinbasak
- Carlos Rafael Giani
- Chaitanya Vadrevu
- Changhyeok Bae
- Changqing Li
- Chen Qi
- Christian Eggers
- Claudius Heine
- Claus Stovgaard
- Daiane Angolini
- Daniel Ammann
- Daniel Gomez
- Daniel McGregor
- Daniel M?ller
- Daniel Wagenknecht
- David Joyner
- David Reyna
- Denys Dmytriyenko
- Dhruva Gole
- Diego Sueiro
- Dmitry Baryshkov
- Ferry Toth
- Florian Amstutz
- Henry Kleynhans
- He Zhe
- Hongxu Jia
- Hsia-Jun(Randy) Li
- Ian Ray
- Jacob Kroon
- Jagadeesh Krishnanjanappa
- Jasper Orschulko
- Jim Wilson
- Joel Winarske
- Joe Slater
- Jon Mason
- Jose Quaresma
- Joshua Watt
- Justin Bronder
- Kai Kang
- Kamil Dziezyk
- Kevin Hao
- Khairul Rohaizzat Jamaluddin
- Khem Raj
- Kiran Surendran
- Konrad Weihmann
- Kory Maincent
- Lee Chee Yang
- Leif Middelschulte
- Lei Maohui
- Li Wang
- Liwei Song
- Luca Boccassi
- Lukasz Majewski
- Luna Gr?fje
- Manuel Leonhardt
- Marek Vasut
- Mark Hatle
- Markus Niebel
- Markus Volk
- Marta Rybczynska
- Martin Beeger
- Martin Jansa
- Matthias Klein
- Matt Madison
- Maximilian Blenk
- Max Krummenacher
- Michael Halstead
- Michael Olbrich
- Michael Opdenacker
- Mike Crowe
- Ming Liu
- Mingli Yu
- Minjae Kim
- Nicholas Sielicki
- Olaf Mandel
- Oleh Matiusha
- Oleksandr Kravchuk
- Oleksandr Ocheretnyi
- Oleksandr Suvorov
- Oleksiy Obitotskyy
- Otavio Salvador
- Pablo Saavedra
- Paul Barker
- Paul Eggleton
- Pavel Zhukov
- Peter Hoyes
- Peter Kjellerstedt
- Petr Vorel
- Pgowda
- Quentin Schulz
- Ralph Siemsen
- Randy Li
- Randy MacLeod
- Rasmus Villemoes
- Ricardo Salveti
- Richard Neill
- Richard Purdie
- Robert Joslyn
- Robert P. J. Day
- Robert Yang
- Ross Burton
- Rudolf J Streif
- Sakib Sajal
- Samuli Piippo
- Saul Wold
- Scott Murray
- Sean Anderson
- Simone Weiss
- Simon Kuhnle
- S. Lockwood-Childs
- Stefan Herbrechtsmeier
- Steve Sakoman
- Sundeep KOKKONDA
- Tamizharasan Kumar
- Tean Cunningham
- Teoh Jay Shen
- Thomas Perrot
- Tim Orling
- Tobias Kaufmann
- Tom Hochstein
- Tony McDowell
- Trevor Gamblin
- Ulrich ?lmann
- Valerii Chernous
- Vivien Didelot
- Vyacheslav Yurkov
- Wang Mingyu
- Xavier Berger
- Yi Zhao
- Yongxin Liu
- Yureka
- Zev Weiss
- Zheng Ruoqin
- Zolt?n B?sz?rm?nyi
- Zygmunt Krynicki



Repositories / Downloads for 4.0
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Repository Name: poky
Repository Location: https://git.yoctoproject.org/git/poky
Branch: kirkstone
Tag: yocto-4.0
Git Revision: 00cfdde791a0176c134f31e5a09eff725e75b905
Release Artefact: poky-00cfdde791a0176c134f31e5a09eff725e75b905
sha: 4cedb491b7bf0d015768c61690f30d7d73f4266252d6fba907bba97eac83648c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/poky-00cfdde791a=
0176c134f31e5a09eff725e75b905.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0/poky-00cfdde791a0176c134f31=
e5a09eff725e75b905.tar.bz2

Repository Name: openembedded-core
Repository Location: https://git.openembedded.org/openembedded-core
Branch: kirkstone
Tag: yocto-4.0
Git Revision: 92fcb6570bddd0c5717d8cfdf38ecf3e44942b0f
Release Artefact: oecore-92fcb6570bddd0c5717d8cfdf38ecf3e44942b0f
sha: c042629752543a10b0384b2076b1ee8742fa5e8112aef7b00b3621f8387a51c6
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/oecore-92fcb6570=
bddd0c5717d8cfdf38ecf3e44942b0f.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0/oecore-92fcb6570bddd0c5717d=
8cfdf38ecf3e44942b0f.tar.bz2

Repository Name: meta-mingw
Repository Location: https://git.yoctoproject.org/git/meta-mingw
Branch: kirkstone
Tag: yocto-4.0
Git Revision: a90614a6498c3345704e9611f2842eb933dc51c1
Release Artefact: meta-mingw-a90614a6498c3345704e9611f2842eb933dc51c1
sha: 49f9900bfbbc1c68136f8115b314e95d0b7f6be75edf36a75d9bcd1cca7c6302
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/meta-mingw-a9061=
4a6498c3345704e9611f2842eb933dc51c1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0/meta-mingw-a90614a6498c3345=
704e9611f2842eb933dc51c1.tar.bz2

Repository Name: meta-gplv2
Repository Location: https://git.yoctoproject.org/git/meta-gplv2
Branch: kirkstone
Tag: yocto-4.0
Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/meta-gplv2-d2f8b=
5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0/meta-gplv2-d2f8b5cdb285b72a=
4ed93450f6703ca27aa42e8a.tar.bz2

Repository Name: bitbake
Repository Location: https://git.openembedded.org/bitbake
Branch: 2.0
Tag: yocto-4.0
Git Revision: c212b0f3b542efa19f15782421196b7f4b64b0b9
Release Artefact: bitbake-c212b0f3b542efa19f15782421196b7f4b64b0b9
sha: 6872095c7d7be5d791ef3e18b6bab2d1e0e237962f003d2b00dc7bd6fb6d2ef7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/bitbake-c212b0f3=
b542efa19f15782421196b7f4b64b0b9.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-4.0/bitbake-c212b0f3b542efa19f1=
5782421196b7f4b64b0b9.tar.bz2

Repository Name: yocto-docs
Repository Location: https://git.yoctoproject.org/git/yocto-docs
Branch: kirkstone
Tag: yocto-4.0
Git Revision: a6f571ad5b087385cad8765ed455c4b4eaeebca6

IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--_000_PA4PR08MB74116FCA0CBB2815B0D4F0A4E8FA9PA4PR08MB7411eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Awesome!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Thank you to everyone who contributed to this release.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Ross<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span lang=3D"EN-M=
Y" style=3D"font-size:12.0pt;color:black">From:
</span></b><span lang=3D"EN-MY" style=3D"font-size:12.0pt;color:black">yoct=
o@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of =
Lee Chee Yang via lists.yoctoproject.org &lt;chee.yang.lee=3Dintel.com@list=
s.yoctoproject.org&gt;<br>
<b>Date: </b>Wednesday, 27 April 2022 at 02:49<br>
<b>To: </b>yocto-announce@lists.yoctoproject.org &lt;yocto-announce@lists.y=
octoproject.org&gt;, yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproj=
ect.org&gt;<br>
<b>Subject: </b>[yocto] [ANNOUNCEMENT] Yocto Project 4.0 is Released<o:p></=
o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Hi <=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">We a=
re pleased to announce the Yocto Project 4.0 Release is now available for d=
ownload.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/poky-00cf=
dde791a0176c134f31e5a09eff725e75b905.tar.bz2">http://downloads.yoctoproject=
.org/releases/yocto/yocto-4.0/poky-00cfdde791a0176c134f31e5a09eff725e75b905=
.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://mirrors.kernel.org/yocto/yocto/yocto-4.0/poky-00cfdde791a0176=
c134f31e5a09eff725e75b905.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yo=
cto-4.0/poky-00cfdde791a0176c134f31e5a09eff725e75b905.tar.bz2</a><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">A gp=
g signed version of these release notes is available at:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/RELEASENO=
TES">http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/RELEASENOTE=
S</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Full=
 Test Report:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/testrepor=
t.txt">http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/testrepor=
t.txt</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Than=
k you for everyone's contributions to this release.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Chee=
 Yang Lee<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"mailto:chee.yang.lee@intel.com">chee.yang.lee@intel.com</a><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Yoct=
o Project Build and Release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Rele=
ase notes for 4.0 (kirkstone)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">----=
-----------------------------<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">New =
Features / Enhancements in 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Li=
nux kernel 5.15, glibc 2.35 and ~300 other recipe upgrades<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Re=
producibility: this release fixes the reproducibility issues with `rust-llv=
m` and<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; `golang`. Recipes in OpenEmbedded-Core are now fully reproducible. Funct=
ionality<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; previously in the optional &quot;reproducible&quot; class has been merge=
d into the base class.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ne=
twork access is now disabled by default for tasks other than where it is ex=
pected to ensure build integrity (where host kernel supports it)<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Th=
e Yocto Project now allows you to reuse the Shared State cache from<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; its autobuilder. If the network connection between our server and your<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; machine is faster than you would build recipes from source, you can<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; try to speed up your builds by using such Shared State and Hash<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; Equivalence by setting::<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp; BB_SIGNATURE_HANDLER =3D &quot;OEEquivHash&quot;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp; BB_HASHSERVE =3D &quot;auto&quot;<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp; BB_HASHSERVE_UPSTREAM =3D &quot;typhoon.yocto.io:8687&=
quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp; SSTATE_MIRRORS ?=3D
<a href=3D"file:///.*%20https:/sstate.yoctoproject.org/&amp;YOCTO_DOC_VERSI=
ON;/PATH;downloadfilename=3DPATH">
file://.* https://sstate.yoctoproject.org/&amp;YOCTO_DOC_VERSION;/PATH;down=
loadfilename=3DPATH</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Th=
e Python package build process is now based on wheels<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; in line with the upstream direction.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ne=
w overlayfs and overlayfs-etc classes and<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; `overlayroot` support in the initramfs framework to make it easier to<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; overlay read-only filesystems (for example) with OverlayFS.<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- In=
clusive language adjustments to some variable names - see the<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; `4.0 migration guide` for details.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ne=
w recipes:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `buildtools-docs-tarball`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `libptytty`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `libxcvt`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `lua`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `nghttp2`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-alabaster`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-asn1crypto`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-babel`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-bcrypt`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-certifi`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-cffi`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-chardet`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-cryptography`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-cryptography-vectors`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-dtschema`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-flit-core`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-idna`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-imagesize`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-installer`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-iso8601`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-jsonpointer`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-jsonschema`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-ndg-httpsclient`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-ply`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-poetry-core`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pretend`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-psutil`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pyasn1`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pycparser`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pyopenssl`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pyrsistent`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pysocks`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pytest-runner`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pytest-subtests`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-pytz`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-requests`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-rfc3339-validator`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-rfc3986-validator`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-rfc3987`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-ruamel-yaml`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-semantic-version`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-setuptools-rust-native`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-snowballstemmer`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinx`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinxcontrib-applehelp`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinxcontrib-devhelp`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinxcontrib-htmlhelp`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinxcontrib-jsmath`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinxcontrib-qthelp`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinxcontrib-serializinghtml`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-sphinx-rtd-theme`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-strict-rfc3339`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-tomli`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-typing-extensions`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-urllib3`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-vcversioner`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-webcolors`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `python3-wheel`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `repo`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - `seatd`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ex=
tended recipes to `native`: `wayland`, `wayland-protocols`<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Sh=
ared state (sstate) improvements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Switched to ZStandard (zstd)&nbsp; instead<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp; of Gzip, for better performance.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Allow validation of sstate signatures against a list of keys<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Improved error messages and exception handling<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Bi=
tBake enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Fetcher enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - New `crate fetcher` for Rust packages<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - Added striplevel support to unpack<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - git: Add a warning asking users to set a branc=
h in git urls<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - git: Allow git fetcher to support subdir param=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - git: canonicalize ids in generated tarballs<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - git: stop generated tarballs from leaking info=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - npm: Put all downloaded files in the npm2 dire=
ctory<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - npmsw: Add support for duplicate dependencies =
without url<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - npmsw: Add support for github prefix in npm sh=
rinkwrap version<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - ssh: now supports checkstatus, allows : in URL=
s (both required for use with sstate) and no longer requires username<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - wget: add redirectauth parameter<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - wget: add 30s timeout for checkstatus calls<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Show warnings for append/prepend/remove operators combined with =
+=3D/.=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Add bb.warnonce() and bb.erroronce() log methods<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Improved setscene task display<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Show elapsed time also for tasks with progress bars<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Improved cleanup on forced shutdown (either because of errors or=
 Ctrl+C)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - contrib: Add Dockerfile for building PR service container<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Change file format of siginfo files to use zstd compressed json<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Display active tasks when printing keep-alive message to help de=
bugging<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">-&nb=
sp; Architecture-specific enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - ARM:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - tune-cortexa72: Enable the crc extension by de=
fault for cortexa72<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - qemuarm64: Add tiny ktype to qemuarm64 bsp<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - armv9a/tune: Add the support for the Neoverse =
N2 core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - arch-armv8-5a.inc: Add tune include for armv8.=
5a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - grub-efi: Add xen_boot support when 'xen' is i=
n DISTRO_FEATURES for aarch64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - tune-cortexa73: Introduce cortexa73-crypto tun=
e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - libacpi: Build libacpi also for 'aarch64' mach=
ines<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - core-image-tiny-initramfs: Mark recipe as 32 b=
it ARM compatible<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - PowerPC:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - weston-init: Use pixman rendering for qemuppc6=
4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp; &nbsp;- rust: add support for big endian 64-bit PowerP=
C<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - rust: Add snapshot checksums for powerpc64le<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - RISC-V:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - libunwind: Enable for rv64<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - systemtap: Enable for riscv64<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - linux-yocto-dev: add qemuriscv32<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - packagegroup-core-tools-profile: Enable system=
tap for riscv64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - qemuriscv: Use virtio-tablet-pci for mouse<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - x86:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; - kernel-yocto: conditionally enable stack prote=
ction checking on x86-64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- &n=
bsp;Kernel-related enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Allow initramfs to be built from a separate multiconfig<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Make kernel-base recommend kernel-image, not depend (allowing im=
ages containing kernel modules without kernel image)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - linux-yocto: split vtpm for more granular inclusion<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - linux-yocto: cfg/debug: add configs for kcsan<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - linux-yocto: cfg: add kcov feature fragment<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - linux-yocto: export pkgconfig variables to devshell<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - linux-yocto-dev: use versioned branch as default<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - New `KERNEL_DEBUG_TIMESTAMPS` variable (to replace removed `BUIL=
D_REPRODUCIBLE_BINARIES` for the kernel)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Introduce python3-dtschema-wrapper in preparation for mandatory =
schema checking on dtb files in 5.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Allow disabling kernel artifact symlink creation<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Allow changing default .bin kernel artifact extension<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- FI=
T image related enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - New `FIT_SUPPORTED_INITRAMFS_FSTYPES` variable to allow extendin=
g initramfs image types to look for<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - New `FIT_CONF_PREFIX` variable to allow overriding FIT configura=
tion prefix<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Use 'bbnote' for better logging<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ne=
w :term:`PACKAGECONFIG` options in `curl`, `dtc`, `epiphany`, `git`, `git`,=
 `gstreamer1.0-plugins-bad`, `linux-yocto-dev`, `kmod`, `mesa`, `piglit`, `=
qemu`, `rpm`, `systemd`, `webkitgtk`,
 `weston-init`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pt=
est enhancements in `findutils`, `lttng-tools`, `openssl`, `gawk`, `strace`=
, `lttng-tools`, `valgrind`, `perl`, `libxml-parser-perl`, `openssh`, `pyth=
on3-cryptography`, `popt`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Sy=
sroot dependencies have been further optimised<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Si=
gnificant effort to upstream / rationalise patches across a variety of reci=
pes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
low the creation of block devices on top of UBI volumes<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ar=
chiver: new ARCHIVER_MODE[compression] to set tarball compression, and swit=
ch default to xz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- yo=
cto-check-layer: add ability to perform tests from a global bbclass<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- yo=
cto-check-layer: improved README checks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cv=
e-check: add json output format<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cv=
e-check: add coverage statistics on recipes with/without CVEs<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ad=
ded mirrors for kernel sources and uninative binaries on kernel.org<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gl=
ibc and binutils recipes now use shallow mirror tarballs for faster fetchin=
g<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Wh=
en patching fails, show more information on the fatal error<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">-&nb=
sp; wic Image Creator enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; - Support rootdev identified by partition label<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; - rawcopy: Add support for packed images<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; - partition: Support valueless keys in sourceparams<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- QA=
 check enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Allow treating license issues as errors<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Added a check that Upstream-Status patch tag is present and corr=
ectly formed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Added a check for directories that are expected to be empty<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Ensure addition of patch-fuzz retriggers do_qa_patch<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Added a sanity check for allarch packagegroups<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cr=
eate-spdx class improvements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Get SPDX-License-Identifier from source files<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Generate manifest also for SDKs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - New SPDX_ORG variable to allow changing the Organization field v=
alue<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Added packageSupplier field<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Added create_annotation function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- de=
vtool add / recipetool create enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Extend curl detection when creating recipes<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Handle GitLab URLs like we do GitHub<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Recognize more standard license text variants<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Separate licenses with &amp; operator<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Detect more known licenses in Python code<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Move license md5sums data into CSV files<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - npm: Use README as license fallback<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- SD=
K-related enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Extended recipes to `nativesdk`: `cargo`, `librsvg`, `libstd-rs`=
, `libva`, `python3-docutil`, `python3-packaging`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Enabled nativesdk recipes to find a correct version of the rust =
cross compiler<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - Support creating per-toolchain cmake file in SDK<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ru=
st enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - New python_setuptools3_rust class to enable building python exte=
nsions in Rust<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - classes/meson: Add optional rust definitions<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- QE=
MU / runqemu enhancements:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - qemu: Add knob for enabling PMDK pmem support<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - qemu: add tpm string section to qemu acpi table<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - qemu: Build on musl targets<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - runqemu: support rootfs mounted ro<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - runqemu: add :term:`DEPLOY_DIR_IMAGE` replacement in QB_OPT_APPE=
ND<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;&nbsp; - runqemu: Allow auto-detection of the correct graphics options<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ca=
pped `cpu_count()` (used to set parallelisation defaults) to 64 since any h=
igher usually hurts parallelisation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ad=
just some GL-using recipes so that they only require virtual/egl<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pa=
ckage_rpm: use zstd instead of xz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- np=
m: new `EXTRA_OENPM` variable (to set node-gyp variables for example)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- np=
m: new `NPM_NODEDIR` variable<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pe=
rl: Enable threading<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- u-=
boot: Convert ${UBOOT_ENV}.cmd into ${UBOOT_ENV}.scr<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- u-=
boot: Split do_configure logic into separate file<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- go=
.bbclass: Allow adding parameters to go ldflags<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- go=
: log build id computations<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sc=
ons: support out-of-tree builds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sc=
ripts: Add a conversion script to use SPDX license names<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sc=
ripts: Add convert-variable-renames script for inclusive language variable =
renaming<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bi=
nutils-cross-canadian: enable gold for mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gr=
ub-efi: Add option to include all available modules<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bi=
tbake.conf: allow wayland distro feature through for native/SDK builds<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- we=
ston-init: Pass --continue-without-input when launching weston<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- we=
ston: wrapper for weston modules argument<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- we=
ston: Add a knob to control simple clients<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- un=
inative: Add version to uninative tarball name<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vo=
latile-binds: SELinux and overlayfs extensions in mount-copybind<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gt=
k-icon-cache: Allow using gtk4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- km=
od: Add an exclude directive to depmod<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- os=
-release: add os-release-initrd package for use in systemd-based initramfs =
images<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-plugins-base: add support for graphene<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gp=
g-sign: Add parameters to gpg signature function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pa=
ckage_manager: sign DEB package feeds<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- zs=
td: add libzstd package<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bical: build gobject and vala introspection<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- dh=
cpcd: add option to set DBDIR location<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rp=
cbind: install rpcbind.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- md=
adm: install mdcheck<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bo=
ost: add json lib<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxkbcommon: allow building of API documentation<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxkbcommon: split libraries and xkbcli into separate packages<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
stemd: move systemd shared library into its own package<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
stemd: Minimize udev package size if DISTRO_FEATURES doen't contain sysvini=
t<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Know=
n Issues in 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- `m=
ake` version 4.2.1 is known to be buggy on non-Ubuntu systems. If this `mak=
e`<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; version is detected on host distributions other than Ubuntu at build sta=
rt time,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; then a warning will be displayed.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Reci=
pe License changes in 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">The =
following corrections have been made to the LICENSE values set by recipes:<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* cm=
ake: add BSD-1-Clause &amp; MIT &amp; BSD-2-Clause to LICENSE due to additi=
onal vendored libraries in native/target context<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* ge=
ttext: extend LICENSE conditional upon PACKAGECONFIG (due to vendored libra=
ries)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* gs=
treamer1.0: update licenses of all modules to LGPL-2.1-or-later (with some =
exceptions that are GPL-2.0-or-later)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* gs=
treamer1.0-plugins-bad/ugly: use the GPL-2.0-or-later only when it is in us=
e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* ke=
rn-tools-native: add missing MIT license due to Kconfiglib<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* li=
bcap: add pam_cap license to LIC_FILES_CHKSUM if pam is enabled<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* li=
bidn2: add Unicode-DFS-2016 license<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* li=
bsdl2: add BSD-2-Clause to LICENSE due to default yuv2rgb and hidapi inclus=
ion<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* li=
bx11-compose-data: update LICENSE to &quot;MIT &amp; MIT-style &amp; BSD-1-=
Clause &amp; HPND &amp; HPND-sell-variant&quot; to better reflect reality<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* li=
bx11: update LICENSE to &quot;MIT &amp; MIT-style &amp; BSD-1-Clause &amp; =
HPND &amp; HPND-sell-variant&quot; to better reflect reality<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* li=
bxshmfence: correct LICENSE - MIT -&gt; HPND<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* ne=
wlib: add BSD-3-Clause to LICENSE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* py=
thon3-idna: correct LICENSE - Unicode -&gt; Unicode-TOU<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">* py=
thon3-pip: add &quot;Apache-2.0 &amp; MPL-2.0 &amp; LGPL-2.1-only &amp; BSD=
-3-Clause &amp; PSF-2.0 &amp; BSD-2-Clause&quot; to LICENSE due to vendored=
 libraries<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Othe=
r license-related notes:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Th=
e ambiguous &quot;BSD&quot; license has been removed from the ``common-lice=
nses`` directory.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; Each recipe that fetches or builds BSD-licensed code should specify the =
proper<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; version of the BSD license in its :term:`LICENSE` value.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- `L=
ICENSE` definitions now have to use SPDX identifiers.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p; A convert-spdx-licenses.py script can be used to update your recipes.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Secu=
rity Fixes in 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bi=
nutils: CVE-2021-42574, CVE-2021-45078<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cu=
rl: CVE-2021-22945, CVE-2021-22946, CVE-2021-22947<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ep=
iphany: CVE-2021-45085, CVE-2021-45086, CVE-2021-45087, CVE-2021-45088<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ex=
pat: CVE-2021-45960, CVE-2021-46143, CVE-2022-22822, CVE-2022-22823, CVE-20=
22-22824, CVE-2022-22825, CVE-2022-22826, CVE-2022-22827, CVE-2022-23852, C=
VE-2022-23990, CVE-2022-25235, CVE-2022-25236,
 CVE-2022-25313, CVE-2022-25314, CVE-2022-25315<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ff=
mpeg: CVE-2021-38114<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gc=
c: CVE-2021-35465, CVE-2021-42574, CVE-2021-46195, CVE-2022-24765<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gl=
ibc: CVE-2021-3998, CVE-2021-3999, CVE-2021-43396, CVE-2022-23218, CVE-2022=
-23219<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gm=
p: CVE-2021-43618<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- go=
: CVE-2021-41771 and CVE-2021-41772<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gr=
ub2: CVE-2021-3981<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gz=
ip: CVE-2022-1271<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
barchive : CVE-2021-31566, CVE-2021-36976<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxml2: CVE-2022-23308<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxslt: CVE-2021-30560<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
ghttpd: CVE-2022-22707<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-yocto/5.10: amdgpu: CVE-2021-42327<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lu=
a: CVE-2021-43396<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- op=
enssl: CVE-2021-4044, CVE-2022-0778<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- qe=
mu: CVE-2022-1050, CVE-2022-26353, CVE-2022-26354<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rp=
m: CVE-2021-3521<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- se=
atd: CVE-2022-25643<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sp=
eex: CVE-2020-23903<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sq=
uashfs-tools: CVE-2021-41072<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
stemd: CVE-2021-4034<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ti=
ff: CVE-2022-0561, CVE-2022-0562, CVE-2022-0865, CVE-2022-0891, CVE-2022-09=
07, CVE-2022-0908, CVE-2022-0909, CVE-2022-0924, CVE-2022-1056, CVE-2022-22=
844<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- un=
zip: CVE-2021-4217<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vi=
m: CVE-2021-3796, CVE-2021-3872, CVE-2021-3875, CVE-2021-3927, CVE-2021-392=
8, CVE-2021-3968, CVE-2021-3973, CVE-2021-4187, CVE-2022-0128, CVE-2022-015=
6, CVE-2022-0158, CVE-2022-0261, CVE-2022-0318,
 CVE-2022-0319, CVE-2022-0554, CVE-2022-0696, CVE-2022-0714, CVE-2022-0729,=
 CVE-2022-0943<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vi=
rglrenderer: CVE-2022-0135, CVE-2022-0175<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- we=
bkitgtk: CVE-2022-22589, CVE-2022-22590, CVE-2022-22592<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xz=
: CVE-2022-1271<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- zl=
ib: CVE-2018-25032<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Reci=
pe Upgrades in 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ac=
pica: upgrade 20210730 -&gt; 20211217<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ac=
pid: upgrade 2.0.32 -&gt; 2.0.33<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ad=
waita-icon-theme: update 3.34/38 -&gt; 41.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- al=
sa-ucm-conf: upgrade 1.2.6.2 -&gt; 1.2.6.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- al=
sa: upgrade 1.2.5 -&gt; 1.2.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ap=
t: upgrade 2.2.4 -&gt; 2.4.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- as=
ciidoc: upgrade 9.1.0 -&gt; 10.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- at=
k: upgrade 2.36.0 -&gt; 2.38.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- at=
-spi2-core: upgrade 2.40.3 -&gt; 2.42.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- at=
: update 3.2.2 -&gt; 3.2.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- au=
toconf-archive: upgrade 2021.02.19 -&gt; 2022.02.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- au=
tomake: update 1.16.3 -&gt; 1.16.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ba=
sh: upgrade 5.1.8 -&gt; 5.1.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bi=
nd: upgrade 9.16.20 -&gt; 9.18.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bi=
nutils: Bump to latest 2.38 release branch<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bi=
son: upgrade 3.7.6 -&gt; 3.8.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bl=
uez5: upgrade 5.61 -&gt; 5.64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bo=
ost: update 1.77.0 -&gt; 1.78.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bt=
rfs-tools: upgrade 5.13.1 -&gt; 5.16.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bu=
ildtools-installer: Update to use 3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- bu=
sybox: 1.34.0 -&gt; 1.35.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ca=
-certificates: update 20210119 -&gt; 20211016<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ca=
ntarell-fonts: update 0.301 -&gt; 0.303.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cc=
ache: upgrade 4.4 -&gt; 4.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cm=
ake: update 3.21.1 -&gt; 3.22.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- co=
nnman: update 1.40 -&gt; 1.41<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- co=
reutils: update 8.32 -&gt; 9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cr=
acklib: update 2.9.5 -&gt; 2.9.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cr=
eaterepo-c: upgrade 0.17.4 -&gt; 0.19.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cr=
onie: upgrade 1.5.7 -&gt; 1.6.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cu=
ps: update 2.3.3op2 -&gt; 2.4.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- cu=
rl: update 7.78.0 -&gt; 7.82.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- db=
us: upgrade 1.12.20 -&gt; 1.14.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- de=
bianutils: update 4.11.2 -&gt; 5.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- dh=
cpcd: upgrade 9.4.0 -&gt; 9.4.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- di=
ffoscope: upgrade 181 -&gt; 208<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- dn=
f: upgrade 4.8.0 -&gt; 4.11.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- dp=
kg: update 1.20.9 -&gt;&nbsp; 1.21.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- e2=
fsprogs: upgrade 1.46.4 -&gt; 1.46.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ed=
: upgrade 1.17 -&gt; 1.18<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ef=
ivar: update 37 -&gt; 38<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- el=
futils: update 0.185 -&gt; 0.186<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- el=
l: upgrade 0.43 -&gt; 0.49<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- en=
chant2: upgrade 2.3.1 -&gt; 2.3.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ep=
iphany: update 40.3 -&gt; 42.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- er=
ofs-utils: update 1.3 -&gt; 1.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- et=
htool: update to 5.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ex=
pat: upgrade 2.4.1 -&gt; 2.4.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ff=
mpeg: update 4.4 -&gt; 5.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- fi=
le: upgrade 5.40 -&gt; 5.41<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- fi=
ndutils: upgrade 4.8.0 -&gt; 4.9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- fl=
ac: upgrade 1.3.3 -&gt; 1.3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- fr=
eetype: upgrade 2.11.0 -&gt; 2.11.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- fr=
ibidi: upgrade 1.0.10 -&gt; 1.0.11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ga=
wk: update 5.1.0 -&gt; 5.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gc=
ompat: Update to latest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gd=
bm: upgrade 1.19 -&gt; 1.23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gd=
b: Upgrade to 11.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gh=
ostscript: update 9.54.0 -&gt; 9.55.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gi=
-docgen: upgrade 2021.7 -&gt; 2022.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gi=
t: update 2.33.0 -&gt; 2.35.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gl=
ib-2.0: update 2.68.4 -&gt; 2.72.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gl=
ibc: Upgrade to 2.35<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gl=
ib-networking: update 2.68.2 -&gt; 2.72.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gl=
slang: update 11.5.0 -&gt; 11.8.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gn=
u-config: update to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gn=
upg: update 2.3.1 -&gt; 2.3.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gn=
utls: update 3.7.2 -&gt; 3.7.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- go=
bject-introspection: upgrade 1.68.0 -&gt; 1.72.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- go=
-helloworld: update to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- go=
: update 1.16.7 -&gt; 1.17.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gp=
gme: upgrade 1.16.0 -&gt; 1.17.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
ettings-desktop-schemas: upgrade 40.0 -&gt; 42.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
t-devtools: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
t-examples: 1.18.4 -&gt; 1.18.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-libav: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-omx: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-plugins-bad: 1.18.4&nbsp; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-plugins-base: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-plugins-good: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-plugins-ugly: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-python: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-rtsp-server: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gs=
treamer1.0-vaapi: 1.18.4 -&gt; 1.20.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gt=
k+3: upgrade 3.24.30 -&gt; 3.24.33<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- gz=
ip: upgrade 1.10 -&gt; 1.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ha=
rfbuzz: upgrade 2.9.0 -&gt; 4.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- hd=
parm: upgrade 9.62 -&gt; 9.63<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- he=
lp2man: upgrade 1.48.4 -&gt; 1.49.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ic=
u: update 69.1 -&gt; 70.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- if=
updown: upgrade 0.8.36 -&gt; 0.8.37<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- in=
etutils: update 2.1 -&gt; 2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- in=
it-system-helpers: upgrade 1.60 -&gt; 1.62<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ip=
route2: update to 5.17.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ip=
utils: update 20210722 to 20211215<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- is=
o-codes: upgrade 4.6.0 -&gt; 4.9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- it=
stool: update 2.0.6 -&gt; 2.0.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- iw=
: upgrade 5.9 -&gt; 5.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- js=
on-glib: upgrade 1.6.4 -&gt; 1.6.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ke=
a: update 1.8.2 -&gt; 2.0.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ke=
xec-tools: update 2.0.22 -&gt; 2.0.23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- le=
ss: upgrade 590 -&gt; 600<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
barchive: upgrade 3.5.1 -&gt; 3.6.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
batomic-ops: upgrade 7.6.10 -&gt; 7.6.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bbsd: upgrade 0.11.3 -&gt; 0.11.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bcap: update 2.51 -&gt; 2.63<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bcgroup: upgrade 2.0 -&gt; 2.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bcomps: upgrade 0.1.17 -&gt; 0.1.18<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bconvert-asn1-perl: upgrade 0.31 -&gt; 0.33<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bdazzle: upgrade 3.40.0 -&gt; 3.44.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bdnf: update 0.63.1 -&gt; 0.66.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bdrm: upgrade 2.4.107 -&gt; 2.4.110<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bedit: upgrade 20210714-3.1 -&gt; 20210910-3.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
beration-fonts: update 2.1.4 -&gt; 2.1.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bevdev: upgrade 1.11.0 -&gt; 1.12.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bexif: update 0.6.22 -&gt; 0.6.24<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bgit2: update 1.1.1 -&gt; 1.4.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bgpg-error: update 1.42 -&gt; 1.44<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bhandy: update 1.2.3 -&gt; 1.5.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bical: upgrade 3.0.10 -&gt; 3.0.14<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
binput: update to 1.19.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bjitterentropy: update 3.1.0 -&gt; 3.4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bjpeg-turbo: upgrade 2.1.1 -&gt; 2.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bmd: upgrade 1.0.3 -&gt; 1.0.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bmicrohttpd: upgrade 0.9.73 -&gt; 0.9.75<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bmodulemd: upgrade 2.13.0 -&gt; 2.14.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bpam: update 1.5.1 -&gt; 1.5.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bpcre2: upgrade 10.37 -&gt; 10.39<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bpipeline: upgrade 1.5.3 -&gt; 1.5.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
brepo: upgrade 1.14.1 -&gt; 1.14.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
brsvg: update 2.40.21 -&gt; 2.52.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsamplerate0: update 0.1.9 -&gt; 0.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsdl2: update 2.0.16 -&gt; 2.0.20<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bseccomp: update to 2.5.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsecret: upgrade 0.20.4 -&gt; 0.20.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsndfile1: bump to version 1.0.31<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsolv: upgrade 0.7.19 -&gt; 0.7.22<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsoup-2.4: upgrade 2.72.0 -&gt; 2.74.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bsoup: add a recipe for 3.0.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bssh2: update 1.9.0 -&gt; 1.10.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
btasn1: upgrade 4.17.0 -&gt; 4.18.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
btool: Upgrade 2.4.6 -&gt; 2.4.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bucontext: Upgrade to 1.2 release<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bunistring: update 0.9.10 -&gt; 1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bunwind: upgrade 1.5.0 -&gt; 1.6.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
burcu: upgrade 0.13.0 -&gt; 0.13.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
busb1: upgrade 1.0.24 -&gt; 1.0.25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
buv: update 1.42.0 -&gt; 1.44.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bva: update 2.12.0 -&gt; 2.14.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bva-utils: upgrade 2.13.0 -&gt; 2.14.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bwebp: 1.2.1 -&gt; 1.2.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bwpe: upgrade 1.10.1 -&gt; 1.12.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bx11: update to 1.7.3.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxcrypt: upgrade 4.4.26 -&gt; 4.4.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxcrypt-compat: upgrade 4.4.26 -&gt; 4.4.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxi: update to 1.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxkbcommon: update to 1.4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxml2: update to 2.9.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
bxslt: update to v1.1.35<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
ghttpd: update 1.4.59 -&gt; 1.4.64<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-firmware: upgrade 20210818 -&gt; 20220310<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-libc-headers: update to v5.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-yocto/5.10: update to v5.10.109<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-yocto/5.15: introduce recipes (v5.15.32)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-yocto-dev: update to v5.18+<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-yocto-rt/5.10: update to -rt61<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- li=
nux-yocto-rt/5.15: update to -rt34<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ll=
vm: update 12.0.1 -&gt; 13.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lo=
grotate: update 3.18.1 -&gt; 3.19.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ls=
of: update 4.91 -&gt; 4.94.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lt=
p: update 20210927 -&gt; 20220121<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lt=
p: Update to 20210927<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lt=
tng-modules: update devupstream to latest 2.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lt=
tng-modules: update to 2.13.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lt=
tng-tools: upgrade 2.13.0 -&gt; 2.13.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lt=
tng-ust: upgrade 2.13.0 -&gt; 2.13.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lu=
a: update 5.3.6 -&gt; 5.4.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- lz=
ip: upgrade 1.22 -&gt; 1.23<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ma=
n-db: upgrade 2.9.4 -&gt; 2.10.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ma=
n-pages: update to 5.13<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- md=
adm: update 4.1 -&gt; 4.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- me=
sa: upgrade 21.2.1 -&gt; 22.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- me=
son: update 0.58.1 -&gt; 0.61.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mi=
nicom: Upgrade 2.7.1 -&gt; 2.8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mm=
c-utils: upgrade to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mo=
bile-broadband-provider-info: upgrade 20210805 -&gt; 20220315<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mp=
g123: upgrade 1.28.2 -&gt; 1.29.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ms=
mtp: upgrade 1.8.15 -&gt; 1.8.20<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mt=
d-utils: upgrade 2.1.3 -&gt; 2.1.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mt=
ools: upgrade 4.0.35 -&gt; 4.0.38<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- mu=
sl: Update to latest master<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- nc=
urses: update 6.2 -&gt; 6.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ne=
wlib: Upgrade 4.1.0 -&gt; 4.2.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- nf=
s-utils: upgrade 2.5.4 -&gt; 2.6.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ng=
http2: upgrade 1.45.1 -&gt; 1.47.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- of=
ono: upgrade 1.32 -&gt; 1.34<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- op=
ensbi: Upgrade to 1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- op=
enssh: upgrade 8.7p1 -&gt; 8.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- op=
enssl: update 1.1.1l -&gt; 3.0.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- op=
kg: upgrade 0.4.5 -&gt; 0.5.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- op=
kg-utils: upgrade 0.4.5 -&gt; 0.5.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ov=
mf: update 202105 -&gt; 202202<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- p1=
1-kit: update 0.24.0 -&gt; 0.24.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pa=
ngo: upgrade 1.48.9 -&gt; 1.50.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pa=
tchelf: upgrade 0.13 -&gt; 0.14.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pe=
rl-cross: update 1.3.6 -&gt; 1.3.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pe=
rl: update 5.34.0 -&gt; 5.34.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pi=
glit: upgrade to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pi=
gz: upgrade 2.6 -&gt; 2.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pi=
nentry: update 1.1.1 -&gt; 1.2.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pk=
gconfig: Update to latest<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ps=
plash: upgrade to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- pu=
zzles: upgrade to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-asn1crypto: upgrade 1.4.0 -&gt; 1.5.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-attrs: upgrade 21.2.0 -&gt; 21.4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-cryptography: Upgrade to 36.0.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-cryptography-vectors: upgrade to 36.0.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-cython: upgrade 0.29.24 -&gt; 0.29.28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-dbusmock: update to 0.27.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-docutils: upgrade 0.17.1 0.18.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-dtschema: upgrade 2021.10 -&gt; 2022.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-gitdb: upgrade 4.0.7 -&gt; 4.0.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-git: update to 3.1.27<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-hypothesis: upgrade 6.15.0 -&gt; 6.39.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-imagesize: upgrade 1.2.0 -&gt; 1.3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-importlib-metadata: upgrade 4.6.4 -&gt; 4.11.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-jinja2: upgrade 3.0.1 -&gt; 3.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-jsonschema: upgrade 3.2.0 -&gt; 4.4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-libarchive-c: upgrade 3.1 -&gt; 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-magic: upgrade 0.4.24 -&gt; 0.4.25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-mako: upgrade 1.1.5 -&gt; 1.1.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-markdown: upgrade 3.3.4 -&gt; 3.3.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-markupsafe: upgrade 2.0.1 -&gt; 2.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-more-itertools: upgrade 8.8.0 -&gt; 8.12.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-numpy: upgrade 1.21.2 -&gt; 1.22.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-packaging: upgrade 21.0 -&gt; 21.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pathlib2: upgrade 2.3.6 -&gt; 2.3.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pbr: upgrade 5.6.0 -&gt; 5.8.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pip: update 21.2.4 -&gt; 22.0.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pycairo: upgrade 1.20.1 -&gt; 1.21.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pycryptodome: upgrade 3.10.1 -&gt; 3.14.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pyelftools: upgrade 0.27 -&gt; 0.28<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pygments: upgrade 2.10.0 -&gt; 2.11.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pygobject: upgrade 3.40.1 -&gt; 3.42.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pyparsing: update to 3.0.7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pyrsistent: upgrade 0.18.0 -&gt; 0.18.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pytest-runner: upgrade 5.3.1 -&gt; 6.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pytest-subtests: upgrade 0.6.0 -&gt; 0.7.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pytest: upgrade 6.2.4 -&gt; 7.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pytz: upgrade 2021.3 -&gt; 2022.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-py: upgrade 1.10.0 -&gt; 1.11.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-pyyaml: upgrade 5.4.1 -&gt; 6.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-ruamel-yaml: upgrade 0.17.16 -&gt; 0.17.21<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-scons: upgrade 4.2.0 -&gt; 4.3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-setuptools-scm: upgrade 6.0.1 -&gt; 6.4.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-setuptools: update to 59.5.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-smmap: update to 5.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-tomli: upgrade 1.2.1 -&gt; 2.0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3: update to 3.10.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-urllib3: upgrade 1.26.8 -&gt; 1.26.9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- py=
thon3-zipp: upgrade 3.5.0 -&gt; 3.7.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- qe=
mu: update 6.0.0 -&gt; 6.2.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- qu=
ilt: upgrade 0.66 -&gt; 0.67<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- re=
2c: upgrade 2.2 -&gt; 3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- re=
adline: upgrade 8.1 -&gt; 8.1.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- re=
po: upgrade 2.17.3 -&gt; 2.22<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- re=
solvconf: update 1.87 -&gt; 1.91<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rn=
g-tools: upgrade 6.14 -&gt; 6.15<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rp=
csvc-proto: upgrade 1.4.2 -&gt; 1.4.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rp=
m: update 4.16.1.3 -&gt; 4.17.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rt=
-tests: update 2.1 -&gt; 2.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ru=
by: update 3.0.2 -&gt; 3.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ru=
st: update 1.54.0 -&gt; 1.59.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- rx=
vt-unicode: upgrade 9.26 -&gt; 9.30<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sc=
reen: upgrade 4.8.0 -&gt; 4.9.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sh=
aderc: update 2021.1 -&gt; 2022.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sh=
adow: upgrade 4.9 -&gt; 4.11.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- so=
cat: upgrade 1.7.4.1 -&gt; 1.7.4.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sp=
irv-headers: bump to b42ba6 revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sp=
irv-tools: update 2021.2 -&gt; 2022.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sq=
lite3: upgrade 3.36.0 -&gt; 3.38.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- st=
race: update 5.14 -&gt; 5.16<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- st=
ress-ng: upgrade 0.13.00 -&gt; 0.13.12<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- su=
do: update 1.9.7p2 -&gt; 1.9.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
sklogd: upgrade 2.2.3 -&gt; 2.3.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
sstat: upgrade 12.4.3 -&gt; 12.4.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
stemd: update 249.3 -&gt; 250.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
stemtap: upgrade 4.5 -&gt; 4.6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- sy=
svinit: upgrade 2.99 -&gt; 3.01<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- tz=
data: update to 2022a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- u-=
boot: upgrade 2021.07 -&gt; 2022.01<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- un=
inative: Upgrade to 3.6 with gcc 12 support<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- ut=
il-linux: update 2.37.2 -&gt; 2.37.4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- va=
la: upgrade 0.52.5 -&gt; 0.56.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- va=
lgrind: update 3.17.0 -&gt; 3.18.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vi=
m: upgrade to 8.2 patch 4681<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vt=
e: upgrade 0.64.2 -&gt; 0.66.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vu=
lkan-headers: upgrade 1.2.182 -&gt; 1.2.191<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vu=
lkan-loader: upgrade 1.2.182 -&gt; 1.2.198.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vu=
lkan-samples: update to latest revision<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vu=
lkan-tools: upgrade 1.2.182 -&gt; 1.2.191<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- vu=
lkan: update 1.2.191.0 -&gt; 1.3.204.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wa=
ffle: update 1.6.1 -&gt; 1.7.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wa=
yland-protocols: upgrade 1.21 -&gt; 1.25<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wa=
yland: upgrade 1.19.0 -&gt; 1.20.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- we=
bkitgtk: upgrade 2.34.0 -&gt; 2.36.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- we=
ston: upgrade 9.0.0 -&gt; 10.0.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wg=
et: update 1.21.1 -&gt; 1.21.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wi=
reless-regdb: upgrade 2021.07.14 -&gt; 2022.02.18<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wp=
a-supplicant: update 2.9 -&gt; 2.10<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- wp=
ebackend-fdo: upgrade 1.10.0 -&gt; 1.12.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xa=
uth: upgrade 1.1 -&gt; 1.1.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xf=
86-input-libinput: update to 1.2.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xf=
86-video-intel: update to latest commit<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xk=
eyboard-config: update to 2.35.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xo=
rgproto: update to 2021.5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xs=
erver-xorg: update 1.20.13 -&gt; 21.1.3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xw=
ayland: update 21.1.2 -&gt; 22.1.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- xx=
hash: upgrade 0.8.0 -&gt; 0.8.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- zs=
td: update 1.5.0 -&gt; 1.5.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Cont=
ributors to 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Than=
ks to the following people who contributed to this release:<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ab=
ongwa Amahnui Bonalais<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ad=
riaan Schmidt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ad=
rian Freihofer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ah=
mad Fatoum<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ah=
med Hossam<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ah=
san Hussain<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
ejandro Hernandez Samaniego<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
essio Igor Bogani<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
exander Kanavin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
exandre Belloni<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
exandru Ardelean<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
exey Brodkin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Al=
ex Stewart<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
dreas M&uuml;ller<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
drei Gherzan<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
drej Valek<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
dres Beltran<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
drew Jeffery<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
drey Zhizhikin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
ton Mikanovich<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- An=
uj Mittal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Bi=
ll Pittman<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Br=
uce Ashfield<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ca=
ner Altinbasak<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ca=
rlos Rafael Giani<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ch=
aitanya Vadrevu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ch=
anghyeok Bae<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ch=
angqing Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ch=
en Qi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ch=
ristian Eggers<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Cl=
audius Heine<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Cl=
aus Stovgaard<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
iane Angolini<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
niel Ammann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
niel Gomez<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
niel McGregor<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
niel M&uuml;ller<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
niel Wagenknecht<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
vid Joyner<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Da=
vid Reyna<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- De=
nys Dmytriyenko<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Dh=
ruva Gole<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Di=
ego Sueiro<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Dm=
itry Baryshkov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Fe=
rry Toth<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Fl=
orian Amstutz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- He=
nry Kleynhans<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- He=
 Zhe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ho=
ngxu Jia<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Hs=
ia-Jun(Randy) Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ia=
n Ray<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ja=
cob Kroon<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ja=
gadeesh Krishnanjanappa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ja=
sper Orschulko<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ji=
m Wilson<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Jo=
el Winarske<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Jo=
e Slater<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Jo=
n Mason<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Jo=
se Quaresma<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Jo=
shua Watt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ju=
stin Bronder<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ka=
i Kang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ka=
mil Dziezyk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ke=
vin Hao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Kh=
airul Rohaizzat Jamaluddin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Kh=
em Raj<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ki=
ran Surendran<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ko=
nrad Weihmann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ko=
ry Maincent<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Le=
e Chee Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Le=
if Middelschulte<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Le=
i Maohui<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Li=
 Wang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Li=
wei Song<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Lu=
ca Boccassi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Lu=
kasz Majewski<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Lu=
na Gr&auml;fje<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
nuel Leonhardt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rek Vasut<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rk Hatle<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rkus Niebel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rkus Volk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rta Rybczynska<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rtin Beeger<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
rtin Jansa<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
tthias Klein<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
tt Madison<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
ximilian Blenk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ma=
x Krummenacher<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
chael Halstead<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
chael Olbrich<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
chael Opdenacker<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
ke Crowe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
ng Liu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
ngli Yu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Mi=
njae Kim<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ni=
cholas Sielicki<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ol=
af Mandel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ol=
eh Matiusha<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ol=
eksandr Kravchuk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ol=
eksandr Ocheretnyi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ol=
eksandr Suvorov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ol=
eksiy Obitotskyy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ot=
avio Salvador<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pa=
blo Saavedra<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pa=
ul Barker<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pa=
ul Eggleton<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pa=
vel Zhukov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pe=
ter Hoyes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pe=
ter Kjellerstedt<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pe=
tr Vorel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Pg=
owda<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Qu=
entin Schulz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ra=
lph Siemsen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ra=
ndy Li<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ra=
ndy MacLeod<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ra=
smus Villemoes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ri=
cardo Salveti<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ri=
chard Neill<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ri=
chard Purdie<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ro=
bert Joslyn<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ro=
bert P. J. Day<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ro=
bert Yang<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ro=
ss Burton<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ru=
dolf J Streif<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Sa=
kib Sajal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Sa=
muli Piippo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Sa=
ul Wold<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Sc=
ott Murray<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Se=
an Anderson<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Si=
mone Weiss<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Si=
mon Kuhnle<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- S.=
 Lockwood-Childs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- St=
efan Herbrechtsmeier<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- St=
eve Sakoman<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Su=
ndeep KOKKONDA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ta=
mizharasan Kumar<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Te=
an Cunningham<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Te=
oh Jay Shen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Th=
omas Perrot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ti=
m Orling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- To=
bias Kaufmann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- To=
m Hochstein<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- To=
ny McDowell<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Tr=
evor Gamblin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ul=
rich &Ouml;lmann<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Va=
lerii Chernous<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Vi=
vien Didelot<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Vy=
acheslav Yurkov<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Wa=
ng Mingyu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Xa=
vier Berger<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Yi=
 Zhao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Yo=
ngxin Liu<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Yu=
reka<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Ze=
v Weiss<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Zh=
eng Ruoqin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Zo=
lt&aacute;n B&ouml;sz&ouml;rm&eacute;nyi<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">- Zy=
gmunt Krynicki<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitories / Downloads for 4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Name: poky<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Location:
<a href=3D"https://git.yoctoproject.org/git/poky">https://git.yoctoproject.=
org/git/poky</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Bran=
ch: kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Tag:=
 yocto-4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Git =
Revision: 00cfdde791a0176c134f31e5a09eff725e75b905<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Rele=
ase Artefact: poky-00cfdde791a0176c134f31e5a09eff725e75b905<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">sha:=
 4cedb491b7bf0d015768c61690f30d7d73f4266252d6fba907bba97eac83648c<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Down=
load Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/poky-00cf=
dde791a0176c134f31e5a09eff725e75b905.tar.bz2">http://downloads.yoctoproject=
.org/releases/yocto/yocto-4.0/poky-00cfdde791a0176c134f31e5a09eff725e75b905=
.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://mirrors.kernel.org/yocto/yocto/yocto-4.0/poky-00cfdde791a0176=
c134f31e5a09eff725e75b905.tar.bz2">http://mirrors.kernel.org/yocto/yocto/yo=
cto-4.0/poky-00cfdde791a0176c134f31e5a09eff725e75b905.tar.bz2</a><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Name: openembedded-core<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Location:
<a href=3D"https://git.openembedded.org/openembedded-core">https://git.open=
embedded.org/openembedded-core</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Bran=
ch: kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Tag:=
 yocto-4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Git =
Revision: 92fcb6570bddd0c5717d8cfdf38ecf3e44942b0f<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Rele=
ase Artefact: oecore-92fcb6570bddd0c5717d8cfdf38ecf3e44942b0f<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">sha:=
 c042629752543a10b0384b2076b1ee8742fa5e8112aef7b00b3621f8387a51c6<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Down=
load Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/oecore-92=
fcb6570bddd0c5717d8cfdf38ecf3e44942b0f.tar.bz2">http://downloads.yoctoproje=
ct.org/releases/yocto/yocto-4.0/oecore-92fcb6570bddd0c5717d8cfdf38ecf3e4494=
2b0f.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://mirrors.kernel.org/yocto/yocto/yocto-4.0/oecore-92fcb6570bddd=
0c5717d8cfdf38ecf3e44942b0f.tar.bz2">http://mirrors.kernel.org/yocto/yocto/=
yocto-4.0/oecore-92fcb6570bddd0c5717d8cfdf38ecf3e44942b0f.tar.bz2</a><o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Name: meta-mingw<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Location:
<a href=3D"https://git.yoctoproject.org/git/meta-mingw">https://git.yoctopr=
oject.org/git/meta-mingw</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Bran=
ch: kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Tag:=
 yocto-4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Git =
Revision: a90614a6498c3345704e9611f2842eb933dc51c1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Rele=
ase Artefact: meta-mingw-a90614a6498c3345704e9611f2842eb933dc51c1<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">sha:=
 49f9900bfbbc1c68136f8115b314e95d0b7f6be75edf36a75d9bcd1cca7c6302<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Down=
load Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/meta-ming=
w-a90614a6498c3345704e9611f2842eb933dc51c1.tar.bz2">http://downloads.yoctop=
roject.org/releases/yocto/yocto-4.0/meta-mingw-a90614a6498c3345704e9611f284=
2eb933dc51c1.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://mirrors.kernel.org/yocto/yocto/yocto-4.0/meta-mingw-a90614a64=
98c3345704e9611f2842eb933dc51c1.tar.bz2">http://mirrors.kernel.org/yocto/yo=
cto/yocto-4.0/meta-mingw-a90614a6498c3345704e9611f2842eb933dc51c1.tar.bz2</=
a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Name: meta-gplv2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Location:
<a href=3D"https://git.yoctoproject.org/git/meta-gplv2">https://git.yoctopr=
oject.org/git/meta-gplv2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Bran=
ch: kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Tag:=
 yocto-4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Git =
Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Rele=
ase Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">sha:=
 c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Down=
load Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/meta-gplv=
2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2">http://downloads.yoctop=
roject.org/releases/yocto/yocto-4.0/meta-gplv2-d2f8b5cdb285b72a4ed93450f670=
3ca27aa42e8a.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://mirrors.kernel.org/yocto/yocto/yocto-4.0/meta-gplv2-d2f8b5cdb=
285b72a4ed93450f6703ca27aa42e8a.tar.bz2">http://mirrors.kernel.org/yocto/yo=
cto/yocto-4.0/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2</=
a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Name: bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Location:
<a href=3D"https://git.openembedded.org/bitbake">https://git.openembedded.o=
rg/bitbake</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Bran=
ch: 2.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Tag:=
 yocto-4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Git =
Revision: c212b0f3b542efa19f15782421196b7f4b64b0b9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Rele=
ase Artefact: bitbake-c212b0f3b542efa19f15782421196b7f4b64b0b9<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">sha:=
 6872095c7d7be5d791ef3e18b6bab2d1e0e237962f003d2b00dc7bd6fb6d2ef7<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Down=
load Locations:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-4.0/bitbake-c=
212b0f3b542efa19f15782421196b7f4b64b0b9.tar.bz2">http://downloads.yoctoproj=
ect.org/releases/yocto/yocto-4.0/bitbake-c212b0f3b542efa19f15782421196b7f4b=
64b0b9.tar.bz2</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt"><a h=
ref=3D"http://mirrors.kernel.org/yocto/yocto/yocto-4.0/bitbake-c212b0f3b542=
efa19f15782421196b7f4b64b0b9.tar.bz2">http://mirrors.kernel.org/yocto/yocto=
/yocto-4.0/bitbake-c212b0f3b542efa19f15782421196b7f4b64b0b9.tar.bz2</a><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Name: yocto-docs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Repo=
sitory Location:
<a href=3D"https://git.yoctoproject.org/git/yocto-docs">https://git.yoctopr=
oject.org/git/yocto-docs</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Bran=
ch: kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Tag:=
 yocto-4.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">Git =
Revision: a6f571ad5b087385cad8765ed455c4b4eaeebca6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-MY" style=3D"font-size:11.0pt">&nbs=
p;<o:p></o:p></span></p>
</div>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose,
 or store or copy the information in any medium. Thank you.
</body>
</html>

--_000_PA4PR08MB74116FCA0CBB2815B0D4F0A4E8FA9PA4PR08MB7411eurp_--

