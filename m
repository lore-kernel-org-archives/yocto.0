Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AD1F5A8DA
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 02:39:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4959.1776739144189170104
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2026 19:39:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=KqeshCjj;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=85717f1484=kai.kang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63KNxi0v339431
	for <yocto@lists.yoctoproject.org>; Mon, 20 Apr 2026 19:39:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=PPS06212021;
	 bh=jeSnZ+sokr3Km1kpim46OP1qt6kChUz5zTECGTKsmzw=; b=KqeshCjjYnw1
	gB8djxIpYEGqFM7kUbAZIYcCrPK/WppuDXNhodVCULNxPulbpmqU+2vMOr7/q+wt
	VC6fbp2HFY+1Mh2z39WHVTZB37KcWK8UV11IC6D5mh9Csl2Ky0i7DrikZY5Cnbmo
	YciZIQK8ljPrPFycwRM5q8+Ht1ZubaYtLXPSDdsbwprrb2iQpsb3ov+u3+0Htkna
	85rAsnNHmB2egXqL2mDkLqxXH82MY9vFXgzhe3qjESW2019IQEVW+Xr+Yw+rG+Rx
	Kur1aeV0KaxbRq95VD8oFE77B983hCTrHD6Rd21r3ndg2gZdUleX+6qxTVbknso8
	H6Bl1cguEw==
Received: from dm5pr21cu001.outbound.protection.outlook.com (mail-centralusazon11011067.outbound.protection.outlook.com [52.101.62.67])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4dm9fctj4j-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 20 Apr 2026 19:39:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eq4Lrl/kCsVCZw4alQSI7AkA3gxudoo/P39Jf16I9cUKhxzHZ0SnHJARlYZXG1qmvZj3eiQl51mvqKPk8hF5hbx2CuISRU99DJd6INAZg+7dRk+SabFFNpM31iAMp61ywd2DFZVlcFKg9B66EGP45367GpeAg8h9P7MRvAnGLVkE4n1lcNO5w2CdYjnJefzp4qzc0huTRQSNXmzIHSPv1q5J9zFIfwz5Gv/TqQelBPGY1OzAU5qMHZc5Ubgi0ZvRA5z+eYiDwBqzQrfXVOWI7KHI3Ucp4Byxvf8vR7qLo4fSIwyY20t3Vr+QC+CxPg9acjXWMypEmCEmqN51K57p2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jeSnZ+sokr3Km1kpim46OP1qt6kChUz5zTECGTKsmzw=;
 b=n8tq25AAufIsrpYFWSTHy//jB3ktBLYQobqzTs7mIgkBAHGzzTxlPpeesVqC3gG/JfkLxMoUIbZ4GY+i/8rlrUttKyEcQNZLeE/+WRe5Qz4kWAycKq4x1PBsw+70dVCoA5AZ4YdJAH6ggultNMWjDm3grUrr1PwGSvaDMeoacZtCmIm4l+gAI26IkZp1+VXUVrK0nKPUmhaqpp6gTI+A/dPUMEyQeEVgjXNAOgW+6TMXLHFFkhYlElvFcpNwFUq2IbWT2njEtnpj9gBEnPq31kVxI80GHspB5wBUYwtWuVoWEQT09rDAmdWu0CMYsWsF7+mhnor0MaM+gUgWRk4BoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SN6PR11MB2589.namprd11.prod.outlook.com (2603:10b6:805:53::12)
 by PH7PR11MB7513.namprd11.prod.outlook.com (2603:10b6:510:270::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.15; Tue, 21 Apr
 2026 02:39:00 +0000
Received: from SN6PR11MB2589.namprd11.prod.outlook.com
 ([fe80::9fca:dc5d:4230:e12e]) by SN6PR11MB2589.namprd11.prod.outlook.com
 ([fe80::9fca:dc5d:4230:e12e%5]) with mapi id 15.20.9846.014; Tue, 21 Apr 2026
 02:38:58 +0000
Message-ID: <e388a09c-74f2-4490-a703-5cfc3fc4a4eb@windriver.com>
Date: Tue, 21 Apr 2026 10:38:50 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto][meta-anaconda][PATCH 1/2] anaconda: fix duplicate
 RDEPENDS entry and remove orphaned patches
