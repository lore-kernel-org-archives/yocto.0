Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8768AC433F5
	for <webhook@archiver.kernel.org>; Mon, 23 May 2022 12:12:24 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.53])
 by mx.groups.io with SMTP id smtpd.web08.26694.1653307940421051824
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 May 2022 05:12:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=nZHMKHZo;
 spf=pass (domain: topicproducts.com, ip: 40.107.8.53,
 mailfrom: mike.looijmans@topicproducts.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=h9i3GMMckBHABPP5whqK03esbwAW3d2KTx4yNu5Q/h9sRjd68Jo4TrrYLdFU5uBaLI77IZ/pOrnYxKjLwo9jiINuobtx/JHJpm4dZsjfhLtrgudNY3qbMwymhddJO6pO1gLnWv9aDw1VjJF1HajGU6lmcU/IhfdVO3sAufwZTV4uhoDx9B2Se4JzIqmbchyceouPMqjSkf5k8WcEsqp4WN+VgW9bLf34rGGiNgzk7qPvcKOGOtR491EvKMnkReDpq+vArIsPlpX6M0bRKvWnEXM0U+Q9qt/w8Q4LoO1+Q11F5fpy9WpCmpQyXfE4z5L7BCCSqETeqTK6gnj0yrAzXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QJOL/VVJfQDSxboG1vGgahHvu+q03vLD1uYqBn9pnqM=;
 b=grOJPJWasTS7Rf55Z5F2KdxWTCCS06Mwceb5CCTJ0lZoU6yz81fXb34eZ5bvxRNyTVVR8XFAKnPip9Dbwfwz+6TgYoQRlTRNX4i3rBabAgzJKYiDYcVagndjqTP6+DkxxlEWm4U3pSogiA+hNJlP5Umj8v54UWiyuCG/FArpvXbL85IaEszHpOyBaPHHO0Qn+bvxmOKVOvW9R8UcCwS7K04Kf3SH7HbLLQZ9yPbaPAsyDwaPE7/H0lAwhZMsk4tu8RHIcXYIMnKRp1Iu/SeNFDd2BtaurijddoGGhhwwcZZs/34lqccS+4mIqVVURHFfeVBKYVS5pghcTI+F3HgOxg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topicproducts.com; dmarc=none action=none header.from=topic.nl;
 dkim=none (message not signed); arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJOL/VVJfQDSxboG1vGgahHvu+q03vLD1uYqBn9pnqM=;
 b=nZHMKHZov4tnnPAdVAsXXy8K5UfxsL5h9vbqJtFuolb4F0M3HwhTqAT5d/t175bUz+KTvIyfwo+X7+HvX+Z+k5jAL6z0K+n11cFh72zy3MJXSriVzmuwYhU01tKbLfutSBm/YAERud6MeZPtk6o4y4OUuJ9EsvBeFS3jXsUaHWpiWNgbcre2Fz9v9zGcmGIDKiC9+QGxJ7YeUZgpdTcBiUk9fJdXF9caWh2X1yxl7QdW/9/HgM1mURUHaIhed7WXACjpZK0ZzkkufP0s6ZNCZ8XV15GKUAl57p1aCfWF9O/TVjwJCV0zL/xOJEYVAiXRFWoaU1N+x65lvGLlUL+fuQ==
Received: from AM6P192CA0084.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:8d::25)
 by AM7PR04MB7048.eurprd04.prod.outlook.com (2603:10a6:20b:11a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Mon, 23 May
 2022 12:12:16 +0000
Received: from VE1EUR01FT066.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:209:8d:cafe::e) by AM6P192CA0084.outlook.office365.com
 (2603:10a6:209:8d::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.13 via Frontend
 Transport; Mon, 23 May 2022 12:12:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 VE1EUR01FT066.mail.protection.outlook.com (10.152.3.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.14 via Frontend Transport; Mon, 23 May 2022 12:12:15 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (104.47.8.54) by
 westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12)
 via SMTP; Mon, 23 May 2022 12:12:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1ShfJNGQifp0THzctr0fNGdmpvkxWirmz3nLaVJT+L2zW/DxU3pGo32yt9dOJG1sULL1o7UH9f4UVDyvVWPB2BZslfEUbuSW/drT3ZzdNVkqHBEetXtS5LTZRqLuBCZgu74NwgM0vAZdKE71qqtUE41hsTWHLSasp2YovTUIRaOAja95O0RfcXCtksxTh5zukoJBUMaVWHhkU3dC0d6mTklwYAO//7mApgNG1AJX9oTE0Ts4t4oDwBMlZUgiuSCjlm49MWHikkIVb3N0d9zKcTVJyUS5e+GiM8nnrxkCT9mLwBvOXLf6hcHCw6F/tCS6QG+U28KuZmFpGgWID9rjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c7xzKvSflwHPedvOAfCCXCx9uBNIdxOWZ22WiiRTl/g=;
 b=dCDHNyM3uxewOlSR+68a8Eg1Zk5aex7gVTeXQiFfGuKDr9qBnbuCYc155MgGByKs4S7ckG5Fm/Pr/JheAMxEo61pXMzHNoF5cSAZ/ysc4b6hoc+w8yULbKzmiSactA1GloEj3CD6x3nEF1aap8cgli4CVJMP16tAZbDhsnT1nJFcP7bl0V9r9PUO+E2GmarNsr8oJQSU+pumvUDazM6e7m7gtwlvm9eURHkRvb7TuW5dICZRVDm5htENnhwEiSFOeVY2uTTGwFKoIi+gSakmZY+IBuKEy/6QFPK0QXxrD/X7qy9FR88GlzQ4JD9wF2bgZR24JFm4Zp/qY9MIj4YJRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DU2PR04MB8501.eurprd04.prod.outlook.com (2603:10a6:10:2d0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Mon, 23 May
 2022 12:12:12 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::7075:13eb:3b6e:4e14]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::7075:13eb:3b6e:4e14%6]) with mapi id 15.20.5273.022; Mon, 23 May 2022
 12:12:12 +0000
