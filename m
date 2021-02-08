Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.85])
 by mx.groups.io with SMTP id smtpd.web08.32217.1612767489061491002
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Feb 2021 22:58:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=YzauxRbM;
 spf=pass (domain: topicproducts.com, ip: 40.107.20.85, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iFVqu7mH+XLtpKNP95hfV9WnIIVzyHdm0Ro3yt8zV3g=;
 b=YzauxRbMED8Jx2nQkqOKOsXggMALe+myEt/e1s6GPqi5wjacpOyUDpS6idk8XcmUYN6MSAgrcBnYD/EEZHvpEI8Ybk8+BbgC/kcnfUAn1NibHFDZo4EzmQbN1bGdlibnCdasXdIA19cJOHUbcbEQEoq3T64Yb1FlCj/03q6uyuY=
Received: from DB6PR0301CA0080.eurprd03.prod.outlook.com (2603:10a6:6:30::27)
 by AM6PR04MB4246.eurprd04.prod.outlook.com (2603:10a6:209:50::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Mon, 8 Feb
 2021 06:58:05 +0000
Received: from DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:6:30:cafe::28) by DB6PR0301CA0080.outlook.office365.com
 (2603:10a6:6:30::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20 via Frontend
 Transport; Mon, 8 Feb 2021 06:58:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 40.68.112.65)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 40.68.112.65 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.68.112.65; helo=westeu12-emailsignatures-cloud.codetwo.com;
Received: from westeu12-emailsignatures-cloud.codetwo.com (40.68.112.65) by
 DB5EUR01FT045.mail.protection.outlook.com (10.152.4.180) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11 via Frontend Transport; Mon, 8 Feb 2021 06:58:05 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (104.47.12.59) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Mon, 08 Feb 2021 06:58:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=farO1ARN1K8eCW73jp6B1jtsJx+QOvKieeaXHBjK3M9X8GnJUV17odOBKnDwBJIEbAAmJtK+eA1o90Xj+4vUsuRLHwgLBgVtk3+yHCfBLpVjRFb3LIfYV9URo4s8sNbrgcS8Bn+XoUW55BRzy8wgmtSue5A0Edu39ky8/Jl/6migSHT1SHOiLuTajAsr0pcW7Up8IR8wT+Q5TWeCkPzSpWOXwoDcveRr4uMvzNSFlpIUW2fJ4AVLhmMw4aYRjL/2XC+mPdF+tghUlGIY5kgdn2AMDK3V2lqCMinTkXft9OOzpYsRtQtYBqYq/dQaN9C2oCAedGuC77IQ+e/EYHCaJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+0u++dZdriRDB/BGJzr3JNiD7Z1uKS3ENThg32mDnrk=;
 b=cwP+CjPknOKyXlnrBYplFNT9sBKzOLOHKtNUzjkYviEXukyJf2aE6TMTHZNZr6HSXvPJxrh9MSQAe7Ytrip6Cn9j4Vu4vMKEhDPGRb87zl2XYKvM2LPXJ8DYAAi0KyK0fSM7OLnYSUZjZZe4oXrlQHY+w7Py5RcMjPcv0GM537l9HtDGqTaLPoquikfjoCC7LVwJ9d2qJQqOoME6uLjI37MUF/aVg7P5JRkHdZUBsPBB+gJKFCkzT5mXhC14corREmHTw8uX7Go5tOxqgoqo1DvNzpB9FiTytQamrkJVyzPrT/9kx4rLcV64+Uvw3320ukDJxLZ9+vgLxoVsGW+dsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DBBPR04MB7978.eurprd04.prod.outlook.com (2603:10a6:10:1e9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.21; Mon, 8 Feb
 2021 06:58:02 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::792a:b2ef:ed50:a1a2]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::792a:b2ef:ed50:a1a2%4]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 06:58:02 +0000
