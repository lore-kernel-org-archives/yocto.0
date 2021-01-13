Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.2488.1610504610966254000
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 18:23:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=De1J3pAW;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: changqing.li@windriver.com)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08on2042.outbound.protection.outlook.com [40.107.100.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4100F38C04F7
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2021 02:23:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6qInoPzJRczTlqTBLGmi+A6JApZIzqcvkQKiuUdrTVSf6bE2ZZk4DSmLD0YpZ0mBeSEr5iCIxqndVUYSzrtvb7cds79qnzF2IvjBjEkj4kV4Jp59+VhevdsZ6PMfjiVlPRxmBPpZvzwkyE4l2GHQRRugiCq5Vi7gFxUD8lkHYdgP/3TE4JxjRAxspqnnrf2TKXu/LfNZX2eIe0OVhjuk0m0sg78b3IAV092eOPu9TNkamsE+8BUvz1AFbhW3l+WbkCGC8lqjSBfmUqq3xs7/xzVckSfeKoWTHnLR+GxYOSEo/hBsuOi9+ix5QUaHo2hfYr2Jpf0w2s3KFZtGdkRyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/R54U35QX9hG6l5Hu02/SobdBNGUbDRnAOaly4nQTcY=;
 b=NbDKK+FPYVgl4J3PI90EILZQuof/b1uAci3I/gQh6j7TXeI+y3Yv8qGlQ7jdISHeS9+OT7JYnzwa2f0dy262MvrzTfchOntjCCPOC/6OfDFxYc7/bmLFLYmJzR9p/Z9wvAsJb0/nCSdIrBiSVU7jvxkalQss1qgH4r5ZD8Hil5oXfKIO87H1tdIlolcxOfDxVcDKzAqDmHyuutHvrjJIauolgRdxwyeuwFWX2/PFsicYtsVc5t/K8Oxc5tvvm8evv+3nLJ9T2b4fd/rmfm0cW7rkT73C9WxNgwfVT+t14Q7yumavEvqQGKT0siJi5k/Ho0WEqaNTw7Clfhc46LHDDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/R54U35QX9hG6l5Hu02/SobdBNGUbDRnAOaly4nQTcY=;
 b=De1J3pAW8I+6h5uAOnuIS2IkOMfG7l5d0PzUiY9qrXbRVTG3JTwZjAdAxpLQSdkw0ceB8xsXtklmPy0Lxo7hvXb4I7tfjBzRoGNMrU+V1dbgZJyj7I6CKkFBPLby/RVoceSR966SH8hVkFqF/3UkTmaLYGOZaFDGRNmKlrliLUA=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Wed, 13 Jan
 2021 02:23:27 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::3832:57b1:4d51:5781]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::3832:57b1:4d51:5781%7]) with mapi id 15.20.3742.012; Wed, 13 Jan 2021
 02:23:27 +0000
