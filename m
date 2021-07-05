Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.6598.1625457802556782453
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 21:03:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=m9HL8kcF;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=28204fd1df=changqing.li@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AEB3D38C0834
	for <yocto@yoctoproject.org>; Mon,  5 Jul 2021 04:03:21 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1653wak9003647;
	Sun, 4 Jul 2021 21:03:20 -0700
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2106.outbound.protection.outlook.com [104.47.55.106])
	by mx0a-0064b401.pphosted.com with ESMTP id 39khgvr7me-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 04 Jul 2021 21:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AmpwGbRJyw3zAiXu3FrtQaI46wKFg9JwbXtxJHnC/GewnupBMDMvq7Zl/IqnO/Stzu9swy+yFz6N1YGUR4B+M1peRXTN8hBp2B8c9QiC5jIlGVtNbDHO9ZN/wljld6cn4kP45lbabQ8S3jkLWOqilmgBptZC1vCnByB/MocYKuhvG8Nj11CYYedbmta8pS4CHhq9qWxht/ukh/O8N4d6V1+3YSd5syOYQe4XZYN7smUcnpYU5JMAEOI6XDDkKBWioVxB435Rl7wzP26kFHzMNdVrLYfoRSaXSdoWZHkyHye8MN445oPJhdIyQTe+ramlvZkM45JKjG6kB+jOs2Wvdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pp3enJIu/S3JNV19mf6MW96dB60cMnbLhdH1YvqdkFs=;
 b=O6LGaN1zWzp0t5Lesb/kUuoz3sxl9mrif7p2ZGT6nhIoD0SOSIM26NTzvAdELCAriTba/zqHw4BxvO0hxoCPEuug242/uMdLh7Lfv2E0e/iK4Z+oz231D6T2py/x8dwRwdbZ2R6lvetN4k/+41u7L4cSENSUovGPW7LywNP6DNr9LQjyNpnMKHNWqDc4iJlqSKZFRvLZ3iemZ3pi2o8jtNyBTLQNziW2U63baTsh9Tpa+sm9WxV0avhjPDNDYwX1NqPlcaD9PfnHP7N4rqO/QbKH/QNSV8eAmCc7RKFODzXYDdb3oIGyGsSDexfQtzf7UbC6OrBP6FtCTNtIxudLkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pp3enJIu/S3JNV19mf6MW96dB60cMnbLhdH1YvqdkFs=;
 b=m9HL8kcFOZKY5Eg4dRONOBYWq3s1t3uOo/mo4CxCZhlZiTg4VUvCiGE8ihthHxLdUAQo1S95ENOh7tBWLZajTw669oFxhqmETuev0y1mVO3MM8PzzQYBs/+ITfGThYAjsg44x7XW/qOoEPrvOuRdCwN93KWcg0ZDqpeY97Bmam8=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA2PR11MB4777.namprd11.prod.outlook.com (2603:10b6:806:115::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.33; Mon, 5 Jul
 2021 04:03:16 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::911:37d1:9b4a:7693]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::911:37d1:9b4a:7693%4]) with mapi id 15.20.4287.033; Mon, 5 Jul 2021
 04:03:16 +0000
Subject: Re: [yocto] [meta-mingw][PATCH] openssl: support for building nativesdk of mingw
From: "Changqing Li" <changqing.li@windriver.com>
To: yocto@yoctoproject.org
Cc: Joshua Watt <JPEW.hacker@gmail.com>
References: <165738A71BF237E2.1586@lists.yoctoproject.org>
 <1659A969569723B7.10318@lists.yoctoproject.org>
