Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6732.1616162717055866003
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Mar 2021 07:05:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=edRZmmNR;
 spf=fail (domain: topicproducts.com, ip: 198.145.29.25, mailfrom: mike.looijmans@topicproducts.com)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2077.outbound.protection.outlook.com [40.107.21.77])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 362A638C06B0
	for <yocto@yoctoproject.org>; Fri, 19 Mar 2021 14:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=InOFf/hp1V4quzAEs9pW2xpN1zxTLeD7ir3G3Cdsa+E=;
 b=edRZmmNR9ScgUw4QDprYvnc37vBs7D+GcREb604UYVEFQhAUbtqFuhcTQ80VChZrSFSBI7G93yRnGubaaXOxAAkOFlFY/J2iWuqKIBONgl3162Z0lGbL44xkRlNOpeCZaQeeUHEJK+HdV+LGLkem6FeswxncgN7dg6jf+MVCKn8=
Received: from AM5PR0701CA0049.eurprd07.prod.outlook.com (2603:10a6:203:2::11)
 by AM9PR04MB8258.eurprd04.prod.outlook.com (2603:10a6:20b:3e2::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Fri, 19 Mar
 2021 14:05:11 +0000
Received: from HE1EUR01FT024.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:203:2:cafe::d1) by AM5PR0701CA0049.outlook.office365.com
 (2603:10a6:203:2::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.10 via Frontend
 Transport; Fri, 19 Mar 2021 14:05:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 40.68.112.65)
 smtp.mailfrom=topicproducts.com; yoctoproject.org; dkim=none (message not
 signed) header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 40.68.112.65 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.68.112.65; helo=westeu12-emailsignatures-cloud.codetwo.com;
Received: from westeu12-emailsignatures-cloud.codetwo.com (40.68.112.65) by
 HE1EUR01FT024.mail.protection.outlook.com (10.152.0.164) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3955.18 via Frontend Transport; Fri, 19 Mar 2021 14:05:10 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.53) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Fri, 19 Mar 2021 14:05:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkM0w+J+MJWRL+C7QYksngNonN3tPdxprJYPXYiVUoG3F/X84GOlkfr3611W8HbYvBbC6WdJD/oEAhIRHsP1etvIQosnTF9WC/qIQs+kfCioYe1EQweAnBz0asfHLtM+wmDn22LNbZSYANz1vR3sAOuBJytoc7gisR4MNBKzVmWswnmwtXQopF/n08i4IwfzgUzQ+iU6zY6bJ5jo48bVw8tzv5P8OEoeoeTWEcc5GNLEG1H7RUjDs9XarnrVBnaLjnXjV2br802yrj+M9VZnm1XlD7NoADnXFwvwtq4KtTND8RD3hDN6+SS57AzGxJMijh+9Eu/qIV2RGdTEayNUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=coSUmYXneZS3/59QWywSYojDaQ1CR+p5JnhbmaK4b8Y=;
 b=cDESOTL/Ez6hL04Cf8h3mOf9DDDmMTfaSl2XOf1TwqmL/Q9PtJbvJCPCYqrDTkqhQq8hw+pAo371chbNbbTEJ/YEunzga4n0opuKsKXfo2hWW5v15H7+bp1SJVSQ3Wk03GW/q/wdoieJ1VfrUQD40S1+89h16CV2ciQui98u+kyf+HAh8a4ZTgpPZYLxBk8Wn9pWVjjbrNzqGPUx/4VsJr/Bh6GmdoAdsLotODtRJgHCKKEH5CDmeP42C0nhLUWPX7s88t7KNgPBaUEOXAKBO1sJQ+D2LA0v5Zkr9Ehim+/FPt6KqaFbAoaOtu7xYRhnCcsDpW4Krh9TQa5/mT+dKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: yoctoproject.org; dkim=none (message not
 signed) header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DBBPR04MB6316.eurprd04.prod.outlook.com (2603:10a6:10:cb::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Fri, 19 Mar
 2021 14:05:06 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988%7]) with mapi id 15.20.3955.018; Fri, 19 Mar 2021
 14:05:06 +0000
