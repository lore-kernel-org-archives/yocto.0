Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.65])
 by mx.groups.io with SMTP id smtpd.web09.29128.1618216116063335148
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 01:28:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=e6enAqn/;
 spf=pass (domain: topicproducts.com, ip: 40.107.20.65, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvIsXLDV6raLgQv6tm42qPW4IGmAEbQyW8SsZzlgmo8=;
 b=e6enAqn/I3qftfOJ26x3bq6+J10cfmoks8Uccg/RW0+YL1S7EBURdiw0dfEroCTAtAgpjoVw/bG5FZD/9vQyPVGoLLbibizuiO0BzcoKQ/AvyGjJPSKV4lVaUEwe2G+HT8t3w0PfZzghLq6StTafbZc5b8gHjc4k95+CHSfFQnw=
Received: from DBBPR09CA0002.eurprd09.prod.outlook.com (2603:10a6:10:c0::14)
 by AM0PR04MB5649.eurprd04.prod.outlook.com (2603:10a6:208:12a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Mon, 12 Apr
 2021 08:28:33 +0000
Received: from DB5EUR01FT046.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:10:c0:cafe::ee) by DBBPR09CA0002.outlook.office365.com
 (2603:10a6:10:c0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend
 Transport; Mon, 12 Apr 2021 08:28:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 DB5EUR01FT046.mail.protection.outlook.com (10.152.5.231) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4020.17 via Frontend Transport; Mon, 12 Apr 2021 08:28:33 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (104.47.17.168) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Mon, 12 Apr 2021 08:28:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BzPy+wTaVpwuYqzRsUHEGIf9lG16++pstTjBGfbJfSBoog5cVZyWb04xClyTEkl9VPdu5r90n8KXkeJzN5FwgsZiJ6opBZYgLe3CnWamH++mkCKlxrZAtdoDM+9gFJIxKpB2B9hsr1pB75QyXCXT0h7B3X3Ogzd844fDuT4GfxoVDH9eOI2fDHSLVEC2s2+EcVYnBaiRxRwCuyXtVWor/ERCCJRgyMK30dM0nINAEiluiDU2TqYvNzF++ajVBpddkNvr3Ky9NaNsWKwtaahyyRfrS9/ZUHr3F676rnmMWcpQzQZynX7aSbtmUIPWxUv4S6kR+yIYmX6f5UYZpK2sPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nCRG2EDgkk19IjiZNRsEGrRSKxQ2a0ZQmeWEeUw5W5o=;
 b=B1NptDfKj5zZ2cGkK/Qr6EMZY39ZmsgxhgCY6eC8P/jnwXWdo0HhCn9VGcdA21FK7hnyGM8ebeLyhfRmWFWn/axyfR77y9oAmeU+XbsbnkdtO87nHG/D7Dd6b1i3RdxB7O68Wm0eWdbMXd3ZEoIydDDp/8TWjMWfioH7IiKMhxEVDpc5GmEpjyibOWo1PEWwC+0NZVO3XEYLH28s7aj2dtJe7mdEFEXbV5NeGLLUs9TgX7YlbBFy4uqYUPdAs23Gm7R+kIBDLJMmcU1nJYo7h5xGSBr7bpmX1L8KXkhkzTNZbHs8muDIs5x/FV39O2imh4PzxgBATky1ooCBhTlI8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DB7PR04MB5276.eurprd04.prod.outlook.com (2603:10a6:10:15::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.22; Mon, 12 Apr
 2021 08:28:14 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::38d2:189b:f7da:b988%7]) with mapi id 15.20.4020.022; Mon, 12 Apr 2021
 08:28:14 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: gley-yocto@m.gmane-mx.org, yocto@lists.yoctoproject.org
References: <s4v495$bak$1@ciao.gmane.io>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.12d167de-8268-4441-bd03-b78a3e04713e@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.a8aa18ca-4a64-4525-851c-c6d34f355f1f@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <98f577be-60ea-b6d4-2f26-04b8665315c6@topic.nl>
Date: Mon, 12 Apr 2021 10:28:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <s4v495$bak$1@ciao.gmane.io>
X-Originating-IP: [83.128.90.119]
X-ClientProxiedBy: AM0PR10CA0128.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:208:e6::45) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR10CA0128.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend Transport; Mon, 12 Apr 2021 08:28:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 71113c86-3277-44f1-4c23-08d8fd8cf5a1
X-MS-TrafficTypeDiagnostic: DB7PR04MB5276:|AM0PR04MB5649:
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB56499F1744644C047529B35896709@AM0PR04MB5649.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 zO0XycJ59i2/jGz0mw1LvTo0nA4O8DGlb4x2ox6rr0j3kXn1NRVwRK1fRlUKT8cSmORUFV8akkrPGhZDZjFZhdd3Jo12RvfKxPKIWo273SJtNFhGOgR38stkOQvFEMD6AYQjZI4E1lw55tt+8jYmflJySMX/1LMkIbSr0NTQIuJS6uYhukzm62QlnKaQ51lVAfHwXjoxvINsWGqS27/ETijMGOlEZuAAw3pB6Hi69iaOEl1R3yJwVsjvIi8QxtAJ+FbqcQPBpG2mBu1oGla1wN1OIZu2sUG9ISFAxVZCz5N/MeBDEDyvuzk58JzN+ZDmQAiIXnvN8cQ1OMaodkGkk9F0764T52p2BzQF4WxGSmXVeSho6DRvS6mp8ZDo5VzESe5+7Za07hogSQ2B5ofAe9Wkctbl3lx+NUFXSCFI5ZVCArSiSzFBiNEyKbW7UW02tht2sa+3AF9JVUCwTnI6Ebp6+PtssBVxmgFqS23B91T9lWL60LMq7n0yRq7Fd0ezNNlBGizUA9GBZNykNN5eBtveoOOk5kXYye6N+BxMg386Ct5+mwXcDwJHn/SxUonnxPVPxpueyIOiZJ306QkdTtnS+jBXN1htCZ5nTkNpz2LRUcN8euC/g1kdjwB6y+G46EVa0Qm4yWjPn0pIaEuSOrIsGfk5KfSggIdhKu/A4I5T7O75jo7uJ7iSZuCtzFqKI3tSotrmpIs3bIQAQloLtg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(366004)(376002)(39830400003)(396003)(36756003)(8936002)(31696002)(66556008)(36916002)(16526019)(53546011)(956004)(26005)(83170400001)(8676002)(5660300002)(31686004)(316002)(66476007)(186003)(16576012)(52116002)(38350700002)(38100700002)(2906002)(42882007)(478600001)(6486002)(2616005)(66946007)(83380400001)(44832011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?bGZMZ2VPdUhhQjZJMndsL0RqVTFzOHRWTk9ZbnhFOUFEYXVIVkhmaEZLODVD?=
 =?utf-8?B?S0d4K0pOQk5xdTB3S2VnZHpjbHhiLzVvbi9DOTBJaUlSdVVzT0I5bnVhUWFV?=
 =?utf-8?B?SWdyWklVQzIyemhhNy9nUVdic1FDcStvU3h5RnczaW9qMWJ1K0l1dC9wTGRH?=
 =?utf-8?B?Wm9NUkVFOWVxMjlMME9TMnVPTC9oenQvWGJQS0toN3lZQXBxK200ZmpkN0p4?=
 =?utf-8?B?ZU8wZW9ranZLY0JSTWtONXF3ckIveE1rKzhUVUJPS2ZqbGF1eFUyUlBDWE5X?=
 =?utf-8?B?MG9xQmtwYjMrYlJqNnZUelZxblVnYXlyblF2R3haM2l4d1VxNDdSYi93Sitz?=
 =?utf-8?B?SWFuL3FjSmtrK1UzYTl5anFYWFBUb1RkdkhvUVllVVdiOG9JWmYxcnV2RlA4?=
 =?utf-8?B?RGFpMzNyMVJHUXZXcUJ1bmx4N2s4TS9BUklJRWdoS1pRZjREN0gvbDZwRXc3?=
 =?utf-8?B?NitHOEdObkxxcUo1TUk0RWFtaFo0S0c5bllxZVhiaTl6VjNpdDFSVTlzRDJW?=
 =?utf-8?B?NndyUkp6L0pob1pidldTanZkUUY1cjE2amw5a2NRQW9vTW9TblpxWWhTVzhP?=
 =?utf-8?B?cGVzWGRVVWFqalpyeE1RNG9oNzdnK2NXVE1OTG1SVUxtUWdxUzZyaUVabEI3?=
 =?utf-8?B?ZUlTT1ZraG1PekVTUkt1WDdvKzJJbHZRcEpiK2h2OFlnb3ZrRytxbVFOTFhq?=
 =?utf-8?B?bUliVFZTODAxQWhIRWc1ZkFxZHY4cmI0azJQNlF2aUNlYktxeWhTOTl1UWFR?=
 =?utf-8?B?d3M3UjNNbzFFYkVvMEY4bU9HcnVEUFh4ajdsMmlkczU0RkZTTWd3a1VRcTk0?=
 =?utf-8?B?K3pRazJIZThXTFBxN3hUUEtoc2JIcnFBa1g4S0pBZFJDTDNNWkwxelR0dDlw?=
 =?utf-8?B?V21nSTZ6TWZkUUNsUnQrTis2WVNRRE8wNUpLclNxZXRoTzlyV1ZpdFhicmdY?=
 =?utf-8?B?QlVYZ001S2kzdFRlcW1JaDBQNHNpUzNrU3FvbEhMY1Mrb3RpZSsrdEFiemkr?=
 =?utf-8?B?VVdBSXJMY0xaN2Z4OHdMaWc2dGp5RGhSVEVqS2tCRWZoZXUzenduaWZ0L3VF?=
 =?utf-8?B?UTQzdEFUbGJTWndLbTNxWmhsTEQvWjQvWFNscVlGeWxXNDFMbUIrdGdQZjRq?=
 =?utf-8?B?MkYzamRqbWg4ZE9FM0hJN2Ewd2JzVW9pWUYzMEJJTkdTTk1aaFhNZE9XaFFu?=
 =?utf-8?B?b1pDU0lNLy81WmdwR3BXVllwc2o3U1c5d2VDNmxqQTFsZlArWXhBN0MzaWZz?=
 =?utf-8?B?czNxaU9ta2pjZnFEUmVWSmxpWndlV3FKa2FBOGRTQkI4WGtlRkNMZ0U4WXU5?=
 =?utf-8?B?NnJsQkU2OHlpZUNoL3ZRTjloVEZvQWx3TG03VVV1RnRsUWJIRlJrYm5PSTNV?=
 =?utf-8?B?UXlub3NEbUxWVVhsb3VFd3VzQ05MM2ZpZCtsM3FZR0JnMEhpUEt1TGpBSEpi?=
 =?utf-8?B?dTV1Qjd4aHdkV1p3NFE1M29HbnhITHhwcHNuNGpnZDgrNW1xT0tUWXhnRkhr?=
 =?utf-8?B?SlpSTGtnd0lYaFBZdEJkOExINDlXaXR0amVTcS9HZUJuQVYvSDdRMzlua2tV?=
 =?utf-8?B?aU9Td2FoZEtNbWtsTlUxcGVmMURKSmdhb2RFYlZqRnpxTkN2UVA1ZG1kK0Fj?=
 =?utf-8?B?L3FaSFJSc0VMNmN6cml5ZDRTc0lvYXlZcWhQWEVPa01qMG9VMk9NUUVueCtr?=
 =?utf-8?B?LzhmRXZpSW0wMkxiclFVT0hRZ3BlYVZ3a3I3bDg5NW9XZVlvOFN4WVNNZGEr?=
 =?utf-8?Q?SVIjZlJaqkryD3CorFIepAOvfGTuYZaoO01kO3d?=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5276
X-CodeTwo-MessageID: 02370a65-6795-415c-a609-163c48f1d714.20210412082816@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5EUR01FT046.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f5868b3e-f1b2-4f2e-1278-08d8fd8cea8b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oMGGxlobVUNuW2ANJjMc/qgmYV+02fJRAOmkBfVTQblmK7PCRLg42GPGtZEaOt3Z55aPlP5EKfNpnBNCaCv+vOzRXp+yoD5dzvM+qZckjdAeVpgyE/rwpUmfFCYAIXz3G0CMKa83xfppZ0JbBmuV/hFqihh+MkAjMbE68i6wAWGI4JvHICSPzR9cl+JOVduVexH99RclbtpvY137L3851j4GJcADFjG2MB7lbGzPyJ+TwTU6n7voIaNMkGNFjch9qbRVts1lQ8Wk0FVox3uynHHoTH9zADGrqn1sp6gUXVjSpqFPFt/w6K2WJw5MWbExBCb9kEnrRYdi5lKGIQh++cYqhK6qIi3+FY+BupZu1F9tfJs5WgkrcyGq/JCKXLnyYMTYpCJ4g/z/KWgqgQj6RLalzD9NoNsRz3YYR16BhDRlZD/nGIWggBsjZrK/VuaOtQkbr9MAOK41FbqPbkseQpLrqFtaj4vQYO66raaD8QbwcfdfPoxrkqKhArBu//LuAVG6wHz8NlK5vQbR3hdBgZ5GOr7VwB29IC6ipj9ETm1MRThzehRrt1CAL/Y9BHMsylvIpod/ejlr0ipGESHXVsZsPfrvL2wEgaUhZHzMmE6+pZ/sKNGsoHY9Oyit1/wX/kvbPY7U/kZz+E3DbAxyAXzuLhYm4NwmmO63xH88W4GML/yzufH2gwvhiGz1Ki6Cx5F7RkB1VDhHauiMyTNnhlVfAkf2Kr+vmS2eXdNPNNBUCAwc4M7tcwf5QJY6Z/rHGs8FTQPonnxpcv6xMlsC0Q==
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu13-emailsignatures-cloud.codetwo.com;PTR:westeu13-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(39830400003)(346002)(136003)(396003)(376002)(46966006)(36840700001)(316002)(186003)(70586007)(956004)(2616005)(36860700001)(44832011)(5660300002)(83170400001)(26005)(16526019)(31696002)(83380400001)(70206006)(15974865002)(31686004)(356005)(8676002)(36916002)(6486002)(53546011)(36756003)(7636003)(16576012)(7596003)(47076005)(42882007)(2906002)(478600001)(82310400003)(336012)(8936002)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2021 08:28:33.0109
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 71113c86-3277-44f1-4c23-08d8fd8cf5a1
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT046.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5649
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
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 11-04-2021 17:23, Gmane Admin via lists.yoctoproject.org wrote:
> My build machine has 8 cores + HT so bitbake enthusiastically assumes=20
> 16. However I have (only?) 16GB of RAM (+24GB swap space).

Been there, done that (8/16 cores with 8GB RAM).

The major cause is that bitbake will not just spawn 16 compiler threads,=20
it will actually spawn up to 16 "do_compile" tasks which may spawn 16=20
compiler processes each, thus you'll be running a whopping 256=20
compilers. Bitbake may spawn a total of n^2 threads by default with "n"=20
the detected number of cores.

The workaround I used was to limit the number of bitbake threads but=20
leave the make threads at 16. Since most software these days is using=20
parallel make, the impact on the build time of reducing the bb threads=20
to 8 or 4 is negligible.

As for translating this into a bitbake feature, an implementation that=20
comes to mind is to add a "weight" to each task. Most tasks would get a=20
weight of just "1", but a (multithreaded) compile would be weighted "8"=20
(some formula involving the number of CPUs) or so. This would stop=20
bitbake spawning more processes early so that you don't get into the n^2=20
threads problem, and the number of processed that bitbake will spawn=20
will be close to linear agin instead of quadratic as is is now.

Recipes that have excessive memory loads (usually C++ template=20
meta-programming) can then just increase the weighting for the compile task=
.


--=20
Mike Looijmans

