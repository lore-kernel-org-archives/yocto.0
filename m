Return-Path: <wenlin.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953CBC4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 02:38:33 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.14108.1701398310527725749
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 18:38:30 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=Z8/njDpt;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0699a08273=wenlin.kang@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3B12Id8f006202;
	Thu, 30 Nov 2023 18:38:29 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=g53k8MuJ3cR/WpPLgWuEl7fwQiyDdaNPQHATGj3c4Vw=; b=
	Z8/njDptv2aTqO4dtioAOLVkyCeMZzT1ugr6Lw1SvhpqnPYLCKNU6GSFQklRU/kA
	mj4Dgf4DK+hoQ7rZpFHEnPZxXfz/ZRW3nUlvcGLoo65lYpr82lp8Aea8LJOFjnKT
	P26ApvrtB9GVLhRms5XzSHo1UEynGGmWMDrE8kBfb/D8QGeECM5iyHmNP+IH/nfG
	GYMhJ1Xmr8tUY/1oogtthT/TxmIccfH1Qv/YrLfEGMvdFuhRg+fCDnkuuRHaQ3gg
	Yvgltn0NEd3aPzxEgIpgxm2Jc31pAe1nCILp69Mzr+MRye07+kwsUdm4JYJCIeRk
	qdgCijf4DsN0Oy/gfFjhFQ==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3upgxthadp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Nov 2023 18:38:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghAf4z8LJmevvOAn11czNiqM5NTl68ULHDfFepodYeQ1mC4TtCeB7CLQBh3RhONeWSx1ehLD+0IE2IJMQtB7j4O72xIdIAFcJPLAKY5dh7SaPAJOOdqoMndsxYne5VZSNCNrdVYvdekMvf/Zf+Oijy11Iva2W4CVAp1JM/7Txd217xHg4E+R9m9YaWESgrU8dQiYNlP3upjCaymZSuEiXblaA1HPy07wmyWXBYUN/bIow5vvFxz0deR7t9liaXQ5IS1Gh2GHl/Ig7ODngpptlX1Pi0gPSkEsts0wQ700ShGrUKh64FdiEIeGawKG3csXbY297fayXTiwPDoahqQScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g53k8MuJ3cR/WpPLgWuEl7fwQiyDdaNPQHATGj3c4Vw=;
 b=M8R8pW+qQ9eJT7xsOyUWgwows+2XJHmp3k3qGVA23QO5ZNUx3ZTTfhDhigBRKzVXdxvcQlP3ZP4LOXEp7iIorqZIwXXy7K5gUFhtHOGN5CFIl7Iz+DizMuvb78Qe3xRMk0hP8Hicd+mW4vRJg8Vhoc0TArQWqUWybQ5qf/WTBAahkZlhCryILj3KqEmY73UQ8crUM7heIYC8jwpdIZGifpJHefdqfdlrbOUmu0sVW5XWvD2vsx4f00jsOnRIobp/gEBUZ1XzX05Vs1iRL165KJB3KRa4pcb8a6k+EOsyXxSmt2VfX7zr+BNqBNmAfM8z5H4VvQG/3Z2Bg50e07+3OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) by
 CH3PR11MB8187.namprd11.prod.outlook.com (2603:10b6:610:160::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Fri, 1 Dec
 2023 02:38:22 +0000
Received: from DS0PR11MB6325.namprd11.prod.outlook.com
 ([fe80::2cd5:2aa3:c5d6:ee75]) by DS0PR11MB6325.namprd11.prod.outlook.com
 ([fe80::2cd5:2aa3:c5d6:ee75%7]) with mapi id 15.20.7046.024; Fri, 1 Dec 2023
 02:38:22 +0000
Message-ID: <70375b3f-0255-42e8-a89d-db3c1586821c@windriver.com>
Date: Fri, 1 Dec 2023 10:38:21 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-mingw][kirkstone][PATCH] libxcrypt: fixed some
 build error for nativesdk with mingw
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
References: <20231130083122.2970448-1-wenlin.kang@windriver.com>
 <CAMKF1soucss1KKERpwrfr38By7tWuceuFEQJ_HoeSJu5iSMVvA@mail.gmail.com>
