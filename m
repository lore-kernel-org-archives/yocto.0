Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.9584.1625735237812168904
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 02:07:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=o/8PLL8A;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=2823efb6d0=changqing.li@windriver.com)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8969C38C069E
	for <yocto@yoctoproject.org>; Thu,  8 Jul 2021 09:07:16 +0000 (UTC)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 168906F2006467;
	Thu, 8 Jul 2021 02:07:14 -0700
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2107.outbound.protection.outlook.com [104.47.55.107])
	by mx0a-0064b401.pphosted.com with ESMTP id 39nmx20b34-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 08 Jul 2021 02:07:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KjOl7UTUsl+0MXH7UmA98fwWG/COHIfQ59PaZZDdhwjZoJ4Jv41If6i4FnQlG0fHAIJcFg7Y5FpIDzEF2fdZ0doyyeUlAkui78o7jd1MaoTSdjZAA08sYFP7bH3RCFKNeiVakvH5m21+CgzjPF0SJOL1/3e+Pxaz8dlh0noqohHvbqQGa+0VBWaP1arsqnOnRN19DNI+v+YabJcxXTAtkOKMejUSgzrEYUw1m2ngskaDUnFc7QiUs0jaYp7rVxlYUF5rbgegXZ2DE4LbezfggmEKmHqmxEIeAibvwNlfjJ9Cv426B1xAe5FgpNIAotsu8bdpubixH/mOyMxl5M4vCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5Dwv+XDk9hNm1WJr3aD/RZl/iA6Tc5gziK9OK8+mkQ=;
 b=hUO+RBQ+EzS5EMRrSoT48d6d1qt2BVmwHKUpnanSA86/Sz8tQiFnRji7Ad3/T8lfDx1ksZgd/c4OnIhgkK/Mq7WBj115/1eEiuLPttDBfx/26bxokiMZCeLL/otEPh6suRpaFXlTbMrvM2VcFmb9hGCDF+vwxw4Vg7j7332+enR9jaWfCz2jofMJy2o8EqgkcgE5A15PE2SiOagyT+SyFMu0DAXvnzkmbPNPHH6HvzV7S/3AUmoA208DFauUDjnQV050MM7ukH0vqzsUfJjhTg4yRXnTlHf7hg7Jsq4UKyLe054b2t3mS4jXC2ZR64Z0g5rD2DYKfte0h0yP1R19/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5Dwv+XDk9hNm1WJr3aD/RZl/iA6Tc5gziK9OK8+mkQ=;
 b=o/8PLL8Aq+GZUJZbpSvEQWi31FA3/oN2UbS6EeMXVbtNBNIFJ2pbdXz45YnDKGNk5geo2JTrS1cjZeBJ3YW5obdPw25pIz5IDrvyfNb+k+9nuY+PyFQdjPVfO58bb1ia4ly03ZdMuDerG2nM1SnAaM7jj3i9050P9MkcuMjgto4=
Authentication-Results: microsoft.com; dkim=none (message not signed)
 header.d=none;microsoft.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA0PR11MB4735.namprd11.prod.outlook.com (2603:10b6:806:92::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Thu, 8 Jul
 2021 09:07:12 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::911:37d1:9b4a:7693]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::911:37d1:9b4a:7693%4]) with mapi id 15.20.4308.022; Thu, 8 Jul 2021
 09:07:12 +0000
Subject: Re: [yocto] [meta-mingw][PATCH] openssl: support for building nativesdk of mingw
To: Joshua Watt <jpewhacker@gmail.com>, yocto@yoctoproject.org
Cc: paul.eggleton@microsoft.com, derawa@microsoft.com
References: <20210105033119.425-1-changqing.li@windriver.com>
 <dea213ad-0c35-53a5-d893-0f3f1bcad182@gmail.com>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <e072aa28-4fff-9cd0-1b94-5b68483d5d8d@windriver.com>
