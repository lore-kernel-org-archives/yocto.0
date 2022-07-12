Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B337C433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 14:44:30 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.69])
 by mx.groups.io with SMTP id smtpd.web12.10010.1657637066120891725
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 07:44:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=YyPFR9g+;
 spf=pass (domain: topicproducts.com, ip: 40.107.21.69,
 mailfrom: mike.looijmans@topicproducts.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=Dj3g58n+ivSSs4lTNAmWQpx7+elL4Nf65IhC89IfL36fAYd6gMETRH8/bxNJ7Du/6gxh9zcIDtuFSpNo6ydXuy0wTPPjvY+QrVwyocSrqLw3hACrxNTpAtJTUf5Fjq64/xsHvE+F45ockq0fjEFNZgK6SczEyEBNzTr3IojdEWXqJHf1LyCSsYFoYr6+4xinVWkm3l5GV7G1Ev8T6HZ31xjNP8owC5J3tNKFUSqoL3AIgqiXmCibOLzI+UvSYPT/2dKalgvpbjTSqZe4hVV6w87jXTKnxfclVJ/dIcIDIOrlBEEQlzG1ldWkcrntRpVXt12omedbFmHWSJSGvkfKFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bMXjQCEiM2jHqcN6TDJ9WDrQkFLTdJjWjyf71GEFUug=;
 b=L/7R9eZryOj1e+TzI9GE5UauQOzXRAzEy0GoGXQpxGjQLzdrUT8BxmtTSyKaI2bRc3mKPgs9BJj44nSxL3fr3C07Zg4mv9pBFJ6B6dUi6TZklLgUrjudINFMBzledSoY8Mbf+SdaoaPnfVKnAt10Mcg2T5UD9/eRSOH0/EaS43XcyHkbldniirttRmexDRAwHMAN0bu4csweLJaGSd3usrD6OO7y8S34wOANmkHUssbEcA5wTffQcN3IEWPiVe9YPSVDDDtr6rhdThzNNljqFMG9a/KKOEOkhPrvtFE3UOgsUtoD91v23VBcJuijuExD05nXsy6Yfa+d9AKmxI+MTg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 13.93.42.39) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=topicproducts.com; dmarc=none action=none header.from=topic.nl;
 dkim=none (message not signed); arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bMXjQCEiM2jHqcN6TDJ9WDrQkFLTdJjWjyf71GEFUug=;
 b=YyPFR9g+yiD1n9sqiKV3LWTMPTQKBCW3LGYXqSeSU/aLDfNT2gBfj6q1ug6FLso6yde773iETaferinN6J1RknISUzPNgA94Ql60cea2xTgxDL8cXhnEpcCS03yHvg9yBzW4ViHnxsc25L+VCZczsMJwQ5fQHKbYCxxa2cuEzowKETJecjTzNhO0fqBd2wJSQGziTlj8j95toIdp7XMKPVap6DtswdxsF3UHFbTB6Z2vuSHpyDBxJBVvWs1cEfC53VnOh9oPrAJUCpfumPiB94ZA63TwBASJPJtA+y8AkKX3bFQlUgeFsRi0m/wSs6+5cXgt+2ZZ3rURxiirPc9KIQ==
Received: from FR3P281CA0061.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:4b::9) by
 DBAPR04MB7416.eurprd04.prod.outlook.com (2603:10a6:10:1b3::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.26; Tue, 12 Jul 2022 14:44:21 +0000
Received: from VE1EUR01FT046.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:d10:4b:cafe::5c) by FR3P281CA0061.outlook.office365.com
 (2603:10a6:d10:4b::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.15 via Frontend
 Transport; Tue, 12 Jul 2022 14:44:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.93.42.39)
 smtp.mailfrom=topicproducts.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.93.42.39 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.93.42.39; helo=westeu12-emailsignatures-cloud.codetwo.com; pr=C
