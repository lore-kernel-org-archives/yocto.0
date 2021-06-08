Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1133.1623178827271521443
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 12:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OQuN26CY;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=17932f0905=randy.macleod@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E05C838C1115
	for <yocto@yoctoproject.org>; Tue,  8 Jun 2021 19:00:25 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 158IreEw020810;
	Tue, 8 Jun 2021 12:00:20 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-0064b401.pphosted.com with ESMTP id 392c19049m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 08 Jun 2021 12:00:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXcDhFoRtBia4rOY7tSBPtmnq2/Tn2b5zkqY9KmWHhpds6FzVtA7eMVhbZMw1HnklOtCk9hWFijdamwjCWQSJUi8/jV+gjue2dqgZ419WL8NhvTfqLYGN4LPDuLrUL0my9RqDe3AnP/x1TPcBNrMmFta1dm2VwvMtr+DoKBFOgqsqN3fpn6SRIYgvs+ve5tc54eBph300yRBKdBTYjseTZq59UH4wqQSxX7jRiY4/RfThyNfBv1QLtrrQ3xBhVqsCQB5UZ7TlJOOpEL6NJbdkKtQZMG+V1JZrKyWdGf5N1JdqCrapnf8tzw4OtluEJZC5IbrIyeTlkRyU3eXFTmu0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hpLcUQnsz/ePbOrJNE73GIwlg9O6dPaVEXS7KA4TzQ=;
 b=gAZvIbd0ZmD+RAnw6XGWzMOtKGZDnCf+2vE2acFl5QfihT23HrOuqfF3XTUADVBHMR0BEdjQQkNUngyKbLZFXIELO46zp24zjJZPmNC5HD+LvGznOrdATZhtgFDg7vu/13TGZ2OIU4TtR+b62Q5Eu5n8IYnvaaXCr50w/oiJLbHvfsZsn8QHjSxYoUV4UNyfpp3gUlTcK6J+coV2n82Zhc3YbfZYwXpq2atnA3KhK47KfPuWIn9a0LFatjl20DLE9yGtWe3c5Ba1LR6vYySWFaYhGn8SeZUl6HNta36AHq3EFw65NS17Gx0Mg2DOHZGIvcn6+4/qn6xPYa7SFtb9fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hpLcUQnsz/ePbOrJNE73GIwlg9O6dPaVEXS7KA4TzQ=;
 b=OQuN26CYuE3OE1EblPO0YlXC++J35Kg2NXzM0cPzKhk91pnFVW7hrNMfwsE7naYt/GejOcPupL/3lQVLzWzo9G0XMk5b/xu5TKFTNnMZQlXLwEPWBirrqLSU5szxqALA0nN3Y8itkFetsX4c8gJdcv/Nz1EGHNdEjBAdmTzA2fI=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2603.namprd11.prod.outlook.com (2603:10b6:5:c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Tue, 8 Jun
 2021 19:00:18 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 19:00:17 +0000
Subject: Re: [yocto] Managing chinese text input
To: Mauro Ziliani <mauro@faresoftware.it>,
        "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <B5712FE8-0796-4209-924F-1EC873F82B9C@getmailspring.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <ab9f8167-dcec-2a85-2809-f63f48d90027@windriver.com>
Date: Tue, 8 Jun 2021 15:00:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <B5712FE8-0796-4209-924F-1EC873F82B9C@getmailspring.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR07CA0021.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::34) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR07CA0021.namprd07.prod.outlook.com (2603:10b6:a02:bc::34) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24 via Frontend Transport; Tue, 8 Jun 2021 19:00:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6eaae82-c639-4b17-3ee9-08d92aafa7e6
X-MS-TrafficTypeDiagnostic: DM6PR11MB2603:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB260397F0233FE598515689EDF8379@DM6PR11MB2603.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jFm9/KZiHW09k9o/agJWgVggaEUQhAPVv0ggIhtJNaUqVlem31BnERyz/Zc2/PWjHY6frX4jIkXO6l26ENkzOuu5sjr8wxq7OQGFCUWa79zmo7kaQVhlT4fhLY5wLjLvGgmwHmY3i13JDmM973UDD1/5wDs2Htg6OMPCqjMwN1mgotHUu9x5a9Xm9kr1xWYHfJGJ46/9YAVxQ+eaO9JI/F4Tlw77vZPfZZloK+ON6VxNFl3JS0LY8WtvyWJ8HPCKw2NoLI8dsw1L4v00fJMh0YD2pinvLPzASE97HgHvWGq3YZiz7elfAQlTQLzvIPBTd1s9FzaWY5E/h9UZ4HzGtby20tFpCuMwUN3XG2HJ2SsHN5/iHfglwMjs4/jNJ7pnkZCuKfOYD3sAeP1cqGzqkxS3XI8NnxGB5KzK26JiPnOiYWEf2LB4XCDVNxzUa+ikCmQGNBL2cMe5L3ufWV2H6Mmnky5fBuhCPblHpg6aF6wNCTRHXrnp/LwJVuSRhT1Pmy0oxmbHlIYmmmCOKbMPn7bCtonBWb3/u6QD+1Yi2+p/Hoxcz5gK9DhgFuJ2cufV3NVWL1qjZvf8l1J9XQfH0kRkjheh9SFdUmzXMkIejLRvldVRedIYGlvO6TRlYClapkkE7MYex1aK4bw5DC+pz7KSJM2PAJ1sQUuPKgwcEOvMsVLmAMMGUttz+urEwD//n8kRwulUz7e+E6uWsyxqKwVCKuHibUOkQJoehIcE5N0f/lC07KIYIsrnax5k5nH66qSOg4Rxq6/nIx8LHIyNrPmJ20d/9rSnQEz5wxjyaJA/wW8cV4GcImiTqRNeANqtORQCcrQw4k7SFANPDVLbmY45FV0tYePXYdKoFrru7GRRbUbwfEzUbMVOTvYDusJk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39840400004)(396003)(366004)(136003)(376002)(5660300002)(66946007)(31696002)(966005)(66476007)(6486002)(26005)(66556008)(2906002)(83380400001)(53546011)(8936002)(8676002)(52116002)(110136005)(16576012)(2616005)(478600001)(186003)(38100700002)(38350700002)(36756003)(31686004)(16526019)(956004)(86362001)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TGFjVDRIMHQxM29LNHhwT0dSdTd0THV3N29XUEZodjUwTzIvWkJRMzBtOG4z?=
 =?utf-8?B?UTN2RnFoWFBCV1RSdStXVGxKbllScHVTcy8rZThMVi9rWnJtUG8yb0l0cnJ2?=
 =?utf-8?B?VDBZb1ZOR3hDeHNXa3NOS1pRZTJJUHhSNno3RmdxeVA4b0NyWjJuK01XRnZC?=
 =?utf-8?B?K1I0Yk9MUDAzUVdReUlKeWpSWCtsMUM4a05iMGlIVkhWTFNJSkNvU3ZheitP?=
 =?utf-8?B?RnY5Q25JT1RtanU4bEpUMC9zbWttQzhUNExPUUhXKy8wNVV1MXhpNjJ3TFhn?=
 =?utf-8?B?WDVTeGpsNVZ2SWdYa2FtTVN4ZmFPSzBvTWh3cGo2MldnUncvRzNnUlFOZlIy?=
 =?utf-8?B?UDFxTzY4SUdveDh5U2hsTmlTZlVYTW9ndGM4YmVCQVNHLzN0YTJqOG8zekJa?=
 =?utf-8?B?RWRwTmRqenB6S0o1amg2YlhFVnRmMVpyRFlKWUp3TXZQTVdTNUFuZUYwV0JG?=
 =?utf-8?B?QUh3T25vL1ZpdTVya2hXTWl2bXRHakVEWHBqcGtrcUd2cTNZcTQ3b1ZOWmNK?=
 =?utf-8?B?WndpZXVzWXVZOGhqaGhaaStwN054a25sME9wYk4vZ2RMUlNWcDZIWUtXL0VS?=
 =?utf-8?B?dTE4Q3FNalJWc21DUDhoTStyTkhJUnZkVnlQSExKejVrdW9pYVlPL3hOUXpJ?=
 =?utf-8?B?TmR6WXBuSDc1MUZmb3oySXdFTDZNaFc4QjhoSDR2VTJyb1hJeTBlRmMyQUkz?=
 =?utf-8?B?ZzZUN1JCWENkNWFTSFNOMFdxWDBFdGU0M1hhcURwdS8xSnowNGFkelp6MW5l?=
 =?utf-8?B?VXg3a2JJSGNLQi9EMDFvdTlYTHJ4OUFWeERPcnJKbEFjN1hTY2ZLQWk3VTJV?=
 =?utf-8?B?SGprMlBGaFVycDJ0Z210cVRuUytubEV2YjJHenAxK290dWd6aHduNUNqeVdq?=
 =?utf-8?B?QkpnZ0Uyb0FQNCtlcDgxYzBVQnh1ZE9YWEpoTXBYdFBvd2RQLzM3WVFad2JC?=
 =?utf-8?B?RFpiUDgzcTBtWFJPWmI3eXROcE5sZkhHNnFvb3RheitXek9TVmd0cXlGOVp3?=
 =?utf-8?B?ZjVUMGhpdTRIdGFjNEJ6TExoK1JEZWR6dklTd0RvQlE5WWpMdlJXcGUwNVR0?=
 =?utf-8?B?bDZ1VGdFdzBKNzk0QmJqcXFnVDN5dHhxY1hKRjB2VkxaMFEvaDVMa3ZJR3RB?=
 =?utf-8?B?ei9udzdjdlVRMmI2WmtmVUpIOWJ0UFB2VG5KSURmbllrd0l5TjQvVk1TZEl4?=
 =?utf-8?B?Mk00T1lXczZTY0liU0VncTZ1M1RsUjN3RnF1ZnRDeC8vL1NFbFI1aFFxaXJr?=
 =?utf-8?B?ckJxdllLc1hlWHNLL1E0RExLRVJpSWJqVGxuUFFCS0o1N05PVEtGZi9nYncy?=
 =?utf-8?B?UGkwRlAwYnd4WmxYSC9jdDJRZUdnSzNETzFQcUNOYmpIbEtEUEdJT0RtZFBL?=
 =?utf-8?B?Y0d4S2txSWlDdFMyUDhjUzVjbGYxRVpPVklReldZV2thRFp1bVd6b0U3OVg0?=
 =?utf-8?B?KzdhMko1enpzdEh0Wk15V3UrdWpXcm1VbUpwVmNTU0JuVkFLc0g4RzhpN1Ba?=
 =?utf-8?B?WEpXRktVbTZvNE8wQnp5NkpFSUk5SXdrSkpJZXRkTnRBMWxVUFUrWUlKLzlG?=
 =?utf-8?B?Mk9EMU9GTzBIdU1YTGEwQkJBU2RwNmxaM0g2S1E1ZGxlTVNpTE55UEtscmVL?=
 =?utf-8?B?em5wVkk1VzRoZmJ6bWRGWmF4Q3o0RHc4R3pBYVBYQUxhdnExRUNnbm0xdzND?=
 =?utf-8?B?cGF0dGVsNUpPSURXVXN3LzltZTRHOWJuVmtmYmFoL1hNTVRmcEo3TlUxb1E1?=
 =?utf-8?Q?slb++vMHkOaIe6mag7Zo992pULOoOPRZVXTUvzG?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6eaae82-c639-4b17-3ee9-08d92aafa7e6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2021 19:00:17.7012
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PKkDGgVBu83l1nWHE+Gzp9dSXuz+/2zPfXYLyHHqWyW+tHqOLmR50x1JtTM50QS6e0yFMnpPiO/fg4zteUrtJCN0J/AnrkL0bCASC2hmeuw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2603
X-Proofpoint-GUID: ZUxnBFx3SwnReEKYXfy1daspdBpIJ1Aw
X-Proofpoint-ORIG-GUID: ZUxnBFx3SwnReEKYXfy1daspdBpIJ1Aw
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-08_14:2021-06-04,2021-06-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 mlxlogscore=999
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 clxscore=1011
 mlxscore=0 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104190000 definitions=main-2106080122
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-06-08 9:17 a.m., Mauro Ziliani wrote:
> Hi all.
> I'm coding my own keyboard for a touch screen device based on Qt/Qml 5.6=
.
> I'd like to implement a chinese input method.
> The keyboard is embedded in the software and it is activated only inside=
=
=20
> the software.
>=20
> The system is based on an old mix of Jethro/Krogoth
>=20
> I know there ibus framework for this, but it is not included in yocto bs=
p.
>=20
> Any idea about?

Hi Mauro,

You might have to add the meta-gnome layer or copy the recipe into your
own layer:

https://layers.openembedded.org/layerindex/recipe/112490/

Let us know how that works for you.

../Randy

>=20
> Best regards,
>  =C2=A0=C2=A0 MZ
>=20
> Sent from Mailspring=20
> <https://urldefense.com/v3/__https://getmailspring.com/__;!!AjveYdw8EvQ!=
KQT0NMi6tN3MScjQud46rQHVAeiUdZigxi-wsMs_UQvSO4ze-cH1wNBbJdQv1KsQkriUPw$>,=
=20
> the best free email app for work
> Sent from Mailspring
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
