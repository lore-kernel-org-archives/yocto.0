Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB017C636CC
	for <webhook@archiver.kernel.org>; Wed, 15 Feb 2023 08:00:05 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.59])
 by mx.groups.io with SMTP id smtpd.web11.10397.1676447992832291823
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Feb 2023 23:59:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=c1G9aRZo;
 spf=pass (domain: topicproducts.com, ip: 40.107.22.59, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0YHLNbPsj9AT/yXBJ5Wi/bB3v89h50WFyOMwnHqewww=;
 b=c1G9aRZoyYTdtTgjR9tl+tO8X5jz4k0zpUOUvXw7P8mGhv71OxqC3WGeau+iFaU+77LjkRTs39krLorNyBAIDe9v00ajdwThz85/i+uvZfLsskWLtfgmu+SMs0CH8VO6G7Kpy5MTdmJRu15QWkcNmPC6J5pSeQUk/BnBXZaWFXBbx8PTbMMIloBPOpIjsgZMoH+Wwz7l4XY/14VF0yLDUjXzB1G+6cCTRWWehnyopSOwviAR/YkaEh69EdMIuIu6SwGClTX3X6t4H7srUEAfTiIPu7SVbvj2ZLqepp3TBZRXcJrtxncKwmu6SLbHH0PkxaL1ME/Cypu6CR6RofDp2A==
Received: from FR3P281CA0065.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4b::20)
 by PAXPR04MB9005.eurprd04.prod.outlook.com (2603:10a6:102:210::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Wed, 15 Feb
 2023 07:59:47 +0000
Received: from VE1EUR01FT012.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:d10:4b:cafe::d2) by FR3P281CA0065.outlook.office365.com
 (2603:10a6:d10:4b::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.12 via Frontend
 Transport; Wed, 15 Feb 2023 07:59:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 VE1EUR01FT012.mail.protection.outlook.com (10.152.2.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.12 via Frontend Transport; Wed, 15 Feb 2023 07:59:47 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.54) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 15 Feb 2023 07:59:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+Td00JMdWAiCM5wAE7JAkFvkg6hKe4SqAhLvSfCGjr1s/Sz7O0VSspk44aQ6XB5mWNLxMMdi1SBlfTX+wkZ7sxJO0xeawBHc5Da7rL/FUgSbgJMgZdA3QA9iyuHtfsLbLwUJQ4t1Lc3Exl+4m6U49w1517EP14+za9DHydVDN0YdY6yfrhwfgAobsxXwKpu38IrEFa9Tb22F7yHcji5u8MkTa7OFysKvXZqrTBBblsBd2i2sGxnNQxbDOEUdLr00D4vAHAzFDVCFOgkPshA5ci7Q06wcfenYcXctRtLy8bk6jkuT6DPjRXFQlU/Z1m9iyOdxhIbVGWwBmNQkL8FRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W/tiuerSMOjDorPfwInHHHaZy40vaKICOdre9ZobmJA=;
 b=SBHH3/3JL2AdvvHHtbsA415O9rcz0VOgGxtnLcdcnbcE2t/cBdkPb65FEAVZXYTM/9alzxDt3B+EoUGS/JFhjwq2CF06f2T513NJHFY2IgWIzD/YWkQoDOl/bJwrI0Rfmr4YQEqlkRy2P9XTnU9CmPBp0NgO7tDWeSO23+RBeZ7KOxVw5wBoUGQDhWh+ze8Bm24IWAGjKhCQdKd56OG8BspaS9OuuV99z0KNuIzr9bXHPuGQbbzGoTfyP9aWBfeIdy8yXRg2Qm7+Wk6t7Ws0CrUdzTliKutCRvESTWf2Cs/n3HTpNv5xdyJ1bNKlUqI+XEdQiuUBAR2RHXC2yuuRbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by AS8PR04MB8595.eurprd04.prod.outlook.com (2603:10a6:20b:426::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Wed, 15 Feb
 2023 07:59:43 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::a7e7:768:5a54:777a]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::a7e7:768:5a54:777a%5]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 07:59:43 +0000
Message-ID: <b40096cb-0a89-452b-2da5-d49cd9c7395f@topic.nl>
Date: Wed, 15 Feb 2023 08:59:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] openssh not working since updating to kernel 5.15
To: yocto@lists.yoctoproject.org
References: <Nock.1676278933612778355.j3HL@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.c9c9fbe7-0137-413c-bb60-76e468a5ee32@emailsignatures365.codetwo.com>
Content-Language: nl
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
In-Reply-To: <Nock.1676278933612778355.j3HL@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR04CA0055.eurprd04.prod.outlook.com
 (2603:10a6:208:1::32) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	DB8PR04MB6523:EE_|AS8PR04MB8595:EE_|VE1EUR01FT012:EE_|PAXPR04MB9005:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f826404-2165-4264-97a1-08db0f2a9b4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 PFjp//cW0QIgPKSzPsrOcoYh2xH2eOHl9IF6DRTDi7dg6BV/xY60A+5IMnZ+IKDgOrtaSlmOfrzo2kNJZY+lA2Y6GryaE6+O5/0nyNk+sJvvccExWJ95MR1VEBAgPJqATEpWLqk8O74MtqVZmVG5qqecwwh5zOf3Gp/hT5sLPXi++KrQ8C7dYE7PKOq7PthuqDzq3dpUSu0S4+i2RrM+Z45wMpiah7ksY/XMcJi4pwGGaye/RAI45lHfP/UYIASl8o9ebwqrFXLH3KLHW5ZwR2bE2p88lRw2TUBWFtTAOHutjXcOyK9/FvzxExc1TdVZx2Y25ZWLajytxZ5ns4R0gAblHj1TDebRRy0k8QmGjWmvWp0RgYqLL0zaoKZlJlFLUG714h+Ol4FeTkDgwinO8nOWsNp/g2YUpL+r/VqNxo0zvHj8gg8mNes1gJeFl4vTcATOYoxyzpqN1yYTGXI+CfSSd6suq0fU2oNsu3dvcgB0VIKBx0t1fAqdbWP/BZHqJMyxYia/dot/onvcdCSk1/sStNVc/jjwRf5c+wO+TC6opg40SZhnPrMJIIxZHuDH3rYLAnT95sGAHD1BnJBgFbE9kIN85vAoZzPZBTSRiNq3OKVtyTpukG4QS1+6T+kPdV2gUCHCxMJnPaZl6vJNfNcZjpl9PWRpxfXdm0ULO+cCMA1NZJdYPOTSF1RLFbkj6MfUiDUZESBSQ1+wZ4KpmZz5n//2dgrB+NKpSqfIYVI=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(376002)(396003)(366004)(39840400004)(346002)(451199018)(66899018)(31686004)(83170400001)(36756003)(38100700002)(6486002)(966005)(2616005)(83380400001)(42882007)(53546011)(6512007)(31696002)(6506007)(478600001)(26005)(186003)(36916002)(66556008)(66476007)(8676002)(6916009)(66946007)(5660300002)(44832011)(316002)(41300700001)(2906002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8595