Received: from westeu12-emailsignatures-cloud.codetwo.com (13.93.42.39) by
 VE1EUR01FT046.mail.protection.outlook.com (10.152.3.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15 via Frontend Transport; Tue, 12 Jul 2022 14:44:21 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.170)
 by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
 (TLS12) via SMTP; Tue, 12 Jul 2022 14:44:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Li/kucgWumwp3PsoJHAe9cQbAyZG6rbgHW+U5Dt0IA5wWPj6ypXnFO5plSGJ8I7f09GwqRKn/riiCxisMjB5GAGwGrqNovx0MjYDfQADQIVQa9QJ3ZEWU+4/j3uGrEkSRTnMsa5PSLVUaNTgUGNxQr0QgFN1gMdFNMEB/dj7RdT5fMY6olUGSiEG/b12AXrLWhGauY7VOoA+ArGCJR+ZDI4Kn6RUedciMPuAsHr1coDAs+C6b5LVRcI0MrBZmAtf3h1cCELWIuUQlx1bxuSpqYDy+zfapxHsAgUuS4Jn3oApxPwsQeMSD7rsTfZeL7tn4BuB9hGTm9s76B/UNGU82g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IxYRt6VGK1fRq0G4wW5duTgjqbHc+3SYT2JYxx0XAuI=;
 b=KcSZI2v5i0wEYcFps4wVfu5NNenh33bACM49CHmlDleRy0x645FRJGWZeRrBVBFzCfuNEpeDyYeC31D17hRocABjjEkVQQtpPpEcI6fgYhjbDDt8ASgFIJ9PhkPFBvbCZf3Hh8BlqpoBjQvZolaOwfx7F4lDa4Af9lM8ShDX3XAYwxatpxP0u1Wp/RObmIiCp7kdSNo+yq/jHOV5nUKYgpmqnlpwOaLHltpXqJEWTc3i9nZRoEjyc5pZGKDOeFcS3cxjN7SaPJaTZfxI/BKXiDqhRaQJLikExL+u4ke2GNwstDkRntXhwUd8pfPHiBFSvnmWS1G6YxEBC/auIRcSPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AM6PR04MB6520.eurprd04.prod.outlook.com (2603:10a6:20b:f7::16)
 by VI1PR04MB4110.eurprd04.prod.outlook.com (2603:10a6:803:42::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Tue, 12 Jul
 2022 14:44:18 +0000
Received: from AM6PR04MB6520.eurprd04.prod.outlook.com
 ([fe80::815a:873e:5143:acdc]) by AM6PR04MB6520.eurprd04.prod.outlook.com
 ([fe80::815a:873e:5143:acdc%5]) with mapi id 15.20.5417.025; Tue, 12 Jul 2022
 14:44:18 +0000
Message-ID: <8defe485-c6b8-cb20-dda3-5b6b44938632@topic.nl>
Date: Tue, 12 Jul 2022 16:44:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Customizing SERIAL_CONSOLES
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: 
 <CAKBdzwuDB5E8=TPVCPY-ULyNRnA-BfGe3F-3a_j07N2OrJq3Bg@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.d4e0f9cc-dbbb-4d14-b16c-2dc08b801a12@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.3359cbda-a296-4bc1-b4e3-f88cc17b6bf8@emailsignatures365.codetwo.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: Topic
In-Reply-To: 
 <CAKBdzwuDB5E8=TPVCPY-ULyNRnA-BfGe3F-3a_j07N2OrJq3Bg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM0PR02CA0145.eurprd02.prod.outlook.com
 (2603:10a6:20b:28d::12) To AM6PR04MB6520.eurprd04.prod.outlook.com
 (2603:10a6:20b:f7::16)
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 8e94ed8e-0d1e-457d-3cfb-08da641501aa
X-MS-TrafficTypeDiagnostic: 
	VI1PR04MB4110:EE_|VE1EUR01FT046:EE_|DBAPR04MB7416:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 hx4BROprmIRjuy0ytwEnH+HBojy5tSbMu3OWiMXP+QjEn5OABBq8nDK05c3nMunf6v4HBy9kwtOFkEe2zZjKVeKAnDz+rQgII+t+z9DIlfJV6BAzfatmo5EV8OpDbtTpamRmKvw57VprqgDJiF6wYfzxBWvWyhP6vqSSRoZllilyCPdVpM7zE8keXBFj7/di77eNjvEHWUiJ7Fe4uuxiyVrCDCE7KZP3d3pGKaXpNBIMeMuFjHhVoHVULsg2GmqBDSDooGvDbdSJNiICGwGfuL9qB7CwQ9lwrsnitm6u0goWDpuKxx9GRZHvR+sYoHbmcQMvD3h2z9aZpTjC6bId6eOmLLiFNUZZf0SEcww2bBgQAZhMCIK3SVi1X0Ju0NMMiebLCtVyGHVJ0WMD2V6+05nj1+DVtuZFLfCRkfvKMp02CVWiVQxq9tP2GaUz/AQvIWPptJmJFJJY+C6DxLj6MVBla35smwihb1Qs2SR7U4Oti3PYr1m8SFsTryE6EmryamclwrQA3pgs3/mUc1CvqSCx3/cjP8yi+++y8FUKfcZF0KlDFnOYRUr4GIGW1CERlL92PcY0ntxjzoLPi/sCkV9hUd4xPIsp4sgrnarQC5AdvN3aZ9OcJHBdzz9CCOEfHdOkToilOqjVNEKPPJ++BkOj5h7f5xullcitfgpuqH7vCYNyDtM3ijIct8VjaJr643V/S0r14u9MS2cQx94RAtPT2ZMU1qLe0LP5AUCejno86NEUsKGSXRBhvXSuhgreoOcJjy+zSVG/cLOePw7vGRO9w2HuJzSozCS9HmAHfzJtoYXIjyDuKt6668Hy1gyXKivINWVGh8xld6fVZTiAShrmCS9QGNdPo84QLQlMW/AyrZBtX4uatCPjJmhI4lw3ECLZFdouuZXnZp2FC1wdnA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB6520.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(366004)(346002)(136003)(376002)(39830400003)(966005)(6486002)(478600001)(83170400001)(66946007)(8676002)(41300700001)(66476007)(316002)(6916009)(42882007)(66556008)(186003)(2616005)(83380400001)(36756003)(38100700002)(36916002)(6506007)(38350700002)(26005)(6512007)(44832011)(31686004)(53546011)(8936002)(5660300002)(2906002)(31696002)(52116002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4110
X-CodeTwo-MessageID: 
 08a50fc5-fa5b-4cb1-9f82-fb47cf349c27.20220712144420@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR01FT046.eop-EUR01.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	dc834fbf-abcc-47a6-a3eb-08da64150001
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	URvs1OOC1cvjY0K/q0opUxqejM/mr4552sTkTLVT2bF5dgRCAipmwThm+IsIQ1v8BdM/RuALbQkTinsfD0C42E3x13Hg9j2lVlTn4KQpXc8Nox3b1Apw054B2VLQJrAA2shBE+eT+uUBk3sPpY2DJ9+kMGgDl1qVH4PwqHYSpuiK+IqTPVRnfGHjkRQuZVe56bYuhKFWdmRX0Wkl5C8jtjpILuwLJcTIeuQGe5UQ8cdkEY8yUBet3SdAEBoRzNJ/97PE0Q/I7EcKieFU4Zx5agBcA7cv1CBwo+C2Ji7/vcUkDTMl8m94/hfQQfZE+56R5DzqKpBtmLE4SGfk4dWcPSVFwB35Qr6qqXtxik/Hr1dnc1OEfQKVUJj7jZWG+xQkMXX/chXMLdGMGjCzot09QOOeorTcqhaXwtuQM0Xp1ZPCilKPyJ5JqR572lf1rulymtK2nuDQcL47Ftd3gRygMghHpGJxLuqyOtSdIl7LrG7T2yCntCFNU8EXyd+ht5lsuDWpG2uJBo9t1DupJ7YPj8rUY1EspEFc38+uZY/GqMwrvH3WqtijhWXAHrEJwZCeyzgOiZpKher+3IoPNvMVzR47v+qy7osyx+dSFtJbsyX+K4G9dKdrSact8RAPdMPUwioKPgHRH+4gF8UBxfK0EwLLX+bFSpPLsri7Hj+ml4G/x9mroVbYi1ZF28Se8K2HJNov/6C2zb54ahAIyp2Ktwul40LWxTroY+f/D6tawZSuVLcZYbzyEKACmz2cxqc7GFdddQjoXCukOPyQdXFQVo6ftd3ZvY9DYxGMVCG9xIG5EcCHxHyXMGeB7rWPjLgMp5Vci5JSyuvRtHyy6ubft1NPBR1sGykJ1tis3+ky2lo=
X-Forefront-Antispam-Report: 
	CIP:13.93.42.39;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230016)(4636009)(136003)(39830400003)(346002)(396003)(376002)(46966006)(36840700001)(47076005)(478600001)(336012)(7636003)(15974865002)(83380400001)(6486002)(6506007)(356005)(36916002)(7596003)(53546011)(31696002)(2616005)(966005)(316002)(82310400005)(42882007)(41300700001)(5660300002)(6512007)(83170400001)(70586007)(8676002)(31686004)(40480700001)(70206006)(44832011)(36860700001)(26005)(2906002)(8936002)(36756003)(6916009)(186003)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2022 14:44:21.0746
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8e94ed8e-0d1e-457d-3cfb-08da641501aa
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.93.42.39];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR01FT046.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7416
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 14:44:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57513