Message-ID: <b8e40f12-bf1f-74f1-554a-b40ecadd94f6@windriver.com>
Date: Mon, 5 Jul 2021 12:03:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <1659A969569723B7.10318@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BY3PR05CA0035.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::10) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by BY3PR05CA0035.namprd05.prod.outlook.com (2603:10b6:a03:39b::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.8 via Frontend Transport; Mon, 5 Jul 2021 04:03:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2018c90f-a50e-4d1d-4df3-08d93f69d0cb
X-MS-TrafficTypeDiagnostic: SA2PR11MB4777:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB47776685A2D65B770B9C905A821C9@SA2PR11MB4777.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oNOAPWd91kbLy7gd4eU0GqusJ2g3f0Xh2m+i8Uf9Z1Lj6uHZyzAm4rC/eOG7fdFQdzuswhqQ2Knea/Sbk18ojjqzonRf8iNsQyu+1rKx75NBKE+ofee6xxvs6vAt13tlvbRJ9JGqgJ0QT9vrLm4BOsbBkxIXU+Ta7VcvRXHVssEhFzitii2Lj4l5GRQ0dP4UhRLkxBjylrFqqqxyX/ifqR+EkHt24HsAOfSjinxFpiAWoMd2jFVnEon4YmCtgv4V3GlZeFQ2ZVmuMmi9RlvQuIXBsBvFqgdQSfp9HcZQ6SaE2vzwfSuiltzuABE56zxtb2VuVKuR8Ehr1j21TXPgGItjkHgBDwxBo3gnQ4d/wgQEhUJ5Akft1u8YnkvxzMt5Q9oBPRFpbnlDDe3f1nNL6GQf8/Z2h+hTG1vLPfps9rdA+Qm7T1ow9kc6GCiJnSMvmk8qpBAKfP//KTCUu2JdbF2MEl5p7rdle1wu2vw48CRQKBeLClzDWbfM3gEy7Vkfa5GOk2WaKshiBPbhVKlQRSHlQ4rybDyeNkQ+Vbk35NXkLR/EmTvGcG3jlsxIB6rov2WHfSQOhc+yiajqtIEhztXhsL0Fu9OeUA3B23IXJ7ttzpyfWr/2PSvdA/fkY9NGg9ki8K85vUIJC1c5yybH3D734sSsLBoipLjTR2xPOMUe2ZjXnibFvzvPhE196GU7DqpiC3OSKFdx76IYNHcxjpIHgL2T7zohPdjV8biMi2oVb8al/RQPcIUlS7Az5g5qGmPZyzuaJ7PWJWiLWstckjz+3DV+TcX2WRxCXkx0iENuvecs+TxK+bfSh/J8A3POWf/9B0JYYYBfiwQop2gloGxMGhwyMkWHcsSBggeMCTNj+bl69L+Je0Be0hmHGKlhklHTd7AApQI4usWmTsclCDyvGDKs887npo+IJrMAN9g=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(396003)(376002)(39840400004)(366004)(478600001)(21615005)(36756003)(8676002)(66946007)(31686004)(53546011)(6666004)(66476007)(8936002)(6486002)(66556008)(6706004)(6916009)(166002)(33964004)(44832011)(86362001)(966005)(38350700002)(38100700002)(26005)(83380400001)(956004)(186003)(16526019)(2616005)(5660300002)(2906002)(31696002)(16576012)(4326008)(316002)(52116002)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?azlTWGhMQkdqM3o1OFFqanp1M2x1cDYyOW5PWGU3Rkl0S0JXUWYwNVFIYU5R?=
 =?utf-8?B?ZU1LeVYySFZJMVlXMW54eWluNHBjM1hXODFPdHdpNGNBQkU1ZTh1RE1ZK01V?=
 =?utf-8?B?TXBCSGpnelNhYnlVcDZuUFFiZ1Y4UzgrdzhaWEFqazBIZWJqR1FyVUZzUjcz?=
 =?utf-8?B?aXVFL3dOcVpYdW5JNXBKNXA1VnRnTCsxenY0OUpBVFBUalZhVHQwN25JQ2Ru?=
 =?utf-8?B?SllYbkp3bDBrZXlJQm02KzZBMmJhZGNUV05jVTNicTY3bEVCSVEzR0Nja1Ro?=
 =?utf-8?B?MitrbnVHUUhUNmxZSjhaRVlEQ3cxWUoxR2ZCZUtMNnZtcDcwcG5MRDN0R3B1?=
 =?utf-8?B?SEVFWlA5RXMvUHhFd1RhT2tJRFdVQlcwNXJFSTZYWk5Pb1ZaK0JzY3hKUW1i?=
 =?utf-8?B?NnphRHBaNjN3T3F4L2p3MVliRmxjVWl0ZHNJaExFTmVtMEJGKzFXak1USXFT?=
 =?utf-8?B?bXBhL0puYWt6NFNONzVpWnF2L1lFOXA5WS80Vnl1YURwSk9tZUg0KzVXYUFk?=
 =?utf-8?B?SHU2cG0xYjNIV2pnalN1bDJDZGtZNExJM1U4OTFObkhIRU5vaWRFY0VRUE84?=
 =?utf-8?B?NFZ3U0dQTnJzK0VSNHB6UmpDdmVBM2xZWHZJdWpscU13REF3WkhZVExNQ3l5?=
 =?utf-8?B?WGVsMExqL29URnlqTTFFQTF2TDhtREVMT2YycUtLSWp5SlVPN3VpcmZEUWVY?=
 =?utf-8?B?TnAvdTFvOGpXeGhFaFVnTmsrdUJkL2F0MTU5SzhUUFVZQUdRRUMxV3dCZTBl?=
 =?utf-8?B?Z2NQTWFKT1ZtOHVRK3BORFFWQmpXYmZBVW83NURQMUluUjl0VGJ5WjNPRmtH?=
 =?utf-8?B?UTF2aDNTWUpmS3FHalRuWG5aRzRPYXlkQzArNHd0d1ZuNGdUODFxT28yWFBD?=
 =?utf-8?B?em0zN3Fnek9jTXNyeGJsUTBocTk2d21OVjJ4SFFLR2ZuY2s5eUNpdlpHR1ds?=
 =?utf-8?B?cVkyNjhETzhldGlwSHkrSlNRSVg4N0JqTzBDN29zSkk2dXRGdGZEQXEzZlpp?=
 =?utf-8?B?UDloR3dPb2hoYmlvSXA1bDdraXFXb0haTlhwdGRod3l6WEZuMWpZVi9xUHJN?=
 =?utf-8?B?UDhCN2FGVEY4bTFyZ29WWlVraVA2R1IwK0VCQm9vMndrWjBqRWtaZjNpaEpD?=
 =?utf-8?B?UzljajVuNjY1bU9qVXdRNGhyZUFNZm5PZUJQeUxDT0RjQWtxb2VaazFEN012?=
 =?utf-8?B?bFZ5VWNock5KTlNCekNmMmQ2Z3FRR252TitNOXhObWw4WVk5dmQ0WlFjREgr?=
 =?utf-8?B?cEUzc1hINm84clY1NlRuNlhzQTQyemRUSnlQbFpZODlzMW9OY0dkZXpUS0xa?=
 =?utf-8?B?Ni9aNnRJYzFHYTgxazMrZTd1dnNxT2NLcjk3ejYyNHluRkJqVmd4TzFFd2tP?=
 =?utf-8?B?Nk5sTGJDdEtSTThpdGNnakV1TEdvSVdmcUJkRVdqdGw2S3dodTk1TmZtQXVr?=
 =?utf-8?B?emMzUG92Z0VsUUJYL3hhNnlXU0NuNjlyQTNsNm1wcXpWWlpBQlp1TG0vZXdK?=
 =?utf-8?B?NWd4RUl2T3ZiMm5TVjVLd0wvNzAwWGRFRUlYMjhNV3A2cjZkQkE0ek5UdEdw?=
 =?utf-8?B?d05ZU1dJdzNSSGpIOEFUekNXY2FZKzhoTyt6SEJZaFQwcVNTYXU0WjNoMUM5?=
 =?utf-8?B?cXM1eHBVTzM1LzEya0hoUmNpTlEzNjZBZlkxQ3I3a3U0T3kvRzJTdjJlSU1V?=
 =?utf-8?B?NUtHSGx2QmtrUDFsS1RvbjlWQzlOVXJ6ME9UWjJMUTZuOXBINzRUdWhKcytv?=
 =?utf-8?Q?u+6F7742ay78NRDDdrL3lCjNbGy95ZAkRoPHzlF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2018c90f-a50e-4d1d-4df3-08d93f69d0cb
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2021 04:03:15.9285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5/nEFFe7+DlYk9tL3+L14k4ZGkFDVwyxsQBUFWYVmuyfwjyXp3u3OnD51NJZf2NMYltV4Z51wKZxsymg+brwmTExFurIln40+Zgw1hd8w1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4777
X-Proofpoint-ORIG-GUID: izrqfehephWa_AJ4FPkPZfZruXJmz__K
X-Proofpoint-GUID: izrqfehephWa_AJ4FPkPZfZruXJmz__K
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-05_03:2021-07-02,2021-07-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 phishscore=0 spamscore=0 suspectscore=0 mlxlogscore=999
 adultscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 mlxscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107050019
Content-Type: multipart/alternative;
 boundary="------------E95D231EED6C45A548E7F48A"
Content-Language: en-US

--------------E95D231EED6C45A548E7F48A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

ping

On 1/13/21 10:23 AM, Changqing Li wrote:
>
> ping
>
> On 1/5/21 11:31 AM, Changqing Li wrote:
>> * add support for mingw32
>> * Engines are installed in a slightly different path, which is
>>    urgly, patch it to make the path shorter
>> * remove runtime dependency from perl for mingw nativesdk
>>
>> since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
>> 'openssl: Add c_rehash to misc package and add perl runtime dependency'
>>
>> package openssl-misc have runtime dependency on perl, and perl then
>> have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
>> http://arsv.github.io/perl-cross/usage.html, perl don't support
>> cross-compile build for mingw32 and another 3 recipes also don't
>> support mingw well. so remove the dependency of perl, don't support
>> c_rehash for mingw.
>>
>> Signed-off-by: Changqing Li<changqing.li@windriver.com>
>> ---
>>   ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
>>   .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
>>   2 files changed, 63 insertions(+)
>>   create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
>>   create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend
>>
>> diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
>> new file mode 100644
>> index 0000000..028431b
>> --- /dev/null
>> +++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
>> @@ -0,0 +1,32 @@
>> +From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
>> +From: Changqing Li<changqing.li@windriver.com>
>> +Date: Tue, 22 Dec 2020 09:22:10 +0800
>> +Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
>> +
>> +we had pass libdir to Configure, don't use prefix again to
>> +avoid engineer dir set to:
>> +/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
>> +
>> +Upstream-Status: Inappropriate[oe-specific]
>> +
>> +Signed-off-by: Changqing Li<changqing.li@windriver.com>
>> +---
>> + Configurations/unix-Makefile.tmpl | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Makefile.tmpl
>> +index bbafb98..eecb63e 100644
>> +--- a/Configurations/unix-Makefile.tmpl
>> ++++ b/Configurations/unix-Makefile.tmpl
>> +@@ -244,7 +244,7 @@ LIBDIR={- our $libdir = $config{libdir} || "lib";
>> +           File::Spec::Win32->file_name_is_absolute($libdir) ? "" : $libdir -}
>> + ENGINESDIR_dev={- use File::Spec::Win32;
>> +                   our $enginesdir =
>> +-                      File::Spec::Win32->catdir($prefix,$libdir,
>> ++                      File::Spec::Win32->catdir($libdir,
>> +                                                 "engines-$sover_dirname");
>> +                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_file) =
>> +                       File::Spec::Win32->splitpath($enginesdir, 1);
>> +--
>> +2.17.1
>> +
>> diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-connectivity/openssl/openssl_%.bbappend
>> new file mode 100644
>> index 0000000..7fd82f1
>> --- /dev/null
>> +++ b/recipes-connectivity/openssl/openssl_%.bbappend
>> @@ -0,0 +1,31 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>> +
>> +SRC_URI_append_mingw32_class-nativesdk = " \
>> +file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch  \
>> +"
>> +
>> +do_configure_mingw32 () {
>> +	os=${HOST_OS}
>> +	target="$os-${HOST_ARCH}"
>> +	case $target in
>> +        mingw32-x86_64)
>> +                target=mingw64
>> +                ;;
>> +        mingw32-i686)
>> +                target=mingw
>> +                ;;
>> +        esac
>> +
>> +        useprefix=${prefix}
>> +        if [ "x$useprefix" = "x" ]; then
>> +                useprefix=/
>> +        fi
>> +        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA_OECONF, as they will fully replace the
>> +        # environment variables set by bitbake. Adjust the environment variables instead.
>> +        HASHBANGPERL="/usr/bin/env perl" PERL=perl PERL5LIB="${S}/external/perl/Text-Template-1.46/lib/" \
>> +        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --prefix=$useprefix --openssldir=${libdir}/ssl-1.1 --libdir=${libdir} $target
>> +        perl ${B}/configdata.pm --dump
>> +}
>> +
>> +FILES_${PN}-engines_mingw32_class-nativesdk = "${libdir}/engines-1_1"
>> +RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk = "perl"
>>
>
> 
>

