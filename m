Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C53CCCA47E
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 15:55:16 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.57536.1656431712365117591
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 08:55:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=L32P9sfl;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=4178f71ff9=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 25SEwjQV013276;
	Tue, 28 Jun 2022 15:55:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=egJfL5UYs6bTUaT/x1x556qvUxJA1FSd37xll1maIh8=;
 b=L32P9sfllSaANrhrqje1OYk7wixpmJSDuccU9zmR18GmRIPDLIoGrfhDcisfNUOnQDUa
 4eu35d4gOVVYG6gEBHNBZDWwg6msuVDsw7mgRgpQvmcpcE+33D0rNuMIzI+IQ+o5jq9l
 GhNId8d/36ufE45UV8VhkLR5EZKQlKQQqK+t2tdIo3U/QD2vksZy1UPvBaH5veNM4wQ2
 P48KxxkkuJ16uvvGLL6NBx3pxOL9qo14PjRrpOzlZ6neCK4bO6BmKmZCO62p/mw2bt77
 Lle5OJm4bUIvh66ALGlpbZj3Q9bwf/wGb6eH3qRAcyaqJwRsKLPkKemz6dJ+YC+wUKjV xQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2170.outbound.protection.outlook.com [104.47.57.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gwsbajeru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Jun 2022 15:55:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f588N3TBCmgPOLQt+jPB1V55jdFRdCQOrw4NKPvqttAkVy93IQAHnEKBjT4Eey+3vHYQG+1l0Pf2ZRvL1i31+2xera9N2dPuB2Na9dnvKdHjMN1FxGhEHc0vndUYB3z3YoeNQWze9J8zXZmuhAl4qQ5qFOlkpl79Xjz/1e9WlvKoKrVF/wnwM6O1s9ZL8K3JrdlQMSK0sqE2vcZJ3qAQsfJBdhN8jOomMdl4IAJaE5f3abGeLO8wSAQrxcwrdDbknNVIsK9f6vb72/2uOPjsTK6aFDVwLqRaDVhPFe/rx8YJigmLTM1GrIQIJ0OrF2HjWEN1Aq5ls3VWebfnN0f60Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=egJfL5UYs6bTUaT/x1x556qvUxJA1FSd37xll1maIh8=;
 b=QsgwUSXs2wL5jUw8R/w5dVsbIo4O3RXqkBjLs/iB/X+09pgZDAMreUJ6pSCoOWZV08Auc76H9rQP9WQoAbJCcYNafW6UY7n28UKW/Ec4OrZEYFmZg2rtv3GvbltBLLhUFuv6B8TsbONCPw+LcuhwpC8mwPc4vkiPd7UpoaNwMU6//RN5y9aW3h5cEO/GL2iQI5FMvoNC2spO77WGtI5FSZYMQEKL7+JYsJMDeyls7Y7OeRj0vBdw+Nhs/PFjG2swQLUx5IlsvtH0pljjVHxMWT2v/NIoY1ldNr7c3m54PAbc2XN7WQkagQtNHO4l63k1ofGpu0xFfTO+nLipU3B+5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BN6PR1101MB2340.namprd11.prod.outlook.com (2603:10b6:404:98::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Tue, 28 Jun
 2022 15:55:05 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b999:2318:495a:f64a]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b999:2318:495a:f64a%3]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 15:55:05 +0000
Message-ID: <ee8058e4-888f-7647-9765-67ab510420df@windriver.com>
Date: Tue, 28 Jun 2022 11:54:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] Regression in rust-cross-canadian-aarch64
Content-Language: en-CA
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Peter Bergin <peter@berginkonsult.se>, yocto@lists.yoctoproject.org,
        "Kokkonda, Sundeep" <Sundeep.Kokkonda@windriver.com>,
        "Gowda, Naveen" <naveen.gowda@windriver.com>