Subject: Re: [yocto] [meta-mingw][PATCH] openssl: support for building nativesdk of mingw
From: "Changqing Li" <changqing.li@windriver.com>
To: yocto@yoctoproject.org
References: <165738A71BF237E2.1586@lists.yoctoproject.org>
Cc: Joshua Watt <JPEW.hacker@gmail.com>
Message-ID: <32333a66-c795-541e-58d2-6fef698dc9e4@windriver.com>
Date: Wed, 13 Jan 2021 10:23:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <165738A71BF237E2.1586@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0067.apcprd04.prod.outlook.com
 (2603:1096:202:15::11) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by HK2PR04CA0067.apcprd04.prod.outlook.com (2603:1096:202:15::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Wed, 13 Jan 2021 02:23:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bbc79085-4db0-45f1-4629-08d8b76a35f6
X-MS-TrafficTypeDiagnostic: SA2PR11MB4988:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB4988F011173F72E4A27597EC82A90@SA2PR11MB4988.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:525;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qQWrSsZTgCHorrrHA3F5p6yJ5CVnfVFFMzsjfXmVIGGIOEBPAPBUdqYNFLF9uikTOqaXEaLpqA52YhgyNWTm2KYKMmQw1G6S5VQ+ZtbDfHp/D8GBFDrueUhirt1VJRFJnFwcOeC6cAGY4T/ovF0lpnQudUQETBwl5A/v7IheWWlf1yXD2QC9DO3A9zfkdACwUtFvHKTNHpnAf4esmsWCkB53/sCES+gr1gb0GlgSS9DoyDZcAD2bLavWHZKrdm2fYOQRCPinNhk0cEXMZNV1CpBhsrtu/Qd+SenhbaycvW5CGkl8zc7q81VFUtMzVbgX0Ne20OVcz1PhrKPBrmuFutG7yrnIgUMDi4oQ0YBw5P7NxGnNm2wmTZIc934Bn6+gitVsFIBRiLTxKMXg9s/fVrmJ6+ohm/8QvChm0hGRQEUZSRxHzIzrbR0K9tSvWltkI1Ci0FgX1/g/KdKxx55gfrEvPiLquWe6+lA6On8JW+oohTY8NxtKjs9+x08R4KM2fBb2w1rA06sQzB5t509Wp+q4SVSSN1ITrGRmw6iroynCNlWzLD5yqjUFAdwtrutH0PVyKwlqrA6yet+6Ff+HkA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(136003)(366004)(346002)(376002)(31696002)(86362001)(66556008)(66476007)(66946007)(4326008)(31686004)(6486002)(26005)(53546011)(166002)(186003)(83380400001)(36756003)(16526019)(52116002)(6666004)(2906002)(8936002)(316002)(33964004)(16576012)(8676002)(5660300002)(2616005)(966005)(956004)(6706004)(21615005)(6916009)(44832011)(478600001)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?NmVnMVpJNkkzeXhoZmVyS1RVWVcrWU5LMDZPcTJGVXJIZDE3RThCN1B6MzNl?=
 =?utf-8?B?VmhsbW9Ea2tycTkrMWlCNFBxOUNpQUVCc2lucVhoV3lrRDNHUEVaa3VxWFdm?=
 =?utf-8?B?cmVZb2pSUFJ1WjlGU0pqMDNVd0xPSUd6ek43dHZMeVJNSXVDZEI1bGZSS3BJ?=
 =?utf-8?B?a2lLWjZFUFN1VWRNWVE0ZU5LUFp1dTN2a3Qzc0VWa2o3LzdTZTRiN05tb2dp?=
 =?utf-8?B?ckI5MHY1RXMwT1REcW5ydkljaDU0K1dlSi9FYkZVUW9hTzBiVUltSnpuYzNV?=
 =?utf-8?B?UFhSQlFOaW1aQS96eDc4cTNlb2NaeHh0Zk1SYzZGbEFWMDh4dFBGMU41V1Fp?=
 =?utf-8?B?b1UzOTZOL1FzY3ZUSFl1QzZ4Zk1ITFFzSnZEem15MXlsdGhYREJSNVpCSlR4?=
 =?utf-8?B?NjFTQTlBY1R6NG1iZ2IySFN3bkNmem4yaFRzQjdTQ05BeEUyRVhXcUNxNXZS?=
 =?utf-8?B?dkNHQkpoeCtMYkp2eDhzWXluMDlzWUJ1blhGcEhKSmlUKzdtVm82aDRQUEZo?=
 =?utf-8?B?MkllNURyRVEvTlJHbUdTbE1EM2kzMlplV0E1WCtPWVhYcWtvVkhmdDJBYlZI?=
 =?utf-8?B?V2tKWDdWU0tFTXlSQ2Q4ejlvWHdTb0xlTnF5ZWlCcFM0RlQ0WFBFYjR5U3hM?=
 =?utf-8?B?MGgvMXZ5NDd2MUhRMmxrbnFGTGRTdGZqS3E1OFpNTDFra0FNVGVoR2orRWdE?=
 =?utf-8?B?ZEZnS1k5TUMvcEtINndIdjZZcTJhQ25NNHFLUTJyK09wNXJQaEltZldpVmlZ?=
 =?utf-8?B?eTBidGNaZjU4LzF3QTRUaVZLY1VoTWdSTmlQdUMxS3A2dy9oSWhrMW5qSlFp?=
 =?utf-8?B?UzNEU04wd0l0bnlZODA2Z0JIN0UyVG5yVFVjVW5SWTlYTFVYZjBzamxRNGpV?=
 =?utf-8?B?ak5BVzlMaXNQY1I4N3A3TlFtbGdvZS9HZ2kxNEg1SGtra0s1ZzVvOE83THVh?=
 =?utf-8?B?WldTeHJ0QXVHTkhYWms1T0doR3dPS0wzMDBWb0pCNysyYzlLTGRzamhQdUVw?=
 =?utf-8?B?V1o0elRucXVhQXEzU0lPL0hNR3c4ZmhTMlB3MnU2RldTVzgzTkdZMGRPRmlN?=
 =?utf-8?B?QnFZOEdpcDI4cVIxazdmWHpibHNlbUZzWnhDZ0swWitIdURuNEZvb1JYREJr?=
 =?utf-8?B?NXpXZkpqMzNaejZ0TEhOb1puQnpJYW1YSnFlTmRNb1FFYnRnOTJwSGpOeTQw?=
 =?utf-8?B?bHcyZGlGZTdLallkeEc3WHpYeGNTUDMya0RpaUd6TWExZ3JnTGYxL1J6YWVM?=
 =?utf-8?B?UzBxVXVLaXVlRTFhYlB1bkdxSXBnRWo3QStFR1h5VTh1bWxKN2pYaDdCNWgw?=
 =?utf-8?Q?Zv9X8FslM77U0OqQP37xrOrDHwOmev+W+f?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2021 02:23:27.1944
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc79085-4db0-45f1-4629-08d8b76a35f6
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t5TeGdeevUcaQh0xGaOhh7Hd7Kp+fyuY2ORlRSHx+1C9EfU+zZG20EhalMsZZwt+EdbnORhr1CwACtU3XxZhrb2dWRHEC7yPSw5NnItA/oo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
Content-Type: multipart/alternative;
 boundary="------------E08548E4B762475D98955C4B"
Content-Language: en-US

--------------E08548E4B762475D98955C4B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

ping

On 1/5/21 11:31 AM, Changqing Li wrote:
> * add support for mingw32
> * Engines are installed in a slightly different path, which is
>    urgly, patch it to make the path shorter
> * remove runtime dependency from perl for mingw nativesdk
>
> since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
> 'openssl: Add c_rehash to misc package and add perl runtime dependency'
>
> package openssl-misc have runtime dependency on perl, and perl then
> have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
> http://arsv.github.io/perl-cross/usage.html, perl don't support
> cross-compile build for mingw32 and another 3 recipes also don't
> support mingw well. so remove the dependency of perl, don't support
> c_rehash for mingw.
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
>   .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
>   2 files changed, 63 insertions(+)
>   create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
>   create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend
>
> diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
> new file mode 100644
> index 0000000..028431b
> --- /dev/null
> +++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
> @@ -0,0 +1,32 @@
> +From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
> +From: Changqing Li <changqing.li@windriver.com>
> +Date: Tue, 22 Dec 2020 09:22:10 +0800
> +Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
> +
> +we had pass libdir to Configure, don't use prefix again to
> +avoid engineer dir set to:
> +/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
> +
> +Upstream-Status: Inappropriate[oe-specific]
> +
> +Signed-off-by: Changqing Li <changqing.li@windriver.com>
> +---
> + Configurations/unix-Makefile.tmpl | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Makefile.tmpl
> +index bbafb98..eecb63e 100644
> +--- a/Configurations/unix-Makefile.tmpl
> ++++ b/Configurations/unix-Makefile.tmpl
> +@@ -244,7 +244,7 @@ LIBDIR={- our $libdir = $config{libdir} || "lib";
> +           File::Spec::Win32->file_name_is_absolute($libdir) ? "" : $libdir -}
> + ENGINESDIR_dev={- use File::Spec::Win32;
> +                   our $enginesdir =
> +-                      File::Spec::Win32->catdir($prefix,$libdir,
> ++                      File::Spec::Win32->catdir($libdir,
> +                                                 "engines-$sover_dirname");
> +                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_file) =
> +                       File::Spec::Win32->splitpath($enginesdir, 1);
> +--
> +2.17.1
> +
> diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-connectivity/openssl/openssl_%.bbappend
> new file mode 100644
> index 0000000..7fd82f1
> --- /dev/null
> +++ b/recipes-connectivity/openssl/openssl_%.bbappend
> @@ -0,0 +1,31 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +SRC_URI_append_mingw32_class-nativesdk = " \
> +           file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch \
> +"
> +
> +do_configure_mingw32 () {
> +	os=${HOST_OS}
> +	target="$os-${HOST_ARCH}"
> +	case $target in
> +        mingw32-x86_64)
> +                target=mingw64
> +                ;;
> +        mingw32-i686)
> +                target=mingw
> +                ;;
> +        esac
> +
> +        useprefix=${prefix}
> +        if [ "x$useprefix" = "x" ]; then
> +                useprefix=/
> +        fi
> +        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA_OECONF, as they will fully replace the
> +        # environment variables set by bitbake. Adjust the environment variables instead.
> +        HASHBANGPERL="/usr/bin/env perl" PERL=perl PERL5LIB="${S}/external/perl/Text-Template-1.46/lib/" \
> +        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --prefix=$useprefix --openssldir=${libdir}/ssl-1.1 --libdir=${libdir} $target
> +        perl ${B}/configdata.pm --dump
> +}
> +
> +FILES_${PN}-engines_mingw32_class-nativesdk = "${libdir}/engines-1_1"
> +RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk = "perl"
>
> 
>

--------------E08548E4B762475D98955C4B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>ping<br>
    </p>
    <div class="moz-cite-prefix">On 1/5/21 11:31 AM, Changqing Li wrote:<br>
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
<a class="moz-txt-link-freetext" href="http://arsv.github.io/perl-cross/usage.html">http://arsv.github.io/perl-cross/usage.html</a>, perl don't support
cross-compile build for mingw32 and another 3 recipes also don't
support mingw well. so remove the dependency of perl, don't support
c_rehash for mingw.

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
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
+From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
+Date: Tue, 22 Dec 2020 09:22:10 +0800
+Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
+
+we had pass libdir to Configure, don't use prefix again to
+avoid engineer dir set to:
+/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
+
+Upstream-Status: Inappropriate[oe-specific]
+
+Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
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
+           <a class="moz-txt-link-freetext" href="file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch">file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch</a> \
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
  </body>
</html>

--------------E08548E4B762475D98955C4B--
