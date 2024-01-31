Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80CF7C48286
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 02:49:44 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.6021.1706669378326781492
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jan 2024 18:49:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=auLPf7ek;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=27603b54c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 40V1UVG6018617;
	Tue, 30 Jan 2024 18:49:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=dOZgphdm9JgfOb1JXWR4UiADaCzZJs5QdxGVMtJOtec=; b=
	auLPf7ekrLJxogZCcDd4rBVhM31LKhEXUBYHSetBvn5eDbfvzvvGmVEZGt2thmGT
	x8Ll+/xIP0kRA9JQMpXbFMa9whUI2UMB8ZwfWkIo774A2M4c8wSE/kJtSbLJA7o1
	++g0sHf8cI8Jf/EfkdSuseNUbDPREzqhMimVdNlmnp8Li3xtWMvbi9NGW0wGGnWY
	QQtTrSMenBLUTYUCgMVAckjgz1blTfk2yFsi3+MLvslRRLWpcPlCwdVVOhZEXUbW
	lOm4xLaOEvMhN9V5yUGjgw22/gIq+6KDQH1dufVYTMUyPHKb1AsNihJhR9XAgLZD
	kKtJMpKvLrMOxNZWq7XmXg==
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2168.outbound.protection.outlook.com [104.47.73.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3vyatw03sp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Jan 2024 18:49:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PEJ3nUKeoixcOXOAA6D5YEH6TspxV8E9iq+ONIxAVpNHex0XuNOpNBLMYVgZni07M3o0zzEKliS2Ga3zm+46PdGvlecXuTHEOlsD/pdXbM7gF3ti8UKDfUZGKotpoBd2R2cAfTP/PvSZBX6xehayeiMQRqDX9M+3UONnqxikOtegiv1iiFBwj7UZYN89IdW6Oij0Teb4ezIrEokvfxYSjUF7wmVRJPsSUk7O4CWGTfCtRYpfdGN5n0s7QvUiMyutjdhzDI444qqpY4zeNpWOJCk6ZHZPF6B5h0D80OdcA8oJIrWh/FyWLf8DYg589pT2K3PcBWWlePAaOxGtgk4Hzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dOZgphdm9JgfOb1JXWR4UiADaCzZJs5QdxGVMtJOtec=;
 b=ZagwwYcCi31agr1CmT+Ba6Wi/4DxlYoPPL1yLhclP+eL4n12OR57jVn1nCp0NTGoZkVs+uGTcroND14mWuDdbWkgwqd+8cRyMeRYYSkf/JOYV0ijOItj4zJwVhv64vGCKrfVSTTP9rmyw9PPC/QA9pIFrEIUD/L5liFl6TIz03lpgeVesk0lRR7Ul+Mi5pOeR1pbPlqsF7EhNC4OXzWV988vH6UFnQBKHQXAOvwIUv8yN3CbpQC0i8aecAvgJGVs9P8QkmsxyESXlezrzN9ugGMzD8FnByUdToBjh4DSLP8nYOh5UxrbjOuZ1ZeVkfEtAJACo0WNHnBsDmXqDIjVTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by IA1PR11MB8198.namprd11.prod.outlook.com (2603:10b6:208:453::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Wed, 31 Jan
 2024 02:49:30 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b%7]) with mapi id 15.20.7228.029; Wed, 31 Jan 2024
 02:49:29 +0000
Message-ID: <deccfd75-dc2d-4f57-b6bb-e761f3f3e134@windriver.com>
Date: Wed, 31 Jan 2024 10:49:25 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-selinux][PATCH] rpm: update PACKAGECONFIG for CMake
Content-Language: en-US
To: Denys Dmytriyenko <denis@denix.org>
Cc: yocto@lists.yoctoproject.org
References: <20240130205042.2641514-1-denis@denix.org>
 <8ddc0850-dcda-4c9a-a3f4-92763d6be27b@windriver.com>
 <20240131024316.GA15614@denix.org>
From: Yi Zhao <yi.zhao@windriver.com>
In-Reply-To: <20240131024316.GA15614@denix.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYCPR01CA0132.jpnprd01.prod.outlook.com
 (2603:1096:400:26d::17) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|IA1PR11MB8198:EE_