Message-ID: <e74a3ecc-41a3-4bdd-08b5-b6b7ad7dacb4@topic.nl>
Date: Mon, 23 May 2022 14:12:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mike Looijmans <mike.looijmans@topic.nl>
Subject: Make psplash wait for the framebuffer to be ready
Organization: Topic
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR02CA0124.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::21) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 5cfa2632-a539-4338-d91e-08da3cb579b1
X-MS-TrafficTypeDiagnostic: 
	DU2PR04MB8501:EE_|VE1EUR01FT066:EE_|AM7PR04MB7048:EE_
X-Microsoft-Antispam-PRVS: 
	<AM7PR04MB704820AE56F798E23564905396D49@AM7PR04MB7048.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 UH3DLHR/qh7JWX0D6i8V7yj2Nb4rUQhrKoNHuX3v9ESvlHWIjudNh7wwHBc48EWqD1Caf0SV3oHQPR+vc0rzEcRG5erSpnc+l3R/RXALuHJqIwaHrwrfMB3kh/67LAunYlKJmxUF3aabPDoh+GSeR+08+vGFGPy4etKVGRJ5KejgBM7DtfVxfz7p/VN7CH1oHUOl/AeMsgBgMQiTdxtUThETulKTN8H2IgTs6jbs9qiC+GreZHQrhJNOhbMSpD8BXyic9IekQe9EXfR4EnQIUHNLbDpdznH/3GLWxcH8x77E+OIADyF/0sWWRQAe3RNBLCd+Aa54gD9wOd12iKlHfo+uoO+X1Q/HV7ZWxiHrKn45PM5+U7nDdaN8LB2IOmLfSxQ7OH8nzSPxAUIyxY4lLiMOWSlIcECyBsV2XprnB3A4inufTiRP2Wb7tn87ULmUJBwEBN+0SMGZlWQajjnY9IBC5O2Vn/w6vQdRqUqyMtQq9jU3/iWGafPwWbk7s+5foJ12Rz56FI3DOO1Zal6z0EJbz0m1advS0q2BkLGNfgNVJeWvoXzgg2e6nEPXYoH38nZhSk2ITMggohpOMBdBkhBRUAACcPhvFwnXIpWrTsbR98+EYPHEBogbgMkEyCq27B66em4tGszz/isxEt2UeLiUawairbx6ZTIE8j0zEDN702pFgyISlpYapadNTt6SmAhHrZXmpfRTn6a/sCvPhbjXkamei0MJU5iFU7SaaAjEyT91ZnmmEdSGGpflqEaisItA/aE8fd8tj920M5qq6g==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(396003)(376002)(136003)(39840400004)(366004)(36916002)(2906002)(38350700002)(38100700002)(52116002)(66946007)(83170400001)(6506007)(6486002)(316002)(31696002)(5660300002)(508600001)(36756003)(8936002)(186003)(6512007)(4744005)(8676002)(2616005)(66556008)(44832011)(66476007)(41300700001)(26005)(42882007)(31686004)(6916009)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8501
