Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.55])
 by mx.groups.io with SMTP id smtpd.web11.7219.1590590258411167666
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 07:37:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=FwF6L3vl;
 spf=pass (domain: topicproducts.com, ip: 40.107.20.55, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=30LfHoAgoa/snqisXeeUM7H0wFXvuvqCR5cmhh+K12A=;
 b=FwF6L3vl7DVs+fJ13jRatfkD4ZBxMtnQJM1p3wBgrpEyYIRkl3bgAJ8XFPIUfH3Hy+V0ZxPJm2jY/FTzFs3rJuayamFKirT4jO4RMZsrnDKO7x75/9G15GSxbA+5ojlmH/14n/hJOQYsDAagHCZSzp51vp8QYZ1y2CI8ExjNb4c=
Received: from DB6PR1001CA0037.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:4:55::23)
 by AM6SPR01MB0023.eurprd04.prod.outlook.com (2603:10a6:20b:52::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Wed, 27 May
 2020 14:37:35 +0000
Received: from DB5EUR01FT018.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:4:55:cafe::65) by DB6PR1001CA0037.outlook.office365.com
 (2603:10a6:4:55::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.26 via Frontend
 Transport; Wed, 27 May 2020 14:37:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 DB5EUR01FT018.mail.protection.outlook.com (10.152.4.251) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23 via Frontend Transport; Wed, 27 May 2020 14:37:35 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (104.47.6.52) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 27 May 2020 14:37:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A5PxQjOUZbsH/E9rxfBlynw+ldAASfAwNoXyaxafSW3sr5J1vktY/U/1XEQNrITy7dzCZ1P0ALHCg8yXBqnbk26VJTgXdb84B64z6hB1+jRiT8TUF2ilTaC+jjOCQ0NL4fAaUEoG2FFhxXDKJdWHTHxbxj6b561SDLBym6/YZZ1YQC7Hv/e0kN0dt0ucm6hspTZ3X08FQ7EQYt/xWayJTY38M52Ubfq1vhrEzId/LQ4J8aRmjw4V8N46rT5A7EEDPaCCCaqGAk1t2tydwMdwKRjgwqv+rhiXffLzgsEaABUS0xrh2AXGxNzG8piqoFREECdmCawi2J8ucbr5dF37Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YWcGX4d25vvM0V6XBkx4qccvYmWcDna4WFhGLbDz7og=;
 b=C1k1P1MR8lL6H03nn5rf3mN83GqYTv8Mp6Wq/YnjiYwlTIPO1fG3pcevyQlDQs3N4LZAYwXOZIFAYGyRGWheSOcsQ+qn2jcP4XmgsGq5LFj2wJ9GfAsovZeiik4USqWpFMlRsOynviqOeZabCpD5KAnCb48qjPc0132ReJKNlqI6hk/Ke522LcIVDP+TxySIaE7qAaeGMLSNnYLqW3HHZ4HZw1HjZdI75R7xasEZUDgDZ3+bTMUjUgemwvwH0HxUThbQqlQP0ks8lodauAVY0GhHsmjQSzURKyDyM2aCrdLo2hn94Rdhpuph0gNUGasq0DJd0AqZGRI0Rr32zaD09A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DB8PR04MB6794.eurprd04.prod.outlook.com (2603:10a6:10:11b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.27; Wed, 27 May
 2020 14:37:33 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::6cf6:7323:7395:eec9]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::6cf6:7323:7395:eec9%7]) with mapi id 15.20.3021.030; Wed, 27 May 2020
 14:37:33 +0000
