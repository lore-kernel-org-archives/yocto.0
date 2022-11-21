Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1626C4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 06:35:35 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.51])
 by mx.groups.io with SMTP id smtpd.web10.32471.1669012523539684017
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Nov 2022 22:35:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=qo8dwWTD;
 spf=pass (domain: topicproducts.com, ip: 40.107.249.51, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EeoqeS92OpS8oXqLt3ThZJW2mPo/Cee6nHUnwbfo9Mk=;
 b=qo8dwWTDHNsue8mYlPcsQj5tuNkX3nZoxocBUX0nHU4PYuNZJZLCj5JIMYH9XJ7lJkmzwzkMzcCvhARoFLEwJy8vuUXV6RE+5eXYo17DuEgkGiolzWS7TS2Hx+XHLybBjSpnb7UlfcSvcRm8Y5grlaDIFoGSbvdW/DXD8DiPkD9MYfu3xBBBOQT2ZwuUVOsNgPP6TtnliuHeA4HLN1EjJvSe3J3uwYSdMGcTXDlJJkNTwmxXYNy/IiZZIdRewX3F/DGHN/s9eUVP5sqzUE8fhSKul/SgMeH6ukHyRxUQBO7QPqtcFFVvUN4SS3eL7gss+1/16+aDC+gPqMzOxtQ++Q==
Received: from ZR0P278CA0029.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1c::16)
 by AS8PR04MB8295.eurprd04.prod.outlook.com (2603:10a6:20b:3b0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Mon, 21 Nov
 2022 06:35:20 +0000
Received: from VE1EUR01FT049.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:910:1c:cafe::96) by ZR0P278CA0029.outlook.office365.com
 (2603:10a6:910:1c::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15 via Frontend
 Transport; Mon, 21 Nov 2022 06:35:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 20.93.157.195 as permitted sender)
 receiver=protection.outlook.com; client-ip=20.93.157.195;
 helo=westeu11-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 VE1EUR01FT049.mail.protection.outlook.com (10.152.3.56) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15 via Frontend Transport; Mon, 21 Nov 2022 06:35:19 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (104.47.18.110) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Mon, 21 Nov 2022 06:35:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HTdqDLd+1WV4uYK6SbChed4RfkaPguFR9z0OnvB2L9U4i5L2KI/HvyxRlbAMUmZY1lquovLTLog6JX7UkRuA7dUANFfe/PxjMhS02Cu76ZUQyysY8eQmB40TkLhxOhJGyHZbAJSpn3pjMxKsZjBGXJn+4LqCKCWrWVie7j5DvjuXzrXTd12Tab6UnBda2GZeiMFhhrG5om4VVLAdCMhgrx1QcepmPuZzKHC0jHQLzarhPcdEaU2pri8CC3JtVMpImL0e5eYwxQCpxDSk57fJ58U/+vACtMrxuyGOKAAm6BpIpYXov4g4m2d3mueLlUeVrwpJwnh9pH90H2eLr9trlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6tm3rBpq49EvCUDbCXymmqF+5GmcOtqdMbRLkvyYJQo=;
 b=VsygCFZ43HQBYuINTOn2YOATs3AXMYXKpSNTqLdK7zqON0LOqeXgutzN7owhxWNDQzMLmgHG+2MpX0CVWZ879+rPDvPissrVDDCEzOYxxmWEODiTkdclCvozeez/Lx4P/4IktxIz8xAynYU7v6lbRdvvJHtjW9StDwgV81IPYLfUV79xkXHWvXV3FGqIsS+xd+nNu77TcVo5XFvQvUsTFVmTCfsqqRj6El7Wbu5rU8gEsl4QFg0dGjfL+26lcfKKM0N0HFYa/+xT8ewxeEx10fEjaKTIl99BmAAfZhWb5o9UmlhXGWHrSkAJrpP30HQGZc8HjbO6v5aQDkguJjDJ+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by VI1PR04MB6926.eurprd04.prod.outlook.com (2603:10a6:803:133::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 21 Nov
 2022 06:35:13 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::5712:8e2c:4394:628]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::5712:8e2c:4394:628%3]) with mapi id 15.20.5813.018; Mon, 21 Nov 2022
 06:35:13 +0000
Message-ID: <81aa18dd-df56-14eb-4cf8-efab3786a9d8@topic.nl>
Date: Mon, 21 Nov 2022 07:35:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [yocto] systemd: how to enable auto-loading kernel modules
To: yocto@lists.yoctoproject.org
References: <c1a03ded-4f43-9740-ab00-5f2a6d9ab2d1@topic.nl>
 <2208.1667890692740604015@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0e8baedb-fee6-4307-b92d-6ce4608737de@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.01ed750e-f735-4e61-96d8-1de328d7bb5d@emailsignatures365.codetwo.com>