X-CodeTwo-MessageID: 
 da7d6f82-97eb-4994-af4d-580816fc99ca.20220523121214@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
References: 
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.b7e4c2e3-7ef8-438a-875f-c8d974c21d76@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.1195c9bc-3466-43ac-9600-56e4081b21e6@emailsignatures365.codetwo.com>
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT066.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	240d4290-d633-41ca-b996-08da3cb577ab
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eiviYaS/fiT98f90pScfRQT1agVcyIwVT7kmCLLNHRd+pZhdmoRLvSqZZDDDqPzpIJpPL+itrb2K5gDDRb8MUrOT0PQe06Y3JlOnebmeZM1K+bYBRY5EfeYIoZ6m51PbfwpYFXjT306OVhO32+yolFQ9uGdmKh1MERavksSpUAzKEY5N2kDv859jBAWX2kyEpbF1upy+URp/VQUrOdknlbiuH7M1byT7yO/tzytTMpzS66MIUBoffHrIbI7q37+VdtbUIQKc7nu+mvLF5heRad7mybSL2rT51Rc2MLfOTvtlpsys70H/efEIqAfU0biEOJq/rRZHqXHqJklLxYk7xPO4IacCihkyQ91Y62YjZ/P+OWkg2Xu7yAJhBJgwm18zqmQHNuMTPKcKLfT7nEQc1pHEngSmwrjsRBKev4rE2VXdZ3JQI1IaDOIwN5EB6wkC8Pj4mxfMiekrdZ/JKmlOnRY7d0gUqLqRMnMHUvPwpsHGo4/vSshD6pdyDUe1eLhZceE4eU0xMo25dsi1wpIZRh+Dymhtjk2PiImSZ64L5oiicwrWBwLg8/8hwQ2UhuLskKz3/LdWT1Tp59pbBSmo+KSiQxsCR79zK2Zoqp/kicy2M8VJZetrRVVNF2GxlaTOtYZST4IDsDhoVikf9JcedVjbo2dr0VIOHtVpU78WxuSa/CPF2rTreA3GmNLsuDilhq7z3uXrba1K8Je7SPqj11v5gt1j5KQQmNWgLptMQW7smaHjZXgolypgzWbi/MPFzll2qLtnu7Wd3cYzSwYqleYT1caWM4ctGVWjyaJR8To=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230001)(4636009)(136003)(396003)(376002)(39840400004)(346002)(36840700001)(46966006)(316002)(47076005)(83170400001)(336012)(42882007)(36916002)(508600001)(6512007)(186003)(2616005)(26005)(6506007)(6916009)(31696002)(6486002)(15974865002)(356005)(36860700001)(2906002)(40480700001)(82310400005)(36756003)(41300700001)(31686004)(70586007)(70206006)(7596003)(7636003)(8676002)(44832011)(8936002)(5660300002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2022 12:12:15.4011
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5cfa2632-a539-4338-d91e-08da3cb579b1
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT066.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7048
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 May 2022 12:12:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57155

psplash doesn't work on my system because systemd attempts to start it=20
at 1.6 seconds into boot, while the fb device is created 1.9 seconds=20
after booting.

This results in:

[FAILED] Failed to start Start psplash boot splash screen.


I figure I'm not the first and only person in the world to encounter=20
this issue...


I'm digging into udev and systemd options to properly make it wait. As=20
suggested on the net, it should be possible using an udev rule like:

SUBSYSTEM=3D=3D"graphics", KERNEL=3D=3D"fb0", TAG+=3D"systemd"


And then add the following to psplash-start.service:

After=3Ddev-fb0.device

I also tried this variant, as reported by systemctl list-units:

After=3Dsys-devices-platform-gpu-graphics-fb0.device


However, neither has any effect whatsoever, the service still tries to=20
start too early and fails. The "After=3D" apparently is ignored or so?



-- Mike Looijmans

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

