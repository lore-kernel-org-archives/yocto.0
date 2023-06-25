Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBFFEB64DC
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 03:30:02 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.5873.1687663798350649165
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 20:29:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=H7ons80Q;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=554073d143=kai.kang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35P3TV0d009336;
	Sat, 24 Jun 2023 20:29:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=FknCe4v1Cr54hla1Bl/Pb1eVa2i+bpr5gE4bitLKBrc=; b=
	H7ons80QfL7w4iEUut5tchqROJYy9+rJ4832IqvCO0YmuJT7YKCyq6pv6qOpH22m
	r68f2qF6ZvReLMW1ccGStUfosdzfWk0YWT99eks7pW34bzGVGdmsx/imKn9pD82V
	2SZuqKPnp6tUQzgAiZaNkKZVtbCyLZDbWSaYQOCnuMDJ50j5RMIc4jRADtRsEpfF
	6u6DCU7/I1B8Kex69Q/xvnrTBmILX4SSFotTk4AdwKRKlbc5QNbWRDhD0OLC4ojl
	ja8Rh4Fq0Wh+UiJZ9U/HRYBoXAFT8SYFU9lXhjoVmvGkCacKbXgyO98u/bG0Db8C
	ZJyVUDmHVqnHzbwhxpWYDw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rdurxrjyd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 24 Jun 2023 20:29:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DE6ZoB3C+0t8/ZUcQ0PBol5mDt7GTAHI7ad3hUHDk0eyOSxYccE4MRSYBccuxxWrOd87J5PAUnwZl5j5aZBdjtr5vaiNxVH4jXaUQwDsHAjugkfx9+Fb2mMbIw4XKmpCcEfuT3FwPsvujDMmp7en99bHZlkPZO6PDs7Sntu2n9iCyPAI8gvl4ahTamCc4qbaknAQTn3nXUAxSY+0zOW+0g8FiRF28WoaupSHGVl0CZezSjRqjLQUxeSqSbQcKAZdUjwcR8QIDJNyjzRajeUOgVtUikjxO/G4nPbM9sZKQyv2jXiktB6yNfE1wC200epLLmWl41GhUFsOhw+0FAuwyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FknCe4v1Cr54hla1Bl/Pb1eVa2i+bpr5gE4bitLKBrc=;
 b=gvmIqP+f49kybEGNLr3WUtKqK1zhWx5I0Rgzpbv/4KAdUSmkCNaJHU57UiWl36PZ7Db30Ym3ShsUHQSA9ISfw2bzhZ5InDXQVijUZzUA4jxAhh1o0k4CRFF3wZDf1HDUL3khMNOmXXp99c8Au4cnNl6OfKRxdDStMYRxRcF5Vn4iTZiDY6CKD03buz2g8+UV2/a8nvhM5z3IFgOQDu6RWhZljYx2gF4GsX5d+KmFjOki/JRTStmG117IkNuO59GnIQmbxt21nDGybXjZpKOreR+WioZ0vY/AtoRVbXVMMLtVpiZ+qHEhvc3vg3wXwOhCgKpfdSlcfoc4hQdsqKus5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS7PR11MB6064.namprd11.prod.outlook.com (2603:10b6:8:77::14) by
 PH0PR11MB5643.namprd11.prod.outlook.com (2603:10b6:510:d5::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.26; Sun, 25 Jun 2023 03:29:49 +0000
Received: from DS7PR11MB6064.namprd11.prod.outlook.com
 ([fe80::75b9:9bc9:f27f:1eca]) by DS7PR11MB6064.namprd11.prod.outlook.com
 ([fe80::75b9:9bc9:f27f:1eca%6]) with mapi id 15.20.6521.026; Sun, 25 Jun 2023
 03:29:49 +0000
Message-ID: <bc15cbec-4965-0a61-0ce5-94e99c530769@windriver.com>
Date: Sun, 25 Jun 2023 11:29:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] [meta-security][PATCH] openscap: fix buildpaths issue
Content-Language: en-US
To: akuster808 <akuster808@gmail.com>, Kai Kang <kai.kang@eng.windriver.com>,
        yocto@lists.yoctoproject.org
References: <20230621035540.4014488-1-kai.kang@windriver.com>
 <f4967f90-5fa9-3841-1459-f0bf0e79bd96@gmail.com>
