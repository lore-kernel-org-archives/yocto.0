Return-Path: <thore.boeckelmann@inoex.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8045D63935
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 12:43:03 +0000 (UTC)
Received: from FR5P281CU006.outbound.protection.outlook.com (FR5P281CU006.outbound.protection.outlook.com [40.107.149.86])
 by mx.groups.io with SMTP id smtpd.web10.12385.1732106579335880488
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 04:43:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inoex.onmicrosoft.com header.s=selector2-inoex-onmicrosoft-com header.b=S/6U93et;
 spf=pass (domain: inoex.de, ip: 40.107.149.86, mailfrom: thore.boeckelmann@inoex.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w8E90QXdCk3LczaIHE1y/XmtLlYliz47BSwZGdMg0jcN9IhmgyxAO1OxfkDCndeOUKaztfacZ/g03qNhwwe+1pF5sqHzV+GdOsG6PF+pc/jwumX8CfV8C0f1XAGi3kbU0behbWR+tNdbYJUMmJCNbkZUhjj9pKpZEWFUwD5/V26xKVlInJW9Cssy2eYfFdmGmxslpr4giDb06h66VUwSwI499lMoGWOq+IpqthqH9d1vha1wOs2BC1cd97v7H6sEpcvi7JpdSYl+o+UH+FYhyXxnCZGciy4cTakSB8xfxyRPGxXHnQ3lOijTMyFKQXD7BSy8iSFphyyXEDRaGyVHag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zaikkspNZ6N4op/BDHsmiN16hVAgswlmuD1DdppPUtc=;
 b=I1HPRNq5PoJwWOfsR5C3pP3znQSo/g3mT81tmWVntY6u2T4JJ9EJVKsoJQRq1zsH8IV9Hfq4GcPkuEwzUvdcbMxVZpDSE9CjgR0pTbJp2nNKyRDZmiSl7ovvff6hiA6Zf1Qid7RrikvjKPBDHEZxHhSZWHKJdt0izKq6PIRFJIxxBEu16fVVU7NQj/u4dasC9E9tAVlEJYw8JPWBcvhSbHuLlpnpe//m/6Unt1OWTiy/pfk4JZXkLZrdqB3UyIBxRg5gP96q2OxCTLRiO/PUdS4EUCLHkCrPjT4kB47v7TyQQLlKPbiao0h1BOBV9TB8DTwbImWdxVNkGbJZeyogQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=linaro.org smtp.mailfrom=inoex.de;
 dmarc=bestguesspass action=none header.from=inoex.de; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inoex.onmicrosoft.com;
 s=selector2-inoex-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zaikkspNZ6N4op/BDHsmiN16hVAgswlmuD1DdppPUtc=;
 b=S/6U93etnPUf86BpK4azpORVEZH6VEg7z5BWwVxS9hAVBUW+5IQL6t+YIMuEHundL2Q6V5DyGy6C98FRZLCGsbUehqHXHDvuns1n23n8VUVeFYK9iOq8Ib/wQUtq3F4KGlYFGgAjXqdD8qLcqPfLLuiKZeQ4ti1Dm3SQS9zrN4o=
Received: from AS9PR01CA0034.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:542::17) by FR4P281MB4715.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:13f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.25; Wed, 20 Nov
 2024 12:42:54 +0000
