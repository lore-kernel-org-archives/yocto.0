Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BC7FD2AB0D
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 09:32:51 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.14769.1730193143329995720
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 02:12:23 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=1032c8e710=bin.lan.cn@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49T5PjRE003149;
	Tue, 29 Oct 2024 09:12:22 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 42gnn0ucwn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Oct 2024 09:12:21 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XqjtF6RpGffGUHkOXavVtuUYqLhqHW2x8N3dJloq6GM2aYP1hNbXElMbDV86RwqZoqJFhLafJk5YKCVevU7gyx+1R+b2dr12Ea+ptdQ+UpPx7NX73Tzf1p5REi+bEOHY6nFNc9LkZYUiW6i5O4r3FgjKMQrWgw/m0eqiLnbit6NzaiMYxaC2a4B0KS2L4ZHdJ1ApjFqXztPJW8lgmByzYhXtOtyyCYF0oPmGfzG4Ced66NZW9XsSe7Z/IXh0AIjiF3pMNFfm/9i93bB2vGRn2u3bRBjDYTasHkK/1jcAyaEDxpStsuyYqE6BgjxSf6wTR5oBtxEqjkH/oWcowAm9uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hMmqCjSSJgLp6p98qI34fNTNKzC/UmUnCgVAPEpuWbY=;
 b=bkTqaSnwxmTEs4ZraLxBgjICFILggD6ZmI7lMMfMOMBZC6v1qJiYTTkOeu9ZXD5AV5iKwKv6RRHDSCk7HEhmjshIca8mewjMRKZjdWFDWKei7FS9OfMYR1k1ynfqTiVaGrn4FP8LLTFRCeRdnjLLIflxK68t2vXpTfOXJ9Tz1wJnzDCiYOZjyuu549MuTTLq9Vs82LPgyf4Aq7NfTHfetkIke5laUaHf+tFqlxc6iLmygQIxEGJmSp1cd4W9i7hMXOxs4A7tbWGRVj09rPVMW42P5sQC+tg6iqjj1GVeLeL3JmINji2AaiIJvJ7WmSZnhjJI/mTS+Z9fok4o8dEgqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8701.namprd11.prod.outlook.com (2603:10b6:610:1c8::10)
 by MW4PR11MB5871.namprd11.prod.outlook.com (2603:10b6:303:188::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.29; Tue, 29 Oct
 2024 09:12:18 +0000
Received: from CH3PR11MB8701.namprd11.prod.outlook.com
 ([fe80::5727:1867:fb60:69d0]) by CH3PR11MB8701.namprd11.prod.outlook.com
 ([fe80::5727:1867:fb60:69d0%5]) with mapi id 15.20.8093.025; Tue, 29 Oct 2024
 09:12:17 +0000
Message-ID: <010077aa-57dd-4599-a813-edd9948eca8a@windriver.com>
Date: Tue, 29 Oct 2024 17:13:04 +0800
User-Agent: Mozilla Thunderbird
From: "Bin Lan" <bin.lan.cn@windriver.com>
Subject: vmlinux has relocations in .text in qemuppc64
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com
X-ClientProxiedBy: TYCP286CA0095.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b4::18) To CH3PR11MB8701.namprd11.prod.outlook.com
 (2603:10b6:610:1c8::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8701:EE_|MW4PR11MB5871:EE_
X-MS-Office365-Filtering-Correlation-Id: deac1a7b-ebec-4463-7bae-08dcf7f9c918
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eDhDTnk5RUZRU1lTbWlDZjBFUnd4TUdyY0lKRVQ5QmorVXYyamY4aHlQTVNU?=
 =?utf-8?B?OXc0MXlRdlJoZjlLd1JTRlJkVzRIUllFdkYwdUxvL2ZWWFozbzlCMlVId3J1?=
 =?utf-8?B?VzFPa004eWhwRHo1U1FJb1pCQTAyT0RxeFEwVExVVjN4bXN6RnppYnlsUVVS?=
 =?utf-8?B?ZU9ZQ3hLWG1XUXY4T2FlaDV2aWlycmQyMzdWaXhZUmJuVzVYaEl2UW5ncndm?=
 =?utf-8?B?TFp3Mm1vVm90akpZSFg5Vk53TzNhSE1hZ1lFZmg0UzNCYWNSMVFZQWNUTjNJ?=
 =?utf-8?B?UnowelhpUGZ0ZitrR2hmRCt6U250S0RDZUFiYU5YSC9MS2dwbUd0amRFZzlS?=
 =?utf-8?B?SjFZRTA0b2c5d3pKZjJndmpBam9BdzJTcENEaTlQVVlRVDVDVllaZytTMFow?=
 =?utf-8?B?NE1wYTVZL3pSUCtrcFQwR3JzYWxSMm5RVEhaVjFmaFR5dWQ5ME5YZTRvWmlC?=
 =?utf-8?B?K21wSU1VOTh6a09wVE5DU2ZkNytKNnRtMWdyN0hOUGhOR1JXR0NuRUlwbnF0?=
 =?utf-8?B?WW84ZnRnbWpoTVp5ZGwwd1hodkVQMlhibmZ6S1VIRzBRTDZwVTRNZGxQNjVN?=
 =?utf-8?B?N011ekhQL09vWXlwT2dLOWU3cmIvUU1GeWttcGttV0cyRU1JaDhGcGN5KzUv?=
 =?utf-8?B?TXJHNERVMDJoSUVHQm1jY0ZBcklRajg5UktPM2hhRTJPOTdmTXdXQ1BVMTQw?=
 =?utf-8?B?TFZQR2lRRXZwN01mVkFGNVFDQkJ2blF5UGR0UVJUc1lxRW12MGJoTnQvRmNN?=
 =?utf-8?B?aitvM2FOUytCMTl4d3FNaUFjNTBCZW9QR0d6TWpENGZENzQ4WE5jYmt4anJn?=
 =?utf-8?B?cTA0R1dkTG1TbDd1VzVBdndsS0FFYzRhNzVzQlA1RTV6K3g5UEc1cGFUUTFW?=
 =?utf-8?B?YWNZcjNSTnlSQTk1WmNYKzZ6YVR0OGxRKy9oTmJRbzM5bzFvam5wM3RxZ0JT?=
 =?utf-8?B?eWluVm12Z0I5akFRUC9HNnMwcllPazJyYVltK0h5bnFZYXZUSkY3dUVBQXh6?=
 =?utf-8?B?aE5IakFHbkQ5ZExCZjVZTUY3VzYyeDN5T2dGRWJzU2tUSHAvVitqTE9LZll2?=
 =?utf-8?B?VjdJS2pBSEhOYTJpM3B4OFVhWmxBWHlPQVlQMjVBcUM3L2JDTzJyZWdoalhw?=
 =?utf-8?B?TUZDUGR0czRXdlc4NUtNN1NMa21ucGxzbXlLQitBZkhtWkRzQTR3YnpkdXRT?=
 =?utf-8?B?SS9FZFlRMVVjb1BOZHBtd01Cc1VITjFuUGQwWTIyQzg3RkFlZWJjdGJMSis4?=
 =?utf-8?B?VjdZWld5UzNzM2lNSXVyQ0ZSeEUxK2N3UzVzNmRPTUdSenZDY0ZnZVVKN0xv?=
 =?utf-8?B?cldJbXR4Q09IVG1rdlV5RGY5aFozTXRnZXZLL3oydWVDTXVBU3FMaVpmT1Zj?=
 =?utf-8?B?cjJoQzhRYVhyWm1vUHBBd3pkRTJNY29nVUJFenFNSk0vNUVFQmt3bUFhV2hM?=
 =?utf-8?B?THl2ZStkQ0wzdmpEWE84Yyt6NUNqVGdiYnJmUkR1ZURFcHphc3ZobjhnWmpE?=
 =?utf-8?B?eW1iRzZ6Y0ZCU3hmNlRBRVBjdjJvSFpZS1hZbHlERjBYQU9tQS9uWE5QbnBN?=
 =?utf-8?B?alRvdFQ1b2E3MmcyRDBsdmJGR0x1dFpndVR5MkZLRlVycTdvWEtHTEJmTWM1?=
 =?utf-8?B?Rk1tNks4VExvSW4xNzlDSjVId1o5a0wxNUpqSVNvNXRyTUlLOC9lMjgzeXVY?=
 =?utf-8?Q?a2+I6XFgXxYVP0TrBP8J?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8701.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dEEyempCTjdUbGszT09HNytEVzJmYlNNWmNRY3JEeHFpckQzMmJaZzJ2VUoy?=
 =?utf-8?B?TmdQaHNoS0ROeWdibzVwOWRrZDIxNCtlaW9pTENpMUR5a1o2QjU2bnRJZkVC?=
 =?utf-8?B?bk5PMUJRaEROVlUvZFFmeno2SW42QjBjS0VEMzY5NjNGZFlqNDAxekJaWDRv?=
 =?utf-8?B?ditLZk5HdytNWFU5SlhIczF6Y1lLcWs3YzdMSGtEc0R0WUtGU3RiQW44VVpZ?=
 =?utf-8?B?MnhzV3M3ZHMwek9zREplSmNFOEFMcmkxZXF4SEJ0WmpMeXBZVGhyRFluUnA0?=
 =?utf-8?B?YjdXbmtTU3B4eWllYkszRkVTRDV3Rk16cEcvbHpnWkl3Unk2cnFha1RjWFN3?=
 =?utf-8?B?VCtzbm1wMDhPNG96L3RTaXZXYnh4QllOQzZVMXpwRUFrbHdJNXRkV1hVNDNa?=
 =?utf-8?B?dU1UWGFhQUJkQ1B4R3QreDVDYkRYVDBzL2VaSzFhQ2Fta3ZEcy94ZG1kNGFZ?=
 =?utf-8?B?SnRVVHoyR2xvdkF3T08rODFBSVBOeGhZQW5nL2lkNTJBbjZ6eFBRem9tcU9N?=
 =?utf-8?B?RnNSR1B3bHFTdUZ5cnRUb0Y1TnNYdWpYdUhad0E3OE85dWVMWjg0UDdTUFVy?=
 =?utf-8?B?VmdHODN6RXYrRHdGbGdJNWhLL0habTJ2MmlDMGRJeWRiMm14b3F6RGw1N0pp?=
 =?utf-8?B?SjNtVTVseHVteFJzZ3ErY29QN0s5REE1cVo2VkRySWdhSnVuZFR0c014b2t1?=
 =?utf-8?B?Yk5hWXhLRjBJTWs0VzVnUUdETDMvY1gzRXN5SzQyMmtyc25Od2tuS3dpTUlr?=
 =?utf-8?B?UUFac0ovaVNpN083UEJYZ2habWFKMzhXd3lxaFBxWUg0SkdaVnRFZnROM3ZS?=
 =?utf-8?B?UE5hV0o4RWJGbkdzcXNNKzJnbWZiQW5SR09EdWlMd3hnVTA5b0dCUmQvcE4z?=
 =?utf-8?B?U1crTzFGQlRFSlpYbkt0L2ZqK3MwZmhIYlYrRkRqSmJjNEVLTFpnV1h3RHZG?=
 =?utf-8?B?bGxvQ2hvdENJYjFPcWd1Uk5oUk5QSU5ObDhrWGlNeXlKaSt3ZktsV2REV3Zz?=
 =?utf-8?B?TnV2ZXhub0ZDZTZkV2t2T3lueGQvRW4vYTY2Q3RsaHcvZEpkSitIWnI1Zkh5?=
 =?utf-8?B?aXFuT3M3eDJ3bDlWSVFGWFA1ZURTQ090a1huR2VUMHEvajd1M3BtVGszSkE5?=
 =?utf-8?B?dEhKdjJQclpQTWw0OUl0bm02VjhhcXAvNWxLOTgzcTFTZHVzWVkzTis1WUtC?=
 =?utf-8?B?a0QzOUJjMEV2OWZEaFlKOWVndEpaR3hRcDlPM09lM242Z28wOVQwbGZoazdP?=
 =?utf-8?B?TDlIT0djZmxqTE1reWdQeEFiUU5JaVU5cFlFKzV4MDlzdHYrdjBrMHBWWEFT?=
 =?utf-8?B?TGtwc2FQOThaYnY0WjVYaGx6c0lyVW9VNTgzT25sMmZ1NEdpRTZrdWdNYlUw?=
 =?utf-8?B?dU1mcThUalFWN21MeXNXWUV1YTlXQ2drVzF0S04vZ0ZHdkxMd3F3WnErVTNF?=
 =?utf-8?B?VWhzK0tqVEhIZTNsamZCaFBIM2NWSVhITXdvazlDSHRhYk1tdG5ISVJwaDBH?=
 =?utf-8?B?bTQxTmJVMHh3ekFvTUliYkE5aU5KMFVUS3plbUZDU0UxLzNsbTVLWjJiY2x2?=
 =?utf-8?B?SDVuZ3czTTVQMkkzSFlPV1Badms1dDhOdGNwTm5icm45bmloSmdvTU5nVE9p?=
 =?utf-8?B?NGhOdW80aHU4aG5RdkZPdHloTjFJeEdsc1NmTE1sOHhxeGI2eXArdTJRU3da?=
 =?utf-8?B?QTlZcWY0MmZZTENWUGsxeGh1VktRSWpQU1c2TFAzSGN2aUNNQ3FqZmZRMnJq?=
 =?utf-8?B?QVpLUng5aGoyN3ZZQ2tyWHozRG9mWG9hcmU4RGw0b2NUQm8wVWdGOG80cEZh?=
 =?utf-8?B?Q2M1QjA4VWo4Z3NueExRWkVlR2kzNGdnL0NzOUFOZmVXdjF0dDBQMFBvV05q?=
 =?utf-8?B?aVlNZXpPbmh0Y0hMRzZnaXVWZFJWaHJYQ1ZWeVRzdW9ReE15ZDNlNWtKaSt5?=
 =?utf-8?B?Um9KczhiOUd3TGthZmR2V2ZITC9Ub2NsQVVEMmp4elpqSTJ4aUZTTzl2YTJO?=
 =?utf-8?B?WCtoKzZGL1FyQUxkUjk0WkJMVkpjcFJXZnBUQ01rWW56TkI4dGd5dGRQT1VL?=
 =?utf-8?B?Sml3Z043UnFpSWFLWldoZTFSZGhYdURLZVJWS2hLQTN3bmp3UFpaQy92dlJU?=
 =?utf-8?B?MDZYa05VTC9NazkrT1hWcC9HNkpJTDNyc2NHbmxoUDJkODRHQ2JXaG9VTkx0?=
 =?utf-8?B?WHc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deac1a7b-ebec-4463-7bae-08dcf7f9c918
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8701.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 09:12:17.5368
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LvfXkvJz2ZGql5Vo5KAP0yCkYg4lZHAhU9MuH5BSSaC5HeD5Uun2JdRnZ0Mv+0JBcwOTVy6latcVXaSdsDnU6qBoBpW5WusQNDxthBNiULs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5871
X-Authority-Analysis: v=2.4 cv=ZIuFmm7b c=1 sm=1 tr=0 ts=6720a6f5 cx=c_pps a=98TgpmV4a5moxWevO5qy4g==:117 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=DAUX931o1VcA:10 a=bRTqI5nwn0kA:10 a=Q4-j1AaZAAAA:8 a=M2dmce0KUklYd5NOlx0A:9 a=QEXdDO2ut3YA:10
 a=-_pu_Xw7qLuRlpvDOPwA:9 a=vOuerKtbJWes-dL9:21 a=_W_S_7VecoQA:10 a=9H3Qd4_ONW2Ztcrla5EB:22
X-Proofpoint-GUID: sbSo5AVUAArn5PEROnwWI6-039R8cKJg
X-Proofpoint-ORIG-GUID: sbSo5AVUAArn5PEROnwWI6-039R8cKJg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_04,2024-10-28_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=558
 lowpriorityscore=0 spamscore=0 mlxscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1011 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2409260000 definitions=main-2410290072
Content-Type: multipart/alternative;
 boundary="------------ecSdOho0gIXSx0Fh2bGnOCfS"
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 09:32:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64162

--------------ecSdOho0gIXSx0Fh2bGnOCfS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Raj and everybody,

I found vmlinux has relocations in .text in qemuppc64. I found this 
commit: 
https://git.openembedded.org/openembedded-core/commit/?id=a7ca98d031c21f7e24878974e3b6b1eb81217862 
just to skip the QA check for qemuppc64. I have an issue 
vmlinux-initramfs-6.6.52-yocto-standard has relocations in .text 
[textrel]. I want to take this approach.

What were the considerations at that time? Thank you.

B.R.

Bin Lan

--------------ecSdOho0gIXSx0Fh2bGnOCfS
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">Hi Raj and everybody,</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">I found vmlinux has relocations in=
 .text in qemuppc64. I found this commit: <a class=3D"moz-txt-link-freetext=
" href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3Da7ca9=
8d031c21f7e24878974e3b6b1eb81217862">https://git.openembedded.org/openembed=
ded-core/commit/?id=3Da7ca98d031c21f7e24878974e3b6b1eb81217862</a> just to =
skip the QA check for qemuppc64. </span><span style=3D"color: rgb(51, 51, 5=
1); font-family: system-ui, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica N=
eue&quot;, &quot;Noto Sans&quot;, &quot;Liberation Sans&quot;, Arial, sans-=
serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Seg=
oe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(255, 255,=
 255); text-decoration-thickness: initial; text-decoration-style: initial; =
text-decoration-color: initial; display: inline !important; float: none;">I=
 have an issue vmlinux-initramfs-6.6.52-yocto-standard has relocations in .=
text [textrel].  I want to take this approach.</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">What were the considerations at th=
at time?  Thank you.</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">B.R.</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">Bin Lan
</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">
</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">
</span></p>
    <p><span style=3D"color: rgb(51, 51, 51); font-family: system-ui, &quot=
;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, &quot;Noto Sans&quot;,=
 &quot;Liberation Sans&quot;, Arial, sans-serif, &quot;Apple Color Emoji&qu=
ot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Co=
lor Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligature=
s: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: nor=
mal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none;=
 widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space:=
 pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness:=
 initial; text-decoration-style: initial; text-decoration-color: initial; d=
isplay: inline !important; float: none;">
</span></p>
  </body>
</html>

--------------ecSdOho0gIXSx0Fh2bGnOCfS--

