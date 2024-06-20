Return-Path: <mike.looijmans@topic.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0978C27C79
	for <webhook@archiver.kernel.org>; Thu, 20 Jun 2024 12:44:10 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.110])
 by mx.groups.io with SMTP id smtpd.web11.46471.1718887447266897340
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jun 2024 05:44:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topic.nl header.s=selector2 header.b=XREzDxu2;
 spf=pass (domain: topic.nl, ip: 40.107.21.110, mailfrom: mike.looijmans@topic.nl)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBVupONu8v7EshhTwuN7BOejjp9AbsOVNuKUdIVsS5yOEZ30MsrjD3vOUuO3gq7P35hzaSmxopWxodLH3hQMHtgeTIlRnaX9zvB3XYnQ3EcdD5EHojNOd7MFCtABeHQjdrNfIJKUmfi1cDJEXNWwKaEyyIs7ZwT7NdFO9ehuHQxB7IyI9A7H6/Xz28SNd5jPnir/tetx6hB7WtLv+wJZPKBZL4z/BjPtSa+SEVHP0hTXI7tqK1kKY3x4LmGD3WmmHZu21CMG94dTmHb1y58i1/XFddh5870ITAarednXKKDNrlEsKXol7FmrEYnbPlUVleq8MLGS6dVIJO91M3elww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2K198N8slVEfiVtlPWyQgshNTE+cMO4ESeJRY2M/yl8=;
 b=IUW9NTXwwr8FMOw3JedmzXsAAecKEGIlYAJX1WVVZYDOnL92/tRqaOJecKPPfueU2b5qp7SC+M6maXtGz4vL/4amidwBybUgGRlJnJBVIBkyGgcuIL9Gvf+8ahMh77WNt4gldL50s2Eq+A5Jlqw1jyiP+0THTplFCGUSa7nt5KlMVz1uHvbPYPUYCfKrDf9Ad24rH5aB4PlHr95Er+Q5Tvwsx6GvSRsp/rAMaKPZLokihOJdxpwOk5ytDpLnnWMJEl+SB2xk98weJxAVlYOEe0s+sWh0MWbFnrbuGYdDuw/7Z+7PgKDhU+KGKb4IMm5GCCEvZiawk8vS6y29uKQwxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.93.157.195) smtp.rcpttodomain=gmail.com smtp.mailfrom=topic.nl; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=topic.nl; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=topic.nl; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2K198N8slVEfiVtlPWyQgshNTE+cMO4ESeJRY2M/yl8=;
 b=XREzDxu2/rqnbGtxOfMfL+WX0J8PYwIxhFuEP0ZH/bkxlNCLcjjuuq/orbiTv6xIyVVBQpUeFXnb9U1WT2DtG3C6Ts6xKQWOFmQu5HaB7k1jq/0//hKkjjhIdzP4pGha1R1CZRZlWF2G0RZSc8SIoiuyHTrpI3eq1b2dLmLn7KWMDtyTzW8rpva3dWkeC26eBksZ4TPFJ7RG7LOqtrZ45ej6NLGm47Xdxa9tvkzyLLJ73GMpoUrQaqlUp2sTbleiGcY6sUa2f54RLTXlhXA+dm5biIXtj6311Uko4JKOAUu0BFwCOLkkqoKzNc96PN7vHQucI6INan+VQoxkdQe6qA==
Received: from AS9PR07CA0054.eurprd07.prod.outlook.com (2603:10a6:20b:46b::13)
 by VI0PR04MB10161.eurprd04.prod.outlook.com (2603:10a6:800:242::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.21; Thu, 20 Jun
 2024 12:44:00 +0000
Received: from AM4PEPF00027A62.eurprd04.prod.outlook.com
 (2603:10a6:20b:46b:cafe::41) by AS9PR07CA0054.outlook.office365.com
 (2603:10a6:20b:46b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31 via Frontend
 Transport; Thu, 20 Jun 2024 12:44:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.93.157.195)
 smtp.mailfrom=topic.nl; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topic.nl designates
 20.93.157.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.93.157.195; helo=westeu11-emailsignatures-cloud.codetwo.com;
 pr=C
Received: from westeu11-emailsignatures-cloud.codetwo.com (20.93.157.195) by
 AM4PEPF00027A62.mail.protection.outlook.com (10.167.16.71) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.15 via Frontend Transport; Thu, 20 Jun 2024 12:43:59 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.48) by westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 20 Jun 2024 12:43:59 +0000
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=topic.nl;
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com (2603:10a6:20b:42b::12)
 by AS4PR04MB9289.eurprd04.prod.outlook.com (2603:10a6:20b:4e4::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.21; Thu, 20 Jun
 2024 12:43:55 +0000
Received: from AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a]) by AS8PR04MB8644.eurprd04.prod.outlook.com
 ([fe80::e86d:f110:534e:480a%7]) with mapi id 15.20.7698.017; Thu, 20 Jun 2024
 12:43:55 +0000
