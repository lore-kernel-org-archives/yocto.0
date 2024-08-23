Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03AB2C52D7C
	for <webhook@archiver.kernel.org>; Fri, 23 Aug 2024 09:49:01 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.69])
 by mx.groups.io with SMTP id smtpd.web11.12638.1724406536313194421
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Aug 2024 02:48:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=CCz7DRb6;
 spf=pass (domain: cherry.de, ip: 40.107.104.69, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YvUQUHDqKcFNpLEdVdzKwvi38eBQ+mFzIp8FwDxSSOA6Bb1Ubrwh89Iv6hjuEzrwFnqavm2Um/OS4xKl35dexUG38dVxqnPjWSDnlXiIG8dk/VabIIQ4hQ8693IgcmXrZyv0fcuLmdPi6jojDK2r3vsNMfL9NiK/mxZVqtJ1iiy08khtIInU6QaFhml+AilZH1/FtpQM1SUNOk6EDfQvE7Vn53qXXmIPHHQVDpQsIwk34EnAtoqhoBuWsFrasnZRp9qmh9Dwkz27OXJo6K/wbWmsjS7lmblQZ99sKtSH/DB6yLjY2BVwi76vabbYrER7H90SXEn+CepF6LNS+Xv1Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rtToVrbsm4AiA7RbIhYPUwzmhnrvHlvMiiyVAxzGqQs=;
 b=wKTcLf3oYzvUOa5kCdD5qvU9abM4zEXkKXUVWtrQnQgWFGw9hE3XLFnA+b//JKBNF6M4O+oeYy9L8Taca4oAzQ5R5nuc6+Apu8lyOYahgs6YHnXh2JitOb760kh5ukr2kE9sObEGHoIDWRNDW50DlNXR2jF0mEqyAbQz8i2Rl2E+zV8MX3o/W5I6nDCnTAD3leQD0T5I1K0IKpcG+b2YH+ylbXrcoRLgpmCwFEUR2IFACZ1p6hwlFpWzrGFojtmEYF46IOpfwwdWPrvOwrE58sK3T+RbeG9uvm3wLXZqtyut6mRbbxPd3fCIX/r162HoU9BLnXMwOZRknUwIZh9WCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rtToVrbsm4AiA7RbIhYPUwzmhnrvHlvMiiyVAxzGqQs=;
 b=CCz7DRb6Gy9BHgHuxXiIBVubPM8GgteSmU/A14BfgPZUZsuOi+qtivlhtZX5fdDbaaOTLiLRDyjUYa2UAt+NPZa1VqAyunE2Q57/TvA0VaYU2lWb7GJvXZwSU9070yAbwGYEbj/+bnZO9/UH7yXoDrIhe4GWmamZZM1GdUTf9lI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB9PR04MB8412.eurprd04.prod.outlook.com (2603:10a6:10:24d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.18; Fri, 23 Aug
 2024 09:48:52 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7875.019; Fri, 23 Aug 2024
 09:48:52 +0000
Message-ID: <544750db-4a30-4da1-917e-66c604c234b4@cherry.de>
Date: Fri, 23 Aug 2024 11:48:51 +0200
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=5Byocto=5D_Using_python3-cantools_in_bb_file_PP_Ph?=
 =?UTF-8?B?aWwgUGhpbCDuhJkgUmVwbHkg7oSbIFJlcGx5IGFsbCDug6cgRm9yd2FyZCDugZ8g?=
 =?UTF-8?Q?=EE=AC=98_To=3A_yocto=40lists=2Eyoctoproject=2Eorg_Fri_8/23/2024_?=
 =?UTF-8?Q?8=3A41_AM_Greetings=2C_I=27m_trying_to_get_use_python3_with_canto?=
 =?UTF-8?Q?ols_in_a_bitbake_recipe=2E_Usually_this_is_installed_via_pip?=
To: yocto@lists.yoctoproject.org, heidegg@hotmail.com
References: <DS0PR22MB405156A6BF1C3B41187EBB0DAA882@DS0PR22MB4051.namprd22.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <DS0PR22MB405156A6BF1C3B41187EBB0DAA882@DS0PR22MB4051.namprd22.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0069.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:26::10) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB9PR04MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: fae610f5-49d2-42ee-edeb-08dcc358cc15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|220923002;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZjlQc1RyTzhybHRIdjBHeWlqY3hzenJaZjJNWXBkT2llMjZYQW4zdDE0ck1H?=
 =?utf-8?B?UVJQMHZYRjlHclpMekN4THJJTEJldFpmL0xmazFjamRzY1l0SU90aTBCK0ps?=
 =?utf-8?B?Tk40MnFlaDBoS1Y4UkN0ZVdYWmdPanNkdDhGdlp1MFl6UCt3ZFQ2M1Y0WFZP?=
 =?utf-8?B?cGhPakdTbW42NmZpazlmNE1vc3lJTWJlTkRSeHNMcHM2THl2U2k0RXgxRk9z?=
 =?utf-8?B?aDJYK3owaHVqY1ZvYzk5V3BzNWhjai96L0dTbytqRmZMa0c2bUpBMzJhS1Vn?=
 =?utf-8?B?Zkl3SUJEeEJKVGNNSFpMcWQwU2hJYzIzalYzNWhZUXBaaVUrbllGQlhUNkQz?=
 =?utf-8?B?MTRWcS9yeXFJbDJzUTB0R082Y3NVT3FUNWRCVjU4Vm1VSjZma0RLTjAxa1FQ?=
 =?utf-8?B?K2ZUVlV3aDZiZXdtUGxkcHhGZkIzODl5cEJJTWVOa2tqOExmd1A0OGRFWjhM?=
 =?utf-8?B?Nkk2VWxESTBET2NVUEtRNDg3cWV0RXFxODI3aFdaajNDODBqaTJXOVUvRUhl?=
 =?utf-8?B?OVNsL3ZYbjM5QUw1R1g3QzRrSEZEcytHTDl2a0VoMFVEWjVUbVM0eDBZblJx?=
 =?utf-8?B?MnJPdEppQXArMVpvdnJXL3VzNG8zdnVtMmRUZGUwelRGaHJSL0t3YzdpOEZD?=
 =?utf-8?B?eWpmNy9kNlduOWM3cTlSVkFXbXFyVnNFNElTTnVOSTJLY1BTMFpiVFJ1UUZ2?=
 =?utf-8?B?ME9iUEkwZnFLd3hZRHNzR0wzTmZwckNoU1h4VmRPYVFab0tydytWN3NvSVV1?=
 =?utf-8?B?YURyRExnQTI3KzRNNXZobE82WWdjZGszRUVkTnpmSVFhSk1Xd3JOSzNiMjdN?=
 =?utf-8?B?NWorSHYzYitlSHhSWXFmRG50V2VPMWp5SEp0NklLOU1LL1Y4UzRFMVNFUGlF?=
 =?utf-8?B?Y3pBRjJyNU5zaGdPdXVKcWNheFQzNVBIMlpTNDg1Q0tzdU5KcHdvbVdSSlUz?=
 =?utf-8?B?ckZpaGlrSzYyL0ttYTVVcDRpUytkd09EMi9LRXdmVWF5U1RMR1RMbHBmQWk5?=
 =?utf-8?B?cjdKaThsejNCS0IySHdsWllMbW9WNzVHQi9nSmZlb2FxQ2JWWktrZjdsYmJz?=
 =?utf-8?B?U0hjdHR0VzJuVVJCZ0Q1Z1VYdldYcmNabUF0K1F5R244RFpiN0F5KzIySlY3?=
 =?utf-8?B?NlN1KzVlRXB2bGdKbEkvRXE4dWRUcVpyV2NBSXVpdElNazBLWjQ2aU1UZHhC?=
 =?utf-8?B?ZkQ3ZTNKQlBJZCtFQkR6M3pNSEtCcGdaaGhRc0pFRHBjK0VhTjJPNHRHbWdG?=
 =?utf-8?B?MmQ5d3AzMStQUDJpNTBwL0d0WVRGR29rWDJtbVRINmhGOFVMNVdReWJDMlBL?=
 =?utf-8?B?dksrMExuNGx0ejNOeU5wa0VGRDJNWUxlNEtGQzF5TjRrcjNtUnZCendWUmdq?=
 =?utf-8?B?L2E4cU0zcTdaYThYVTdMdDREdXErZmZCZWpHYy9vaHRKaHZ1MmpLbFQwWkNx?=
 =?utf-8?B?bzJkK0pEYnVVT01PYzg1bU1CblZmdEFURnI3bHNWdVF6dlpQazZMZTZ6SHhO?=
 =?utf-8?B?VG1vbUExUWtxOE95bGxLZTZQREhyaTF1eVJDZUpGK09ybTFzak9NU01jTGQv?=
 =?utf-8?B?THVLZlhCOUlDVDBURElsNG53YWVBaGQwOGxsa3Flczc2VzRtNXc0Z2lFSEdk?=
 =?utf-8?B?Yks2ZDVPTmlneis1aFZsWDZvMHpKeUgzZWJscHFmRkpNdENVSHBlTkwyOU1B?=
 =?utf-8?B?cmdObzdKS25YdDY4VnJ5SnpsbU5IbDZCRk1BY2ZGZUhtV3JhTHlNdmJyeHZk?=
 =?utf-8?B?ODVHTTljbjJGaktRZ1A0QklrL0I1cno3MVJlNktneVNZMXlsU1ZLMkRnQUNM?=
 =?utf-8?B?UUc3c2RHWUF1NVBoRlBHLzAxcDR0SFpsaDJBOFhLTVkweTc4ZkRjTnFsQ0cr?=
 =?utf-8?Q?sE813+dskfi/H?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(220923002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TG9CQ1JNV0Ruc2Y4dmppN3ErYW5UanRTTG15S1ZON2F3L1dIazhFQ21KNzRS?=
 =?utf-8?B?aUttRndoajRnN01PZHVJY2orakMydzNYSktHYXE2NG5tUTNYSm1MRWxudE9P?=
 =?utf-8?B?c2NLRnJUZ0VCZkdNemg5Wk0vTUF3OUx5U0lOZHI2V0t1WlhvZGw1U21ZRUNz?=
 =?utf-8?B?NFNETG9KZUFUMlBaY0l1bGhxVVJxb1dWblhTbzU1QThNVUhOY2ROUUJ5Ri9Z?=
 =?utf-8?B?Ri9VcER1L0JEemp5Ny9LRlJLYldmT29YVm9LS1BHZEdBZDVFbUt6aUV3QTF5?=
 =?utf-8?B?bW96N0dwTnZMTzF1QkdZQUV3bWxGR1hxbVVhUmxiYUgzTVhJbEYveWh1N3lq?=
 =?utf-8?B?MmNPVWV2dUlEU1k4TTA2TWl4ZlZ5S0RHOUlEby9EamxtWGR6VmtrM3MzbHJN?=
 =?utf-8?B?ZGhDWjkweDFXbnIrT3BmZ1Ftc213VUh2THlNUkxVUndIdzhwcmhiT0JhS3Yz?=
 =?utf-8?B?N0ZjRitVZ1RRU3pTSmFQTU44clcrU1Nha0xlbU1wVWFPVlBjWDR0SHU1ZENz?=
 =?utf-8?B?dEVJbjBFMXZxdmdWcDV2YXpiQkVrMllIaFVRYnAyVVJhL2tJaEkrSUV5ejI5?=
 =?utf-8?B?VWl1OHBlemVWd09kV2dHZlQ3c2h5Tm5GVUNRWGpHVzFOY0lLVTY1MjI3Z2ZD?=
 =?utf-8?B?YkhTdVVOdENOcGc0UGI1cWpEOHRWZkVLOUowK0hWMU9ZSThLUDNMWXZicjk5?=
 =?utf-8?B?eVZ5TjkvNW9PU2NhRlVjUUdEUjhSRkFTTHZ3UHlMR3hWMXU1UHRJaWl3Qy9S?=
 =?utf-8?B?KzZ6UFhCMkQxaDdtZlBlN0NzOHNCWGNDNDN5RUJFN3JxRk0zMlRra1JITkcy?=
 =?utf-8?B?Q0lFQkUzYzQ1WC9MaGdGeHo5WGw2OTNOY0RQSHl6dXp5WFF4dHhpL1p0M05N?=
 =?utf-8?B?bk9XaExHLy9tS2UyY1dqdGkyR1p5K3pmQjJOUUZSa0xYSENHT1YyZFlabWto?=
 =?utf-8?B?OXJkSCtVZktMTEN3ZHZaZ01jOGxtN2t5bWhQOHZpNUdLUEJhcHpFaGZHZHFl?=
 =?utf-8?B?engrMUNpUkJVWTNremFiaGlOZjFKVUdDL1FiUkh3WjVPUldzUnh6NEcyOUNj?=
 =?utf-8?B?S3h0ZSt6ejloelZiejdRcWxwcXFJR3JLSVVZT3NvQVhZMSt2dk1abDltOXRB?=
 =?utf-8?B?Y0hJVDlEUWVISytNMkd6RlNDR1BIYlBTUnlGd25TcHZ6bkw2Vitobm5tYmdN?=
 =?utf-8?B?MTNNME1DZHoxL0FJZXY0TzFtc3RiT0RvQ0xJUWZSaHRraHFzNEx1NGNzK2NN?=
 =?utf-8?B?LzZlMXYvWlpqdzVXQi9ZVlBtWVNacmtKOUx2WXhpVjJ5T2xuY1dPOGZCR1VJ?=
 =?utf-8?B?QXd3VDgyQ2tST1E5aXJEUkdWSFZJbURaTFA0b0tzaytqcHM1bm5MUUVGbVFP?=
 =?utf-8?B?aktqdFJhT3RFbHR2TGw4Rms2cnBlWmlUWGRWUHphZE5PK3NYekEvZ2p3ZDk3?=
 =?utf-8?B?Qml1YUdOWEdodGxPV09DVEl6QWtsb1k3aHhLRXVNTzBQMXNCVktqZmUyandS?=
 =?utf-8?B?bzBYUktlNmNjdHppUTIvYVhlOWdwNXZ4OHp4V05WZVJzMG02T1MyTDNiK0tx?=
 =?utf-8?B?Uk84WjZJLzZGbFRqNXRlMkZGSGZIREJZZmhNWW9LSkwyRG5qbUkrUzh6TVox?=
 =?utf-8?B?RDZrdEN2bjY1aTdNMnEzT1RWNmNMTDlqd3BiNk5KdUdEV2l3RFpYb3FQTHpL?=
 =?utf-8?B?b25DMjRBSnZKTTRXNGQyMFVJZHRtS25GSzZNcXE1S0F0OVplOWxPaW5OQjA2?=
 =?utf-8?B?cGhOQ0JwYzBWM2lxQ0lRVXAzc29HeEFYMTY5OEJ5aG50Uk5QV3BYRlNBbERz?=
 =?utf-8?B?anJnSXR6blVEQnZhUG4ra2R4aVo5Uy8vSUUwb0p6UUc3ZE5TOVNmRVVZYzd5?=
 =?utf-8?B?UlVNOVhWV0xMUkFIUHFZc3NzalZwT1IxaXppWUhYR3ptTGRjc2NKd2tZajI5?=
 =?utf-8?B?ZENaVGp0QURnN0QwSXVFY0ZEMDJuMGE0aDBzSWRTQWx1dVNuWkZZb1hTa0hK?=
 =?utf-8?B?NDhaVkg4YktzeGh4OXJ5WUdJU0xGVUFYb3p5Y2JpZXQ2NDFaK3l3ZG5qa2RF?=
 =?utf-8?B?T3JEQ0Z5TWhYRzhwTitZMWtWblF6OXF6Q2pXZWdac0JuYWd5Q1cveDVKMzY5?=
 =?utf-8?B?SWVCZkVoWE5rOWU0d1FKaDhGa1B6SWtIbVRaY0JFZ3hrRGVtQU43cWlZRUdj?=
 =?utf-8?Q?wGvFNgaDeOAIGmmpi2VwZQY=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: fae610f5-49d2-42ee-edeb-08dcc358cc15
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2024 09:48:52.9247
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +vHDzZWcZrLk3ZL0s5GRIE4lVKQxlI9DDLwqgSQXccNLnkmpFjHX8lFFuo7btr/ofN1RYgb/mgfKiG7cvphoIZrNm7fUhEc0RvUDWN7rVVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8412
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Aug 2024 09:49:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63737

Hi Phil,

On 8/23/24 10:58 AM, Phil Phil via lists.yoctoproject.org wrote:
> You don't often get email from heidegg=hotmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Greetings,
> 
> I'm trying to get use python3 with cantools in a bitbake recipe.
> 
> Usually this is installed via pip.
> python3 -m pip install cantools
> I'm trying to use it in a bb recipe in the following way:
> 
> 
> BB recipe:
> 
> inherit python3native
> DEPENDS += "python3-pip python3-cantools"

python3-cantools-native if you want to run things during the build process.

Cheers,
Quentin