--------------E95D231EED6C45A548E7F48A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>ping <br>
    </p>
    <div class="moz-cite-prefix">On 1/13/21 10:23 AM, Changqing Li
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:1659A969569723B7.10318@lists.yoctoproject.org">
      
      <p>ping<br>
      </p>
      <div class="moz-cite-prefix">On 1/5/21 11:31 AM, Changqing Li
        wrote:<br>
      </div>
      <blockquote type="cite" cite="mid:165738A71BF237E2.1586@lists.yoctoproject.org">
        <pre class="moz-quote-pre" wrap="">* add support for mingw32
* Engines are installed in a slightly different path, which is
  urgly, patch it to make the path shorter
* remove runtime dependency from perl for mingw nativesdk

since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
'openssl: Add c_rehash to misc package and add perl runtime dependency'

package openssl-misc have runtime dependency on perl, and perl then
have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
<a class="moz-txt-link-freetext" href="http://arsv.github.io/perl-cross/usage.html" moz-do-not-send="true">http://arsv.github.io/perl-cross/usage.html</a>, perl don't support
cross-compile build for mingw32 and another 3 recipes also don't
support mingw well. so remove the dependency of perl, don't support
c_rehash for mingw.

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com" moz-do-not-send="true">&lt;changqing.li@windriver.com&gt;</a>
---
 ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
 .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
 create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend

diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
new file mode 100644
index 0000000..028431b
--- /dev/null
+++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
@@ -0,0 +1,32 @@
+From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
+From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com" moz-do-not-send="true">&lt;changqing.li@windriver.com&gt;</a>
+Date: Tue, 22 Dec 2020 09:22:10 +0800
+Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
+
+we had pass libdir to Configure, don't use prefix again to
+avoid engineer dir set to:
+/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
+
+Upstream-Status: Inappropriate[oe-specific]
+
+Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com" moz-do-not-send="true">&lt;changqing.li@windriver.com&gt;</a>
+---
+ Configurations/unix-Makefile.tmpl | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Makefile.tmpl
+index bbafb98..eecb63e 100644
+--- a/Configurations/unix-Makefile.tmpl
++++ b/Configurations/unix-Makefile.tmpl
+@@ -244,7 +244,7 @@ LIBDIR={- our $libdir = $config{libdir} || &quot;lib&quot;;
+           File::Spec::Win32-&gt;file_name_is_absolute($libdir) ? &quot;&quot; : $libdir -}
+ ENGINESDIR_dev={- use File::Spec::Win32;
+                   our $enginesdir =
+-                      File::Spec::Win32-&gt;catdir($prefix,$libdir,
++                      File::Spec::Win32-&gt;catdir($libdir,
+                                                 &quot;engines-$sover_dirname&quot;);
+                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_file) =
+                       File::Spec::Win32-&gt;splitpath($enginesdir, 1);
+-- 
+2.17.1
+
diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-connectivity/openssl/openssl_%.bbappend
new file mode 100644
index 0000000..7fd82f1
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl_%.bbappend
@@ -0,0 +1,31 @@
+FILESEXTRAPATHS_prepend := &quot;${THISDIR}/files:&quot;
+
+SRC_URI_append_mingw32_class-nativesdk = &quot; \
+           <a class="moz-txt-link-freetext" href="file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch" moz-do-not-send="true">file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch</a> \
+&quot;
+
+do_configure_mingw32 () {
+	os=${HOST_OS}
+	target=&quot;$os-${HOST_ARCH}&quot;
+	case $target in
+        mingw32-x86_64)
+                target=mingw64
+                ;;
+        mingw32-i686)
+                target=mingw
+                ;;
+        esac
+
+        useprefix=${prefix}
+        if [ &quot;x$useprefix&quot; = &quot;x&quot; ]; then
+                useprefix=/
+        fi
+        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA_OECONF, as they will fully replace the
+        # environment variables set by bitbake. Adjust the environment variables instead.
+        HASHBANGPERL=&quot;/usr/bin/env perl&quot; PERL=perl PERL5LIB=&quot;${S}/external/perl/Text-Template-1.46/lib/&quot; \
+        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --prefix=$useprefix --openssldir=${libdir}/ssl-1.1 --libdir=${libdir} $target
+        perl ${B}/configdata.pm --dump
+}
+
+FILES_${PN}-engines_mingw32_class-nativesdk = &quot;${libdir}/engines-1_1&quot;
+RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk = &quot;perl&quot;
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------E95D231EED6C45A548E7F48A--
