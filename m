Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E59DD5CCB8
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 15:01:29 +0000 (UTC)
Received: from DUZPR83CU001.outbound.protection.outlook.com (DUZPR83CU001.outbound.protection.outlook.com [52.101.67.38])
 by mx.groups.io with SMTP id smtpd.web11.16995.1730300485054765263
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 08:01:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=iM+Rym8T;
 spf=pass (domain: cherry.de, ip: 52.101.67.38, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eZyBBCjBTpou7XwpcB0fIi1Y1lGASqokRwhqjHb7TKKNzYJErvwRTlcm6bFNIPJdSZW39C248pZsFtTvK2KDIWA3f4hc2c11ieMDzK5DKY6s0Nj9lft2+/jZDzLjxKLPX3nou2ioBpc+S8Q80uErlBf4wYLYehXyclKiwkA1vWFJD+BZ42XzWxSmQzpBcbhWVWtjnR8DZXQzfYF/Xu8JdGMAp0YGbugF3b01jtxTzoomSZ/YBmhczBZEpDzF2zHvEsV+UqnZZkUVNYGeJuA749bwAsaN7/RaI0PZQtKa78BOAxVmWqroZ0HvAEMXjqfSOAKUC06L9syUA6HzjjW0QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+sAlPCLxVgPF+VKT3Yvz7qBoZbeWr5MAbfTe7PoCmQ=;
 b=BWQxIcRxS1G34m4zlN2+Kxrz0Ea2FER7fDM6dbKwLTUBxc5A/wVmjlk3HO49W5uLOxxqbiMSP+qH0u/uQkw2Kei4l6AYSGT3T6fG8JMiI0ebqgrZLzy3UXUMbcNw5w63q2l2/OoNdbBVFmVjSwqe7bGu9UIrm9MAioyFTpDoUbUX57CG8vVP/aiP9CWTL4kRkFoC1+2p18DBkMjj4rR4ZnuJNy0cE/6EVqp66kq5ZmjrKGzUE/rZa1vO6epi3vK17cPJXaGowESpwVJSQ9zOVPzPzh4NCsKDKKs4LhKEyoCEYPZsX373r3QyMmdUoENNhbk8Yo5ttzIS5QwQSioz/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+sAlPCLxVgPF+VKT3Yvz7qBoZbeWr5MAbfTe7PoCmQ=;
 b=iM+Rym8TMYJn1WXXIUm7IPVc4Qn9wigb7DMHYcO149cYMAs17i1yIGFKP4bcjTsUijce4ne28nsXyvFT+uVMKCiRD9Hc/QSDiLyNlcus6TTsu2yjpwX68xw7j4bVuEgASs2SqR2OvhPW6CaNJ4Vii0uV63SlFamfKEDUUB2n2C0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB9PR04MB8378.eurprd04.prod.outlook.com (2603:10a6:10:25f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 15:01:21 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 15:01:21 +0000
Message-ID: <b91237f1-539c-42cd-8223-5ac4ef471f9b@cherry.de>
Date: Wed, 30 Oct 2024 16:01:20 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Out-of-tree Kernel Modules
To: yishai1999@gmail.com, yocto@lists.yoctoproject.org
References: <7affdd4a-b9f2-4177-b336-100b0e475337@cherry.de>
 <21197.1730300069131332219@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <21197.1730300069131332219@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0043.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::28) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB9PR04MB8378:EE_
X-MS-Office365-Filtering-Correlation-Id: 34b4c3f8-fcfc-45d6-8d72-08dcf8f3b736
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|10070799003|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?STZqdnhZa3hlaVZnaHoyMS9CVEFWT0Rudm9TckhPRDF4SUF1ekhLZDlxRWJ5?=
 =?utf-8?B?dmhpV0NKTStQKzdSVThoZ05HUnJFQkg4YWtWSFpaRXdEYzY2Rmo0SndNZHND?=
 =?utf-8?B?QkVyWkRmL3RTaGJqcXB0bXlQZ3ZnS2pab1UvNnM0M1RibUNHZ3R3blBuVjZX?=
 =?utf-8?B?d2tkelpWRXRUUmh4aHRHRVNlT2lNQS9wbmVXcDZlcnUza3lvcGxNTUtnbkZJ?=
 =?utf-8?B?OWp5WFE1U294Y21jdEdEeStLUkpqMDJJYm9uMW1kM1VNaTh3bGZCVUV5aEt5?=
 =?utf-8?B?UW9qanJvbkVtRHV5U3JnSU8yOXZ0TWMrMkdnWkhmbHA3K1lWdTg4djVTSlMy?=
 =?utf-8?B?TGdBenJXbm0wVDZLZldrV2hMTGFCK2w0UERsZ3NDTVNuc1o1aVhrUE1LNHBV?=
 =?utf-8?B?VUsrQ3g2TFRiNDVDTkxkOW40VC9wZ0dLUzRjRGV1Ukcza1I4NlNmRkRwT2la?=
 =?utf-8?B?dnZ5bzhIQXV3NE4wTUVIOW95MnVpWTNDdE9TWWRmdENEMExBcU82VHp6OEFy?=
 =?utf-8?B?blV4T0d5Y09LRlF0UUg5cmxkS3JOaTRyclN6WXpXek84QlpiRGFROWNMblNX?=
 =?utf-8?B?TXN4MFFiSjJHd3E4WWFsb2UwaWgvc3FGc1YzSEprdmIzYm1YT2Z2RHllVCt4?=
 =?utf-8?B?dURCVFYvQnlsd3QzOURmamJQNmlVZ2VtaC9FODhsOCtUa1pwS0k0MTd3Y0Fa?=
 =?utf-8?B?YTlJRGZ1K2NOblF0R1hWeWtPaGZvZVJvUndoVjRKY29tOVg5TFhHSW44R3B6?=
 =?utf-8?B?YVNxelQ2dTJoNU5JSnN4Qm5UQ3dwY1NrRnNoZmxYdTBxUFZxRGVkdWNUU05H?=
 =?utf-8?B?cEtJODdORHR4UU9qVzVFVEVmNzZsNkxFYmkyMFdJenhuUitrVnE2NUhRcTJ1?=
 =?utf-8?B?TldsS2dxYlVxK2NxMWttN1lXbkw5SHRKdjVsVHA5eWgwbEN3dVpPcU83N2JT?=
 =?utf-8?B?QjFYRFRHUmwveWs3WWhCNEpqbjNZYzRWNDJXNzRSaEI2MERla0MxS0V1Zmhl?=
 =?utf-8?B?NlQ5cml3YnRlbmt2QkZNcXA5VlBsbXBtTlVUcGFQbnlZNExWN2M5ODhKcTg1?=
 =?utf-8?B?L01MYUJ5WkE3WVhRa3czYnF1MFdGQmZHYytibGsxNVJ3SEIrbnRsb1NNWDY3?=
 =?utf-8?B?Q0xTblczd3NPbE9NZkY2QWJWWmdxNlgycERVTXdZVldaMFlTNDJJWEZuU1I2?=
 =?utf-8?B?SGk0Z0ZyUGwwN0dxYlhLSVpHdlY1MVMwenIyYmJnYUFBUDQ4OFpxTURJZWJW?=
 =?utf-8?B?cmVMOTlRaUkraEt0ZC9SdVNrWHR6U0ZaK0d6TlMrWXNOVElIdWE1SjJJY21R?=
 =?utf-8?B?SXZuSHFHbW9nMVRtTWp3a2RmUTFoRjNLVmI1UVZoRUtZTWI1eDM4cWNMVER0?=
 =?utf-8?B?em9GUDdJcklvTEwrc2JiWGphQUYvZzk1cXVZb3ZkVnJLZFZsTlZGSzB4RDBu?=
 =?utf-8?B?WmY2cEJvN0h3UlNydWhlSGtDSlhTaG03MHgrQlQ1RllBcjFDeGtSeFpyZ3E3?=
 =?utf-8?B?TXNkUy8rT0kyVEQwZHhlWEJRTVRhTDcreERubTAxdXZFT3RrUEN0Rk5lTGp0?=
 =?utf-8?B?cmExNVZyOGl4RDd6RFErMGxZTTA3cmt2ZTF5ajV0azMrcVdGRnUvTXBBVmVD?=
 =?utf-8?B?dTlJaXgrSjRIQTJtOC96aFBHbVc0Q0RmK1l5K3VkdzVXUmwxUHlLaDVKSnM2?=
 =?utf-8?B?aXV4UWVvbys1b1cvT0ZkTksvZFp2ODh1QjlsZC9uUVVmZXFDN1dWVVVSNlRo?=
 =?utf-8?Q?KInFi4I5XqJLJlOoik6fewlBB+62+0JkRrhFTEJ?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(10070799003)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UnFkeERheUFnWCtUcmlLS0RpRGlTSmJmMmt1N3U4disyT20xb3ZEWU5uN05I?=
 =?utf-8?B?RGkvcjRBbURUbEZxblhYbVU3cUVDYm1KMXBDWXkyWVhWSkVyY0p5UjJqK2V2?=
 =?utf-8?B?MDd4dG1KQng3d3NnZlQ1WW1TVEJoV3JmWWhHSjNEWWpDVHF3SVV2cG9vK2Qz?=
 =?utf-8?B?TFd4ZzlNRTlINGs3aVcrd1ZUNlRwS3BVbmlUQ21GU0hwMXRmSVNjNWp0U0k3?=
 =?utf-8?B?WmhraU1Pb1B4VU8xb21qL0Jwbno3djI3d05oa1orNFYxc3pEMGZKelM2YlJh?=
 =?utf-8?B?Y1hTT0lsYlNKdmRvQi9SUDB4djJlZVA5enIyTEI0dGRQdHUyOWxobk5tV2Nx?=
 =?utf-8?B?cEZGRk1jWDBKcHg0K1dNeVVSQk4xeW5sNzR4MnR5VlRtNno1VFRNQTRQaGg4?=
 =?utf-8?B?V0c2NTJVVExiWkdRQXJCTkFNc1BVV1V2N005WmJ3N1I3aGJtRHpSTTVoeFVO?=
 =?utf-8?B?c255dUVPUTZlUW9ITnkyNFBUK1lORi9VZ1hGRktYOUs0VmJuKzhaNDhIcEx4?=
 =?utf-8?B?QS9FV2NuL0VQTVdTZk8wTUlhUmxGQTVMSFE5WHc5OFAwOHEyc0ZZbnB0ZlFG?=
 =?utf-8?B?Y0QwaFdLVU9WdlBTSllOOER5bEIzdmttWGxMTk5Rc3BsZ24xOE5oVDJ3UGx4?=
 =?utf-8?B?YWMvaFU2c2xocVY3QU52NmZkOEEvU2ZHM21INDY0SitXd25PNHBrMmVERmZz?=
 =?utf-8?B?WWh4ZHphZDBEWHE1ZGRXbGNFVWdqQUxSeGFnT0pxYnJ1cUorWG5QSER4ZUUz?=
 =?utf-8?B?MUdhNG15M0RyVUJsWkU5TnBkRk9EaDJzY2ZoaHB5NDZoTU5CNGEyM2tIcWV0?=
 =?utf-8?B?Y3RmalJpVGU1SW9lZTY3aDc5L3grM25HYjNlZUFNa2NQWlA4RTN0QmNqcjVv?=
 =?utf-8?B?NUJQSVVBSjN6aHJZVi94aWZ1YzJGckI3MGdFc0FqcURUUUVBZ21BTHdkN0dL?=
 =?utf-8?B?dW5DZWFsdVN2VkpNWWZQcFVvRXpPaVo4WGRYL3kzMURqSDM1VktkT3BqWUJr?=
 =?utf-8?B?MEUzazFBM0VGRjFhSlRGbjJNUFVHSk55SVVEa3c4S1pEMlhPL1cxYlVnRlJY?=
 =?utf-8?B?aDZMM2FZanJXRXFkSHNFM0dwdEdxdzhZeFJKc0hxdW5oRTFuUTh0dFNhUVFm?=
 =?utf-8?B?UEpuemNpamhPdkV6TEdyS2I5eW9qOFFMNXc3aUYvWVdsUERUaHZPNWRucko4?=
 =?utf-8?B?VVNtbExzbVFoa256UkNHVERqQTBNYzRWOEhkaEFJMUE2TGprOEFGb0lSeHF1?=
 =?utf-8?B?dnZ4YnlRb0o5bS9ZZEZEa1FFbnQ5aUNyS29Bbk91WHViK2FhUk9lSDFHV2NQ?=
 =?utf-8?B?VTJUeVZQZk9ad3k1ZzNLaDFJbzBSOVZkZmJBWTA4aWhvSE16a0dFSVIwYXR1?=
 =?utf-8?B?Y2NEaE5VdHFnWjltRWxwbWFPWEhGZTEwNjhJOWJKVVpKVElvYU83bVkxMVVW?=
 =?utf-8?B?R2V6TjR4QXZ2Y0hCN1J3Zkt5QzFPSnh3anBkdHAzdkdyV0txUCtQRkVJSjV1?=
 =?utf-8?B?Y3dCQjRxVDIxNjN6YlBzUnhPSXB5Y2JCbG8yQUt6a0R4TGdtbUZ2T3p1SGNa?=
 =?utf-8?B?dWRxbVpkdnl4K2VYTWxMYktvSDNLWWkrTHdleWZqejJwc2E5Mm9hazcweXZp?=
 =?utf-8?B?TVV2dUIrQi8xRXEzWUIybW1lSFUyR3crS29KTWpvd01waWFUY2pPK3hhZzdn?=
 =?utf-8?B?MGpJWDB0U0drVU9zNDg0b3UrQS9rR2l5eHo0a0tIMG5sMWlMYkRNamdSNlVV?=
 =?utf-8?B?V25aZm85Q1lXeDViamFjTGt4RllCVEo1bm9lMUR6UVhGVENITW80eXI2Uy9z?=
 =?utf-8?B?YStZRlIxNmZmWEpqMGFLSTNWZUtBalFtb29DN3ZoWFR3d21TN24yc2d4UWFk?=
 =?utf-8?B?WW44emdpZWU4YksxQVViU3k0b0xhdG4zU2hkMEpnb3NnMmtKQjBlU3dNMFo2?=
 =?utf-8?B?clY2a1pRWk95R2Q1VWdrdTRRQlhza1l3VCs1N1QxMHdTcUhqMGpDTVA5clNN?=
 =?utf-8?B?RjJRWmFOYis2YTJybFdsaHRkZnp4Rk9TVm9iZE1wZXlMcUJjRW1FVFIvY28w?=
 =?utf-8?B?OExxNnBRRDRyTTJRWjByTGZJaUtORGlrbTdYUkxzRlZHeUlXUnBHeUM0dmdl?=
 =?utf-8?B?Q24wb2o0UnpETXBOY0FIRkEyVTh2OVRkWlhFL1dYb2k5UmFjdnM1YmE0SmtR?=
 =?utf-8?Q?3nzfCCIaRd9nsk5UucEzTv4=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 34b4c3f8-fcfc-45d6-8d72-08dcf8f3b736
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 15:01:21.6391
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X7GscPY/BXdb0qjQU7/4CeDRO55OHmLAPdtG4EN2kpSDNHMKX2kbEjI7YE5DMY42ri/J1s5nIOjp51n2FVMmJIMrtmFwqHv/apab8eIR2kE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8378
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 15:01:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64185

Hi Yishai,

On 10/30/24 3:54 PM, Yishai Jaffe via Lists.Yoctoproject.Org wrote:
> You don't often get email from yishai1999=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Thanks Quentin,
> Changing the include to uapi/linux/sched/types.h solved the issue.
> But just so I'm clear on this - Can you explain when I should use uapi headers vs when to use the regular linux/xxx headers?
> 

You should include the header where the structure is defined.

The "issue" in Yocto is that the headers aren't coming from your kernel 
sources but from a generic linux kernel header recipe, and this is made 
on purpose. The generic linux kernel header recipe is at 6.6 in 
Scarthgap. Styhead has 6.10. The structure is defined in a different 
header in 6.6 and in 6.7+ (including 6.10), so your out-of-tree module 
needs the path from 6.6 in order to compile in Scarthgap, but will need 
another path from 6.7+ in order to compile in Styhead.

You can handle that via #if in your code, if you need the exact same 
source code to build on different Yocto/kernel versions. That is the 
cross to bear when one develops out of tree kernel modules sadly.

Cheers,
Quentin