Message-ID: <14105dc6-b7db-45bb-8554-7ccd0d8436e4@topic.nl>
Date: Thu, 20 Jun 2024 14:43:54 +0200
User-Agent: Mozilla Thunderbird
From: Mike Looijmans <mike.looijmans@topic.nl>
Subject: Re: [yocto] Dropbear and deprecated ssh-rsa issue
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: yocto@lists.yoctoproject.org, mehmet.fide@gmail.com
References: <CAA7J33X=Zydis3=9AMxgA4vWOKYhgySq8tPoYwPhT0vh7WMYDQ@mail.gmail.com>
 <CANNYZj9w8tQSWCLERavC2NXMdS5i=QrimoZ1vGoF=8LNP0wVdw@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.9fe0f4e9-8124-48c3-a0ce-1035f32eea8b@emailsignatures365.codetwo.com>
 <000001dac26a$bbe3a070$33aae150$@gmail.com>
 <0b5dfc61-07f9-4d3b-8bbf-26da76f09f52@topic.nl>
 <CANNYZj_Zb2me+8C+BXELw+KERFKViaDSPfd1L5hLQYscPxY+7g@mail.gmail.com>
Content-Language: nl, en-US
Organization: TOPIC
In-Reply-To: <CANNYZj_Zb2me+8C+BXELw+KERFKViaDSPfd1L5hLQYscPxY+7g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM4PR0302CA0023.eurprd03.prod.outlook.com
 (2603:10a6:205:2::36) To AS8PR04MB8644.eurprd04.prod.outlook.com
 (2603:10a6:20b:42b::12)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: 
	AS8PR04MB8644:EE_|AS4PR04MB9289:EE_|AM4PEPF00027A62:EE_|VI0PR04MB10161:EE_