Subject: Re: [yocto] what to expect from distributed sstate cache?
To: yocto@lists.yoctoproject.org
References: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.b0fe3fc0-dabc-4730-ae93-fc6bbb5d4d21@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.63b9a2d6-7216-4a73-aeae-282dbec89778@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <eddcfde2-d19c-6da0-4b42-664366356e62@topic.nl>
Date: Wed, 27 May 2020 16:37:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <CAEhQi8mNzC8QV=xuRBH1=cxn40RL9923kpw2vwK-7Nh-=enNnA@mail.gmail.com>
X-ClientProxiedBy: AM3PR07CA0065.eurprd07.prod.outlook.com
 (2603:10a6:207:4::23) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM3PR07CA0065.eurprd07.prod.outlook.com (2603:10a6:207:4::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.7 via Frontend Transport; Wed, 27 May 2020 14:37:32 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b08c151-2b8b-4e1f-191d-08d8024b7f21
X-MS-TrafficTypeDiagnostic: DB8PR04MB6794:|AM6SPR01MB0023:
X-Microsoft-Antispam-PRVS: 
	<AM6SPR01MB0023510453C9C761A72077F296B10@AM6SPR01MB0023.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;OLM:10000;
X-Forefront-PRVS: 04163EF38A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 YCvuRum+99gGFQkJRxbpOmREgBR1Po852DMU1hAusDsgW9hiFUn+TrL5VxPD+JM79eGLee8Rvw8/ccB8DQyjUDUmsC17CL118Y+vmPZtev9AJBhloCjnmu35ZRqwxKB8gq/DWh0+stOncB7MFSLgQzBtTdk48VzNR+2ZH3Hhw+mYQx4K4tG1S89W/jC32LltP15ClxwG7lPH72XZwba6qkgfViqF0HIpsyrhmBRpVHghlOmuFVQOaou07t+3UEO9hpaCKfPP9DXCQSy2Ir28ShS9Jz4Otwc9j/rZfC/o7t8HuOD8Mqb/NsYMVHPwKYz49U6BuW8QPIvD+uzqHywWsLICiphfWHS9oPxp+fKYKagkne/wsrsVQz6rfESYkaO7NQkPQBeDQ5X0UDYkcRQeLrAoyNm89eN4qsPpQhlchH4JCmlUs3lND6KHhyTgOOpMqPBg6gQnOyLQm1q8uOoBWg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(396003)(39840400004)(376002)(346002)(366004)(36916002)(5660300002)(6486002)(52116002)(31696002)(83380400001)(8676002)(53546011)(966005)(6916009)(16576012)(26005)(42882007)(31686004)(2616005)(956004)(316002)(66946007)(83170400001)(44832011)(8936002)(508600001)(66476007)(36756003)(2906002)(16526019)(186003)(66556008)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: lIB2yqx+GlTni7DQw5qmNucFC0Jiy16YThrckjpWv1g91k2GRcAqoK3rsn+mOFG7cqyyIwROf2+ePtdYxU9VM2IOeWO3B5Txvv9VYUtWLIhQ62/0Kn2XNENXgGEMDm+AvGf8Qg3ZxmpxXPKXGEDwIAWjr6/avOHH0/wX5MK8+6XGZVnJIBN3iTFl6K+H1sZikaFG8KE+lqMfRI8M06+J/6q9EhWPX3Wm6dSzTJqB2A0/tsNFO518XsHuRVp0KADnV0CvfQ6bG84k5zqeldXudalXPIN9O9gF8wLKQAzqw8oia+y0BJbZI0wAUYi+SIzcsvuo+9FOFpkRwUZO0nBfVwbP5n7R7R4GDrnjDo4HIN4T17SYHfTgit2v0jFrpL0ABvoHfrN7JdxGM/G5PNBd4dRpYJwOEcBKfW4EQO/mih5QbnZAsh9sz9YVk/wEdBEXO3qKl4UlRPOrIwmXJsVU2Z1gH9fpmvZ6AeEY7oOieeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6794
X-CodeTwo-MessageID: 066ff0a1-286b-4115-9efe-775ed5db374c.20200527143734@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT018.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFTY:;SFS:(346002)(396003)(39840400004)(136003)(376002)(46966005)(8936002)(508600001)(15974865002)(26005)(186003)(83380400001)(16526019)(53546011)(31686004)(2906002)(44832011)(36916002)(31696002)(70586007)(5660300002)(8676002)(47076004)(6916009)(70206006)(2616005)(956004)(316002)(356005)(966005)(36756003)(16576012)(42882007)(7596003)(7636003)(6486002)(83170400001)(82310400002)(336012)(43740500002);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	4f2bef88-7297-471e-d90e-08d8024b7dd8
X-Forefront-PRVS: 04163EF38A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ayWdhYGgdNovGQOh11pD3eiNF28W5Ua6UdMg2AHgj8qJlbGoTq8Cjnd1gHEeJJQD4tfDAXgsx2bGrxpCgPbN1skPKdq6Gw0KThIv+4mAGubnC4R0vgoOGDyft74sm230Tf/zkih30Xn8NqY2H0eZRs6nzibIBXuwMlGX1E8RAAWEG6NAGqWsfaQ9DgJNCD2xFDGbMEOnAw7oD7cIEf22SeLG+JqUZnIE3Ahv1ct1VTEnequToXLZ8LaIpohSCePkhU3xRClg3rOYMBZBzFpnBvNvS17r3Xp5YNxhvAFTuNi/BkHK7Lfa55oIdMK8RFHO/k1HMZ4Ct11jKejALn6SytYek+rfCbgdYdloT44O/WVuBToMIviOkarQJyvCAtC5M1x/fYy8k/IuzOdfElBpak1Bk8K7pZivbRxt9YR8nzkHgCmFCK/EwRJngVzPwdajIeO8HYS6rFKkeWFEOw5/tCdAS0a6v5RJPYVbfuvPlAixRr1movleUBcjh4AJ6GoL
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2020 14:37:35.1163
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b08c151-2b8b-4e1f-191d-08d8024b7f21
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6SPR01MB0023
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

We're sharing the sstate-cache on plain Ubuntu LTS machines, all=20
installed from wherever, and no issues with low hitrates.

Even if the build server was running something like ubuntu 14 and "my"=20
machine running 16, the hit rate would still be pretty good, it would=20
only rebuild the "native" stuff, but not the target binaries.

We just share the sstate-cache over HTTP (Apache), so it's a one-way=20
thing - you can get sstate objects from the build server, but not the=20
other way around.



Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topicproducts.com
W: www.topicproducts.com

Please consider the environment before printing this e-mail
On 27-05-2020 10:58, Mans Zigher via lists.yoctoproject.org wrote:
> Hi,
>
> This is maybe more related to bitbake but I start by posting it here.
> I am for the first time trying to make use of a distributed sstate
> cache but I am getting some unexpected results and wanted to hear if
> my expectations are wrong. Everything works as expected when a build
> node is using a sstate cache from it's self so I do a clean build and
> upload the sstate cache from that build to our mirror. If then do a
> complete build using the mirror I get a 99% hit rate which is what I
> would expect. If I then start a build on a different node using the
> same cache I am only getting a 16% hit rate. I am running the builds
> inside docker so the environment should be identical. We have several
> build nodes in our CI and they where actually cloned  and all of them
> have the same HW. They are all running the builds in docker but it
> looks like they can share the sstate cache and still get a 99% hit
> rate. This to me suggests that the hit rate for the sstate cache is
> node depending so a cache cannot actually be shared between different
> nodes which is not what I expected. I have not been able find any
> information about this limitation. Any clarification regarding what to
> expect from the sstate cache would be appreciated.
>
> Thanks
>
>=20


--=20
Mike Looijmans