Date: Thu, 8 Jul 2021 17:07:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <dea213ad-0c35-53a5-d893-0f3f1bcad182@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0181.namprd05.prod.outlook.com
 (2603:10b6:a03:330::6) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by SJ0PR05CA0181.namprd05.prod.outlook.com (2603:10b6:a03:330::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.12 via Frontend Transport; Thu, 8 Jul 2021 09:07:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e27f48b-7a07-4be6-05bb-08d941efc59d
X-MS-TrafficTypeDiagnostic: SA0PR11MB4735:
X-Microsoft-Antispam-PRVS: 
	<SA0PR11MB4735F832C84289895A94B2A282199@SA0PR11MB4735.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UpkbHk50Sk+C9xEmEnH35/+DEyk7ymCWGL0gjxUycrfKUuDaobz3tTAQbOnx3dJVp7v78BDtEoQblLBo7Oyj5kWuAdWlNzJ4eMhd24Dmgxx44Nbw8F4Gvw8R07D6J58YPgZfdk6v/c6jAL4a7qWxS5855eBTG6nqFW9po/TbEEvecH1kd8BfKRjhgJ7zgx5r51RvsF69DIHsnhKhNNrJ+udiPOKf/+gF3f944KppGJaZRW5YvKFfi6Ls8NvEAYxuvpgimNZ/cAoxvXJwSWQ8y0DLhmlmJCqM4+1V+ZdvJubnD3q8ZUQ82ZHszq8vuAhCCVpTSF8yT5rfuuY46qUy8kUpxSZs3NNw5UxCX0XdrexCNAyS74dQce6oYC8bxfMwa/6k8HS1b9e/I5t5+e8wYyaDz1pUxyAd538EHbegINsLjQHYudtwf4LeqA7UwOugX5ydDrHfX52FQItdS/hKhdlWADdi4yyeRxbPN04YipyWi2Y4RPfWsKcVH6nIi/f1vmTkfhGjb1FABXhkcjTOBAQXIAqZgg1CWw3wBnxVh1zgu3UP1EzqT+8r0H+0ceBg7VJBSI7CjENSXsGgHVdl3wUcfZshEzyC6mMdKCJ8Vpw1NvTsCyq7Ir30xY/Cf/DoSjVhBFqwz721Ompq27RqskghCvzuQSnjQmXxmg2SiJsnUR/7xBd6JTwc+EZ6sTANC9Fa3r3oGOSFZZJYa0KP/9ghj8VZn0AA758Wc7vaRqt/R49+gzRk1fzJgtwIigoN7feUwATrulzOs4aih9UYce3skOGf8tqj1z8FK1ekPEoeRp0mgTq77vrdS8gmTKAIioEZqnt7oADAnRkZgRdzmfcfR/NB5FoGukvYAEIyprXVY01RfrOTB4JRmKLSADLPVXiK9gNpROf6VDsaDf/jFSwTYLTjQB3ap9CFAsEFiZk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(346002)(136003)(39850400004)(376002)(478600001)(53546011)(33964004)(186003)(8936002)(31686004)(5660300002)(6666004)(4326008)(38350700002)(44832011)(38100700002)(8676002)(66556008)(6486002)(86362001)(30864003)(66946007)(6706004)(166002)(16576012)(316002)(83380400001)(66476007)(36756003)(26005)(2906002)(31696002)(52116002)(2616005)(966005)(956004)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UDBMdkF1S3N6eGdDNWNKbEt4SUtwT3czZHFwQ3k1QW1oL2IxdXk5dTkvNlFJ?=
 =?utf-8?B?RTVSZThFMXR2cWMrMG55bmZTY3lNVElNQVhmZVc5RGxOZkk3ZE1ON3Nib3di?=
 =?utf-8?B?MlRHdkxZUmFNOTZ3SlpvZkk3Nzg5QndCbTV5ZEZHTG44RXdPaHA4N0F3aFd5?=
 =?utf-8?B?RzNKTFplTHhRWTNRSmZiK25KczVKQkd5WW4zVEpTaTZsa0lFWTJxZ2kxR1Vh?=
 =?utf-8?B?bGNqR0hrRHY3YUh0UklFM3NkQXg3eXBTRmVaRkpvblFTS2x2WFdycUVqOW5Y?=
 =?utf-8?B?MUMxSFRCTmZRVXlNbUt2Y0Yza3kxekxlM0JtTEwzdkZxSUVydDVKYzRVMitH?=
 =?utf-8?B?NGFJVnpTK21hbUFTOUF1M0R0Szh0L01TZ3RDT2d2b29Wd3Vsa0Q2bmkxSzcr?=
 =?utf-8?B?WExFN1liVXdTMnZjeXI0dnV4alg5WkVQL3Z0STR1d0VFaEhST2xDdm9wT1U4?=
 =?utf-8?B?dmVNMHMzRjQ5aExNUlZvcGpicGhXVmJZMDdWNlVUZGRRZHprQVZ2Y1RWYlJv?=
 =?utf-8?B?UkplWW1CVDZubFZ1M3ZoeVU4OUVzQmozdkVtMGRNSzJ6SWVtQmNRRTBKb0NS?=
 =?utf-8?B?T0JzcU9CdVNZb2xTV2hQWEdIcDZHRlB4ZmwvVGFIR0JEVWVQVEp2c2tuc2dr?=
 =?utf-8?B?N09JTTVUeUZiQW1RNXFEdk1lQ0ZzU0greHVRQmZGa2FIc0ZsVkVPMWp1WEhs?=
 =?utf-8?B?VXpleExIWlhGRFRqNnl6YytIMWdxbmIvQTZHUFFOenl2SUhPeVM4MHppN2ZK?=
 =?utf-8?B?NVkzcEd2ZUNOanQ5OHVmdkJ3ajNXR2xPRURSL253eWhyWHc4MFZNeDdqUEV5?=
 =?utf-8?B?dUdNdHUrMTdrdllzZGR0cDNVQVFQd1lWSGhSTXp2NXlGaS9sTTZkVnhxcVVV?=
 =?utf-8?B?L1Z1NFh4bk52Rk83OVdET0FLdnladXVOQkhLM0plRGNYVDRNeFc0Zjdpa0Zz?=
 =?utf-8?B?UHNCbFdzTEErT1U5NjBxcC9mMlFLcHNBMHlKRzZGbFZ4Z05GKyt5RUs2dEt1?=
 =?utf-8?B?eHV4NWYzRXMwSnk3Mk5VOG9hVmJuanZYM2EzQXBQd3NPb1FsaWFvMC80N0cx?=
 =?utf-8?B?c09vbEFMM0p5YUF5akdRZ2FkelU5N3FERlRPUWZoenJRYU5vb2xIN2tsUEVq?=
 =?utf-8?B?dlVJd3BGajM2UjRvS1g1b3I2b0dJOHZTSXl2OVBnd0FLVDZQaGtGcWZzU2xU?=
 =?utf-8?B?UFM1ajVrdXpaV0hCWFhMeVdoNnlaZEVzOXIvVGdiRENHd0QzSlJTdVBwUU9u?=
 =?utf-8?B?Z3RTZ1RpMHZHa3lOOXJlSDd5bnEyM3ZVem5YRzZLUlVJYmVjWnlmc202Wk13?=
 =?utf-8?B?VEwxMEFNY29kV1JwcmFYWGkrbS8vSmdEaWt2Qy95L3VmenBJN1BFT0ZOQlV2?=
 =?utf-8?B?bzZkUDRIVFl6bTAwUGN5R1RtRWs0T3ZCc0QzakJpbm1CQ1JUeFM0MTBoUHlP?=
 =?utf-8?B?WlRmeTBIS3QwcS8zWitFdGNuSi9GQ3hQOHdLMTd4ZmVtN1QyaGRISTcxVzZZ?=
 =?utf-8?B?U3lOUy9IbnlxS2U4K0IvSTFZS3ZWdGkvTXJLQlE1SnZ4bTAvSW5DU1VYN0pk?=
 =?utf-8?B?MFpvUWQzUmdNUkNtVXdpampEZnZHL3JsRXNJNzNYREtOVXpOb2Zac3l3L0RJ?=
 =?utf-8?B?WVEzSjhtanJkRFNoVit6K0kyMnVqczNZT0V6ZDRPcnVPNUFPa20rR0FLQ2Vj?=
 =?utf-8?B?SUFjbnltdmUzUDVTUjRhU0RRelZ6VHZXcTVyaGN6aEJHNllNQTN2TmczcmJl?=
 =?utf-8?Q?twxFvHbc2ks96IPowvv73+zBqNUC0j13EhoGn0c?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e27f48b-7a07-4be6-05bb-08d941efc59d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2021 09:07:12.1515
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u+lOukrU2YoFP1T7dVrBVS8iJT35eFxDz7ZNH3fS7XQR/vaVHdBR6PVASFxTrHHw25fu0N+gkNmRGwTa20zysrNZjpU5tCk5OhVPWqfWUtY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4735
X-Proofpoint-GUID: 0cz5DyU1Q5J7Fuj2s7MVHtSh624OOdwQ
X-Proofpoint-ORIG-GUID: 0cz5DyU1Q5J7Fuj2s7MVHtSh624OOdwQ
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-08_04:2021-07-06,2021-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1011
 impostorscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107080049
Content-Type: multipart/alternative;
 boundary="------------01E09DC7F70A3A5E8FC27D60"
Content-Language: en-US

--------------01E09DC7F70A3A5E8FC27D60
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 7/7/21 1:23 AM, Joshua Watt wrote:
>
> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>
>
> On 1/4/21 9:31 PM, Changqing Li wrote:
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
>
>
> It would appear that some or all of this patch is unnecessary. OE-core=
=20
> 166bb89f6d97495b6522786182b4f9623acd7ff4 implements part of this=20
> patch, which makes me think it's working there without any changes=20
> necessary. It would be worth following up to see if that is the case.
>
Thanks.=C2=A0 I will check the oe-core commit.
>
>
>
>> Signed-off-by: Changqing Li<changqing.li@windriver.com>
>> ---
>>   ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 ++++++++++++++++++=
+
>>   .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
>>   2 files changed, 63 insertions(+)
>>   create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makef=
ile.tmpl-don-t-add-prefix-for-libdir.patch
>>   create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend
>>
>> diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl=
-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/000=
1-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
>> new file mode 100644
>> index 0000000..028431b
>> --- /dev/null
>> +++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-=
add-prefix-for-libdir.patch
>> @@ -0,0 +1,32 @@
>> +From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
>> +From: Changqing Li<changqing.li@windriver.com>
>> +Date: Tue, 22 Dec 2020 09:22:10 +0800
>> +Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
>> +
>> +we had pass libdir to Configure, don't use prefix again to
>> +avoid engineer dir set to:
>> +/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+sn=
apshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
>> +
>> +Upstream-Status: Inappropriate[oe-specific]
>> +
>> +Signed-off-by: Changqing Li<changqing.li@windriver.com>
>> +---
>> + Configurations/unix-Makefile.tmpl | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-M=
akefile.tmpl
>> +index bbafb98..eecb63e 100644
>> +--- a/Configurations/unix-Makefile.tmpl
>> ++++ b/Configurations/unix-Makefile.tmpl
>> +@@ -244,7 +244,7 @@ LIBDIR=3D{- our $libdir =3D $config{libdir} || "li=
b";
>> +           File::Spec::Win32->file_name_is_absolute($libdir) ? "" : $l=
ibdir -}
>> + ENGINESDIR_dev=3D{- use File::Spec::Win32;
>> +                   our $enginesdir =3D
>> +-                      File::Spec::Win32->catdir($prefix,$libdir,
>> ++                      File::Spec::Win32->catdir($libdir,
>> +                                                 "engines-$sover_dirna=
me");
>> +                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_=
file) =3D
>> +                       File::Spec::Win32->splitpath($enginesdir, 1);
>> +--
>> +2.17.1
>> +
>> diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-=
connectivity/openssl/openssl_%.bbappend
>> new file mode 100644
>> index 0000000..7fd82f1
>> --- /dev/null
>> +++ b/recipes-connectivity/openssl/openssl_%.bbappend
>> @@ -0,0 +1,31 @@
>> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>> +
>> +SRC_URI_append_mingw32_class-nativesdk =3D " \
>> +file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch  \
>> +"
>> +
>> +do_configure_mingw32 () {
>> +	os=3D${HOST_OS}
>> +	target=3D"$os-${HOST_ARCH}"
>> +	case $target in
>> +        mingw32-x86_64)
>> +                target=3Dmingw64
>> +                ;;
>> +        mingw32-i686)
>> +                target=3Dmingw
>> +                ;;
>> +        esac
>> +
>> +        useprefix=3D${prefix}
>> +        if [ "x$useprefix" =3D "x" ]; then
>> +                useprefix=3D/
>> +        fi
>> +        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EX=
TRA_OECONF, as they will fully replace the
>> +        # environment variables set by bitbake. Adjust the environment=
 variables instead.
>> +        HASHBANGPERL=3D"/usr/bin/env perl" PERL=3Dperl PERL5LIB=3D"${S=
}/external/perl/Text-Template-1.46/lib/" \
>> +        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} =
--prefix=3D$useprefix --openssldir=3D${libdir}/ssl-1.1 --libdir=3D${libdir}=
 $target
>> +        perl ${B}/configdata.pm  <https://urldefense.com/v3/__http://c=
onfigdata.pm__;!!AjveYdw8EvQ!PNhdP5mn3jyomF9c5P2aNPwHTTqwCpADXuBHBRyEcaFel7=
w-yKl0MiWg4bMTarUdo8Amlw$>  --dump
>> +}
>> +
>> +FILES_${PN}-engines_mingw32_class-nativesdk =3D "${libdir}/engines-1_1=
"
>> +RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk =3D "perl"
>>
>>=20
>>