X-MS-Office365-Filtering-Correlation-Id: 46551ba0-5264-4861-d69c-08dc9126a863
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?L2h1WGI2dlFaQzRkazZCN3FpcnJiTzQvNWJXWXQxVGlzNWF2aTFpbFJDcWNu?=
 =?utf-8?B?dis3RWJENGhLd28xN1ZGQWtkVjl3ekEyaXVXdVBSN20wdFpEVjlCbDR3dkJi?=
 =?utf-8?B?dHJIY2cxelByeVI0UUp6MVgvdkEwU1NCOWhWUkIwd1VPREtMUjA5MC92UG1y?=
 =?utf-8?B?ZStIL0hvSEkxZGVUUkppZ1IwTjd6cVFaSlNlc2xSTC95MzkwM2N0ZnJ5VGd5?=
 =?utf-8?B?bzBkeHRFMzhSSlNBM3N0aVI3OGo4UU1maUFpVXMzVGFhM0UwMCtxZ3NWYnpP?=
 =?utf-8?B?NXFHRHdJTmpKRUFGWnlIV0NnZTFRYkw3ekpGZUEwTmg3eU9NS1VDL1pUSUdi?=
 =?utf-8?B?d1p3NVY5V3gySjFBSkp3M0FCbWJPTlpHVnpMcjBhTjVNbVF6eWFsME52UWJZ?=
 =?utf-8?B?TlRBSVloOWZ1dUFLT3VDMzZpdUFPZFFmQTBBTC9MaDhENTdFMFJXaWZrY0JK?=
 =?utf-8?B?SlRtT0kybDkxSjVZSEVPNmR1N3FjOWFWVm5Hd2Nld1lyUmx6MTNKZ3ZCVjJi?=
 =?utf-8?B?UjNWdHc3REJ6bWVRZXBCZ0VRVDBkZ2dXQ01zeENLdGNURmNnb1BnVGQvWGFF?=
 =?utf-8?B?Y3J2RmJ1SVFURXNpeksvbFdlblh3TUloK1Bhd29sMllNc0ZUU3NtUE9NNTBS?=
 =?utf-8?B?UXJUVmE2NWVBN1YwOERoYU5hVmZRRDF2ZFNDUHhRalQ2cGRLVmxORXlQbDBK?=
 =?utf-8?B?MVA2aFd0OXRxZnNtSWkrNm1VZFhpek16M0l6ZGZLRjVZTEQ5ZURXdElVWTVu?=
 =?utf-8?B?Qk83Q1FLNnJGQXdiSVQvMHc1WHRIUndDZnNaU3BKMFN3cENaUVRYK3VpYm1h?=
 =?utf-8?B?dlpYWVNWTndZOFgzajgxRjBsODFoOVhPZnNJMzJvSDNXQ3o4dkdOMTkrQzBG?=
 =?utf-8?B?ZGcyUENBYmRRVEtsZVR3d0NBWTVJZFdkaHZSeTJRNG9OdnB6a0NHanZyd3U4?=
 =?utf-8?B?bVJNTndiamdTYzRhZDFQVDl1RnhLbVgySUp1RStZOVhUd05xQkpSQ3JPTFlE?=
 =?utf-8?B?OWQ3Ykt0WHNQYXgvbXRQcWZZaUVldUZxczB3NVA4dU16ODloSzNlTy9HNmVt?=
 =?utf-8?B?aXQzaHVSUXhhalRTbEJ6aUFmY3BBY0FBazlzTDZNWVQ3djFBWE8wMWNIMGZu?=
 =?utf-8?B?SkhWc2xWU3FzY0pmM3BDbm54SFQzdFhkKzZoU0xORXMvamxLR3RxblJyVEw0?=
 =?utf-8?B?OFhrRGh0bkg3RE93dDRramlLaU5iMDlDcjExeXlITHlhQlQ2SWRvdFpLQ0c5?=
 =?utf-8?B?bWhnTFlURXRhbXZvQTZ6OVV2TVJQanNFNmRmVW9taUcrbmFqUkpLaFBScGY3?=
 =?utf-8?B?WDFJMWxaYXVLTkp4amlZVnlrdXJ2K1gvRE1hT0VxWnhTSVdhRC9VVVg4VlJ3?=
 =?utf-8?B?NVhnbkxLM1NlbnpWSUJPYnQ2WFpEYUVVZzdyOENuQlRJZmY1TkwrTU5aeVM5?=
 =?utf-8?B?Q2FTV3NUZ1d4Q0pqMUZ6ajJQcys5a1hab2RhT01hYzVpaCtjbzhIL05RTlNR?=
 =?utf-8?B?bHdod1FmMFN1enlWeHNPY0NKdDhNRFBKcGlYUjF5cnVyQ1pHVmZjWHlhaWVK?=
 =?utf-8?B?OGY2QTF5Zy83MStod05oK0FuNTVKUzUzTzVlUFRhcWd3MUNzSGVaanQ2aWVE?=
 =?utf-8?B?Qy9IWmlvRmtBN0l4QnZUblNObjlJUGlvYmtCRWlTSVJnN0ZWK0l1eWYzcEVI?=
 =?utf-8?B?eTV6NGloUVVyU3hBai9pYXJrUjh3TTZxUytLdmpUNVVrNVV2bUcrOVhFUmtw?=
 =?utf-8?Q?i1dEqaLfsW/3ECEDW+bjg6/Ulh8FpTidl8vEI/U?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8644.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(376011)(1800799021);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9289