X-CodeTwo-MessageID: b1a465b2-d0f5-4574-84d4-1f3730ef4976.20230215075945@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT012.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	198a3ab7-7fb4-421b-4d64-08db0f2a9923
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uQKXJ6XfGtMIwXzWCUdlvuSyIOpMgA/2vidky8PrxvHQKu7RzkeC4Cve1JBuX0zNqn+QyKMnfSzQnOW16qkS6M34G8xCm3u3JTx3ASM0L7zDGJb4OJ570B94IfqFLDmr1KfSk4wfVzKfjw0E9aPRrmccPFT5DdC+nTclvOuYyINg3WjorO3hq1zYuvzWsevsN8Z1p7ZNLOo78WNwi23KDc+1jtb/k0Yy1c1ZIbHY8XI+PUYNO8lTL1v7BtpOjUfTXMZiBgdrBqb17doZ7U+uLXERTUv1BUUjPakfxMK7O7hN7Z4DDRIeZ6KUduo8cD3MFVqqtx4pcfmLbAEkU2DQ3qZ0N5SnhZJY9OriiqmD2v+imWZ69BTx0FxhOzyCfljspon2ORUAfaoLXSlEIulMg1C2IY6ALNf1IprIBWkHhp9BMY3KgBpnlNwBne1RpeaXvwlqjD+xWmZBYPKMlcVBNzWGjwBa2T+RsLAND8vseJShhBh5/9yTueojkVVzp2WZ2aiytnSEgeeb3zhn+UOFBs0VoVs/CO1RbjQVCdUA41zY9dBkKxBDGL9jxIp4xDMLHsGYZFxxc/ri9OQKMN2qEfrcmmZKtc+gqyvY7nBXeDFmAP7NO2Ao88Kw/K/qgM4B1M3qTk2rD+NHZ9M7nXf11OBsDvm5EwInsN3vkCEWL0MfqUYrkjxDtjn2uJBZK4uo
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230025)(4636009)(376002)(396003)(39840400004)(136003)(346002)(451199018)(36840700001)(46966006)(2906002)(15974865002)(44832011)(83380400001)(6512007)(31686004)(26005)(186003)(36860700001)(6506007)(53546011)(7596003)(82310400005)(7636003)(66899018)(316002)(31696002)(47076005)(5660300002)(478600001)(70206006)(70586007)(6916009)(8936002)(8676002)(40480700001)(336012)(2616005)(83170400001)(36916002)(356005)(36756003)(41300700001)(966005)(6486002)(42882007)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2023 07:59:47.1159
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f826404-2165-4264-97a1-08db0f2a9b4f
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT012.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9005
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Feb 2023 08:00:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59231

Bumped against similar issues with ssh servers (also dropbear) and the prob=
lem=20
turned out to be a "lack of entropy".

It takes the ssh server up to several minutes to initialize on an embedded=
=20
system, because there's no source of randomness and /dev/random just blocks=
.

When you connect to such a system with SSH, everything is fine, no errors, =
but=20
the connection won't show any activity for a long time.


You can speed it up by writing some random strings to /dev/random.

A quick workaround is to just add "haveged" to your image. That creates an=
=20
entropy source based on CPU characteristics, which is questionable from a=20
security point of view. A secure workaround would be to have an actual=20
hardware random number generator on board somewhere.

--
M.



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
On 13-02-2023 10:02, gcblair via lists.yoctoproject.org wrote:
> Hi,
>=20
> We updated our kernel from 4.x to 5.15 and for some reason openssh has st=
opped=20
> working
>=20
> We see that sshd.socket is running but not sshd@.service <mailto:sshd@.se=
rvice>
> When I run sshd manually I cannot connect
> Everything else seems fine - no error messages
>=20
> The only thing I changed was the kernel version but I cant seem to unders=
tand=20
> how that could affect something like openssh
> This is how I added opnessh:
> IMAGE_FEATURES +=3D "ssh-server-openssh package-management tools-debug"
>=20
> Would apprecaite any help!
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59213): https://lists.yoctoproject.org/g/yocto/messag=
e/59213
> Mute This Topic: https://lists.yoctoproject.org/mt/96932170/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