X-MS-Office365-Filtering-Correlation-Id: d6c8a224-a978-40e9-f8a6-08dc22073eed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ui5uDF3c3tEwBV1bqxU/ynIxtvSoUzYzGvuETuMz0yIUjOLsYHPPazuC0ng+5ap6+kFQr37wcmcfVQ39MYXrBkqT8w1vMdBIwTiaE3/2hNWnn4zwRJuw6LpwFLEkt953jSGSrCXW493S5OmIyQF1PYsOsN+oivqbfFGd4hC/h0VK/HNjKaV2d+EqysQwk39d8fv24ViapW1jcl3Sx+KCN6o0a8zoZ9JSTSFe4y2pONQ2pemZJm1dMk5BDV/suzWWj0wqbGhcjwqijLtQRq+oF0vyfLYyjwK2xk3w6jgy4Mbn9Efyw9nQ7cFw0O5HxUfkrP4y+0wpoRfXAPL6fbTCWYduJHWrAjKlcgIashfSfAAT+/xJa7AOWJr5sB62UEjFQkl35dKvgLnr61bKnafSPHclMzqtS0pA3779VSfnRXE5wjL/uo026Unh5nQJLPfjzLbkMVEcBsFK1f+KIIDCf5G1N0e+ctiKs67ym2ZHH5sLRc6CDqTE+7Fk7Bdiwduuvp2u/YsKtuW1f6fxACYCtZFIxzbtnI/VFI0Rp2L1+FQsvVBf5KHvwnzp5G3hZtyTcOi+Wrr+LaSvLp10rRbf17B1M7ayU/3dWNJaIP5WcYR4rGI+dzXGNWMDxo4FGKI+/ysEb0gXzlsN52pzrbl6Uw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(396003)(39850400004)(346002)(136003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(15650500001)(8936002)(4326008)(44832011)(86362001)(5660300002)(31696002)(8676002)(2906002)(66946007)(66556008)(66476007)(316002)(6916009)(36756003)(966005)(53546011)(38100700002)(478600001)(6666004)(6506007)(6512007)(26005)(83380400001)(6486002)(41300700001)(2616005)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YWVxWjJmbmVITzBsa2UyU0lCaksxY0s4M1ZieDJKUmlETVRDTlIyRzVsREFL?=
 =?utf-8?B?ckY2ektXSC9SbzZjVFpMVlpjWms0LzBuSy9kZGN4ZVhxYVU0M2RQSlNOeFAw?=
 =?utf-8?B?ai9UeEpyTFdHcHV6NnZEcmlKUjFQd2l6ZUhMZ1hsd3NQTWxhakhWN1psWFJo?=
 =?utf-8?B?dnFEQUMwNDNHTHQyaEtoMTZUUmRqU0l4N0hRMVJiY0VaME9XbzQvcDhRdkxn?=
 =?utf-8?B?OHNpTnJlb3hKVGJOUm5DaVl0YWtpZ3dJT3FpSzJQWkFkcGduYTFqN2ExR3gr?=
 =?utf-8?B?eUF6SXE5VDVvRnlTbk41c0xzOGlPVjdzMEx4WkxlU0ZjQ0RQYkJ4Q1ZGNHdL?=
 =?utf-8?B?ZDlVZ3EyaW4vaU9pUGs1OUJhWkp5eGZrSFlyaTJHYmgwVnQ4K1QyaUhKR3gv?=
 =?utf-8?B?SkFpeGRqWFJqR0NMUTNNNWQ4QTVHMVpsUmRyek81WC84WndVZklLemtPc2t6?=
 =?utf-8?B?USs1RUtNMFhZTjZaTDM0UVZoS0hsMGZFb1A5UWxxVDY2RVROK09BZE5mbnF0?=
 =?utf-8?B?RWJiNzl0SVgva2FYUVJETkVEMEVHT3NwUzlQRVpWL1o5M2ZtRUJybE1kbk9Z?=
 =?utf-8?B?eHJGaUEyS0UxaWZhSlBzcUxNV2VrUlJJVWxBenhDbG1iVlMrUlFZd1QwWWtp?=
 =?utf-8?B?RTBzaUJuSnNCMStTSTRBMDNjbFhkMHVDTDJDZndLRmxWMWhOR0Q2UjVnRnd4?=
 =?utf-8?B?VTdnVFpCUXA0Sm5FeHovZkRCYXkxWGp1RlBtQ0xSMzVFb0lOVXd5M1E0ajJW?=
 =?utf-8?B?M0VlOXh4Ym11NHlSSW9zNDRJOEFnRVN3ek8xN1dQcDZMamk5SGM4d013cjZ1?=
 =?utf-8?B?V3lPR3hYUVd3R1JLUGpWL0VIN3QxeWlkOTl2UndSbFQwTVhvWE8wa2swazFr?=
 =?utf-8?B?Z0lHTXUzRU9ncVFITDlPenZ6VlZnMUtDc0RyeHpYY05jTlJteVgzcEwwQVRm?=
 =?utf-8?B?WGsxMzhXN3pTRzlLaGd3ZzN2UlpUMkZ4eWtDcnJRQitkU0lPZCtHSkd6dFdF?=
 =?utf-8?B?TkpESjc5Z3NheDJRbUJwVDNLVUVNM3VMRjB6M1JiSnVMYzQ1V3ZYamUwblpH?=
 =?utf-8?B?eXJzbHZNSStlNzdBaE1wWHIySTVocElCd0d6eTNmUHAvMjZoVmdVL0JSVC9u?=
 =?utf-8?B?SWtmMHNDYTZVNWZINkZHZnhPbnZuWlJ3WmZZU1NsL2k2NzlkcjVCN2RLMHFT?=
 =?utf-8?B?aGlSODFMQTFtTEtZVEJVMUFFN2d0N3VYR0RWVVg4bXc2MVNuWGJZTkl5YzZR?=
 =?utf-8?B?ZjE1dHJvT29YQjI0Q2wwelRQQUFKUVM3cHhRSC9hN3I1bkNiU1NlTksxd1ND?=
 =?utf-8?B?OXNNY28wc0NJUjFmSTlReHVOZVJYazFMbmt2RlJiTGVWQUo4ek1rSko2c1B6?=
 =?utf-8?B?NHNQQ0dnNHMwcEV5R3RlKzZPUks5QmZWaU9JeXdMTHhlMWR5L29SQWFvdmJa?=
 =?utf-8?B?NFErRUExK2tabFNqcjhNdWtGdGo1NHJRZ1B4NHlZU3lvQmxPQzRUZkVsem1L?=
 =?utf-8?B?V1V6clJUbTQ2Tytkdks5SnBXZ1FXOWxxSW9BQ25YOUZNQ0hmTWgrNEtBaEt4?=
 =?utf-8?B?bEZML091RG90Y0ZKeThFcU5GamV3cHNHbkN4TVNUdGNOWEdrUHNVZmF1RGhX?=
 =?utf-8?B?bHZ6K2RMUktsK1cxdFJmZFdTY2FWbkF3QkJBaml1akczckNncVRqeUZBamVD?=
 =?utf-8?B?WUhNZzk0RDVxRmRHUkRqU2hxVVZqUysrU1NnWmwvSjlHRnRvczFaL2QwS2cz?=
 =?utf-8?B?NU51aS9HWUdabU01SmRqTmtjOTRnYXN1cGtTVTF6aTBIMkt5WjNlNVFKWFJt?=
 =?utf-8?B?ZHV1NHdQanhoY3Y0bjVrU3NRZUZFQzFVcUJPaG1VSlNORlpBNjJMeHBGQXpz?=
 =?utf-8?B?R3pEQmdsL2FHQ2dzOThCUUl4azZSU0RtWnBid2s1cnVlRGtsODVwZ1p0cEtI?=
 =?utf-8?B?WDJQdWpGZng2emFLNGZJQjhNYkR5NTBMREVHMkVCcnN4c0NuV3I2VmFhTmp5?=
 =?utf-8?B?K2Q4R0ZBYXZtaW94VWp2OHJpMGZIRm9OMFNEcndrdUljQjBic0RmMGJ1K0ZX?=
 =?utf-8?B?Vy9IUjNxcW5lRmRrMGJ5c2V5WlRZRFVNOURRbW93OVU2TUNxb1phUkdQMU5I?=
 =?utf-8?Q?arBkO5ijf0tG90HevKl/oj3in?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c8a224-a978-40e9-f8a6-08dc22073eed
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 02:49:29.6490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y7XdfbsBT+ug2K29RKAL6C7qXnqLJF5OQyGZpraHRUtfKviCnjV4ByipXm1eavPZH5djBHglUa3Fy1sBBiYNaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8198
X-Proofpoint-ORIG-GUID: _7ZYCTnBEH4fJb9HBJlNnFD7A-P1cWB2
X-Proofpoint-GUID: _7ZYCTnBEH4fJb9HBJlNnFD7A-P1cWB2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-30_14,2024-01-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 impostorscore=0 mlxlogscore=860 suspectscore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401190000 definitions=main-2401310022
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jan 2024 02:49:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62347


On 1/31/24 10:43, Denys Dmytriyenko wrote:
> On Wed, Jan 31, 2024 at 10:18:19AM +0800, Yi Zhao wrote:
>> On 1/31/24 04:50, Denys Dmytriyenko wrote:
>>> Version 4.19 has migrated from autoconf to CMake, update PACKAGECONFIG
>>> accordingly.
>>>
>>> https://git.openembedded.org/openembedded-core/commit/?id=38549d462b399e3a63335f60a44c8bbced98639a
>>>
>>> Signed-off-by: Denys Dmytriyenko<denis@denix.org>
>>> ---
>>>   recipes-devtools/rpm/rpm_selinux.inc | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rpm_selinux.inc
>>> index b6e0e7c..29eefbf 100644
>>> --- a/recipes-devtools/rpm/rpm_selinux.inc
>>> +++ b/recipes-devtools/rpm/rpm_selinux.inc
>>> @@ -1,2 +1,2 @@
>>>   inherit enable-selinux
>>> -PACKAGECONFIG[selinux] = "--with-selinux,--without-selinux,libselinux"
>>> +PACKAGECONFIG[selinux] = "-DWITH_SELINUX=ON,-DWITH_SELINUX=OFF,libselinux"
>> I see that PACKAGECONFIG[selinux] has been added to rpm recipe in
>> oe-core. We can just remove this line.
> Unfortunately, it doesn't have the required "libselinux" dependency in
> oe-core.

We can send a patch to fix it :-)


//Yi

>