I'd suggest adding some "bogus" things to your machine-extra.conf,=20
because I don't think the file will actually be used (or even parsed)=20
anywhere.

You can override SERIAL_CONSOLES in your DISTRO config, as that takes=20
precedence over the machine config. In local.conf it won't work because=20
the MACHINE config is included after it.

Another approach is to grep on which recipes use it (half a dozen) and=20
then create a bbappend for each. That's the approach I've used recently.




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
On 12-07-2022 13:41, chris yocto via lists.yoctoproject.org wrote:
>
> Hi,
>
> I=E2=80=99m trying to customize the SERIAL_CONSOLES variable. In another=
=20
> thread I read this can be done by adding a machine-extra.conf file too=20
> my custom layer. So I added =E2=80=9C SERIAL_CONSOLES =3D "115200;ttymxc0=
" =E2=80=9D to=20
> my machine-extra.conf, but when I =C2=A0bitbake my custom image, no chang=
es=20
> are found.
>
> In the conf file from the bsp for the board I=E2=80=99m using I found=20
> =E2=80=9CSERIAL_CONSOLES =3D "115200;ttymxc2", when I change this to=20
> SERIAL_CONSOLES ?=3D "115200;ttymxc2" my changes are being applied.
>
> This off course is not ideal since I then still don=E2=80=99t have all ch=
anges=20
> in my own layer.
>
> Is there a way I can solve this?
>
> Kind regards,
>
> Chris
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57505): https://lists.yoctoproject.org/g/yocto/messag=
e/57505
> Mute This Topic: https://lists.yoctoproject.org/mt/92330831/3618446
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mike.looijmans=
@topic.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
Mike Looijmans