Subject: Re: [yocto] does current bitbaking of core-image-minimal still need docbook stuff?
To: rpjday@crashcourse.ca, Nicolas Dechesne <nicolas.dechesne@linaro.org>
CC: Yocto discussion list <yocto@yoctoproject.org>
References: <51f8bfd1-43-c9e4-e67d-dbcc1f62a840@crashcourse.ca>
 <CAP71WjyS1OzSaJEcOA9boq0=x6x9b3fk-TqXRriTdpLiw052HQ@mail.gmail.com>
 <229395f5-42a-b2fc-1de6-879737c3879d@crashcourse.ca>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.9ee507ea-fec1-4143-9201-c16404865c89@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.5d9b3c12-31b9-4962-9937-06c86ad9fd73@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <5470ba1f-0458-6098-075c-83a2d9802fbc@topic.nl>
Date: Fri, 19 Mar 2021 15:05:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <229395f5-42a-b2fc-1de6-879737c3879d@crashcourse.ca>
X-Originating-IP: [83.128.90.119]
X-ClientProxiedBy: AM0PR10CA0046.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::26) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR10CA0046.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:150::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18 via Frontend Transport; Fri, 19 Mar 2021 14:05:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4a79b1e8-a3ee-4697-0cf3-08d8eae0026b
X-MS-TrafficTypeDiagnostic: DBBPR04MB6316:|AM9PR04MB8258:
X-Microsoft-Antispam-PRVS: 
	<AM9PR04MB8258F30ACBE4A876BB0B4C1796689@AM9PR04MB8258.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 XFWCcm07Zr4jCovtYkcg223AjPY7DFktqU2BbRRyjAInPrEmTfFk5kze1HwvHeaab2+EXdBRiOUBAZGICpo6RQKso5ysc/sLQ1VJiuf1TbvxLOBy+zy7Uy1mQLmhQ7jN6emTwP/p8EnF1+QEeul+GyfS5jebEB7DAKhETgGFzUCb6lUHpDDY6nb8+qzB7evarh5pdkvNQVCYpkPfelJXfMcVccYLUMa/g/jnZHXYxRpbY3SNUuS3QAUkfGZzUAlXADBCPfg9EIluB5pi9FdyNP75clD7hsmWdIJgC0AkZl6beA1bciN3eDDLa0Nxxq+sHlQJ7ESLZSE27SoxkAF+AE17PRzBcORIha8xLmwsw2DXluBDaTznbOnqjaHpryj4u41agu5zY7/t7loqDN+UMTIrvHU1xoRaxre1kygMfMt93JcpBrTSsSlRJX+ly6iRguqXrIs5pyidtwEAct+tEw4GX9zMRehSIKilD+wKI2iJJfGRwlLPp49mrje1ocThQWBzP7a585S8hE7/53HawGbdV9218GtSZ2p16jo4tAX/IXO+0/A7Pn0PiEHs96Ugj3U6LTh+W4fYe6xFo2CWQ3WczJjQPL6FOPYgKbuNh5kfQGIoNKGE4y+GSIkL/fAiJX6GmWvqU+DGUhk3PXj5IubTZplchkRX+WYZZcBOB8w9f2aGZ5YGAsJOmYYwBv0j9qoIeq/05J8kPiFoJUnt2g==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(39830400003)(366004)(136003)(396003)(376002)(53546011)(4744005)(52116002)(31696002)(38100700001)(36756003)(5660300002)(6486002)(66946007)(66476007)(2906002)(6916009)(4326008)(316002)(16526019)(66556008)(42882007)(186003)(83170400001)(83380400001)(8936002)(31686004)(8676002)(478600001)(26005)(16576012)(44832011)(2616005)(36916002)(956004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?Windows-1252?Q?xO1ssN4aoYjiRrHctAdzsyPzTxdYKSCmmRYPM/wa5kcliaHcqtCzYzEq?=
 =?Windows-1252?Q?uGy3jAxdQ67rXqsUzSfUCUkzUDTcqCts/uNEPT13MAlrxL3rWe0UIn9i?=
 =?Windows-1252?Q?AZIm+MR6oszTfH1JJCvFjossQy0W+dEqSkjHDh3c8Y/boSrhpogqzglM?=
 =?Windows-1252?Q?QCxfLEvbrKOGzDr3y4aPzIJCmwjpZamcqa+X+KUTbeC9E9d0NZORry3W?=
 =?Windows-1252?Q?w1wVDNQo9DMx76cpi6PITp2lT2jTZy0MRFXxov6Zn/0LbZAeueUxqG09?=
 =?Windows-1252?Q?vbSgEQvg2rQ5N6l4yCxJ8I+FRvcFlH7VFefoJVRIrkBNwWPbletHGzTo?=
 =?Windows-1252?Q?lbPKQR+I7gou5bninT61m55z1wYixpGTY2nuVb29swcRyoEl+Ln4cgz7?=
 =?Windows-1252?Q?8dYJj555LBtD+DD4vuqorGH1JSd/TdYLHjfRIaAoiBSxyFxbJkRawdvw?=
 =?Windows-1252?Q?Qqi7zMGkg7WqEtTKZEhiK7H0Quqs/heNbnV6wc/Pmu9SHBfYV1OSzXOb?=
 =?Windows-1252?Q?Y1m/b/gG/r1/NPIboYIxV7vwJMslYPJwpJMi4CAT8odmdEb4aA8ipARl?=
 =?Windows-1252?Q?9G0SHH9Ke/u+zpXmQm9OmbivVuwKgd1n5+loLTJ+z7ngMdbfMih2dc2S?=
 =?Windows-1252?Q?RqL5N6jI15/CWa1+r6imhsy6JLmffEGEcJSM95NpREzamWpq6uw0II3T?=
 =?Windows-1252?Q?bpUoYLaC+/0QjThsIcFYXblqkKhvDhRHHz2Bh7oZu+M7jlDXgQaJB1SF?=
 =?Windows-1252?Q?GFE8DarRjTjLs+qg2fkHXAarrdL0PrL6CCx5/a2aRXdSfBCDqiwxjymM?=
 =?Windows-1252?Q?TotYiKcxMxlmZM8cTWp0FCbo0gkhY9/+W81BvThafKr8b7gCHPuBGAZq?=
 =?Windows-1252?Q?DzR1jAoswdvb8ynPQIDQ9i9QpVsSR3FFleeLEAjT/n6TBjy3pHyEpmQK?=
 =?Windows-1252?Q?9y0Zdifg+0OhQmo5yiRGpf0hLr2g2hFK6jM1WotV9no7rEKUsPCXWxBs?=
 =?Windows-1252?Q?2RSn3Bh7V54z6k3l0tmELW94Bnu/uBmz2icP2sViUa5dZ2Iuyc/QJWAR?=
 =?Windows-1252?Q?pLcAxakKoFs/8f24ALbSuCqxfhbEEuGkybqVRAUDFfgVWzrEg0SQ2xLy?=
 =?Windows-1252?Q?RTigYdOiykfFxwTqoeNkpX32SLmWxI+a7XqRhSvHr3Xc/BC+jCKZC+Vv?=
 =?Windows-1252?Q?SnDP5TqjMu1VTbf2W8aIKV01evBJQ1Mi2ZGbUFiuX6pR+tkSrZ9Z4PWl?=
 =?Windows-1252?Q?Kwk03Nar4U1GcWa4Ggidck3QbTtQ24edKSy9IAolakv/eb0fdJh4v8Fu?=
 =?Windows-1252?Q?vNzku2hhchg/Tg9i9YCn4Ob5r8lwSdNYePNqvC791ZbANaIPmiocp9OV?=
 =?Windows-1252?Q?ddPuWs999dRLLO8qn9oVAOe5yaeLPGwa5/vWhXpmq0+s+z12oUR6m9JE?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6316
X-CodeTwo-MessageID: 0a63e622-9f92-49e9-b3c9-d03d1adb1bad.20210319140508@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT024.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	3c0097bb-4bb2-45dd-bed1-08d8eadfffc7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sEZjkglCmNz2CoLo9qYAnLkw69L/QAw0ZcC5FkQKBQAksgYzQc+jAAsvtWoqeToO6CaQoz9VaNfx43wsuk8qVX5SH9Ae4dJgCS1I6V8HVAHqj9RcubJKzgP1ogQ3EtsaQAzYrhOpMfcfeBos/axNtZazoiKzchW0gJFBeex15awaoTgCRPogh8xwE0X76dIjrvaWy0ImiN/eKbFtUYYAnQLGRQ4x4ifrmaDpmWi3oNMbfY+VHDTdtK9h8I1gA/PoWoq2aZoff7GTKl6UgbhsmwkziHxHj/VZFKMNdZyNOG+t8Gq73a0ZqEK2c3nQlMVYzrj+JKJsSUx+t1ix6ZJdLC7065/4+BHQcEJr9ibIsDOTmYXU+F0z0D8uIvv4bx9JsvfExD9TVNbt59pNmdnGV74cjkR4fMsM+/kjNq2qb2Ibnu/J4KhVbLw2+w3Yx1SSPdkcRyKDCQosH2q+lj+8S16UVwYG+TYxwvDWqQUK4C4ApvP/jQmt6vN5IWxQFR4Yj7vjXRK6YDzXJwvrCLxpSJs3GXDtVCukviKvM7tAuG3djNPyyeaTmlP0XFDXEV62yeJW9mwYinkPgbqk2+RZfv9w76TDHM4yMYZx7JSNjmEk/7igzyFb40e2cDOBKuw3n87ARzQfGCYjoG13YHr6NqOZMaeYuXVhp2i5vYCkpz9UMA7QtklScQ/XmUw0H3HVseAXrDZ5aWWjPj53mSaVAD42yZTrSGV92rPccamz7WgbVgrVxuapGWphBTIWdOtDL1ao8QW/HM5hd2SpSzwX9Q==
X-Forefront-Antispam-Report: 
	CIP:40.68.112.65;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(136003)(39830400003)(346002)(376002)(396003)(36840700001)(46966006)(15974865002)(36916002)(6486002)(70206006)(70586007)(5660300002)(478600001)(8676002)(83380400001)(7636003)(7596003)(83170400001)(36756003)(53546011)(336012)(956004)(2616005)(356005)(82310400003)(31686004)(186003)(42882007)(8936002)(31696002)(44832011)(47076005)(6916009)(16526019)(26005)(16576012)(2906002)(4326008)(36860700001)(316002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2021 14:05:10.5659
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a79b1e8-a3ee-4697-0cf3-08d8eae0026b
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[40.68.112.65];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT024.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8258
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


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
On 19-03-2021 11:45, Robert P. J. Day via lists.yoctoproject.org wrote:
> On Fri, 19 Mar 2021, Nicolas Dechesne wrote:
>
>> On Fri, Mar 19, 2021 at 10:47 AM Robert P. J. Day <rpjday@crashcourse.ca=
> wrote:
>>>
>>>    testing building qemuarm64 core-image-minimal from scratch, and
>>> noticed it fetching for docbook-xml and docbook-xsl stuff ... is there
>>> something that still needs docbook support? i'm about to take a quick
>>> look to see what's demanding that, does anyone know?
>> It's not related to yp-docs at least. most likely some recipes that
>> use docbook for their docs/man pages, no?
>    most likely, but as i'm explicitly not installing any documentation,
> i'm now poking around to see what insists on building that for no
> apparent reason.
>
My favorite method for that is to just remove the recipe that provides=20
it and then see where it breaks...


