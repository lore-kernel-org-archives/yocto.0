Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CEC3DA59
	for <webhook@archiver.kernel.org>; Fri, 19 Jul 2024 11:25:04 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.73])
 by mx.groups.io with SMTP id smtpd.web11.16591.1721388296683117798
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jul 2024 04:24:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OlQ5OQkE;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OlQ5OQkE;
 spf=pass (domain: arm.com, ip: 40.107.241.73, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=AgvD7XxDTDoLo6AXMnCRm5ApXyWvwCPd06d6GpLx6hNSVipbJ15cbKp/3TL7N5w5LS4xRbXZe+kq+QS2+nyBRRyn22W16TR0wh42ZoG0oDaJe8m6xUjHYS3llTxC97suNhNvq5tfMUHQjfOPFlfESzR8ApcJfvsR9kxEdC39BFc/ZtAENaGE8rXxxrcmZ8N/S71sIgn0BO2H+t9u71d0iLhY1EaniX9/PCyhDWdEjChqi1zr5Sp046Vs4cb75HfhuS2EuyWKmKt79JySKCsDWsO1kQoZ9qEQ8vv7+Y7ML2WaSNAhRhop6tnfJpZ4MCjizQDWJgqUUxO362pXyxhkSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkW7HDxYWZUGbx9SvEa/CcM9Fz/6bnO2dxfg7NCvm8E=;
 b=uIUbs0fPsEk7V8GhB6W2me6RrPYk45YRXm4Gq3B7CEpWi/MkAqrCt6zQv/9CFRr7X6pDgRB0HM6gMScUh15xCzMRyGAYowiigqngO8W1MVq5blrHLgpyTY3WciIg2Ddee8awLDXEPD21CKJk+Gs/zaK8i75sUe7lGTKYqBzIsTCGwu+9cl93f+E3AUv67RdtSoqtYcFmb7yo1d+FzlTV5naUfvs1Hq02aMxDe9dpapw4hiv43oJx7FkSmqH9OKTX70EmGHWgcKa8MperHwjUD9ikJOF5hx3h7u4t6rsTmSx6EcDsFKpM5XDdTIHmmmVe4qUWP6Iyg+6tESJHWxuHKg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkW7HDxYWZUGbx9SvEa/CcM9Fz/6bnO2dxfg7NCvm8E=;
 b=OlQ5OQkEV+w7BR+aUj6enpuJyjivdHay6cVUWGgHGJ7lcIGzF+/NghwKFIIkXrJ9Z0c43EQg+ppv66nHTF+Vlm3NAo2Na+VZPsfSFGkLo61sblh9PAwq9vIml5nJj9anebHcAbwcaV4wFa1jAxL2/Qm8XW/UyS3VYdHSgxpVNlc=
Received: from DU7PR01CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::10) by DU2PR08MB7375.eurprd08.prod.outlook.com
 (2603:10a6:10:2f3::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Fri, 19 Jul
 2024 11:24:52 +0000
Received: from DU6PEPF0000A7DF.eurprd02.prod.outlook.com
 (2603:10a6:10:50e:cafe::20) by DU7PR01CA0031.outlook.office365.com
 (2603:10a6:10:50e::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20 via Frontend
 Transport; Fri, 19 Jul 2024 11:24:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000A7DF.mail.protection.outlook.com (10.167.8.36) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7784.11 via
 Frontend Transport; Fri, 19 Jul 2024 11:24:52 +0000
Received: ("Tessian outbound ab09e808a502:v365"); Fri, 19 Jul 2024 11:24:52 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: af208af73885cffb
X-CR-MTA-TID: 64aa7808
Received: from Lcc76d16b3fd6.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 54419B18-A202-4508-BA73-2FED868F18D1.1;
	Fri, 19 Jul 2024 11:24:45 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lcc76d16b3fd6.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 19 Jul 2024 11:24:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W+324s7+cGwoZbiNObX4Kl+M9osS4GplWVhJYVPPjT9rZkK+vAA/ocMVmcczoYtp8rSg/KfygbSHVam1cdOB8SPZZmSFR++FaYx78GmlZEmRnqhoJw4dIBLmV4rvtnU0zanddQY64gD8hl2c880uihuMIjjIOTtSGd9sWPYReUthbMakZ6rI/hOwEpdY7vSP/0/PQcIGDZDfAbdU6dFZf0ddaRqpSa+vwT9u5CdIwPXRXsbl7BbMQhf1J7K759ySMnLXqScDN9DgCLS/5DZm+URk6w68Uavlr0SSBfzb0PKa/ibhivG/NzAx8iutn40YFIY9+HnazuV8rHWNh0CVXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkW7HDxYWZUGbx9SvEa/CcM9Fz/6bnO2dxfg7NCvm8E=;
 b=bimMGbrIq/53EjV2Qsei7e68MdnM+uLNvasc5EfqBp8JnBeAvRwGR9sfQPHDCsa7y96a+vbhn+DQYDOje3DTa3dhicKc5NXK+jF6zz5IJkcQRfkv3zQI/f80+vzVA06CMhMwdHLdd/uJj57laTsld5oGiOeEC6EBlxpffdCpJ6YLRSzGxDlue6FOranxTlTxTrJd+OIDLMHmivJ3rBLRUoj6347AB5sb1e/kemkNne3YhCxf+hWEtWezAOmITOtjoAGeHIU9ZaSMNzZ18ZcJWsefUMEcAVVh7spQB3fzDYl433KSX+TLVUv+sjjKpLC/D2qnqbV7QJK+N8T/G4Obyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkW7HDxYWZUGbx9SvEa/CcM9Fz/6bnO2dxfg7NCvm8E=;
 b=OlQ5OQkEV+w7BR+aUj6enpuJyjivdHay6cVUWGgHGJ7lcIGzF+/NghwKFIIkXrJ9Z0c43EQg+ppv66nHTF+Vlm3NAo2Na+VZPsfSFGkLo61sblh9PAwq9vIml5nJj9anebHcAbwcaV4wFa1jAxL2/Qm8XW/UyS3VYdHSgxpVNlc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM7PR08MB5381.eurprd08.prod.outlook.com (2603:10a6:20b:105::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Fri, 19 Jul
 2024 11:24:43 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7762.027; Fri, 19 Jul 2024
 11:24:43 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Bartosz Szostak <bartiszosti@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] file in wrong format #bitbake #cmake #gcc #qt
 #raspberrypi #scarthgap #sdk #yocto
Thread-Topic: [yocto] file in wrong format #bitbake #cmake #gcc #qt
 #raspberrypi #scarthgap #sdk #yocto
Thread-Index: AQHa2a/EnD5CUqk5fEySigaUbBadwLH9xhGAgAAEKgCAAB7agA==
Date: Fri, 19 Jul 2024 11:24:43 +0000
Message-ID: <5F2AFC81-7834-482B-A6FF-CCA132B0EAA9@arm.com>
References: <sAnC.1721375168210154927.Hbi6@lists.yoctoproject.org>
 <5C256CEE-2139-40B0-80E9-EDB821302275@arm.com>
 <CADhq0QTTXExm0jMFx=k--9Khu_LAXBdDAjSnuXSmQ9TMHZnm9Q@mail.gmail.com>
In-Reply-To: 
 <CADhq0QTTXExm0jMFx=k--9Khu_LAXBdDAjSnuXSmQ9TMHZnm9Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM7PR08MB5381:EE_|DU6PEPF0000A7DF:EE_|DU2PR08MB7375:EE_
X-MS-Office365-Filtering-Correlation-Id: f06e11cd-40b5-4b4e-a73b-08dca7e56898
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?CLAQhY4cOpKYL9+FQ4jE6b7Wgo6yMITInbEhUseS36GUNzgZIHRYr/vDmvTf?=
 =?us-ascii?Q?4LaN5HBRQKPWTbb5YXbh3pTHVDwQhfgrHUSGelN/6huRu4ElS1pusXKnmi1p?=
 =?us-ascii?Q?4TRPdbONVnTe/p+3UUXHOOvsNOdeNCO/zXVOJ4/UjqiG3fW8pjaHaH44VxuR?=
 =?us-ascii?Q?K6TAFXJZpscTlFIymyA+UZUQPmckq0LrMi/6jECSduiRC9NsgwvojvI360wr?=
 =?us-ascii?Q?4DkAHQSNY0nhIqnpe73hj0whY5lI9IRBgSFu5AhRuLEo7uO2EtxW7dXiu4dW?=
 =?us-ascii?Q?Y1UkqDzv3w453/w4LPuPsiTX6PgbNzy59C2lOQWONuJCi3wDL34g6OohD3X+?=
 =?us-ascii?Q?RiASrnjaUn4bXsj0MtyjKJInLGL9YDcdZNOJPSdzYoVrMF1cOyPWeXuXXo9F?=
 =?us-ascii?Q?rtmnXHLnL4UgUbFwEtpwUa03XKJvgAWibfnTjjmOU+sP/spkXn8INQaOgMAP?=
 =?us-ascii?Q?O+vF31YPTqkVbvZKXfog7BjpODLAc5PYux/XWf0gjLdhEcmUSHIRcmVko1eT?=
 =?us-ascii?Q?JbEhqPoA6Sn5urrNnq9WH+3vZABUuIuZEGX586kwMCP2SAzd3ik+B8g+rbKB?=
 =?us-ascii?Q?TzYG5im28vNK6dj0+RXsNPmTWK9NbXEyq7A8Qedr0wjYmqKvYtQAH8cw1kd3?=
 =?us-ascii?Q?weigO7KX8V1VTMTtkIjWT9CUKWfs869mhAKQmiSrkEKcOs6qm2IG+HQmgPi7?=
 =?us-ascii?Q?ndmIVF3gp0actYXitJVC9W5Anq06+V4j1M4zHUGvGyBrXr9Qc7nvyJuejJBA?=
 =?us-ascii?Q?TDwE07qFY0m1D/jsWmKtzEjwKq+nYL0gbE4klC1xg6mWvqR1lv8kqwwlGOj+?=
 =?us-ascii?Q?BlyD1Rb8EK8coI3H2bgFadKa8iqMrJC1Msc2VzS4buXsPspKI/yRq+GMttjh?=
 =?us-ascii?Q?OJdvN7wo1WSaw/k9s8QKVUUj7eUiwEIOF12RlaCd+MFV/H/SCufwipho/3x9?=
 =?us-ascii?Q?+pgH6f6Dw3xjU8qvF9l16quv3SVg2aUAUBYMHdkIbqPUriBMgaE2WQ/S387M?=
 =?us-ascii?Q?BxK6PeL7XUD0LA1wTcPgeU03uwEomXIWsVTit6GBBBwV5H4MU2z+Gi3DwI4A?=
 =?us-ascii?Q?nlAQZRy0EYJ9puD5ZVysZxdM0zPD0/CXsFqf45MFaVX6UEgy8qxjTUdU0NmD?=
 =?us-ascii?Q?lq1sSBm9knTfyWirv9MX211MnctNu0iHK5OkT+4gy0jJMQQ8dbfPtTGdd1a9?=
 =?us-ascii?Q?gRIt7imQAoVjPU4qxDfynjvp9X5Z89U8ztNu/3kHRvlr2Tcz3DiZ+zVrCkFM?=
 =?us-ascii?Q?eF1cLlnoAn2QYz8bIBgsIkE36vDc037O9x+Mvr75UuA9XKYSXXzEqSSHerOP?=
 =?us-ascii?Q?UpG1+CfsnSpJb4HMpBQzzbSqNdtCOwmmSYkx4f8Sc59OoK+EBvrRxVTbu3M4?=
 =?us-ascii?Q?l+8nFHZJbrPInAVQQyN44itgph6HAjGJPlIwQ4ilVxK25fID8A=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <434210D483FAE84A88137F13610B2654@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5381
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000A7DF.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b96a6778-a64b-4d18-96b1-08dca7e5635b
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|1800799024|34020700016|82310400026|376014|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?/HBNxqAKQNolD5MZ4XJN57zLFodY0IRZ21AmGCJRmEDJJN7hwUpK9TWw9aDW?=
 =?us-ascii?Q?5XIL8ZLlUmFbDhlh+SAtf4nBqdUqZGBLYEGjHr3y9e77a1TrJjvFluqHe3jJ?=
 =?us-ascii?Q?/9+FB339M5c+8qba/QSuZy4Wotzv35SWLH3rIS7HqiM58Li9rTwn0Vtm136N?=
 =?us-ascii?Q?fOT1ux9X43MF+gpLYrqME6qCIEd595C+VRRe91NmDm0EyFVsHcwhuqgIIp39?=
 =?us-ascii?Q?VF51gpMSIp9hCv6e6YZnlE0sW4UrM0Z5sW7kKPtDFi0f+AxzPOjogpHiPQGt?=
 =?us-ascii?Q?hExxdQQOVsItuksuguP4pGgMDg900EwxqK1Cb4rc8sClJU25mOqJxRIlIsS1?=
 =?us-ascii?Q?VUT2szvPpWi/vxQSBvtOrskGRBP0N/zFZYhzHK07mtGoL877AhJ3dU3XXz6O?=
 =?us-ascii?Q?xCu2ifRNDUkrjM6eMoZ8uEpTPMyi0iHTzIF+PrlHTQ5Vxmj50QH5kCfgwJG9?=
 =?us-ascii?Q?xO52PFr8PA3mB++D9zIaD+oSCU7x71uY+YvxOnqt81KP7wUL3XhBC4Wfwtva?=
 =?us-ascii?Q?LQOQePe8QTWc4EQGQA6R9eLOrBMsITeho/eMewiS1IRuWHiReOttfAmCb9xg?=
 =?us-ascii?Q?2TXiRkQ9mrku6T3u3MpKbQ81785hIfboMzyMtsneT5YEEm8LNtsBN+4vvZB2?=
 =?us-ascii?Q?G3xg/N7IAk1zS14YpCeUMZ4t/vRKnNdfuaeFRLw3u2cuyiEW1YICZawySESU?=
 =?us-ascii?Q?+3CcFamawi/YKKHgWZioUNw9aGHQN6ZiBXb4KwVHJSwEg+A2TCWHYTSJifMB?=
 =?us-ascii?Q?lp8DdoXkJc9fKTr8vZU8M1cy4GTvx/KAKGZN3foaRLgemcOjWcJNZ7VVxUco?=
 =?us-ascii?Q?ftZ23C8FiKZqfxJqaMmZToZF1PFCasaB5AcHNYYQYnnX4sykOSF8qt00MkB4?=
 =?us-ascii?Q?ODzrEhM193iOoZTUoSAGDBvAYwCP8RZIQb3S1FYI421uwhnw7xl5xRk/RqAP?=
 =?us-ascii?Q?f5NaJ+oFTqt5t0Uds+fezGhyH3VtnoPnGlZghgz2/E21YDjtN1T9c8vnj3ry?=
 =?us-ascii?Q?glQXlH8MLLraXVFiToxAJgg4xzh92I/toROX8BS8LpsFXgVI4SXLxhEKIpTx?=
 =?us-ascii?Q?jxM66rJgE73Nyrvk6sg2cwKTibxs6qtY0RcPZwOlne4ejiLrw8APIRPJO8aY?=
 =?us-ascii?Q?Yb0Mix/sT3iDdyFwl1BiBvWBQy8nJm6hrhhoBlIy5dLuyNHlENDukOu2VWr5?=
 =?us-ascii?Q?wUmCHIqptmb3q242wMTSnFhScx1PCB6SMEBbpt97RvDnjoorUvXp5f6Tlx8u?=
 =?us-ascii?Q?pX5AWApnHCwo8H/srXMMyyN1GV18ha8KPj0HUQdATezxfMFpT77m2biaUrQD?=
 =?us-ascii?Q?r1fB1nCPBwtFyMJQCTTOqmXOC3JNxyTNioJM3hgYHw38nXXCq6Krmadhslz6?=
 =?us-ascii?Q?ag58CPP43rzvVTEkwRQu+OeWBR7+7nhiiCed/ZL3ZIdCUwTIWRavze3/4qvi?=
 =?us-ascii?Q?G0TcRqI88JfHhh4Ivfy31v9h1rM/KVV+?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(34020700016)(82310400026)(376014)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2024 11:24:52.3795
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f06e11cd-40b5-4b4e-a73b-08dca7e56898
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000A7DF.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB7375
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jul 2024 11:25:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63538

On 19 Jul 2024, at 10:34, Bartosz Szostak <bartiszosti@gmail.com> wrote:
>=20
> Could you please tell me what should I change?

I dislike CMake and never use Qt, but your recipe inherits populate_sdk_qt6=
 which is absolutely the wrong thing to do. Try removing that.

Ross=