Subject: Re: [yocto] #yocto CORE_IMAGE_EXTRA_INSTALL Where can I find a list of valid package names?
To: yocto@lists.yoctoproject.org
References: <45bT.1612391155068335774.AQwA@lists.yoctoproject.org>
 <CAEt6NwoJjfE5Xvt0TtuDj8u9KOpuNpUV2Jf2y1ge1M+EJtwx-Q@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.dcdcaee4-88c6-4ad3-bbe3-a9873c287064@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.86e89b35-f3c2-4cc2-b281-50fe894ebd7c@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <52b9ed4a-8f79-d0e1-7d3f-e92f01c5b8da@topic.nl>
Date: Mon, 8 Feb 2021 07:58:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAEt6NwoJjfE5Xvt0TtuDj8u9KOpuNpUV2Jf2y1ge1M+EJtwx-Q@mail.gmail.com>
X-Originating-IP: [83.128.90.119]
X-ClientProxiedBy: AM8P192CA0017.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21b::22) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM8P192CA0017.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:21b::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend Transport; Mon, 8 Feb 2021 06:58:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a82a4817-e584-4400-1dae-08d8cbfee282
X-MS-TrafficTypeDiagnostic: DBBPR04MB7978:|AM6PR04MB4246:
X-Microsoft-Antispam-PRVS: 
	<AM6PR04MB4246EF9B26CC9852990CC44E968F9@AM6PR04MB4246.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;OLM:5797;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 LCeuvOEwXZW13Kqqza1rYVxpJvSYSeeM/4ttstB9mXFKQ+H4Lc9N+f+OK2S1t7/GgPuN/60DPeciM6TeVJk8gGSmKMSWRIrShX4ZJm1pcrdtOMPuUTSf8LFggqFoRbTqr5aTaKyA/M4QbXuVMBKk1uAN8SEbmswo28UzNnQtiCYNDS8SVcV6WnZ1tlcTzuXEaPX34cYAd4BepfK+iv/XiwUQC+BB9hlpEJ7sey9r2fwN6c9YDn3abOUNiPIeGCEmgBIRuVZ5Syv7HCi7e7cCN99hmXS970Wu4EgHTjbwQXfrz6rEEDGEI4ppHqc8d4gI8s0k6UDdPM0LGezIBgumhwmPWFOQEqcW7c1RyGaLDRlsyj4ZQ4/6QXuTYvdXWueanQYKe9QB84h6Bh4qaejOa9OyqVXltfLhE4PBnOCDDtilwiCVWWcwhCsn0231DQDkeNEQXcku2PKXAOMgCCkpUGkKM0YZU3HxQnu+xMbwRADqugcd6xATByX5wtMsAhAF0zJMKd8pAyiUrRzT68f5QoRhtJ3gFKuMmdv7EJjlK4UezC2ytxvaAsBnhxL9sbBStm/ebic9lnnrLvyzoTPxNIZLV2AA2LfjuNHAAOjpnes=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(346002)(31686004)(508600001)(44832011)(5660300002)(8936002)(558084003)(16576012)(83170400001)(36756003)(36916002)(66476007)(16526019)(8676002)(6916009)(42882007)(956004)(26005)(186003)(2616005)(53546011)(52116002)(66946007)(31696002)(66556008)(2906002)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?dE8xVUIwTGpMdVgxdEQ2Wkc2VjdLWjcrQlBBU1ZVYVhvQkVZRUZhdXF4NmdX?=
 =?utf-8?B?QTNVUlQ3Y2M4YVNnTVRiVTJrd0Z0Z2NrdVc0dFlwUHpIUHQxRHVqRHNNa283?=
 =?utf-8?B?YmlkY01DVEdWZFc1U0NLalY3dzUxNFVYUHN3NGFkaG8wWFdzYXV5TDl2dHF3?=
 =?utf-8?B?UHNFN29JUTNzaWhyWDBaTVIxMkdCcFozemM3b3crR0hOdnB0MlE4ekNnSVRv?=
 =?utf-8?B?TDdzYlFSTHRpMFVHYldGSy9jMHBONVAyL2FxMlFCYzlnTmZZNzVsVGhBZlVq?=
 =?utf-8?B?VHRJQXFHSDJkb0dyVkREKzlVSkdmTm5ueXFWbWQyVlpGdzFDY2N6aTlCYzFk?=
 =?utf-8?B?c05VT2FtcUw3b0loNFBZS1QvTzBEUllKUE5lRjZicGhQQkVWNWY5NmdCbG1L?=
 =?utf-8?B?Nk9vQWl5SzFUeU1kSHNkNXNubDcwdlJuMElMeGFpdlNtdGszMnVnNlFZVWF5?=
 =?utf-8?B?K1ljdHVYK0xMZktBVzgvUXpMeHRya1NpQ29oVnE0MWRrY3NFWURhVFRSV2dn?=
 =?utf-8?B?Ym96OHRxNEx0dkNkekRVRlR2ZlpmZEdWa2tQakN0UDY2NlFQbUtnUGwzaWxL?=
 =?utf-8?B?d0ZmVmhKQ29JRXMycEJkcTZDY2RlWXFoNlpsWENBNGt5Z294TVQvUVlOUkxH?=
 =?utf-8?B?NnBRbVoza3NGR04yUzRRODU2aFA3L204RTNBYUYzOGxXRjl0Zm1EbTRLVy84?=
 =?utf-8?B?OWhXMTF3NWhRbHB5bzRIREgydFlzUFh4ZE5OMXR5TE9pbXpWd1R6WmljQXhO?=
 =?utf-8?B?MzFuNzRYcUU0Q29nSzNIek42YlZGU29MazNIbEZDcmxuM3pwRG5iRTgxdnZ2?=
 =?utf-8?B?RVhtektScGYxeGFyeloxUFdWL1NqMlN6akw1bkp3SEdwQVB6U256QzIwRHM1?=
 =?utf-8?B?dURWdVFWNVIydGc5b2l4cjh4RERKTFdrR1IwWDRmV1V3NHpCdy8zZTY5NXov?=
 =?utf-8?B?RGdzdHpUQ3pvNzJoQzlIVEUxc3BHZWU4eWZnU2ZrTzlYSVRsWThwR2orOGdk?=
 =?utf-8?B?dGhUa1RIQ1RuRkhKbDd2RkpFcGRoSjRpRG1vbDdkZlN5Tk1MaEVEK0lpNnV5?=
 =?utf-8?B?eGxVWXBsNUwrZk9iYXBvc2RudE5nenltZGc4RzA2WWxxRUlxc01FN3E4dVJk?=
 =?utf-8?B?dzhRSWs4V0orc3BPNVRyVDdOeUEvUGE4bHF1Z0owTFRFcEF2Mnc0OVg2SzRM?=
 =?utf-8?B?aDVLS2Zjb0RLcC9SdVhUVE1SenBrSDFBZHloSU9udGRUSzdjek1WNFBja3c4?=
 =?utf-8?B?VW5aUkRJZHoxQlF3MEN1cGpWTkJWeFRyNWd6TldzWEtKWW1makpvU3MvcG1J?=
 =?utf-8?B?eGVUeElaR0gxNHJCOXE0WGZmTkRIVjdSdUJsODdaTGtLRzRVa3hxSCtyWmVN?=
 =?utf-8?B?Z1Azb2EzZlZRRFU0Y3daYVF3dDE2KzlSdlQxVWJSN1k4RWI4eUVleEhTeEdn?=
 =?utf-8?B?RXJaTXBmMGpaVTByZURxdWlkTTJ1YnJwNzZqckh0dFF0d2U1QkY0aFl5c2NP?=
 =?utf-8?B?N01MNE82VERod1pVdWFERnd4WTFvQmFqRHFTZkdPRDRBd3FRTjJsWUVFNHR1?=
 =?utf-8?B?NnhXelJZNXFnMStnWDcvRGN0N3BjTjJTc2ZEaTZHczRVTUFzYjdsTmJoUy96?=
 =?utf-8?B?cGdSS3p1THFGUWxicjZ6SXZlSTRtblEwUk5nWm1BcGxMWXhUQ3JTeEdwc3A4?=
 =?utf-8?B?TW9HT09Yd3o0UUVRNTJ4VkZuODVZeWNWblBPR0NJQU1meUVtNm5EVmhpbUI4?=
 =?utf-8?Q?/mzGhLYXq/H7bIceDC1YQ6GaFk1TFaJcy1Yak1t?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7978