--------------01E09DC7F70A3A5E8FC27D60
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 7/7/21 1:23 AM, Joshua Watt wrote:<b=
r>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:dea213ad-0c35-53a5-d893-0f3f1bca=
d182@gmail.com">
      
      <div style=3D"border:solid #9C6500 1.0pt;padding:2.0pt 2.0pt 2.0pt
        2.0pt">
        <p class=3D"MsoNormal" style=3D"line-height:12.0pt;background:#FFE=
B9C"><b><span style=3D"font-size:10.0pt;color:#9C6500"></span></b><span sty=
le=3D"font-size:10.0pt;color:red">[Please note: This e-mail
            is from an EXTERNAL e-mail address]<o:p></o:p></span></p>
      </div>
      <div>
        <p><br>
        </p>
        <div class=3D"moz-cite-prefix">On 1/4/21 9:31 PM, Changqing Li
          wrote:<br>
        </div>
        <blockquote type=3D"cite" cite=3D"mid:20210105033119.425-1-changqi=
ng.li@windriver.com">
          <pre class=3D"moz-quote-pre" wrap=3D"">* add support for mingw32
* Engines are installed in a slightly different path, which is
  urgly, patch it to make the path shorter
* remove runtime dependency from perl for mingw nativesdk

since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
'openssl: Add c_rehash to misc package and add perl runtime dependency'