X-CodeTwo-MessageID: cfc4173b-f0db-460d-845f-77455bb482d8.20240620124359@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A62.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	dedbfe28-7d96-4e17-e79a-08dc9126a5b4
X-Microsoft-Antispam: 
	BCL:0;ARA:13230037|82310400023|1800799021|36860700010|376011|35042699019;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WGo5S1RBZU1aWS9jS1E1aDVCOUU4UEQwa0Q2dkVSTHA0dVhpeE92MjUwUXMx?=
 =?utf-8?B?UHJSa1ZSM3E0bU93U1NKR29JbTJGWi9jRUIyMGZycmd6ODlJdERrczNTOEtu?=
 =?utf-8?B?Z3lWOWc5Z0Vncys2NEg4TU1TQ0w2djdQdzdkZVl0Tk5OZ00yUTZQLzNvdjRn?=
 =?utf-8?B?L1JjWHpjL21iaFFhUXJvRGUvQmwzKyttUXQxR3VhdGhuMjhVOVZKQjJ3UjdL?=
 =?utf-8?B?dkNjUTVxK0prcERBQlFWaW1KcFZHeXpxUGh0b21WcFdvQTBRemFCVkJEV3FE?=
 =?utf-8?B?bXhQY2wvemkyWGIrRTlGTnFkalRtRGI4a2JDaksyMjVicno1eTRTR3ZVV1hq?=
 =?utf-8?B?SkVKakZ5SUxLS1hvN0IzU0xNQ2IrWGJCOEhnTTNGUlZWc2crY3hXUGRlOFQ1?=
 =?utf-8?B?d3pvQU1CRFRiV0c1Tkp3WnhwR0kybjhKQTJMUXpMemRxRTYzMktJVHU0cStX?=
 =?utf-8?B?WTBhWDAzaUl3VGtUU2Z2VVRvcHhxSkllaVJ6SWVIczlrakU5OG1NRWpDczI4?=
 =?utf-8?B?eHNxZ1pEQjhvMjJQNGNOcE12d09MT2tZTDBlRXhHVkFkOXg2YmNYQXhadHRV?=
 =?utf-8?B?Sm1QWFVITTA1UDg4TytueTBoZnVENGpCOGtkS0tVSGlKZHI4S2hZYmZVSjdN?=
 =?utf-8?B?TFBPOFJpOXJJU1RhbG5EcGU5M2pubTBYbWJrbTlHUmtvQzFYVlkvdUQrQkNT?=
 =?utf-8?B?Y1U5MmhGUUhrZitWaXVYU0hYdnBTZWdSOHBjWHczTFFteWZzT2E5ZkhMZE4v?=
 =?utf-8?B?N0Y2RjVKM040TGdwYVUrc0FTSFhQL2M1SmNrZzNnbDEzM0tVbUp1aHkwOFZ6?=
 =?utf-8?B?eUtsYWNQejV6VFBNNHNQWnJhV0ZxbjFiWGxTOXNVUG01UWVCZEhUa3g1WFFr?=
 =?utf-8?B?Y21xZ2ZwZFU2Q1NxRlFNUXFLMlpVa2s1TU52bUlwR29xcWw3VHVydzFIdm8y?=
 =?utf-8?B?SU5kS2RRQUk1YjQwczh6dE8wZjA1TE8zYTJlT0V3WkJBYlQxVTVpK3pFWHpP?=
 =?utf-8?B?ZEE0VTg0NFluWjhNR2dJVXBDeEhoRTF4Y2hHbkRsTno3RWt4bG9JTWlieVVo?=
 =?utf-8?B?TE82eUE2cjdqdXVWL2VTcDRJRXJQN25yODZuc1BlMDV0Z1loV3lhb284WVJL?=
 =?utf-8?B?ZEN1SnZEb0VWZDZhZTVhTmJMbnU1SVA2eTZZNXVIcHpEalZ2K3ZwbkhHU0pm?=
 =?utf-8?B?dkx5eitManZmcm9YZ2FJT0dpMjgwMTd5dnMwWFpZaGViS2Yyc2paQlZHWm9j?=
 =?utf-8?B?akp1cjJ2cGYzeTJTQzJZWnZGaThWcGhZWXJ3VnZWV1l0N0luSCtEK050UXow?=
 =?utf-8?B?OU5UNDhEdmRoNVhIdVN4YU1GVksxclU4ZW90bjJLTXRaVW8zMC9RY1dvSXdR?=
 =?utf-8?B?K0pITTNmcCtzWWg3aExoRmNXKy9mbEY3YWhYVFNMTkp6UXNNK2VYcURSNGFo?=
 =?utf-8?B?UCthYThjSTdBTWRsZHg2dDJTMitjZFR3QXVxUVBLTHpER3hZeUhPMmxTMy8r?=
 =?utf-8?B?ZG5pT3RLcUNCQTd0eTROb2J6NjVPK3dsQThJWndRaVZQb3lMcDV6NW90eUxr?=
 =?utf-8?B?NXhkT2xZTlJESGtRYzdvSHBDY0YxOWIrMXJnamFTbGxRa0VIZXNjMld2aktW?=
 =?utf-8?B?dUcrMmFNOWVtR21nUlhDa2NFdHJqQTVyUEg2TzFIbHlnK0ZlZnRheXBVeTNR?=
 =?utf-8?B?YlZwRXNIUmF1YnBJT2lockRnVkRyVmR2VGZCSjBNSFZtUEQ5TEJ2RkpaWTd5?=
 =?utf-8?B?QnhxcjNWWStmY08veEIxSFlJKzVYWnIwQTJ4blBKbzk5UWNTRkd6TFBMVFR5?=
 =?utf-8?Q?9qwWoUYB3zQq1GnqxC/m6X1lBZcGiUNUevRbQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:20.93.157.195;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu11-emailsignatures-cloud.codetwo.com;PTR:westeu11-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230037)(82310400023)(1800799021)(36860700010)(376011)(35042699019);DIR:OUT;SFP:1102;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 12:43:59.9355
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 46551ba0-5264-4861-d69c-08dc9126a863
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[20.93.157.195];Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A62.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10161
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jun 2024 12:44:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63374


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
E: mike.looijmans@topic.nl=0A=
W: www.topic.nl=0A=
=0A=
Please consider the environment before printing this e-mail=0A=
On 20-06-2024 10:08, Alexander Kanavin wrote:
> On Thu, 20 Jun 2024 at 08:55, Mike Looijmans <mike.looijmans@topic.nl> wr=
ote:
>> Keep in mind that there are millions of released and installed systems o=
ut
>> there. Their owners will get very, very angry if a software upgrade lock=
s them
>> out.
>>
>> Desktop distros may be able to bluntly disable some protocols, because t=
here's
>> always a user that has access and can patch things up, but embedded syst=
ems
>> often offer no access whatsoever apart from the SSH interface, so there'=
s no
>> way to go in and "fix" it if something invalidates the keys on the syste=
m.
>>
>> Hence my vote is for option 3 and please ignore what the big distros do.
>>
>> Four years may seem long to some people. For embedded systems, that's ju=
st a
>> normal number that "uptime" would return.
>=20
> I'm not sure I understand your point. Pushing software updates to the
> field without first testing them locally is insane. If that practice
> bricks the devices, I have no sympathy for the vendor.