Content-Language: en-CA
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <2208.1667890692740604015@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AS4P251CA0014.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d2::14) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	DB8PR04MB6523:EE_|VI1PR04MB6926:EE_|VE1EUR01FT049:EE_|AS8PR04MB8295:EE_
X-MS-Office365-Filtering-Correlation-Id: 208fedfc-b471-4280-69d3-08dacb8a8f3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 wUKr640dFz5UL9rak5d5eqtY5Hyeww7mHREor29aqhvKyUXrNRmJLWHpOywuaZBGuZBm1CqPX5TXx2qmb57I8t1QwSruUDxBN/Jg13/MBVRlEFC1+3N90fQI/cwS/v6UeGbivud1n9+W2LG6y1aUeJ5+K6Ny+Ei5M9KC+rmaDuj1b02qmVzHKo/A3jvUod+tqLdR/bfwGjJneIdjB5JMUmKJ/f0BU05Z85P8ugLzprPCO4+f/HsghiJSTZKLucsxg1pEXryrRe9R48b1X0P9b8wh3TPaAlDoK9O2Xj0XbOE2KabQFnx+guPmV6FImm8rha0iXwaS1HrCjSa3oxdQQK1GpwaNLP9bp0lKn2pOvSgP0m4dLqwRqz+is5+Mne3BCFXbx5Hk+vKrPazpPIxUJ+/VJMS5d8KCw+p6c6uhuGJeRHK1cgzRzwY2W4NrgPe2QFWcWm0kqt6G6NBOYSr3eP2a3DfrFQXFK6ODiFiY1QP+p3FwUJkYtXk9J1X0jgwu80Qu2N5uwsxetSpMz05HkL5/uyb5lEdUyas1Dya4zcgsXDfyde4inG8NNtLK3V4HEBpYbBEhGxU0k9CtK6/h5R7JIMmQ8bLpk2fkq01Y7YCAYutQKd7N1+VbSChHJ8rXgGI03EGPRYmcG38sQvmBpzlkBtw3L3I6oDvJx9+wgTc39ir9EIG4uVhlh90JQrGAdRd9pEOE3rQpxBpVNgRBeSaY/JUY1BLs9LcY3+Q7znBFyRMfXSnGySPRaUlr1Gyj
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39830400003)(396003)(136003)(366004)(451199015)(66899015)(36756003)(31686004)(31696002)(66556008)(44832011)(5660300002)(2906002)(26005)(186003)(53546011)(6512007)(83170400001)(2616005)(83380400001)(38100700002)(42882007)(966005)(6486002)(36916002)(66946007)(41300700001)(8936002)(316002)(6916009)(478600001)(8676002)(6506007)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6926
X-CodeTwo-MessageID: 7b112359-8c25-4729-91c6-35126d39c21c.20221121063518@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT049.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ddb769ee-e495-41b2-e9cc-08dacb8a8b30
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8yppUTM1O1uVuTu8ItHySIa1dM2TExN4MK0p9Cv3neN2VVSq4QIfCGVHXHbEa6UgJ6S5g7W4zMAxy3JYII8GDwYrXpUIGGuMFWc/Avxc2UZhfFE5IfyTXYU/RQm9ECcEl7Lz+9qBc4Za71TVDmJw6TclSJ6AUYG4vEjqa94LDcQVI5PxALZSdyYDbHi94J6CsdnxBtQmuRPgsagmGP9uS61BFnzlAQJkA9bPR9KTW3AosU+roGR1XXaF/vnWR3iN3E9B4cDv7Fk3wtCJDIQsyvD0dLn74K/LTIjtMHkZzn3cWLPtbnbgNGcwbLOFyVnwvTYgvkIpfFbjnHusk/HwFz2YMyvFdX0bKinnJuAB4dXp7vAyaKbTUT2/8D4TBw7CPnx9O/SMQh+xgQIZ+9hDkq8aiFPSqU68dIo/t1XCf9G1ZMAuu6a2VqAdT+Ghe5UZ2tlHwZStbJGiXnqEtWpxR+p4Kxk7Xgb5zeKR33LkO8DkLfm6aJhuI46cA1rw8r3lmy9Yf24YWRk2+CZ50O/Ws8IBc1Pyj9/8CQLIDP2ib9CJZnN9LBneJAyLtpSRExzlvPo1Zxc/yi92kXtM+JbGfLWlNIwXzRjf06dqKUr2mHRkUK3W+R/NcD7aS+6Ve2oGShh+a/Coimr2gmMjznUj382kmtfTWCt0xoP1gCfCRWZeVb3UEA7xQ0NiDkyKqOL+sWse9DlD1FvRZ5VbOS7I7XsAefsaxOnY+EICcT+KMVk=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(39830400003)(136003)(346002)(396003)(451199015)(36840700001)(46966006)(53546011)(186003)(42882007)(47076005)(6512007)(2616005)(356005)(83380400001)(336012)(7636003)(83170400001)(7596003)(26005)(36860700001)(6506007)(5660300002)(2906002)(44832011)(40480700001)(82310400005)(70586007)(6486002)(966005)(6916009)(8936002)(8676002)(41300700001)(478600001)(316002)(70206006)(36916002)(66899015)(36756003)(31696002)(15974865002)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 06:35:19.4748
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 208fedfc-b471-4280-69d3-08dacb8a8f3b
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT049.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8295
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 06:35:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58595

Guess you'll have to provide more than just "It doesn't work" if you want a=
ny=20
serious assistance.

The source code would help. Also telling us whether the drivers actually pr=
obe=20
if you load them manually using modprobe.



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
On 08-11-2022 07:58, Merlin via lists.yoctoproject.org wrote:
> Thanks Mike for your advice!
>=20
> I've replaced underscore to hyphen and rerun a build from fetch, but=20
> unfortunately that didn't invoke auto-load.
>=20
> In fact, my modules are device drivers developed in out-of-tree repositor=
ies.=20
> Some user-space applications depend on them, so I wanted them to be=20
> auto-loaded on boot. Autoload didn't occur even though I've added=20
> corresponding devicetree properties.
>=20
> Best
>=20
> Merlin
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58523): https://lists.yoctoproject.org/g/yocto/messag=
e/58523
> Mute This Topic: https://lists.yoctoproject.org/mt/94648966/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