To: Haitao Liu <haitao.liu@windriver.com>, yocto@lists.yoctoproject.org
References: <20260415090620.2450794-1-haitao.liu@windriver.com>
Content-Language: en-US
From: Kai <kai.kang@windriver.com>
In-Reply-To: <20260415090620.2450794-1-haitao.liu@windriver.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYCP301CA0024.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:400:381::14) To SN6PR11MB2589.namprd11.prod.outlook.com
 (2603:10b6:805:53::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2589:EE_|PH7PR11MB7513:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fe66f6b-15f4-413a-1b31-08de9f4f23e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|42112799006|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 
	ZreEG1TC9QX7cbPIfih71KtGMB2WXEJVBQR0h7ouuMfZRZBbVYqC2ssNVloIW39DBe3gEOBtwes9NzMua7gu0HdxdNk0sSEWHhYJFyuK1bazOacEbnD0eWO4bU8NcApVtU/R/LmDfQQHguL0oc0+9w5hWWrHbNtm/Jxb624Ta01xI6i82fa9U/pvjBSMwQYr0NhcgCzCxG1sE4tJNZox4B/vWmxb0X7biSWs9GNKBYE8V4YhmnkpQuLU9CScukV7D9PrmuVjxgclXMJsb59hZEqvwp12I4EuUfV2a0l7vQYk6gN/prPoM+PImUO5Gi1Sb1JvuKrQIFOOCKrDSBCErmvvYB+d05k8VOoZHP2S/E6UY1Q/ES8mYM0vVvda8mvEuG0J3rtAxEBihSYfWCeK/PdS4NURu9wZuU0ilfj0XO/7k/VnC7x6n2AiEscT92wdvbpD+RTyJauVLIQLXWOSmAKzwD/pc717i1lYd3EaKS5T00EJ/nsKHSfiKLFhB/TngP2DBx2yLBjWMuK1IrJI9Yk+BlqvHS0RpI3ZKonrFsFqFGdNRRt3/wiMySX5hYeZrWyCfMhK1Zr+NDf2Q5UGyL783YJ5ahaX8vu0kVAix8rE3i0FFeUqPmJjlsRswUmiB2zJOiAMxnk2zASTlzvfz0hWjCrLoIHqfXwD3HwQWzoFmiFpWcywOugw+e0ve68MP1ojCokkD5tlGbIlE/9B4o/43YUNXo/5t19EUNiK7uo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2589.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(42112799006)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZWYvK2lyWk81TDBoZ0hKNjQ3TlVWWUJEMzNEekpVUXltbDVCa0IyRWRDTGg4?=
 =?utf-8?B?bEUvZWExbHNySDFqaG9BcUs2dm9BZ1l2ZGdqcEkyTjhiL3FZUjRUamQrUVYx?=
 =?utf-8?B?a3VSY1k5VUlFdWt6L1d2Mzh1NytZbFJPblA4M25mSFpDU2VwcWl2b2pZZDdP?=
 =?utf-8?B?U0Q5eXpOOW5RUkYvVkVzVU9SdzdtRkdscnc0QnQyOU5CUlBpK1pxOFNvS2ox?=
 =?utf-8?B?M0puQzlMdDBPWElMcWpTV1VUZnYwaFVYWEZkdHNNZUUzTVZvZHJBakhSaGFl?=
 =?utf-8?B?THJscGdkUDJDb2RBa0treFdOREFIa2FXbm5oY0N1ZkZFOWtaWE12VHhtVmVr?=
 =?utf-8?B?U3FLNDZlWmNMbWxqb3FzQm9MVTF3SDA1VGVUYml4RFl2YVE1NE5WNHI4Z2p2?=
 =?utf-8?B?VVFwdnRMbDBEeVJUK2Jmb25Vb1ROYWZsbG5VaXF3dGZHTHlCWTFZL0Z1Y2hH?=
 =?utf-8?B?YVRSb0tkQTBBS2VRQ3diUXhMUVZSNnBkNElTb3Z3ZXRDUkFPMHFMbDBJbGNK?=
 =?utf-8?B?SjRIVzd5T2NxTmhLUStQQzUwRVJJcmE1UEhRN3pkRUNWMTA2UWdJS2hnUjRV?=
 =?utf-8?B?NTM2UDVOWkFOMGZ4bExWKzhBMjVjdGU2REN6ajhRL1VvVFUxbThMcHpiSktK?=
 =?utf-8?B?OTQzUlAvZ3QwbHpoTXpkSnNhcUt4d1Zja2pVRmNRSGdjMUV5RmRKZzA5b2Zn?=
 =?utf-8?B?UytNcU9wbVQwaFN0emliaXREcUFRelRoRS9ZdVRmNFBOUnpRSUtpTlVzZFBq?=
 =?utf-8?B?M1dVdkdBRWZ6Y0ZKUnBIOWxPaXRTaFhLYXpGdUtSMys5YVYwTFlEU1BvWHB6?=
 =?utf-8?B?d3VFd0cwUmxuT1gzcE1YRzNvRmhtZnBqcDgxSk5SODJDQzlFam5aUkpIUFY3?=
 =?utf-8?B?TWlTRHpWeVBZRWtTS3dJbGtkdGxDME5TSFBMRWorZnVFSHBkV25DM3FMQWhl?=
 =?utf-8?B?dDhGZTRsRUk1S2VhS01CWWk4ZmVWMnM4VkQ4bWkzclBTbFQ5Mk83ZWViN3U4?=
 =?utf-8?B?ejIrTWVVcDhnSFUrMjloT2Z5WExaUmdHMXRGTFhHUUZaVUxJbXc1SGc5WUo5?=
 =?utf-8?B?dndrcjBtNjVSRVEzSG84UFFjYlNpMmJ0MjVQQTFMMHhEOVdERGFhdklsNERk?=
 =?utf-8?B?MVdhSUtydnNkSXViMGF0dWQ1c3YzdThSQ3JNR3c2SlllVk9iTEFmWW1DaEZn?=
 =?utf-8?B?dVQ5RUMwUExwRURRNnJySGFmZlVNdzNKWWtwZGpCb1hUS0dJK21QNTAzSytS?=
 =?utf-8?B?a3NFL0lldVhLWFB4Y1lhSWJlYy9oWEZ3UE9kalZudGlOY1pZUVQvU0YrWUgz?=
 =?utf-8?B?TmhPSWlteFNkektuWWZmbjFvTWZaaGdiekVFd2hvenpNZWRqTC9kWlVGTk9S?=
 =?utf-8?B?LzFnTTI3N3gyK1cyT3JqVWxwVVpweTVFWVNDOFJZVEFsdDEvTys1dWtIK090?=
 =?utf-8?B?WnB5RWpYTjcxc1lZYkZiZmpjWDhMV2xrYjdic0lWaWpMbzM2OG1DdlpCcjQ2?=
 =?utf-8?B?QmtBUHUxU2JwQ21vbHMxdkdQV2NHU0wxZlo2eUo4cS9VTEprczhlTUx2Kzl1?=
 =?utf-8?B?VHhMcGZLYjJrdnp3bjVSenVaa1RyZVVmeHF0Z3FUSE1zSmhDci9pNlVPdUJB?=
 =?utf-8?B?NThUQmVGTkdEVzBLRmJmRjFOQTArU1ZIT3R4R0lWRzB0aGJLK1BsZDlVZU52?=
 =?utf-8?B?R0VGRXMzS0NUSDE1a0RpT2g2c25DQitxWU1OVVNFbjBQeEcvcGZ4VFhyRlpx?=
 =?utf-8?B?WXRHYktLbGQ5TVRwdnBnN1lobFdZYkU4cXA4cTliTTNIM0ZQYVBaK2Vid2x6?=
 =?utf-8?B?dFE5amxVcWxoemY1UWdtbFVPS0pIVEVSOUZmUXRmazdLN0N5eDRiQlBqK0lU?=
 =?utf-8?B?b1ByR0VoaFRqYWlnU2FqSmhaQWRBY0k3b3J5cHJXYlQ2cndEV014V3VsN1NV?=
 =?utf-8?B?YnIvQnJuV2plaXA3S1lPY1h6UFBIeHN1ZWU0SURRekd6M3NhWjRNMTVJWlNz?=
 =?utf-8?B?YjJoeHJ4eEoySUNDNHd0elBsWnNDWjNyNWJTU2UvVHQ5RjE0dTErQUlYNXAx?=
 =?utf-8?B?c0xNdVc2Uzk1dEdTV2o1VTRJemVzdzlNdmN3S0RMQ2lseUhFYUpwREdhRTR0?=
 =?utf-8?B?UUs5ckJ6SFV2dUF3L1EwQUZnNFJqTDU3SksrbW1XcmNmOVd6RDN3VG1zZ2dq?=
 =?utf-8?B?KzlrWSt1MHExbE03bWt6NlIxQzdJTjlHR1k1M2kyWUlFdGJBaGM5S1llTUJP?=
 =?utf-8?B?bStwVmkzOWNVYTlJYlh0T094S0VRNExDdGNCQ3hnZlRBTEZkUGRyZzJtRkJ6?=
 =?utf-8?B?RGdMdUtmdDREVW9yT25XUzJMR0JzbjVjZDZ2VnpFdlJxMGVkTFkxZz09?=
X-Exchange-RoutingPolicyChecked: 
	NedK6g3sC4YDTqRPrYCXPuvCGz3wNXvAcOjRgppDxK3ieSE0CMkzXIZpuOgoL214gyKM1MOm42HAJIvwKrmI/D3aN27jr5wNye6EI0L2tMuhJJDmfXopu7J96AuliY8X9tv53v+iROwkLRCjKC7eTiyVikkaqsdIqrje/v6k62RNPc3Ms7HmqAM6N1c+v+1iZSAUcvIf3L1m38HbOgJYgk7z1UwImOMTexjBls/LUXryzBkrCrghL23jIchd2CFGxGd1syYDJFd02oczD8O2S+ExsEuJk4zl7gu2Cd5DgnaRaMrVlkXd2FesJK6qbLPd83kNMkHcCKcH8GBsCnLFZA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fe66f6b-15f4-413a-1b31-08de9f4f23e7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2589.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 02:38:58.8164
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LNIc4yxP1T4ISTVo2DlJ9ARDQ10NUDdNX9Uovomsh8C4kzobmfDINgCg5kOe1wB3y6YE+KM1Kfz4H3cYOZ/gOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7513
X-Proofpoint-ORIG-GUID: 9rb3_DaKF3gcwMnLSKDKRJ7RLyfhY7rZ
X-Proofpoint-GUID: 9rb3_DaKF3gcwMnLSKDKRJ7RLyfhY7rZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDAyNCBTYWx0ZWRfXzvfZ+LzAkGih
 thKMX1hqHo9u0Rf7SLVNF5ws/anZ3sqUGpbqHo0QFpcHkEhyYkStbX+hzwMOg2+go4/kNfsDBRt
 MrgmkliFei9/DdqA2CS91Qa5H8H/fZWJ7tMzevjN7CCKDAMcmPVfb2rfhXj2bJrMcsSLDyq2111
 VdGSqjngAP3XN2MR/z+mS/bnJ1GgU5VAQ+a77u+OAoXZtbe+PigVk1xur/ZBdgGdxj4MKaPoToX
 yLLtmFR7S7z0nyo95JB6+yuHYvak/eyY+xYIo043AMedkw88p3Pe41KV2vXISqgz2RUhZwVVqYR
 uiLPw5Te6Zug5J5nnBnGQWtW4tRWIDUf/b/KSXsoQWJae0Hr/Z6GDrJqdsk9CVcoMckQH+0CYfu
 SIhQoM0hDuio+uE4L9FRJ5khWJFoCt+6A4nu2zkl6hLJih4E1JyIsIA6vMuNQ0iG9a+o2jBYPxh
 64b54/OR5QDKK4W7XwA==
X-Authority-Analysis: v=2.4 cv=WKZPmHsR c=1 sm=1 tr=0 ts=69e6e347 cx=c_pps
 a=GcdpE1at2Es8HfJfZlkF2Q==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bi6dqmuHe4P4UrxVR6um:22 a=iKiJcTA2PjBS6x5JeXcw:22
 a=t7CeM3EgAAAA:8 a=WP5zsaevAAAA:8 a=20KFwNOVAAAA:8 a=Xd9ZVzDkG9cXgrNzDosA:9
 a=QEXdDO2ut3YA:10 a=FdTzh2GWekK77mhwV6Dw:22 a=t8Kx07QrZZTALmIZmm-o:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_05,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210024
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 02:39:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66424

On 4/15/26 17:06, Haitao Liu wrote:
> Remove the duplicate `python3-crypt-r` entry in RDEPENDS:${PN} in
> python3-anaconda_42.27.11.bb. The duplication appears to be a
> copy-paste error and may be masking a missing dependency.
>
> Also remove the following unreferenced patch files from the
> files/ directory, as they are not listed in SRC_URI:
>
>     - 0029-support-user-account-creation.patch
>     - 0035-set-keyboard-xlayouts-with-us-by-default.patch
>     - 0043-fix-hang-while-installed-system-reboot.patch

Good catch. Thanks.

Merged.

Kai

>
> Signed-off-by: Haitao Liu <haitao.liu@windriver.com>
> ---
>   .../0029-support-user-account-creation.patch  | 82 -------------------
>   ...keyboard-xlayouts-with-us-by-default.patch | 50 -----------
>   ...x-hang-while-installed-system-reboot.patch | 31 -------
>   .../anaconda/python3-anaconda_42.27.11.bb     |  1 -
>   4 files changed, 164 deletions(-)
>   delete mode 100644 recipes-installer/anaconda/files/0029-support-user-account-creation.patch
>   delete mode 100644 recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch
>   delete mode 100644 recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch
>
> diff --git a/recipes-installer/anaconda/files/0029-support-user-account-creation.patch b/recipes-installer/anaconda/files/0029-support-user-account-creation.patch
> deleted file mode 100644
> index 937c51e..0000000
> --- a/recipes-installer/anaconda/files/0029-support-user-account-creation.patch
> +++ /dev/null
> @@ -1,82 +0,0 @@
> -From b93bf80525624fd7038b370f35ace90a3b3bdb1b Mon Sep 17 00:00:00 2001
> -From: Hongxu Jia <hongxu.jia@windriver.com>
> -Date: Tue, 24 Jul 2018 15:05:25 +0800
> -Subject: [PATCH] support user account creation
> -
> -- Do not support user accout advanced setting
> -
> -- Add main for debugging test
> -
> -Upstream-Status: Inappropriate [oe specific]
> -
> -Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ----
> - pyanaconda/ui/gui/spokes/user.py |  7 +------
> - pyanaconda/users.py              | 15 +++++++++++++++
> - 2 files changed, 16 insertions(+), 6 deletions(-)
> -
> -diff --git a/pyanaconda/ui/gui/spokes/user.py b/pyanaconda/ui/gui/spokes/user.py
> -index 2398810..9d7de2a 100644
> ---- a/pyanaconda/ui/gui/spokes/user.py
> -+++ b/pyanaconda/ui/gui/spokes/user.py
> -@@ -267,6 +267,7 @@ class UserSpoke(FirstbootSpokeMixIn, NormalSpoke, GUISpokeInputCheckHandler):
> -         self._password_required_checkbox = self.builder.get_object("password_required_checkbox")
> -         # advanced user configration dialog button
> -         self._advanced_button = self.builder.get_object("advanced_button")
> -+        self._advanced_button.set_sensitive(False)
> -         # password checking status bar & label
> -         self._password_bar = self.builder.get_object("password_bar")
> -         self._password_label = self.builder.get_object("password_label")
> -@@ -500,12 +501,6 @@ class UserSpoke(FirstbootSpokeMixIn, NormalSpoke, GUISpokeInputCheckHandler):
> -         """Called by Gtk on all username changes."""
> -         new_username = editable.get_text()
> -
> --        # Disable the advanced user dialog button when no username is set
> --        if editable.get_text():
> --            self._advanced_button.set_sensitive(True)
> --        else:
> --            self._advanced_button.set_sensitive(False)
> --
> -         # update the username in checker
> -         self.checker.username = new_username
> -
> -diff --git a/pyanaconda/users.py b/pyanaconda/users.py
> -index 3db06dd..edf3469 100644
> ---- a/pyanaconda/users.py
> -+++ b/pyanaconda/users.py
> -@@ -28,6 +28,8 @@ from pyanaconda.errors import errorHandler, PasswordCryptError, ERROR_RAISE
> - from pyanaconda.core.regexes import GROUPLIST_FANCY_PARSE, NAME_VALID, PORTABLE_FS_CHARS, GROUPLIST_SIMPLE_VALID
> - import crypt
> - from pyanaconda.core.i18n import _
> -+from pyanaconda.core import constants
> -+
> - import re
> -
> - from pyanaconda.anaconda_loggers import get_module_logger
> -@@ -200,6 +202,7 @@ class Users(object):
> -                           homedir will be interpreted relative to this. Defaults
> -                           to util.getSysroot().
> -         """
> -+        log.info("kwargs %s" % kwargs)
> -         root = kwargs.get("root", util.getSysroot())
> -
> -         if self._getgrnam(group_name, root):
> -@@ -431,3 +434,15 @@ class Users(object):
> -         if not authfile_existed:
> -             os.chown(authfile, int(uid), int(gid))
> -             util.execWithRedirect("restorecon", ["-r", sshdir])
> -+
> -+# For testing
> -+if __name__ == "__main__":
> -+    from pyanaconda import anaconda_logging
> -+    anaconda_logging.init()
> -+    anaconda_logging.logger.setupVirtio(constants.VIRTIO_PORT)
> -+
> -+    from pyanaconda.anaconda_loggers import get_anaconda_root_logger
> -+    log = get_anaconda_root_logger()
> -+
> -+    users = Users()
> -+    users.createUser("test", password="123456", shell="/bin/bash", groups=["wheel"])
> ---
> -2.7.4
> -
> diff --git a/recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch b/recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch
> deleted file mode 100644
> index 46b9993..0000000
> --- a/recipes-installer/anaconda/files/0035-set-keyboard-xlayouts-with-us-by-default.patch
> +++ /dev/null
> @@ -1,50 +0,0 @@
> -From 8d69d02b27190c90dc5fd6dcf37420c221ec5660 Mon Sep 17 00:00:00 2001
> -From: Hongxu Jia <hongxu.jia@windriver.com>
> -Date: Tue, 24 Jul 2018 17:02:45 +0800
> -Subject: [PATCH 35/65] set keyboard xlayouts with 'us' by default
> -
> -Previously only graphic set keyboard xlayouts with 'us' by default,
> -and text mode did not have the setting and it caused 100% cpu when
> -loadkey invoked. The hung of loadkey also caused reboot failed.
> -
> -The setting in default ks works on both of graphic and text.
> -
> -Revert the following fix:
> ----------
> -commit ec53ff6e4a7a06d190925a482371031a2f48509d
> -Author: Martin Kolman <mkolman@redhat.com>
> -Date:   Thu Jan 19 18:37:29 2017 +0100
> -
> -    Use correct default password quality value
> ----------
> -
> -Upstream-Status: Inappropriate [oe specific]
> -
> -Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ----
> - data/interactive-defaults.ks | 12 +-----------
> - 1 file changed, 1 insertion(+), 11 deletions(-)
> -
> -diff --git a/data/interactive-defaults.ks b/data/interactive-defaults.ks
> -index a906c8c..a2f0555 100644
> ---- a/data/interactive-defaults.ks
> -+++ b/data/interactive-defaults.ks
> -@@ -1,14 +1,4 @@
> - # Kickstart defaults file for an interative install.
> - # This is not loaded if a kickstart file is provided on the command line.
> - firstboot --enable
> --
> --%anaconda
> --# Default password policies
> --pwpolicy root --notstrict --minlen=6 --minquality=1 --nochanges --notempty
> --pwpolicy user --notstrict --minlen=6 --minquality=1 --nochanges --emptyok
> --pwpolicy luks --notstrict --minlen=6 --minquality=1 --nochanges --notempty
> --# NOTE: This applies only to *fully* interactive installations, partial kickstart
> --#       installations use defaults specified in pyanaconda/pwpolicy.py.
> --#       Automated kickstart installs simply ignore the password policy as the policy
> --#       only applies to the UI, not for passwords specified in kickstart.
> --%end
> -+keyboard --xlayouts='us'
> ---
> -2.7.4
> -
> diff --git a/recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch b/recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch
> deleted file mode 100644
> index 64d2c07..0000000
> --- a/recipes-installer/anaconda/files/0043-fix-hang-while-installed-system-reboot.patch
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -From fabbb3751d64f56a01fca1981d0c0ff45fbd228c Mon Sep 17 00:00:00 2001
> -From: Hongxu Jia <hongxu.jia@windriver.com>
> -Date: Wed, 25 Jul 2018 10:29:23 +0800
> -Subject: [PATCH 43/65] fix hang while installed system reboot
> -
> -The lvm2 installed to target system, and it disabled by
> -default which caused target system reboot hang.
> -
> -Enable service lvm2-monitor.service could fix the issue.
> -
> -Upstream-Status: Inappropriate [oe specific]
> -
> -Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ----
> - data/interactive-defaults.ks | 3 +++
> - 1 file changed, 3 insertions(+)
> -
> -diff --git a/data/interactive-defaults.ks b/data/interactive-defaults.ks
> -index a2f0555..0deb059 100644
> ---- a/data/interactive-defaults.ks
> -+++ b/data/interactive-defaults.ks
> -@@ -2,3 +2,6 @@
> - # This is not loaded if a kickstart file is provided on the command line.
> - firstboot --enable
> - keyboard --xlayouts='us'
> -+
> -+# Fix hang while installed system reboot
> -+services --enabled lvm2-monitor.service
> ---
> -2.7.4
> -
> diff --git a/recipes-installer/anaconda/python3-anaconda_42.27.11.bb b/recipes-installer/anaconda/python3-anaconda_42.27.11.bb
> index aa4f93a..1e6751a 100755
> --- a/recipes-installer/anaconda/python3-anaconda_42.27.11.bb
> +++ b/recipes-installer/anaconda/python3-anaconda_42.27.11.bb
> @@ -158,7 +158,6 @@ RDEPENDS:${PN} = "bash \
>                     python3-core \
>                     python3-coverage \
>                     python3-crypt-r \
> -                  python3-crypt-r \
>                     python3-dasbus \
>                     python3-dbus-next \
>                     python3-iso639 \


-- 
Kai Kang
Wind River Linux