package openssl-misc have runtime dependency on perl, and perl then
have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
<a class=3D"moz-txt-link-freetext" href=3D"https://urldefense.com/v3/__htt=
p://arsv.github.io/perl-cross/usage.html__;!!AjveYdw8EvQ!PNhdP5mn3jyomF9c5P=
2aNPwHTTqwCpADXuBHBRyEcaFel7w-yKl0MiWg4bMTarU1XHEkCg$" moz-do-not-send=3D"t=
rue">http://arsv.github.io/perl-cross/usage.html</a>, perl don't support
cross-compile build for mingw32 and another 3 recipes also don't
support mingw well. so remove the dependency of perl, don't support
c_rehash for mingw.</pre>
        </blockquote>
        <p><br>
        </p>
        <p>It would appear that some or all of this patch is
          unnecessary. OE-core 166bb89f6d97495b6522786182b4f9623acd7ff4
          implements part of this patch, which makes me think it's
          working there without any changes necessary. It would be worth
          following up to see if that is the case.<br>
        </p>
      </div>
    </blockquote>
    Thanks.&nbsp; I will check the oe-core commit.<br>
    <blockquote type=3D"cite" cite=3D"mid:dea213ad-0c35-53a5-d893-0f3f1bca=
d182@gmail.com">
      <div>
        <p>
          <br>
        </p>
        <p><br>
        </p>
        <blockquote type=3D"cite" cite=3D"mid:20210105033119.425-1-changqi=