References: <16FA2096B2BC4C47.21247@lists.yoctoproject.org>
 <58c0ec3e-a06a-7829-1168-ef7e70b365f0@berginkonsult.se>
 <2d04b7d16c6c6552b897f1ff73d34995023e311b.camel@linuxfoundation.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: 
 <2d04b7d16c6c6552b897f1ff73d34995023e311b.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SJ0PR03CA0386.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b919d7e2-c008-4b43-0ef6-08da591e9179
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2340:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wSFfAy1CBL8ebEiGPkWo8iyxOkDVOvLEQJTVogZWj3plsyXULSlMQdqr05p372vQObZNd7cjhFX+171AyvItTGHJUQ3Nehgf4NspP/Nkya5K9n6SaKbGRFqHnSDV1H+puy73xK8v5x7sanhg7TlzOX1fWCuTwnEa0XrkfE4JlNpXw0MXugVoalc53uD9fH0r9ki1MPoas2nh54VeedVADWbuD5MOPwFKD9G03WfXEH1icyP+axQ8gF05XIZsrI8370blkWd/cZFGr57Vt+G22qcTd0s43B9wpVlwF4yEt0miC3yDnXg6ftE6E7WyFqnwbi5esqhk1ovS6D+ITuqrvEdyC81128sHdY8iogUNuTk8sBigqmwz8rcNBTBftJQQ1MOb569OdVVq3hkws0J7/ebDl9PiARXp53eBeZSGv+ftCwuTBO3PD2BnbmTh5hruO1rKwjARiu1FDOTx8GlEy08AEC3AGn8tPMVYeVoNsi1KKXd6OutmZ4ZovDoh71PtxDZFGJWcoBSyVwymcHxy9xs6D9i4c27twbFMseFZz0lEjDLdfaA7cfcUvydPGZEhDNaz5sjoNXa/E6vG6XNFdcA15Kcp44UMAcBsVWx0v/kKPBqCIDKT2E99IumOLoW2967AYbSHEH9YGapKsb/fldZr/mpQQa2ddwWrqF26f0/VzEra1GLBzRgT4rDeUOUoyFJbb6JUJshjsm96hpNpHbq1lEDVYmz6Y/9IRaPbSLDBr/QkcXEc4NDQEV9SiajW31Zo6JAght7wkdTOomquuuG0isPbHNhKsAZQD9y2A5QkZbRfD6vgsF7qNpXZuvQUDnxvhSk/sJ+I5EtsSBad75o9wvYVZahpE12CNUCkNR20Ulz1Vzdg1O1xtcGOIwVr/f8/oV4Z8sU2RueuyUsU2qd/ZYtYyRHf1PG2tPJ3mok=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(39850400004)(376002)(136003)(346002)(396003)(38100700002)(6506007)(110136005)(41300700001)(2906002)(31686004)(83380400001)(186003)(316002)(6486002)(2616005)(6666004)(52116002)(31696002)(66946007)(66556008)(53546011)(38350700002)(6512007)(86362001)(8936002)(26005)(8676002)(966005)(36756003)(5660300002)(6636002)(66476007)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eTNOUlFpUlhCOGV0R2t5bkV0aDRPTi9rZkJUWXVtMFd5QTJTVjJoeVVvUHhm?=
 =?utf-8?B?bFBmM3l5UVFEM2QxY090TnJrMzVTWFk0ZHZOeGF5WU5wQjliZmNhRGtoamxo?=
 =?utf-8?B?SDJWRW5XQkZFZ3pSajRKTUwwM3FWN3dIWng1dmxGQmd0a25jUjI1TjJXZW4r?=
 =?utf-8?B?Tzh1dS8wU28wWXp6L3VrMlpzSFd0Z2NpWHdHaUt0VWxWL2Z4dThQdmxDT3hm?=
 =?utf-8?B?Vi9JZE1mdlBQckNqQWs3VnVOQWd4eEhZWlI3eTNIbEwzbVcra1ZKVm1RS2c4?=
 =?utf-8?B?QkgwSFM2YmxKMzNzOG94RzQ2MTJVOWpKZVJwMzJEOE9aWWdndjJuYklFc0k0?=
 =?utf-8?B?VXFWUjEzZ1dtSGJrV1U0dm1oSVA2dURQVmNVY0ZOdzg0azYzbUM2WmczUnJ5?=
 =?utf-8?B?UGpidE1PRnAyamVyRFdKWHZCakFId0cyV1BiVXh4OWk4Z3U3cmtDbjJqQzVw?=
 =?utf-8?B?UGowUC9oZCtiYWpQem9PYWN5NHpEbTlMNlNQaTdYYjRZa1pxOTRINE5zUG4z?=
 =?utf-8?B?ZmY3ZExyZThBMHJvSDgwMTB2bWRMRHZKZDBDclRVRUE2Z2gxbXh3NzREWHJI?=
 =?utf-8?B?ajJQMnZmYlNsbkpSU1lYcUwwNHhpa1Q1d1Myam9rQ21KTFNMc0x4Y0dlRUJn?=
 =?utf-8?B?aTlZdmtWK3FONjk2RTF4aCt0Q2tQZ0dLcHFnQ1ZpREpUZ1JoT1FCbHhyR29o?=
 =?utf-8?B?cGNvZmRtU1Z2NER2bEliR3QyZzNaS0RYK0d2Q2wySE9pMzdnUlpGK01hUi9x?=
 =?utf-8?B?c0hFOHZBNGRzaWVuQ2ZKbEV0cDBsZGhpbGRLSXk0VXFOMTZVRW5pWFBiYXdi?=
 =?utf-8?B?cEtzc1VoVEVsTnZBVHNXNHNlYk9vdjZYaUJMdjRxbG5CZldRN1c1T3lyUTRa?=
 =?utf-8?B?SEs1WldFazZzYVhVN2N4K3VBNXJ5R09Kckc1Y1hUMy9nZ0NBbE1ncFJWQUhw?=
 =?utf-8?B?L1p6Sk52bkhtNXhvRTBmK0FMNkRjTHA1Mjg4SlU4T1NoNDQ1b3FQM25yYTRK?=
 =?utf-8?B?bGZCRHp1b2JzNTgxWUtIUTRmUGUrQTAyNzB0Q2tqbnN2VVFTNVAxTHBwUUwv?=
 =?utf-8?B?K3JZeEY0Vk5OdVBwbGVsUW5nRTY5bzdDeFlZZlU4aDdGcXBsRHF6ZnNIRkI5?=
 =?utf-8?B?YzFObkpYNWRRZ3lOYmk2Rzl5d0FsNW5pZ25vaG9XdDdiK3c1VXF2cVlWWjZS?=
 =?utf-8?B?anhmcHRIWmxrL1RTa2pSTlhpMmlvNUVWclJYbHRBSzJsd1RFa2VFTWxVREpv?=
 =?utf-8?B?MUpOcGRGbXlYSHg3cHV0MVRoRWp6cmZUenVjQWxKOWdZU2cyYWZyKzhONCtN?=
 =?utf-8?B?dldwUTZNSXRhNUh3L1BsSmROa0Z2S0hIa1RsM1l2SU1ER1pacGluU1NhWEZK?=
 =?utf-8?B?dFc0aW12MzYrOEZIeUdKY3RHMzArb3lxeGxoZFdsRWxxVkgzVFljYy80REhR?=
 =?utf-8?B?d3pST2xXcUJ1M0lES1NUVndtRVp3aWNvWnRSRHBTTCtCSFBQNUNlNHBnRWMz?=
 =?utf-8?B?QTRzR1J5akpqbldVajJyQ0V6enVPd1FGcHR5NU55Vm02dkJDeUtWemNJcmhu?=
 =?utf-8?B?ZG9GbXhUdDhaWFdMQ21iRUl5b2VNYnVGZEJ6M1kwM1V6N09GY0RzS3YwTkVh?=
 =?utf-8?B?ajJuNUUwRi9GUTk1MEJYdkFKZXBha3VSeDZQMTZEK3kydU14UWlmQUV6emF3?=
 =?utf-8?B?YTRvRnhCTEZZQWZVdVU2N2xqd2djUjcyM1o2cGNFU3luUXN3bFdRbjNxK0ZH?=
 =?utf-8?B?UDFQTEtkYWVJR3JTYlFvT2tvOVIwUDFkUUozTjJwZ3czVWw0cjc2L3REZ1Fa?=
 =?utf-8?B?Nk9MdnE5VWhXMVY1bXFDanZucHVPOXFqc1R5bjdCNDZLTm1wOWJTcWJEL1E5?=
 =?utf-8?B?NnhJbGlINTdkMkkvcU56L0lpSjQwendrdGlsWk4rOVVBOGJMWC8rMzhhdmpG?=
 =?utf-8?B?Vk5tNmpTVlptYlI4UDJJOXcwKzM2YU1tRkpkbDdpdWowZm9GVS9jekxsMjlS?=
 =?utf-8?B?MTJyYkRSbHN1VThLMEo0RUxrcm1COWh1Zk1jUExIbjlPQ1hjeHZUZWV4RW5a?=
 =?utf-8?B?RTArYzJrNHB6VDdldmlnQkV2MVVIaFlxajJnVzNUV1lnK2hsWjJjWExMV2pK?=
 =?utf-8?B?cUxvTVBHVVhldWEyUVAvN2UxRTk3bkdvaEVTUTJYbWRNRkpQdVRaQmlwcjh1?=
 =?utf-8?B?WkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b919d7e2-c008-4b43-0ef6-08da591e9179
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 15:55:05.1961
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 XKa9dYY6/XKsjup2sr9KQ4r7yRAn2vHLyKU/3QEmmgj85y7SG9+y4G1Zk2Iz6I2EMQkncFTsxNjHOPrQIC9WodLo9fGNzRBZWDwkfF4tdts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2340
X-Proofpoint-ORIG-GUID: Oav_4suBtkmjxGkKebk9M2v0c7_mlShO
X-Proofpoint-GUID: Oav_4suBtkmjxGkKebk9M2v0c7_mlShO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-06-28_09,2022-06-28_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 clxscore=1011 mlxscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206280064
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 25SEwjQV013276
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 15:55:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57410