X-CodeTwo-MessageID: 4bc0fdc9-74d1-4ffd-bbf3-8256c31cf300.20210208065804@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	fd42ea45-28e9-454f-ac51-08d8cbfee07b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aiLnquh2Hkblp2QnMvGgdWpkm3W8yKepeOPbhgkf8bux7nUNC2ZYw7e/7QNz+6GrL/KF9AoAdhAi9z/urgihhKcnV6NjZ8Jm8E5/QvzA+LMxF6cqy9r6qVDmojHTzlItT3YcRvNOyRxf4qtjR4wHgKhoZa3lD7I87b+XtkdceOfiV7nwpv2MEXdfsIhu75BMkOvi5mbeFHmDWCx35zWcK3KHsmigr1O8aue151JmAwbm8rbeHLY3aIgPydNz+LwuuEIY80dSvlAQF+EVE2oBJv9pnk22dR12Dg9fdiALIpFaKrdWyz10fsgCRmE6S5x0OxUSfkAruSexeaw5SBAYtYuh6YS5PzOj2y65Jd3VAM15hQJNe4bbAmlFlZm5QYJfK2bZgQb5XqpF73H2l4eOCxTYto+JG1fphyw04GpCy2vAXlL087SrdlEK+fxQg2dwQ13+A3OVv1U8YeB5qfLJL+mLn8ta/L5t+40hpgQIiutGT7P3K01FuY+g9Khn0cjLIAJ9cmt6QUjN02ehBfOHL/OSQNm5ZLT8uNXkot2I4JqlJm0msaWFD4+ciQvxspq5O7F4O84NZRzHYJTrwqFi9voQnjZjJKSjrhWSiVL26KRHeFrGt5huZXwTmA0Wc9M6FM7am6PorVNjq9l8izpaGyo+Ww25WlI+X34PsLE3w5iek4/1Eh7CswnuMgi9Fvyn/i+5TAXuYlT5lseWsgqhBkDfwhkc9egC2CGD06A6ecldfEznMvpqS+sJUQn4NlUVOuGNCD0nktBJ0tQz17YB1A==
X-Forefront-Antispam-Report: 
	CIP:40.68.112.65;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(346002)(36840700001)(46966006)(47076005)(336012)(2616005)(36756003)(6916009)(8676002)(31696002)(42882007)(8936002)(356005)(7596003)(31686004)(16526019)(83170400001)(44832011)(7636003)(36860700001)(36916002)(186003)(16576012)(508600001)(26005)(70206006)(5660300002)(70586007)(2906002)(4744005)(6486002)(53546011)(82310400003)(956004)(15974865002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2021 06:58:05.4695
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a82a4817-e584-4400-1dae-08d8cbfee282
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[40.68.112.65];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4246
Content-Type: text/plain; charset="utf-8"; format=flowed
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
W: www.topicproducts.com=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 04-02-2021 09:12, Josef Holzmayr via lists.yoctoproject.org wrote:
> oe-pkgdata-util list-pkgs

Oh, I've been using OE from the times I still had hair on my head, but=20
never found this gem. Thanks for the tip!

--=20
Mike Looijmans