From: Kai <kai.kang@windriver.com>
In-Reply-To: <f4967f90-5fa9-3841-1459-f0bf0e79bd96@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: TYCPR01CA0119.jpnprd01.prod.outlook.com
 (2603:1096:405:4::35) To DS7PR11MB6064.namprd11.prod.outlook.com
 (2603:10b6:8:77::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB6064:EE_|PH0PR11MB5643:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f44c8eb-8cd4-46b4-809c-08db752c6e28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fMXFFN+uEtcKK4Q1bijgWocSFusImJJhcSUS5+7W2ZDxrZJFs2280KrZWVd9dn0/PBwJ7ff30MULdde3XJ+zj+W1jgG1+lJKDzzs3mBDpry7woUFhKOJ6XSFROJuHdXNPW8Xfcr43GoBukR434cbNYmV4jdAKv/Um+3yBjBuLi5r/UeENUq+eRkJDJ/smqmt3O+DdXbGl/pBgneCRQkCVg/KuX/Dvo4eWT9rUaJgYEm6ykGynJK7016sUfACzkszHArqlpMYKqDOgaldDsHtiJzNJEqNXFEWAxeNgP1/62MPumWZ/hf+4CdVFQngeH+u8NutfAN9JKeMzsF24VUAPMZYbX7sEf1hyA72Q2O0wP2qHOjH4dWCNoYo8l/ROTlqoveRs7ipT/cDJPW+ecCfYbfUO4QAVley+TyASkUM/llqN1xk80Fkxy37P7d84/lVvGKu7uKH6T30u2NbeCAFvcJhDRvvDxM3byC/2bZEe5NlKLUe3XW/JYrCKrrmWhx32YBG+ZunURuIPsMGc7vz9aaa0JLcKYpz+028cVVeEKnyhVgPJvlEP8uVUnfDgeHAtKBs9Re8E5gQbjjpUvf94kn9qDv9jV1/LkwtLWOhgQQ6Z1XVXnI8xz9NpDFkgSXBVrmWuxpg0nf1upcHfqtexA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR11MB6064.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(396003)(366004)(376002)(39830400003)(451199021)(31686004)(66899021)(26005)(186003)(2906002)(15650500001)(31696002)(6666004)(36756003)(8676002)(478600001)(966005)(6486002)(110136005)(86362001)(316002)(2616005)(38100700002)(41300700001)(5660300002)(83380400001)(8936002)(66556008)(66946007)(66476007)(6512007)(53546011)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eEEzL3BZRnRxaitLdlNvbjRtWmRielo4UzExTUdzQk5FU01mZ2RDZDRpdjRD?=
 =?utf-8?B?MXQyc1NVQkxBNmplT2VyZGh5TEdCamU4VlZ4c01hbzdTMml5dXJETHN3cVJw?=
 =?utf-8?B?K3ZkMGFRc0hNTjFRZFdKUjlTZjJaVjl1OVE1L2FNczRESmlybjFSaVpPbXo3?=
 =?utf-8?B?dmtGR252SExvdkZ6bnJwNFcwM1lGUEJaRVF4YXFYRkl3eEhBeHNKWmkxc3px?=
 =?utf-8?B?Q3hvTVk0c0w4ZUJYTEJsbDhReW55dlNUQk9hK2c4KzFUNE4veTNXVHJCSWFv?=
 =?utf-8?B?cTBYbHJSYzByZVQ5dG5PSDFvQWNWNHo5V0d2NHhWVklOcWFtdUdrSDhpUkhR?=
 =?utf-8?B?R1BheGNUdTRyRzdkcDFhNFVEMGNKQXZKMmtjcFRpd3FCUGkwZUZXKzhZcVd3?=
 =?utf-8?B?N2tBeHFOb3ppK2E4YUtaQmdQWVd5bUtweGhmWHpLdmJhRHJsVTNDeXM5R1Vy?=
 =?utf-8?B?MU5EZjYrV3liTWhLNGNlODlBUFJFamxlS3NubHFUQTIwSUhOL0o2K2xMajAy?=
 =?utf-8?B?dk40RG9HZVd0bVZKeG5NSWM5UTZ1dUFVemEwRnlMdi9tVnRFK3hJVkhwczRS?=
 =?utf-8?B?UVkzS3pIMUl3UTVIeElocmRQRXNUdGN1L2RINVFnR2FybkMvb0VxZWtteW4y?=
 =?utf-8?B?ZUJlcm5qZS9iU01SN21HSTNGU3FCMEdtZU5aWVlIRnRTZUdZdnFHNENnaUox?=
 =?utf-8?B?NlJUNURHMFlHZUlmVytucGZJOXE4Y2lPN3dPOTB0WGdSNGtFODNuUUxNK3VB?=
 =?utf-8?B?WWhKUlJJdm8rQVM3L28yZzZVUEhoRVBGQUhObVVvRGlhaWxqUlo4SU56cTVM?=
 =?utf-8?B?ZHN5SzlZV0J2QWY4RVB5a3VyYWxsVkVabzc3eitwWjFobkxhc0JVM1NCcXg5?=
 =?utf-8?B?Ymhsd0xJZ0lPL0JBVzU3OXNDMmxhOVVvN0s5bkZIWGFYSUZtc2pYVXN5THQz?=
 =?utf-8?B?dzg5UC9qMTVvK0xsSGsySm5BVGJNc3RYc0dJVjY3VW9FbTVuWmxLdzJzL2No?=
 =?utf-8?B?NmRVc1ZzMS81RnRVVnVodUtYV2RNU25tUHBPeGdFVXZMbm94bHpjNHhCTEE5?=
 =?utf-8?B?RHQvNDAzWCs0Y1lVeDQ2a0FvMFBwUlBOc09PbWQvRzBrUTlXV1VMQmR5YUtG?=
 =?utf-8?B?VnQ5YU5FTU5VdnFpcXdrMGt5K3FldWo4N2ZXakw0ekxxeXMra3YzVGgrSkVY?=
 =?utf-8?B?SVJhVEZjL2pydXJkOUZqSDBRN0RNcW84aGs2M2RaaVRkQnlhQmRBQ05lUkhp?=
 =?utf-8?B?aEV5amRjL3Q5di9FTzJQcml3U0UxZ3ZaS1h6SHFJY0VyMUZ4cyt2aFl1SDBv?=
 =?utf-8?B?M0VvVzV1UGdCem80eVBoMktkdS9SeVh1ZUR6ZTFYeG54QzIreUx0eW5ETndG?=
 =?utf-8?B?RzRTWkMwQTZvdUVpR0JJaXJhYWwrN2FCQ0VzRHBZZlpzczlRdS9Jallmc21B?=
 =?utf-8?B?eGNqaVNaOU0wUU1RRU0xWUNBTTV0L2o3bUJ4V254am5EYndQUVU5L2JoYU1T?=
 =?utf-8?B?dUNEYmVEM0pMVC9IRDhLRUNWQXg5angva04zV20wU0F1YzZWT0ZyZHhzN1pK?=
 =?utf-8?B?dTBGbmZyYTlHRkZXRmI1aXBFeDBJOENxajVudlI4cHBPOEFUUDZpSmYyb2RD?=
 =?utf-8?B?MGJXOVNHRnk4UWt5MlJEQUVCaVJuWFIrL0JxVDE5SlNyNnMzODYyV1g2MGJW?=
 =?utf-8?B?eWZzVFpiOWx3LzlyQzJ2R3JiLzczQW1ZcDR0elN6UUlEbmVPdk91dlFTTEFQ?=
 =?utf-8?B?UTIzQytqakpxSjBkMEpGU2xEV3V1aXF0WWNla0dnNHkwUXUySldOSjA4MW1H?=
 =?utf-8?B?S1NXcWlTRDN5QkhyNGxPL1UxUTBUaTVNRUxPUTcvVU8zaUo3QWgrNVVVaU5N?=
 =?utf-8?B?eTNia1JGSExjbEtCNjJ2YTNUNVVzUnpyZ0FpdytnRndyV2J6UC9GY3BTemZw?=
 =?utf-8?B?bUNvUndkL3NTVVhwS2tlTXUzT0VhWFRiVXR2UThUSUp6dWVRTFFwVlJTQ2RB?=
 =?utf-8?B?c0hkS2MvT0JnSWY2U0FKZVN6MThyTnA5d0ZaRnFnb1NmLzBaVEkwK0pGM2tz?=
 =?utf-8?B?SS9nc0RUblNXWU13VnpzQXlZc1FCMGZKUGxHaWVCK3B2SU04QkJsVU9FZUdv?=
 =?utf-8?Q?Uz595v67n+dkEqsyB+56ANq1W?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f44c8eb-8cd4-46b4-809c-08db752c6e28
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2023 03:29:49.1537
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GaRtAcOlYKu6cm/bkv7OKQSHaxpRsJYeoCimRLFU1jxUHykAR01k0+9w5FoICKpH/qY/VHg0tQEYR979f9QEPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5643
X-Proofpoint-ORIG-GUID: RJZkkYwaYQXCYIQaguHcXFRdWfVy9UOG
X-Proofpoint-GUID: RJZkkYwaYQXCYIQaguHcXFRdWfVy9UOG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-25_01,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 clxscore=1011 malwarescore=0
 phishscore=0 impostorscore=0 mlxlogscore=999 lowpriorityscore=0
 spamscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2306250031
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 35P3TV0d009336
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 03:30:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60431

On 6/22/23 07:04, akuster808 wrote:
> Hello Kai,
>
> Can you rebase=C2=A0 this to the latest master. There was a layer reorg=
=20
> landed during the posting of this patch.

OK. v2 will be sent.

Kai

>
> BR,
> Armin
>
> On 6/20/23 11:55 PM, Kai Kang wrote:
>> From: Kai Kang <kai.kang@windriver.com>
>>
>> Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
>> ${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may poin=
t
>> to other path rather than standard dir such as /usr/bin. Then the
>> generated library file contains such path which should NOT. Update to
>> make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
>> fix buildpaths issue:
>>
>> | WARNING: openscap-1.3.7-r0 do_package_qa: QA Issue: File
>> | /usr/lib/libopenscap.so.25.5.1 in package openscap contains referenc=
e
>> | to TMPDIR [buildpaths]
>>
>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> ---
>> =C2=A0 ...ts.txt-make-2-variables-configurable.patch | 37 ++++++++++++=
+++++++
>> =C2=A0 .../openscap/openscap_1.3.7.bb=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 8 +++-
>> =C2=A0 2 files changed, 44 insertions(+), 1 deletion(-)
>> =C2=A0 create mode 100644=20
>> meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeLis=
ts.txt-make-2-variables-configurable.patch
>>
>> diff --git=20
>> a/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeL=
ists.txt-make-2-variables-configurable.patch=20
>> b/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeL=
ists.txt-make-2-variables-configurable.patch=20
>>
>> new file mode 100644
>> index 0000000..953b0d9
>> --- /dev/null
>> +++=20
>> b/meta-security-compliance/recipes-openscap/openscap/files/0001-CMakeL=
ists.txt-make-2-variables-configurable.patch
>> @@ -0,0 +1,37 @@
>> +From f99c3f1f516a84d33794f8e3da59adea1a12ef54 Mon Sep 17 00:00:00 200=
1
>> +From: Kai Kang <kai.kang@windriver.com>
>> +Date: Tue, 20 Jun 2023 22:42:51 +0800
>> +Subject: [PATCH] CMakeLists.txt: make 2 variables configurable
>> +
>> +Variables PREFERRED_PYTHON_PATH and PYTHON3_PATH are set with
>> +${PYTHON_EXECUTABLE}. For cross compile, ${PYTHON_EXECUTABLE} may poi=
nt
>> +to other path rather than standard dir such as /usr/bin. Then the
>> +generated library file contains such path which should NOT. Update to
>> +make variables PREFERRED_PYTHON_PATH and PYTHON3_PATH configurable to
>> +avoid such issue.
>> +
>> +Upstream-Status: Submitted=20
>> [https://github.com/OpenSCAP/openscap/pull/1990]
>> +
>> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
>> +---
>> + CMakeLists.txt | 4 ++--
>> + 1 file changed, 2 insertions(+), 2 deletions(-)
>> +
>> +diff --git a/CMakeLists.txt b/CMakeLists.txt
>> +index 5db014e77..74628cdd4 100644
>> +--- a/CMakeLists.txt
>> ++++ b/CMakeLists.txt
>> +@@ -125,8 +125,8 @@ endif()
>> + find_package(PythonInterp 3)
>> + find_package(PythonLibs 3)
>> +
>> +-set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}")
>> +-set(PYTHON3_PATH "${PYTHON_EXECUTABLE}")
>> ++set(PREFERRED_PYTHON_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path=20
>> to preferred Python")
>> ++set(PYTHON3_PATH "${PYTHON_EXECUTABLE}" CACHE PATH "Path to Python3"=
)
>> +
>> + find_package(RPM)
>> + if(RPM_FOUND)
>> +--
>> +2.34.1
>> +
>> diff --git=20
>> a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb=
=20
>> b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
>> index cfe93f0..5ad92d4 100644
>> ---=20
>> a/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
>> +++=20
>> b/meta-security-compliance/recipes-openscap/openscap/openscap_1.3.7.bb
>> @@ -7,7 +7,13 @@ require openscap.inc
>> =C2=A0 inherit systemd
>> =C2=A0 =C2=A0 SRCREV =3D "55efbfda0f617e05862ab6ed4862e10dbee52b03"
>> -SRC_URI =3D=20
>> "git://github.com/OpenSCAP/openscap.git;branch=3Dmaint-1.3;protocol=3D=
https"
>> +SRC_URI =3D=20
>> "git://github.com/OpenSCAP/openscap.git;branch=3Dmaint-1.3;protocol=3D=
https=20
>> \
>> + file://0001-CMakeLists.txt-make-2-variables-configurable.patch \
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>> +
>> +EXTRA_OECMAKE +=3D "-DPREFERRED_PYTHON_PATH=3D${bindir}/python3 \
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -DPYTHON3_PATH=3D${bindir}/python3 \
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>> =C2=A0 =C2=A0 SYSTEMD_PACKAGES =3D "${PN}"
>> =C2=A0 SYSTEMD_SERVICE:${PN} =3D "oscap-remediate.service"
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60368):=20
>> https://lists.yoctoproject.org/g/yocto/message/60368
>> Mute This Topic: https://lists.yoctoproject.org/mt/99670413/3616698
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=20
>> [akuster808@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>

--=20
Kai Kang
Wind River Linux