ng.li@windriver.com">
          <pre class=3D"moz-quote-pre" wrap=3D"">Signed-off-by: Changqing =
Li <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:changqing.li@windriver=
.com" moz-do-not-send=3D"true">&lt;changqing.li@windriver.com&gt;</a>
---
 ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
 .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.=
tmpl-don-t-add-prefix-for-libdir.patch
 create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend

diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-do=
n-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-u=
nix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
new file mode 100644
index 0000000..028431b
--- /dev/null
+++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add=
-prefix-for-libdir.patch
@@ -0,0 +1,32 @@
+From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
+From: Changqing Li <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:chan=
gqing.li@windriver.com" moz-do-not-send=3D"true">&lt;changqing.li@windriver=
.com&gt;</a>
+Date: Tue, 22 Dec 2020 09:22:10 +0800
+Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
+
+we had pass libdir to Configure, don't use prefix again to
+avoid engineer dir set to:
+/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snaps=
hot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
+
+Upstream-Status: Inappropriate[oe-specific]
+
+Signed-off-by: Changqing Li <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:changqing.li@windriver.com" moz-do-not-send=3D"true">&lt;changqing.li@=
windriver.com&gt;</a>
+---
+ Configurations/unix-Makefile.tmpl | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Make=
file.tmpl
+index bbafb98..eecb63e 100644
+--- a/Configurations/unix-Makefile.tmpl
++++ b/Configurations/unix-Makefile.tmpl
+@@ -244,7 +244,7 @@ LIBDIR=3D{- our $libdir =3D $config{libdir} || &quot;=
lib&quot;;
+           File::Spec::Win32-&gt;file_name_is_absolute($libdir) ? &quot;&=
quot; : $libdir -}
+ ENGINESDIR_dev=3D{- use File::Spec::Win32;
+                   our $enginesdir =3D
+-                      File::Spec::Win32-&gt;catdir($prefix,$libdir,
++                      File::Spec::Win32-&gt;catdir($libdir,
+                                                 &quot;engines-$sover_dir=
name&quot;);
+                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_fil=
e) =3D
+                       File::Spec::Win32-&gt;splitpath($enginesdir, 1);
+--=20
+2.17.1
+
diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-con=
nectivity/openssl/openssl_%.bbappend
new file mode 100644
index 0000000..7fd82f1
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl_%.bbappend
@@ -0,0 +1,31 @@
+FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;
+
+SRC_URI_append_mingw32_class-nativesdk =3D &quot; \
+           <a class=3D"moz-txt-link-freetext" href=3D"file://0001-unix-Ma=
kefile.tmpl-don-t-add-prefix-for-libdir.patch" moz-do-not-send=3D"true">fil=
e://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch</a> \
+&quot;
+
+do_configure_mingw32 () {
+	os=3D${HOST_OS}
+	target=3D&quot;$os-${HOST_ARCH}&quot;
+	case $target in
+        mingw32-x86_64)
+                target=3Dmingw64
+                ;;
+        mingw32-i686)
+                target=3Dmingw
+                ;;
+        esac
+
+        useprefix=3D${prefix}
+        if [ &quot;x$useprefix&quot; =3D &quot;x&quot; ]; then
+                useprefix=3D/
+        fi
+        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA=
_OECONF, as they will fully replace the
+        # environment variables set by bitbake. Adjust the environment va=
riables instead.
+        HASHBANGPERL=3D&quot;/usr/bin/env perl&quot; PERL=3Dperl PERL5LIB=
=
=3D&quot;${S}/external/perl/Text-Template-1.46/lib/&quot; \
+        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --p=
refix=3D$useprefix --openssldir=3D${libdir}/ssl-1.1 --libdir=3D${libdir} $t=
arget
+        perl ${B}/<a href=3D"https://urldefense.com/v3/__http://configdat=
a.pm__;!!AjveYdw8EvQ!PNhdP5mn3jyomF9c5P2aNPwHTTqwCpADXuBHBRyEcaFel7w-yKl0Mi=
Wg4bMTarUdo8Amlw$" moz-do-not-send=3D"true">configdata.pm</a> --dump
+}
+
+FILES_${PN}-engines_mingw32_class-nativesdk =3D &quot;${libdir}/engines-1=
_1&quot;
+RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk =3D &quot;perl&quot;
</pre>
          <br>
          <fieldset class=3D"mimeAttachmentHeader"></fieldset>
          <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------01E09DC7F70A3A5E8FC27D60--