Content-Language: en-US
From: Kang Wenlin <wenlin.kang@windriver.com>
In-Reply-To: <CAMKF1soucss1KKERpwrfr38By7tWuceuFEQJ_HoeSJu5iSMVvA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SG2PR01CA0118.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::22) To DS0PR11MB6325.namprd11.prod.outlook.com
 (2603:10b6:8:cf::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6325:EE_|CH3PR11MB8187:EE_
X-MS-Office365-Filtering-Correlation-Id: 639ae15f-0410-4aa1-fc28-08dbf21695ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YlLcGLZNLIfrjmV4remiWgdXGaDNYfCIKOkh9GPWUWhZcr6uwc00VifF8De5pHiiY5q3RCwx2XGA554FrxzR6Db4e9ETFdpkrsFeehZ5dw42HlPqreDHw8ErXsl78bPa+i4uRSK64fOz/YrEcLTBfOD4CrTouBu83bskfP6fGdEl9+rDyq+PfqjEz25iVn6pKT3F0rG9QmOKdesMaLM2s/67RvkgQpEazu/gOdLzSqaFxbWuEf7WhTOMxsKA+OkmS5nJOYFEIKTDSeKIbnx1WhhseacRcFf81MhuBN+YMPo47nilnJBTUnxYVV6Lw3PDjCWGjv/GF0KFcEN6pVg+cgkG6eP9BQ1u7Gl82TGOhrb0TrFmYiU4PmjqhXSLl+rFoxWwG9ABf5OAG0TCKIZtwyBFpZOeBWH4OIj02/WHU6ygdQ1z0wQrKvQPYSYVsHIG3e4DJb0cdjQCtQOw+dxtef86z4yTLlw8Q+6KuNoQhZs3APLSZgp9nbtCyqK8O6dZWwfERSraoFLFmlnSTWi7fyltvnx1HJu4VGyjRjEaUPJp/1iTLysJJ+5talE7XHDuxDLD2onQvUUN2ZBnrag0BXbOvXBvIHHA64fCVvCY9MpQz7E+gZ9a4ptJ0rFhkMxDDTF9qfJb9+Op3MuKaYUtP8RTQV5bnSQgnbRF95HuoajYZGw+r8NwE7sTaxDHGtSQTB8GCGWv1fQYbeL+VBNmhQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB6325.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(39850400004)(346002)(376002)(366004)(230922051799003)(230273577357003)(230173577357003)(1800799012)(186009)(64100799003)(451199024)(86362001)(83380400001)(6506007)(26005)(53546011)(6512007)(2616005)(6486002)(478600001)(8936002)(5660300002)(8676002)(41300700001)(2906002)(966005)(4326008)(66556008)(316002)(66946007)(6916009)(66476007)(31696002)(36756003)(38100700002)(31686004)(66899024)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NS95M3JVMVNvdTZ1NHJ1WFluSlgxdWhQcVFGaXFiK2NzUlc2WFNiWGZKeXls?=
 =?utf-8?B?L2RCc1ZKZ05SY1ZUZmx5NUVBZEwxajJCQXNEWStNNzJoa0Fjend0bzRRbHVD?=
 =?utf-8?B?S2xtQ2JndFdoTlN3YTg1Vkk1WE1XdEhoaitSbmhOMmRnQU1URTZQaWhDaHZW?=
 =?utf-8?B?cWtKeE1COVJPQ3F2S3pTb0Rkb000L0J0dDFQaTZEOExENHBodDdJdFlpQmxz?=
 =?utf-8?B?djNOMmprS0ZFZ1NHMGtUQWd4eUxYTDJtOVprb0xxUlQvSG5TVzB2NTRkUWQ1?=
 =?utf-8?B?TEIrWFBadWpCQkRLQWVITnJzbHVwWFBMbUJpbldEdUdMdEZjcFQ5TFRXTTQy?=
 =?utf-8?B?ZTk3L2VQUlRkR2Y4aDlGRUltaUNibjZxWXZtWUdQaHdOTkFtVy9NWUZ1cVhG?=
 =?utf-8?B?RGxGOUVaUllrMmhHVW5SbmNMY3haUGRDSHBXMGJXNjdybmYwZzVIaHdrSzBQ?=
 =?utf-8?B?QVgweVNWWE9XUGt4eDlqcDRRQVFqWHRZYm1MOEFHTkdNSGtpQzVpamJqNCtN?=
 =?utf-8?B?VzFDY2JueDFCRUdGWHlQUFNzNzRjaVVaTjl2TXpXMU91aVZadmRBaytvY2hW?=
 =?utf-8?B?K1lPSGlabmlocjZvMkNEUGlzSHVwN0k1ZlJYMDZmT0ErV1dMN055VE1aQTZP?=
 =?utf-8?B?bGFPeVpxRVZMYk1SdXRQeHY3Ynkrc3ZqZVc5UmZuM0ZjMUNUNnVZelRIaWdW?=
 =?utf-8?B?VWRZZk9NUjJua3lQTUJVSDdsOUZFanJ2YjZCQ1IrdE9GZHplUzI3WXVXNFd3?=
 =?utf-8?B?ZlN2MTBwSUF4cGxBdWlicG55L21qSXpNMjJzNXZSY0pFcnBjNzZWNFhBNmt4?=
 =?utf-8?B?elhWTTY4b3B2NHEyUzNEM0dTY3RwaFA3N1RVNTY3cm1KQ0NrbStZOHZGTFNq?=
 =?utf-8?B?QVZ5L0g3NE84bEJrR2tEcDBFTCtEcFFxUmM5dVRFOWpIWFpudmlPajJSRzNR?=
 =?utf-8?B?aVE4czBBbThKajBCSjFyZ1BoWDRPOXFSWCtjV0JxK1ROUFBhd2FhSHJ0ZE5V?=
 =?utf-8?B?emU0dkNyMEpldDJSQzZDbDZvQzF0bS95RG1GVE44aE1XSXhrVlhicFErU24x?=
 =?utf-8?B?QmRCVi96bUlLbklPbEdPRnBpb0c1dXlPVDBsK3dYVkdTSG9lS0tveTZsK1da?=
 =?utf-8?B?U2RyNDh4YmRmVDhManYyS1V0TFVORVJ5aWF2Wk9LYTV2dWhzcUhRUS8wZ0Iw?=
 =?utf-8?B?blVEUGlhMHRjMUVPTHVUUStRZG02VENuZTNRMHcyTnBac2ViczRjMWkzd2Rj?=
 =?utf-8?B?RFdsSzZmT2Rva0RNZy9WK0xrSDRDdzBDZ0RsK0lNSlVpWTdxbWc0TXBKS2cx?=
 =?utf-8?B?dzhCNSs2RHFDaG9GcjFaZk5jTUtiZmpzWWtZMytoeGVUZ2Mxd2hFWGNIM3Fr?=
 =?utf-8?B?QkhnVUQ2NCtGV0hOci9lVEg3RHdyemhEZW5MKzZlUzBPMWxlcU5QcXBvbkxX?=
 =?utf-8?B?c0tKaTNGZzJNVXlEVWFUK3Zrd20zS2sxU0VLbWNsVGIyeW5YKzd6emg2NTFV?=
 =?utf-8?B?ei9kNGNEK1NteUxNZ3RqOXVyUmNLODRSaSs4ejlpTmtDSTFkdTZXWk1rZWlt?=
 =?utf-8?B?U3BnbW4vTDI0eVdPVHBYY3QzUUg5ZjM4MVB6WkRONGh5ZEpCc0h1bXNXbUY1?=
 =?utf-8?B?VW80eURWbW1aQmZ0Q25rMDBCN1preEY1eXpBWEI3aitiWW1aeU52dDd0OUs5?=
 =?utf-8?B?VlB2Vmp6cllYQmhuYW85MHRGV2xpbk9jVjBSd21YZHhBY1IzZ3FmaEliMG1s?=
 =?utf-8?B?b2ZscktlcGRObjlwUElLekNxQ0pzRmJZTklDdTI3OERZUCtqNDlyZkVRZHhi?=
 =?utf-8?B?OUlDbFFPcmw2UkEzTWdlUFF4NDRGRTk3TWJ5djlzejcyVnMvcHI0TkV5eklG?=
 =?utf-8?B?RHBYMWhMVkFyZUdubHhhZkJWMkM5Z2ZRQi8xRjdkZDk2VUxPTkdNbzAzK3ln?=
 =?utf-8?B?cUxMYW1iWUpiNGlyckFwdjJHNjZHVFlCQzh4QjZDZ2QwUndpNURLd01PbDJT?=
 =?utf-8?B?U0g1RFdyUzJaWFg3SjVOQ3Z5RWJZaEFJYnBIT052T25yNEthRDhIU29sbllW?=
 =?utf-8?B?ZGJkRmpFY2Ftc2MzaGgvTTR6a25SYW96TzBqSUVuSE5UZ0NtUTFQbk1jUlVM?=
 =?utf-8?B?eHpJRVhTS1JkbGRyMzVFeVQzQmYzV2JOaGJUWUtNcUtjdlk0K0FrM0ZNOEZj?=
 =?utf-8?B?UEE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639ae15f-0410-4aa1-fc28-08dbf21695ce
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6325.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 02:38:22.2845
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KX4Bo5blAaHzMSHzpp7qhtBoblf0sUGzOwmXWd4SVaDFoC5UmTqNHyFYTvA+O6AcoGY1RYwAdiPj+yuCwC4klCQxMv1mInr64Qm5mA1Z3Mw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8187
X-Proofpoint-GUID: 7iG9OQ3SWuzRM7SCygSrrg76gWvwqUrg
X-Proofpoint-ORIG-GUID: 7iG9OQ3SWuzRM7SCygSrrg76gWvwqUrg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 clxscore=1015 spamscore=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 impostorscore=0 adultscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2312010014
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3B12Id8f006202
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 02:38:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61784


On 12/1/2023 00:54, Khem Raj wrote:
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender =
and know the content is safe.
>
> On Thu, Nov 30, 2023 at 12:31=E2=80=AFAM wenlin.kang@windriver.com via
> lists.yoctoproject.org
> <wenlin.kang=3Dwindriver.com@lists.yoctoproject.org> wrote:
>> From: Wenlin Kang <wenlin.kang@windriver.com>
>>
>> Steps to reproduce
>>    1) add layer meta-mingw
>>    2) add line in local.conf
>>       SDKMACHINE =3D "x86_64-mingw32"
>>    3) bitbake nativesdk-libxcrypt
>>
>> Fixed:
>> 1. .symver error
>>    | {standard input}: Assembler messages:
>>    | {standard input}:4: Error: unknown pseudo-op: `.symver'
>>
>> 2. pedantic error
>>    | ../git/lib/crypt.c:316:24: error: ISO C does not allow extra ';' =
outside of a function [-Werror=3Dpedantic]
>>    |   316 | SYMVER_crypt_gensalt_rn;
>>    |       |
>>
>> 3. conversion error
>>    | ../git/lib/util-get-random-bytes.c: In function '_crypt_get_rando=
m_bytes':
>>    | ../git/lib/util-get-random-bytes.c:140:42: error: conversion from=
 'size_t' {aka 'long long unsigned int'} to 'unsigned int' may change val=
ue [-Werror=3Dconversion]
>>    |   140 |           ssize_t nread =3D read (fd, buf, buflen);
>>
>> Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
>> ---
>>   .../0001-Fix-for-compilation-on-Windows.patch | 37 +++++++++++++++
>>   ...dom-bytes.c-fixed-conversion-error-w.patch | 47 +++++++++++++++++=
++
>>   recipes-core/libxcrypt/libxcrypt_%.bbappend   |  7 +++
>>   3 files changed, 91 insertions(+)
>>   create mode 100644 recipes-core/libxcrypt/libxcrypt/0001-Fix-for-com=
pilation-on-Windows.patch
>>   create mode 100644 recipes-core/libxcrypt/libxcrypt/0001-lib-util-ge=
t-random-bytes.c-fixed-conversion-error-w.patch
>>   create mode 100644 recipes-core/libxcrypt/libxcrypt_%.bbappend
>>
>> diff --git a/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation=
-on-Windows.patch b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compila=
tion-on-Windows.patch
>> new file mode 100644
>> index 0000000..5760ee0
>> --- /dev/null
>> +++ b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Win=
dows.patch
>> @@ -0,0 +1,37 @@
>> +From a507b628a5a5d4e4f1cf0f0a9a72967470ee7624 Mon Sep 17 00:00:00 200=
1
>> +From: Brecht Sanders <brecht@sanders.org>
>> +Date: Fri, 3 Feb 2023 08:44:49 +0100
>> +Subject: [PATCH] Fix for compilation on Windows
>> +
>> +This fix allows the library to build on Windows (at least with MinGW-=
w64).
>> +
>> +`.symver` is only supported for ELF format but Windows uses COFF/PE.
>> +
>> +Workaround dummy define of `symver_set()`
>> +
>> +Upstream-Status: Backport [https://github.com/besser82/libxcrypt/comm=
it/a507b628a5a5d4e4f1cf0f0a9a72967470ee7624]
>> +
>> +Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
>> +---
>> + lib/crypt-port.h | 5 +++++
>> + 1 file changed, 5 insertions(+)
>> +
>> +diff --git a/lib/crypt-port.h b/lib/crypt-port.h
>> +index f06ca24..a707939 100644
>> +--- a/lib/crypt-port.h
>> ++++ b/lib/crypt-port.h
>> +@@ -201,6 +201,11 @@ extern size_t strcpy_or_abort (void *dst, size_t=
 d_size, const void *src);
>> +   __asm__(".globl _" extstr);                           \
>> +   __asm__(".set _" extstr ", _" #intname)
>> +
>> ++#elif defined _WIN32
>> ++
>> ++/* .symver is only supported for ELF format, Windows uses COFF/PE */
>> ++# define symver_set(extstr, intname, version, mode)
>> ++
>> + #elif defined __GNUC__ && __GNUC__ >=3D 3
>> +
>> + # define _strong_alias(name, aliasname) \
>> +--
>> +2.34.1
>> +
>> diff --git a/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random=
-bytes.c-fixed-conversion-error-w.patch b/recipes-core/libxcrypt/libxcryp=
t/0001-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch
>> new file mode 100644
>> index 0000000..3846f76
>> --- /dev/null
>> +++ b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.=
c-fixed-conversion-error-w.patch
>> @@ -0,0 +1,47 @@
>> +From ff99091eb8a6b9e6edc567f6d2552183fbaacec3 Mon Sep 17 00:00:00 200=
1
>> +From: Wenlin Kang <wenlin.kang@windriver.com>
>> +Date: Mon, 6 Nov 2023 14:43:28 +0800
>> +Subject: [PATCH] lib/util-get-random-bytes.c: fixed conversion error =
with
>> + mingw
>> +
>> +With x86_64-w64-mingw32-gcc. get below error:
>> +| ../git/lib/util-get-random-bytes.c: In function '_crypt_get_random_=
bytes':
>> +| ../git/lib/util-get-random-bytes.c:140:42: error: conversion from '=
size_t' {aka 'long long unsigned int'} to 'unsigned int' may change value=
 [-Werror=3Dconversion]
>> +|   140 |           ssize_t nread =3D read (fd, buf, buflen);
>> +|       |                                          ^~~~~~
>> +
>> +In util-get-random-bytes.c, has get_random_bytes(void *buf, size_t bu=
flen),
>> +but in mingw-w64-mingw-w64/mingw-w64-headers/crt/io.h, read() has "un=
signed int"
>> +read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount), and h=
as:
>> + #ifdef _WIN64
>> +   __MINGW_EXTENSION typedef unsigned __int64 size_t;
>> + #else
>> +   typedef unsigned int size_t;
>> + #endif /* _WIN64 */
>> +
>> +Upstream-Status: Pending
>> +
>> +Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
>> +---
>> + lib/util-get-random-bytes.c | 4 ++++
>> + 1 file changed, 4 insertions(+)
>> +
>> +diff --git a/lib/util-get-random-bytes.c b/lib/util-get-random-bytes.=
c
>> +index 79816db..68cd378 100644
>> +--- a/lib/util-get-random-bytes.c
>> ++++ b/lib/util-get-random-bytes.c
>> +@@ -137,7 +137,11 @@ get_random_bytes(void *buf, size_t buflen)
>> +         dev_urandom_doesnt_work =3D true;
>> +       else
>> +         {
>> ++#ifdef _WIN64
>> ++          ssize_t nread =3D read (fd, buf, (unsigned int)buflen);
>> ++#else
>> +           ssize_t nread =3D read (fd, buf, buflen);
>> ++#endif
> read is system API and I wonder why we are not getting right API
> signature here as I think
> size_t should already be defined based on _WIN64 in system headers.


1. read() is declared in=20
https://sourceforge.net/p/mingw-w64/code/HEAD/tree/trunk/mingw-w64-header=
s/crt/io.h,=20
but it has only a declaration for 32-bit,=C2=A0 with 64-bit, it can't be =
found

2. for size_t, it has:

#ifdef _WIN64
 =C2=A0 __MINGW_EXTENSION typedef __int64 ssize_t;
#else
 =C2=A0 typedef int ssize_t;
#endif /* _WIN64 */


>
>> +           if (nread < 0 || (size_t)nread < buflen)
>> +             dev_urandom_doesnt_work =3D true;
>> +
>> +--
>> +2.25.1
>> +
>> diff --git a/recipes-core/libxcrypt/libxcrypt_%.bbappend b/recipes-cor=
e/libxcrypt/libxcrypt_%.bbappend
>> new file mode 100644
>> index 0000000..cb9c45e
>> --- /dev/null
>> +++ b/recipes-core/libxcrypt/libxcrypt_%.bbappend
>> @@ -0,0 +1,7 @@
>> +FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>> +
>> +SRC_URI:append:mingw32 =3D "file://0001-Fix-for-compilation-on-Window=
s.patch \
>> +                          file://0001-lib-util-get-random-bytes.c-fix=
ed-conversion-error-w.patch \
>> +"
>> +
>> +CFLAGS:append:class-nativesdk:mingw32 =3D " -Wno-pedantic"
>> --
>> 2.39.0
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#61775): https://lists.yoctoproject.org/g/yocto/mes=
sage/61775
>> Mute This Topic: https://lists.yoctoproject.org/mt/102890384/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
--=20
--
Thanks
Wenlin Kang