Received: from AM2PEPF0001C70A.eurprd05.prod.outlook.com
 (2603:10a6:20b:542:cafe::97) by AS9PR01CA0034.outlook.office365.com
 (2603:10a6:20b:542::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24 via Frontend
 Transport; Wed, 20 Nov 2024 12:42:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=inoex.de; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=inoex.de;
Received-SPF: Pass (protection.outlook.com: domain of inoex.de designates
 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 AM2PEPF0001C70A.mail.protection.outlook.com (10.167.16.198) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8182.16 via Frontend Transport; Wed, 20 Nov 2024 12:42:54 +0000
Content-Type: multipart/alternative;
	boundary="_000_FR3PPF317299CA97E0A8E987CB5588C3C358F212FR3PPF317299CA9_"
Received: from BEUP281CU002.outbound.protection.outlook.com (40.93.77.4) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 20 Nov 2024 12:42:53 +0000
Received: from FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18:2::125)
 by FRYP281MB1883.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:46::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 12:42:51 +0000
Received: from FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM
 ([fe80::f3d8:c5bb:da80:e7d7]) by FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM
 ([fe80::f3d8:c5bb:da80:e7d7%7]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 12:42:51 +0000
From: =?iso-8859-1?Q?B=F6ckelmann=2C_Thore?= <thore.boeckelmann@inoex.de>
To: Mikko Rapeli <mikko.rapeli@linaro.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: [EXT] Re: [yocto] ext4 issues with scarthgap .wic image
Thread-Topic: [EXT] Re: [yocto] ext4 issues with scarthgap .wic image
Thread-Index: AQHbOz60YoPuMXjpXkaWES3iTijKtrLAEjaAgAAJ5Kc=
Date: Wed, 20 Nov 2024 12:42:51 +0000
Message-ID: <FR3PPF317299CA97E0A8E987CB5588C3C358F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
References: <ed7dbfe9-1861-4e5b-9954-03bf8404920a.970c85df-582b-4473-a7de-31be6a2b58c9.8a47a721-58ad-47e5-be44-609511a60ac9@emailsignatures365.codetwo.com>
 <ed7dbfe9-1861-4e5b-9954-03bf8404920a.5f629621-7c71-47da-aee6-727c8a7b4e6a.21f4d927-51fb-4187-a3f2-1b08161ff7e2@emailsignatures365.codetwo.com>
 <FR3PPF317299CA9C4E72FD30F5D38A3C18A8F212@FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM>
 <Zz3QTawLRIwhrQvd@nuoska>
In-Reply-To: <Zz3QTawLRIwhrQvd@nuoska>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=inoex.de;
x-ms-traffictypediagnostic: 
	FR3PPF317299CA9:EE_|FRYP281MB1883:EE_|AM2PEPF0001C70A:EE_|FR4P281MB4715:EE_
X-MS-Office365-Filtering-Correlation-Id: 5140b64d-9df0-4c40-5c6b-08dd0960da62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|7053199007|8096899003|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?q2K9unXqNoLKl7oerzC/W/MPBudjpXWRMR54up/zwl0UUry5nCQOBr+APBPy?=
 =?us-ascii?Q?3MiDuLlNQ1mNHCX4WS1N2cWUyx1Fe86+h4ZXJDIT5fBSHQ1gHdmo+3hoKyyi?=
 =?us-ascii?Q?gSGO8gjlA+mA8ynx0mfZsNy4CtVrs/H2mzG1OnMk7Zfg7eBVKPsCsQCn22dl?=
 =?us-ascii?Q?Q1OpQfLJ7goBgOataVbUR2g0FL2lglELUifwxaK8LzBSZlgeRTg/CHgeQbkI?=
 =?us-ascii?Q?+p3kKImyyCYwWVO/SiPvGQKxIQcyfrSo4dOpDYWSwopH92Kf/gXqCfcZVDpH?=
 =?us-ascii?Q?8iyk4Kibv7sIzAhhyjnUe4iztBEf/WmEaEI+baQf/f0MFlEDML2OAbfthxIh?=
 =?us-ascii?Q?/MaQ63Vri21GbxQGbyHxZS67ZK/OALqhZsE1E+YnftDNTsFZybbOtHuuOK4q?=
 =?us-ascii?Q?4sabm6lj8lXzOrinssMKVmwniZRlPawv5KiiSU8PIF0ujyz5I1uZ+DhqVvzv?=
 =?us-ascii?Q?fMD76pH5KW2d8dprW/0ZSkAUkXodrYTTbA1obKw3TSV2rFe5IS8o9G4nclJy?=
 =?us-ascii?Q?O4gv07IKn36dZgxgls7mXFyZwNdCY+FvOlQx7ZzHyr1FV7r3kWvX7mEJd8Io?=
 =?us-ascii?Q?cVZJ/1A+BHQbSBI1De/eyFdjp42qj1jAnWZeS0vAE8nyI+W7MQam01p7B5Du?=
 =?us-ascii?Q?bmcyvVQDMEUEz3E9FQpV2UGb3CZWjET64XG+DCLYFYzB8+ZAtvChVmveiLz4?=
 =?us-ascii?Q?nh1uSQ7z8IQYF0bOJK0qP5aOTB/Lxi0nZXLjgJQL4MtRCLHJr6KzBScaxuYk?=
 =?us-ascii?Q?I7xzYUs1ou0WHliD5eTsI/ogV2ly20w/K8MjWdJVSg2ThhfOain9TcyhcaO+?=
 =?us-ascii?Q?dXbxh9S7apc3kb4+kSWwI3/+AI1NnmbvSTrd5hpT6vBNigvs1OHfpVdHjsyB?=
 =?us-ascii?Q?7yKMwVIVxkVAwVjCk9l8PtL+JFCKJD8pJWJtoPrREt7syT7WturaFnDtnbd+?=
 =?us-ascii?Q?pZ0sMFYETQo+XdYEYNP+4WNfjMPoK9QO5csos2PUt+xs0TRIAvU/IBURYQer?=
 =?us-ascii?Q?Vq7t3Jyb6IU6k98CR3AQuZgMZ7vKVa3RG2cGT/V3C7RpJdMZPF+2cce+w6BT?=
 =?us-ascii?Q?ysVUOo9lN6rktwZHQ4TLQPd/Of0Ald/RH2PWypXaILrw3BVd9ZZwLtjYmbfc?=
 =?us-ascii?Q?Rz9B9maEj5UsCtvBS2tSCEQvpxWViMyfhabCovIa/+W0+URLBzc+OuriINX/?=
 =?us-ascii?Q?IbDQu+QcY3IQUK5Gz0pcvzmNwCBnEQEdT0fW1+GNG14BGeJJ2aP3TLJRyx0L?=
 =?us-ascii?Q?77sxUHUKuf4HZf98LKPFR/opau+6AO37B1dNlAtOUYhix/rgI4IdUQvWim0Z?=
 =?us-ascii?Q?1Gq9oF+1UlAyCpMdnWk895NtclNaWvE+1ACo5NiGBtUP2XxlizUixqKKunrF?=
 =?us-ascii?Q?KX38p4I=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR3PPF317299CA9.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1102;
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRYP281MB1883
X-CodeTwo-MessageID: 0455aa14-3cf4-4347-ae7a-44d0212dcfeb.20241120124253@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70A.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	1b25be8d-6bec-420a-6dcb-08dd0960d8aa
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|1800799024|14060799003|376014|82310400026|35042699022|7053199007|4076899003|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?rmBAMtdB41NYZVE7ZlRIPwFYBB2KIia9gr/irXulknGEIoufGwHZVJc1J9?=
 =?iso-8859-1?Q?kWea3n2hBMxVzVzul8umjJbxIHb8SXQMbX8B/Mj6hGiaT4mAPh2tnLY/+E?=
 =?iso-8859-1?Q?ClP72YJ0Rqts4ZCrewetleQMN/geuEncGrVFiiH/CRgMXScidavHwUO/HG?=
 =?iso-8859-1?Q?yJbzUSYpt1w3oyVucZ97vamqaY4hlcLRDv6+l9tWQFM4OGgbcMZBXH1uZK?=
 =?iso-8859-1?Q?ZqdiYioZUwo8uKo23Si8M0HIkzTOUL5Ao6G1qKoasUeMqWRfC9ObgHxflY?=
 =?iso-8859-1?Q?lCkVWkA0dLJANsy9+PRLU1FbtIqhNmhYRnlLbbXMRR+Q6XyyNbF1N3W1CQ?=
 =?iso-8859-1?Q?cUQQMisyMtl10vNlC2uBO/fb1Cd22dXjnEPXMoPHoMrIorUixbbEqysji6?=
 =?iso-8859-1?Q?8CSpjtbW730/t/xdFmWg+7hx0W724q8UB9PUlEYTLwfSOPoWIPSC+mxsyn?=
 =?iso-8859-1?Q?7qahpaW2j2Gux/hE2ub1ca+DCaaww7586x7+Q2mnvJqXVAYiUmzcpXB6AD?=
 =?iso-8859-1?Q?0M6Q96Q47MFpojHcWOpzbK1grRiZWN6DkHUTUVGkUBKTattMisOXZIWikP?=
 =?iso-8859-1?Q?x+NiipmVTafVspINamXcDaStWE9EF4Dkg757ALPCN2YS5sd9ZW2BKQJ7Dv?=
 =?iso-8859-1?Q?IoDz1S3KdtAqMBBmypOB1cenfye0G95HJYFgtkdKbcJR8qt981buXXmxYw?=
 =?iso-8859-1?Q?XeJR0dINROku5tAQtgY1uY2WlJcUQlDTMOcNZHGmcfeyLphNfDabkvQOaF?=
 =?iso-8859-1?Q?x0rN5pwK8UtatElgXVtauRafn8P3oYQ1rhoBponsQPAPO269bte929/BAU?=
 =?iso-8859-1?Q?cLQ8Raxrc+DzpPrS1fWfgTbMwv7i1rDVlSYtNWtUnnut5M6CrbomEbcBf7?=
 =?iso-8859-1?Q?Zthjnu3HMb3fpCf4xU0/sZdZbGehNbEdy5UW7HUyeJj3pQSIJ4G4VjxVm7?=
 =?iso-8859-1?Q?MQ5c55aeWEqM1GnzlFYQi3kgsVjSxaXxUY9cn9FTH5NMn8TPjLgs1JY4OL?=
 =?iso-8859-1?Q?hBJPEVrrtV0FUvXFGf2zlU7hR7Bt7WCMXOoBJNEo0b6/zYnPpNmvaZ31bK?=
 =?iso-8859-1?Q?LVwTj9nMAasrfLMYaUAqS39xVm5lGseKBdkxkg1z8+qTP35r6StZ7x5EnZ?=
 =?iso-8859-1?Q?Hm8cvF1YVidSfyI78C/aiQGqrkrJg57PPj6MtkGuckKbmS600vLPZ0hXym?=
 =?iso-8859-1?Q?ctVCUIMiHzeTB2/09ekDhu0/0+98Hg4ROYcRiGgAaWHVKruYqm+wHvvwx6?=
 =?iso-8859-1?Q?aLQxuXJiKwRCyHSnOLhN4SkmCv4sixzJheFJBTVJOLzcEoNVTHrQTaIivt?=
 =?iso-8859-1?Q?AcYqw+Mu+gD9Fe8kXclajp9UHGqW+jqNEdYDg/QeIksV6fnvxme9Wh3KWP?=
 =?iso-8859-1?Q?hxWchleRe8nfzIB8ojI7Zjs1fq3MMJ8QzdIa86QES+l/xKw69uGAk=3D?=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(14060799003)(376014)(82310400026)(35042699022)(7053199007)(4076899003)(8096899003);DIR:OUT;SFP:1102;
X-OriginatorOrg: inoex.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 12:42:54.1868
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5140b64d-9df0-4c40-5c6b-08dd0960da62
X-MS-Exchange-CrossTenant-Id: 88e9bc80-08e4-421f-a315-f919d3626921
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=88e9bc80-08e4-421f-a315-f919d3626921;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70A.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR4P281MB4715
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 12:43:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64310

--_000_FR3PPF317299CA97E0A8E987CB5588C3C358F212FR3PPF317299CA9_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Mikko!

Of course it is always better to move forward instead of backwards. But my =
point is that the documented EXTRA_IMAGECMD variable is somehow ignored and=
 not passed to mkfs.ext4 as it should be. If it isn't to disable a feature =
the same issue will arise when I try to pass any other option to mkfs.ext4.=
 This is what the IMAGE_CMD and EXTRA_IMAGECMD variables were invented for.

Mit freundlichem Gru=DF
best regards

iNOEX GmbH
Thore B=F6ckelmann
Software Design

Mit freundlichen Gr=FC=DFen / Kind regards
i. A. Thore B=F6ckelmann



[cid:inoex_logo_4c_982191a2-b996-4578-8ee9-9a0ca87b6136.png]<https://inoex.=
de>


Dipl.-Inform. Thore B=F6ckelmann
Software Engineering
thore.boeckelmann@inoex.de<mailto:thore.boeckelmann@inoex.de>

FON +49 5422 60507-958<callto:+49%205422%2060507-958> | FAX +49 5422 60507-=
101<callto:+49%205422%2060507-101>

A CiTEX Group Company






________________________________

iNOEX GmbH
Innovationen und Ausruestungen fuer die Extrusionstechnik

Geschaeftsfuehrer / Managing Director: Martin Deters, Jan Lohoff
Sitz der Gesellschaft / Headquarter: Maschweg 70, D-49324 Melle
Registergericht / Register: Amtsgericht Osnabr=FCck
Handelsregisternummer / Registration number: HRB 207338

Bitte beachten Sie die Datenschutzinformationen <https://www.inoex.de/daten=
schutz/>

________________________________
Von: Mikko Rapeli <mikko.rapeli@linaro.org>
Gesendet: Mittwoch, 20. November 2024 13:04
An: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; B=F6ckelma=
nn, Thore <thore.boeckelmann@inoex.de>
Betreff: [EXT] Re: [yocto] ext4 issues with scarthgap .wic image

Diese Nachricht wurde von au=DFerhalb unserer Organisation gesendet.



Hi,

On Wed, Nov 20, 2024 at 11:37:51AM +0000, tboeckel via lists.yoctoproject.o=
rg wrote:
> Hi!
>
> I am building an image for an iMX8 system and recently upgraded from hard=
knott to scarthgap. The image (wic.bz2) is created successfully, but after =
deploying it to an SD card I am not able to resize the partition via resize=
2fs. resize2fs always tells that the filesystem is using unsupported featur=
es.
>
> After investigating further with gparted I found out that the ext4 partit=
ion was created with the C12 feature (orphan_file). I am using Ubuntu 22 an=
d hence use resize2fs 1.46.5. There are some forum which suggest resize2fs =
1.47.x as a workaround, but I don't cannot upgrade that easily to Ubuntu 23=
 or 24 yet.
>
> I also built another image for an iMX93 system based on mickledore where =
I experience EXACTLY the same issue. For that system it was sufficient to a=
dd this line to conf/local.conf:
> EXTRA_IMAGECMD:ext4 +=3D " -O ^orphan_file"
>
> After that the created ext4 filesystem was compatible to Ubuntu 22's resi=
ze2fs 1.46.5 again.
>
> Unfortunately this did not help f=FCr the scarthgap build. No matter what=
 I try, the additional options don't make their way to the call of mkfs.ext=
4.
>
> What am I doing wrong and what can I do about that? What is the differenc=
e between mickledore and scarthgap in this respect?

I think these kind of changes are expected in yocto major version updates.
If new ext4 etc features would need to be explicitly enabled, then users
and maintainers would be flooded with them. Upstream defaults are better
even if they sometimes are not backwards compatible.

I would not expect yocto tooling to always be compatible with other Linux d=
istros
so I would rather add the resize2fs etc partition resize tooling to the
image itself and resize partition(s) on the target at runtime. This can be
part of the target 'flashing' process. This is IMO more future proof.

Cheers,

-Mikko

--_000_FR3PPF317299CA97E0A8E987CB5588C3C358F212FR3PPF317299CA9_
Content-Type: multipart/related;
	boundary="_388f9e3d-7a84-49a7-b21f-a14c254d8f3d_"

--_388f9e3d-7a84-49a7-b21f-a14c254d8f3d_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi Mikko!</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Of course it is always better to move forward instead of backwards. But my =
point is that the documented EXTRA_IMAGECMD variable is somehow ignored and=
 not passed to mkfs.ext4 as it should be. If it isn't to disable a feature =
the same issue will arise when I
 try to pass any other option to mkfs.ext4. This is what the IMAGE_CMD and =
EXTRA_IMAGECMD variables were invented for.</div>
<div id=3D"Signature" class=3D"elementToProof">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-size: 13px;">Mit freundlichem Gru=DF<br>
best regards<br>
<br>
iNOEX GmbH<br>
Thore B=F6ckelmann<br>
Software Design</div>
</div>
<div id=3D"appendonsend"></div>
=0A=
=0A=
=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><span style=3D"FONT-SIZE: =
11pt">Mit =0A=
freundlichen Gr&#xFC;&#xDF;en / Kind regards</span>&nbsp;<br style=3D"FONT-=
SIZE: 11pt"><span style=3D"FONT-SIZE: 11pt">i. A. Thore B&#xF6;ckelmann</sp=
an> </p>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">&nbsp;</p>=0A=
<a href=3D"https://inoex.de" title=3D"Please visit our website"><img src=3D=
"cid:inoex_logo_4c_982191a2-b996-4578-8ee9-9a0ca87b6136.png" border=3D"0" w=
idth=3D"150" height=3D"52" id=3D"0.2adh1xkqqeo" alt=3D"iNOEX_Logo_4c.png" s=
tyle=3D"width: 150px; height: 52px;"></a><br><br>=0A=
<blockquote style=3D"MARGIN-RIGHT: 0px" dir=3D"ltr">=0A=
  <p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><font style=3D"BACKGROUN=
D-COLOR: white"><span style=3D"FONT-SIZE: 11pt">Dipl.-Inform. Thore B&#xF6;=
ckelmann</span> <br>Software Engineering <br></font><a href=3D"mailto:thore=
.boeckelmann@inoex.de"><font style=3D"BACKGROUND-COLOR: white">thore.boecke=
lmann@inoex.de</font></a> </p></blockquote>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3D"ltr"><font color=3D=
"#6a6a6a"><span style=3D"FONT-SIZE: 9pt">FON</span> </font><a style=3D"FONT=
-SIZE: 9pt" href=3D"callto:+49 5422 60507-958"><font color=3D"#6a6a6a">+49 =
5422 60507-958</font></a><font color=3D"#6a6a6a"> | <span style=3D"FONT-SIZ=
E: 9pt">FAX</span> </font><a style=3D"FONT-SIZE: 9pt" href=3D"callto:+49 54=
22 60507-101"><font color=3D"#6a6a6a">+49 5422 60507-101</font></a><font co=
lor=3D"#6a6a6a"> </font></p><p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL=
" dir=3D"ltr"><span style=3D"color: rgb(106, 106, 106); font-size: 12px;">A=
 CiTEX Group Company</span><font color=3D"#6a6a6a"><br><br></font><font col=
or=3D"#6a6a6a"><br></font> </p><p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: AR=
IAL" dir=3D"ltr"><font color=3D"#6a6a6a"><br></font></p>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" dir=3D"ltr">&nbsp;</p>=0A=
=0A=
=0A=
=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">=0A=
</p><hr>=0A=
=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"></p>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><font color=3D"#6a6a6a">iN=
OEX GmbH =0A=
<br>Innovationen und Ausruestungen fuer die Extrusionstechnik </font></p>=
=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><font color=3D"#6a6a6a">Ge=
schaeftsfuehrer / Managing Director: Martin Deters, Jan =0A=
Lohoff&nbsp;<br>Sitz der Gesellschaft / Headquarter: Maschweg 70, D-49324 M=
elle =0A=
<br>Registergericht / Register: Amtsgericht Osnabr&#xFC;ck <br>Handelsregis=
ternummer =0A=
/ Registration number: HRB 207338</font> </p>=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL">Bitte beachten Sie die <a =
title=3D"" href=3D"https://www.inoex.de/datenschutz/">Datenschutzinformatio=
nen =0A=
</a></p>=0A=
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> Mikko Rapeli &lt;mikko=
.rapeli@linaro.org&gt;<br>
<b>Gesendet:</b> Mittwoch, 20. November 2024 13:04<br>
<b>An:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; B=F6ckelmann, Thore &lt;thore.boeckelmann@inoex.de&gt;<br>
<b>Betreff:</b> [EXT] Re: [yocto] ext4 issues with scarthgap .wic image</fo=
nt>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Diese Nachricht wurde von au=DFerhalb unserer Orga=
nisation gesendet.<br>
<br>
<br>
<br>
Hi,<br>
<br>
On Wed, Nov 20, 2024 at 11:37:51AM +0000, tboeckel via lists.yoctoproject.o=
rg wrote:<br>
&gt; Hi!<br>
&gt;<br>
&gt; I am building an image for an iMX8 system and recently upgraded from h=
ardknott to scarthgap. The image (wic.bz2) is created successfully, but aft=
er deploying it to an SD card I am not able to resize the partition via res=
ize2fs. resize2fs always tells that
 the filesystem is using unsupported features.<br>
&gt;<br>
&gt; After investigating further with gparted I found out that the ext4 par=
tition was created with the C12 feature (orphan_file). I am using Ubuntu 22=
 and hence use resize2fs 1.46.5. There are some forum which suggest resize2=
fs 1.47.x as a workaround, but I don't
 cannot upgrade that easily to Ubuntu 23 or 24 yet.<br>
&gt;<br>
&gt; I also built another image for an iMX93 system based on mickledore whe=
re I experience EXACTLY the same issue. For that system it was sufficient t=
o add this line to conf/local.conf:<br>
&gt; EXTRA_IMAGECMD:ext4 +=3D &quot; -O ^orphan_file&quot;<br>
&gt;<br>
&gt; After that the created ext4 filesystem was compatible to Ubuntu 22's r=
esize2fs 1.46.5 again.<br>
&gt;<br>
&gt; Unfortunately this did not help f=FCr the scarthgap build. No matter w=
hat I try, the additional options don't make their way to the call of mkfs.=
ext4.<br>
&gt;<br>
&gt; What am I doing wrong and what can I do about that? What is the differ=
ence between mickledore and scarthgap in this respect?<br>
<br>
I think these kind of changes are expected in yocto major version updates.<=
br>
If new ext4 etc features would need to be explicitly enabled, then users<br=
>
and maintainers would be flooded with them. Upstream defaults are better<br=
>
even if they sometimes are not backwards compatible.<br>
<br>
I would not expect yocto tooling to always be compatible with other Linux d=
istros<br>
so I would rather add the resize2fs etc partition resize tooling to the<br>
image itself and resize partition(s) on the target at runtime. This can be<=
br>
part of the target 'flashing' process. This is IMO more future proof.<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</div>
</span></font></div>
</body>
</html>

--_388f9e3d-7a84-49a7-b21f-a14c254d8f3d_
Content-Description: inoex_logo_4c_982191a2-b996-4578-8ee9-9a0ca87b6136.png
Content-Type: image/png;
	name="inoex_logo_4c_982191a2-b996-4578-8ee9-9a0ca87b6136.png"
Content-Disposition: inline;
	filename="inoex_logo_4c_982191a2-b996-4578-8ee9-9a0ca87b6136.png"
Content-Transfer-Encoding: base64
Content-ID: <inoex_logo_4c_982191a2-b996-4578-8ee9-9a0ca87b6136.png>

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
hRCIAwAMTFuVSVq1Q3kvBAcAgHIIxAEACrNs2xSMn0RAfuj4jMJ9VIG/1ZdwBAAAIABJREFUj57g
v9e+IAAAUCKBOABAwdZaq5zEz4HjVYybtQBcFTgAAIyAQBwAYESWbft8LRwXkOe1CsBTG5T3Nf3i
AAAwFQJxAIARiwryFIw/j59jx7MTqQf4bfzoAw4AABMhEAcAmJhl26aA/JmQfGOr8PtjVIDf6gEO
AADTJBAHAKhAVJKvqsmfrQXmNbVcSS1Pfl+r/P6o8hsAAOoiEAcAqFxUlH8bAfnqr7MRVpZ/iMD7
4xc/Kr4BAIBPBOIAADxqrbp8tlZdvnLyxb+bAvWjPVf0LgLtdR/X/rdVlfenv1flDQAAbEogDgAA
AABAFf7TYQYAAAAAoAYCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKog
EAcAAAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAA
oAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAAoAoCcQAA
AAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAAoAoCcQAAAAAAqiAQ
BwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAAoAoCcQAAAAAAqiAQBwAAAACg
CgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAA
AACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAH
AAAAAKAKAnEAAAAAAKogEAcAAAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAK
AnEAAAAAAKogEAcAAAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAA
AKogEAcAAAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcA
AAAAoAoCcQAAAAAAqiAQBwAAAACgCgJxAAAAAACqIBAHAAAAAKAKAnEAAAAAAKogEAcAAAAAoAoC
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
RK5CYII=

--_388f9e3d-7a84-49a7-b21f-a14c254d8f3d_--

--_000_FR3PPF317299CA97E0A8E987CB5588C3C358F212FR3PPF317299CA9_--