Since products live much longer than LTS releases, new images will be relea=
sed=20
based on newer OE versions.

Devices will have stored SSH public keys in their configuration area, and=20
updating the image will not touch that. So after upgrading the firmware, th=
e=20
service engineer can still SSH into the box. This is the only way to get in=
,=20
there's no serial terminal, no password, nothing else.

If the SSH server suddenly refuses to use the existing RSA key, it will loc=
k=20
them out with no chance of recovery other than a full factory reset which a=
lso=20
deletes all user/site data.

Testing is not likely to reveil this issue, as that's typically done on a=20
"clean" unit.

I've been made aware now, so I'll be sure to keep this in mind... But not=20
everyone follows this list.


>=20
> Second, a change like this will not happen in LTS. LTS doesn't
> (knowingly) break things, or add new features. In master, on the other
> hand, it can and it should happen: a bit part of keeping things secure
> is disabling or removing insecure crypto. Various upstreams do this
> all the time, and I don't see why we can't.
>=20

All that's needed is to keep the RSA support in. At least for the next LTS.=
 It=20
offers a migration path without a factory reset. One can log in, install ne=
w=20
keys and remove the old ones.

Having RSA support by itself doesn't make the system less secure. It only h=
as=20
any effect if RSA keys are being used. Which new users won't do.