On 2022-06-28 07:38, Richard Purdie wrote:
> On Tue, 2022-06-28 at 11:00 +0200, Peter Bergin wrote:
>> When building rust-cross-canadian-aarch64 the file
>> 'tmp/work/x86_64-nativesdk-pokysdk-linux/rust-cross-canadian-aarch64/1=
.60.0-r0/targets/aarch64-poky-linux.json'
>> will be populated with the information '"llvm-target":
>> "x86_64-unknown-linux-gnu"'. This will lead to object files in wrong
>> format during 'Building stage2 std artifacts (x86_64-unknown-linux-gnu
>> -> aarch64-poky-linux)' in the do_compile step.
>>
>> In 'meta/recipes-devtools/rust/rust-common.inc':
>>
>>   =C2=A0=C2=A0=C2=A0 # build tspec
>>   =C2=A0=C2=A0=C2=A0 tspec =3D {}
>>   =C2=A0=C2=A0=C2=A0 if bb.data.inherits_class('cross-canadian', d):
>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tspec['llvm-target'] =3D =
d.getVar('RUST_HOST_SYS', arch_abi)
>>   =C2=A0=C2=A0=C2=A0 else:
>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tspec['llvm-target'] =3D =
d.getVar('RUST_TARGET_SYS', arch_abi)
>>
>> So for some reason it seems intentional to set 'llvm-target' to HOST_S=
YS
>> when 'cross-canadian'. The behavior has changed with this patch. Befor=
e
>> 'llvm-target' was set to RUST_TARGET_SYS for all target archs other th=
an
>> x86_64 where it was set to RUST_HOST_SYS. I guess this change has to d=
o
>> with the commit message 'This might even help cross-canadian work on
>> something which isn't x86-64.'? But unfortunately it seems to break th=
e
>> case building on x86_64 for aarch64. It would be good to get some help
>> here to sort this out.
> I've spent an age staring at this code this morning. I don't think
> cross-canadian has ever worked properly. It might happen that some
> combinations build but there are also some that don't and clearly never
> have.
>
> SDKMACHINE =3D "aarch64", MACHINE =3D "qemuarm64" certainly doesn't wor=
k.
> It appears to be missing a ninja-native dependency and when that is
> added, it can't find rust-llvm.
>
> Looking at the do_configure from rust.inc, it considers BUILD triplets
> and TARGET triplets but not HOST ones, which probably dooms cross-
> canadian to failure since there, BUILD !=3D HOST !=3D TARGET.
>
> Someone is going to have to step up and sort out the canadian cross
> rust pieces properly. Whilst my patch probably did regress one config,
> I think there are much deeper issues in there.

Sundeep and/or Naveen please take a look.

Peter,
Please open a Yocto bug and document the steps to reproduce the error.

../Randy


>
> Cheers,
>
> Richard
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57400): https://lists.yoctoproject.org/g/yocto/mess=
age/57400
> Mute This Topic: https://lists.yoctoproject.org/mt/91864950/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux


