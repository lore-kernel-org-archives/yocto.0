Return-Path: <w.egorov@phytec.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59ECEEBFD18
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 08:23:30 +0000 (UTC)
Received: from MRWPR03CU001.outbound.protection.outlook.com (MRWPR03CU001.outbound.protection.outlook.com [40.107.130.126])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.266970.1776068608367946564
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 01:23:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@phytec.de header.s=selector2 header.b=RRzw2VSk;
 spf=pass (domain: phytec.de, ip: 40.107.130.126, mailfrom: w.egorov@phytec.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oMnPILB6YkaPlO0msJrF/AMC4CyJcB+eFodMAsL+GLr+MEHcZ8BRcpHqhIvkm28EZN/7lYs5/UNc7Mew4J1c6LxNPfIEjgj96JqlMXmcvFGxsbMA92W6gMM4yR8kNVmiG8Izdcy9GtoPggcawistKcMFPpgOLr0YTD4FDpP+rOUPEH8UU7zT4hCDiD0KWSNPLB9Ua7ipXaNVBLSotrlsp3bd4qBCx6GPNR/9JMwBB4YDcT0yKkW3eZlSC/Cd+VglRYQ3hppfoTpt5tlu1nW+khyWTQTZZjlZ3JurXUdPRRBUPeKc/oJ8KfX0EXQ4ZVa9aqe58TGWKzzRvjUG68BBMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1rXB14/I0IniRzAQeDNq1C305rR4t2xPVyANLoKv+tc=;
 b=G7wv3PowKUnG4Jb41oUrn+/aTfnhLUBDCFrTyRCI1YrF3yRuZ903OaAOYh3y9YwyRYiEG3QpiA1kfpxHaqjBlG8Jfaq27gXlrxrDPIYt7RagYkotDK+8M22RahXq6lY8IfLOesU1A/FIQqREAXEMRCczBiWQU+d2uewqje5hXEhwfZVdrTIZjIjbnmkA6oq4l73qIdtWgrOlLpLmPx4xq9TTXUlpuZQ1FikW1X0ZLRhcqdxiSsByZy1x540SzLNNoeeZkP+FDsKrI3Q4/+vpA3kH9ejameMzY8UxiiOKO4MEkX7vuU/OnLbWI1/JWUmfkr2KWVULDLi1U64zfzv+uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phytec.de; dmarc=pass action=none header.from=phytec.de;
 dkim=pass header.d=phytec.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1rXB14/I0IniRzAQeDNq1C305rR4t2xPVyANLoKv+tc=;
 b=RRzw2VSk2/6K4IgI4RlB9dYc2Dv3E+ybNi8iotJTCCA5jD0RLcps2cjK4Z4d3jq019wPBRFnEAkD1WRWhKR/Ck10WE5JQItRq7tBLjNZBibR2LcCUCbOmMWyFGsc0sulcnB2fpl5n4S+T9n69CisaWI1JilAa6ggv/7hahIttQnxAdg9SDQ+wWC1XPPQvzFbirYduPeK3YYIyv2EG5WknjwrvBVWUgtGXEl/vfhpUMQZJjaecKYbQPfgKaHl5F6OQkC8p0oJnHgcJuS2phzsaaPIrHA3TzNZPXl9dHNfQGr9YmjZRuH99l35nBF2ZApa9GVwZ5lcfzis2bwoUXeFRQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=phytec.de;
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:4b3::21)
 by FRZP195MB2634.EURP195.PROD.OUTLOOK.COM (2603:10a6:d10:138::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.46; Mon, 13 Apr
 2026 08:23:23 +0000
Received: from AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::295f:9a59:b66a:621a]) by AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 ([fe80::295f:9a59:b66a:621a%6]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 08:23:23 +0000
Message-ID: <d060ac53-8cda-4014-9158-c68d87a7bad7@phytec.de>
Date: Mon, 13 Apr 2026 11:23:22 +0300
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Fetch Issue
To: yocto@lists.yoctoproject.org, jester@theyoctojester.info,
 snehadhar39@gmail.com
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
 <CAEt6Nwo_d+6yCCJgrWFuGviSkPXFr82GZ5dtwQDK5=7m2CHmFA@mail.gmail.com>
Content-Language: en-US
From: Wadim Egorov <w.egorov@phytec.de>
In-Reply-To: <CAEt6Nwo_d+6yCCJgrWFuGviSkPXFr82GZ5dtwQDK5=7m2CHmFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1P190CA0050.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::15) To AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:4b3::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4P195MB1456:EE_|FRZP195MB2634:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d78cb68-379e-4991-2357-08de9935ede3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|366016|376014|4022899009|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	7WtJgj2xLmEWj+gPTviqfgQcC9IY+s6mE2gj4iw1BlptAe/nYIkdLGelKoVKrXWy6kRxIaoFn+TMX0QzJMxfLA/hmmQERpzo6SwB9bzqE+3ijEZOPKxrpI1AGh7l5duFewB1P9quQZtvq/FiNK4l1u8WN3x6OrIHh5MEyBTU6xMvbqXQfjPn86DkCoaunLjVmcUL2V3oy5jsaEmzzgdSIaeHZJo0Iz6ChvAtmMUEp8SJvzEwWdsi3CyAi+N9kk0k9hNUFO0eCIvLdpDphaU/tomFaR4peq4Cel0HgkgugkjBFfuUYSXmYgUTB9EnS7xr9tsSuvXCK4ODxuOh4eZVQa5Nf7A+Du1RonMSobL5cJ1UsV0YBPc4UISMhKPX/oMF7e9kOczb+zMxaSBE6Pgg37qR/IWp8QQ5VIIIkNGHeJ6SUpndsstMOLshrfM4S9tMQCBXSfC5kcQaMaWshU8dHBEPOCLpeOMiGZ1KbRsg3dmspyaBcQsHFIZCUKmaT+9a88l4qa6kTN+HYs7BhJRZjtR3RAgbLxmYeFu+ass4FE6CGi4eMe6mAtZYXBn/RXp49R/LABoGQL++XQgucyIQ+10KDOcdL97GpCQBYkEjIt0v5M4WFheKo8RIxNK4+HDaZYWUNPfPJU5tc3DfdpODhx3OXJsFShn2nU1UaH8YCqa3v4+f5R67+X4YOU5c5gCF
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4P195MB1456.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(4022899009)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?4KalPKLAbQZh6oIfKHkYdI0GzndnEezep3sIgmt8XSPdXbxcHTFHiIWhRFAh?=
 =?us-ascii?Q?oQyzbIINcW4c8yGkEJ5AVoDbdm4oU3hFH1x7Zz/puH1Eom4Xofb4h48hIa+b?=
 =?us-ascii?Q?RCOfA+9MEGDkMvleF8XXLP1IMEoBCpDaBm8BaA8f5kXpFt5PRLWm35IyxCCv?=
 =?us-ascii?Q?0J2wHYGxLOhliQdZEj3Jkt8xZJxZYCP0VEQjUmvqOvBj4430lxGPdQCnOfhD?=
 =?us-ascii?Q?qslwqdKR8FUkL+qvVTn4hhRVPks77GdKEuvKHgfqyE8m1maJVlk/hgPjnLuC?=
 =?us-ascii?Q?esULJ6N4c+IzDq8O3hLOOvliVyj2ALoecD4z8UFt0MEUpT1JNg3Z58k0IqV3?=
 =?us-ascii?Q?Ei+6cOO6+Ecvv480cK4y9fZaDYHP/f9JxiVuWFSAIi6jOO+N2I/IwaL8ItYD?=
 =?us-ascii?Q?tciyTfkre0/+6iYZgl3m4iXzMTgobD99rv4idgqTji7BeYZtiZw6u9bMbBnJ?=
 =?us-ascii?Q?TWdkJxUEAMcq6rzrI/RdL0Sre6W33JaU5z0lKltLFbQSwRNV3Bcy3ucohGKa?=
 =?us-ascii?Q?X8jH7AwRg3g+uYPHqshl7ihBGSjHPL9sPp/dJ+pgF2H8O+KZ5+lB/u7WyLpg?=
 =?us-ascii?Q?iQsvD62OoDvu5fI4iDBR4HbhZZLuOV6/0FmlA2FZy9JApXLTTa0o9vdKu6My?=
 =?us-ascii?Q?ydYE0tOFMZv+XzEI0+JEvu308IacwtRSigTnioAnTZP9q1sY5fLeWXDHyhZ3?=
 =?us-ascii?Q?m/0jgQQAHNcyGk9w5KSxl6y+4FA7G+Ix9+ERWfPEA/O/VbMmuxvjdSgVAD+2?=
 =?us-ascii?Q?8eWRCKFgVGela1Pa/yZSTkBoaEht2lhoSvt/oE3yvLkKciOGu0T1JPoqZDEh?=
 =?us-ascii?Q?UcrM3HktdmCm7+b23s1n755qAG58e8NEigR+uOnHoT1Q03+xe8j2K1qlv8Pp?=
 =?us-ascii?Q?29bSAS6OZOmVV5eu7BPglVlUmSdOIxte6kJygCcDliq270YqITvoxCkLpta1?=
 =?us-ascii?Q?/FpHkC5rz7G0P5DCVtpOly9JxqnA4AqiKzcVNS2TJXup1iyn1NRvkQxcX3oE?=
 =?us-ascii?Q?WmKkHC1UQAfaNv4cv9y1fJtJgwGqJ8307v+xOKUnjHsDohZDJnyDsxyf/PT+?=
 =?us-ascii?Q?wWvYtLJxxVTlzqlaUH10t3REN7tj86f2ksUhl0Gdt7hA/QDiNFPk+xjNVqD9?=
 =?us-ascii?Q?0jQa+0893oHhRtaw6rJbssTk6vFLlBs7Bz2hb5jsVrNWNfFQwKQU9xURACXg?=
 =?us-ascii?Q?NnypfkyrU4sgN7yp43aHGlb/10YsKyYmOGCmGx6U2jDTkvyKM+ko/BcrJNAw?=
 =?us-ascii?Q?MEwXP6tZTlbHdCkI7L7akt+mZir3cMTvsTrs2bQjaSesEAAZTZwF0LxW/LI7?=
 =?us-ascii?Q?nBpnnY65Mr+P69dNxX1ypghha2DzXSXMQK43EeH3zNtbi2B5kJR8B8OXb6oE?=
 =?us-ascii?Q?gJY+v3FZlH7zZMu/JYiU+FVg1/x62ckZsz0PA/MWBO7zC5AeTFLHkZsj0Xji?=
 =?us-ascii?Q?Z9XDACoI6tls0duHXVS4/ZFi8sEouzxrQKOnXFSAqsJ0tBH00FdjYHMb40+Q?=
 =?us-ascii?Q?685SWHS6VkaQO1DPysx7dIoEjj1S+7hjszEPku1VcciM4NIAuQKzzWVKXsKM?=
 =?us-ascii?Q?I4Lng/c9q0SLLWyE/x6l1RY3gDcOVNpmmgRVb2xUmsN7riyp6lvofwH5jI6b?=
 =?us-ascii?Q?dd1vuQYZ5Ztng2xKRzqqZnZ6QaU9vaiVrwdmM2jDEEsbEIKDbkKHdMMRTBqw?=
 =?us-ascii?Q?ehGtZl9UC/OWv5EGfYOq1kGPOPnSoLP7snT5MBv+S1lqSP6cS65cxuQxg39M?=
 =?us-ascii?Q?STOJZ2jJMg=3D=3D?=
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d78cb68-379e-4991-2357-08de9935ede3
X-MS-Exchange-CrossTenant-AuthSource: AS4P195MB1456.EURP195.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 08:23:23.7968
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8PXBmERkpMm7GCGc5MP6vI5tkxJ6DA9k3hWGeEampUEVyDLH0MSR11hLs+ZcEbF/p1hXaQJtDt/27ZCM+ApD6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FRZP195MB2634
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 08:23:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66406



On 4/13/26 8:11 AM, Josef Holzmayr via lists.yoctoproject.org wrote:
> Hi,
>=20
> Due to a load of load by bots/scrapers, the git:// protocol endpoints
> had to (finally) be deprecated a few days ago. Please move your URLs
> to https://git.yoctoproject.org, then things should be fine. Please
> let us know if not.

Would be nice to announce such changes. But maybe I missed it


>=20
> Greetz,
> Josef
>=20
> On Sun, Apr 12, 2026 at 9:45=E2=80=AFPM sneha Dhar via lists.yoctoproject=
.org
> <snehadhar39=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>> Hi
>>
>> Is anyone else experiencing issues accessing git.yoctoproject.org? We ar=
e seeing fetch failures for meta-intel, poky, etc.
>> Thanks.
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#66404): https://lists.yoctoproject.org/g/yocto/messa=
ge/66404
>> Mute This Topic: https://lists.yoctoproject.org/mt/118793581/3616782
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [w.egorov@phyt=
ec.de]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


