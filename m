Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1F7EE009B1; Tue, 25 Oct 2016 04:43:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E221E00912
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 04:42:59 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EtAQDgRA9Y/xUHmMZcHAEBBAEBCgEBg?=
	=?us-ascii?q?xUbAQEBAQEdWH0HAY0tln6UP4FFQiOFfgKBez8UAQIBAQEBAQEBA18oglc5Bgc?=
	=?us-ascii?q?vAQEBAQEBAQEBAQEBARwCD0EBARkBAQEBAgESKDQQBwQCAQgNBAQBAQsUCQcyF?=
	=?us-ascii?q?AkIAQEEARIIGogpCAGqFZdTAQEBAQEBAQECAQEBAQEBAQEBAQEchj6EVIRJgy6?=
	=?us-ascii?q?CLwWIPoYMgTyKEAGGKYwph02Feo0IhAEeNoVgcocRAX8BAQE?=
X-IPAS-Result: =?us-ascii?q?A2EtAQDgRA9Y/xUHmMZcHAEBBAEBCgEBgxUbAQEBAQEdWH0?=
	=?us-ascii?q?HAY0tln6UP4FFQiOFfgKBez8UAQIBAQEBAQEBA18oglc5BgcvAQEBAQEBAQEBA?=
	=?us-ascii?q?QEBARwCD0EBARkBAQEBAgESKDQQBwQCAQgNBAQBAQsUCQcyFAkIAQEEARIIGog?=
	=?us-ascii?q?pCAGqFZdTAQEBAQEBAQECAQEBAQEBAQEBAQEchj6EVIRJgy6CLwWIPoYMgTyKE?=
	=?us-ascii?q?AGGKYwph02Feo0IhAEeNoVgcocRAX8BAQE?=
X-IronPort-AV: E=Sophos;i="5.31,545,1473134400"; d="scan'208";a="200155022"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	25 Oct 2016 07:42:58 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	25 Oct 2016 07:42:58 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0319.002; Tue, 25 Oct 2016 13:42:56 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Requires section of RPM Spec
Thread-Index: AdIuslIBudgP1/mpTm+w9PvJafxQxQAIlskAAAgyUpA=
Date: Tue, 25 Oct 2016 11:42:56 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3E7DC7BB@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3E7DC7A0@AZ-FFEXMB01.global.avaya.com>
	<313b3229-3de6-63d9-5782-cb238b922bd5@linux.intel.com>
In-Reply-To: <313b3229-3de6-63d9-5782-cb238b922bd5@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Re: Requires section of RPM Spec
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Oct 2016 11:43:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alexander Kanavin
Sent: Tuesday, October 25, 2016 17:00
To: yocto@yoctoproject.org
Subject: Re: [yocto] Requires section of RPM Spec

On 10/25/2016 02:24 PM, Bipnesh, Abhinav (Abhinav) wrote:

> Is there a way we can avoid pre-populating the Requires section of the=20
> generated RPM Spec from a recipe?
>
> I have not set any RDEPENDS or other such section but still the=20
> section get populated. Below is an example
>
>
>
> Requires: libcrypto.so.1.0.0(OPENSSL_1.0.2d)
>
> Requires: libdl.so.2
>
> Requires: libuuid1 >=3D 2.26.2
>
> Requires(pre): libgcc1 >=3D 4.9.2
>
> Requires(pre): libssl1.0.0 >=3D 1.0.2h
>
> Requires(pre): libgcc_s.so.1(GCC_3.0)
>
> Requires(pre): libc.so.6(GLIBC_2.1)
>
> Requires(pre): /usr/bin/perl
>
> Requires(pre): libboost_system.so.1.58.0
>
> Requires(pre): libstdc++.so.6(GLIBCXX_3.4.20)
>
> Requires(pre): libc.so.6(GLIBC_2.3)

You need to provide some context: why do you want to avoid that? These are =
all runtime library dependencies, and they get added automatically by inspe=
cting the binaries that your recipe generates. This is generally seen as a =
Good Thing.
Basically when we try to install these package on the image using RPM packa=
ge management i.e. rpm -ivh <package name> the dependency checks fails as t=
he rootfs doesn't contain RPM database from where the check be made. So bel=
ow is sample output
# rpm -iUvh <package name>=20
error: Failed dependencies:
        libgcc1 >=3D 4.9.2 is needed by=20
        libssl1.0.0 >=3D 1.0.2h is needed by
        libgcc_s.so.1(GCC_3.0) is needed by
       libboost_date_time.so.1.58.0 is needed by

# ls -l libboost_*
-rwxr-xr-x 1 root root   5512 Oct 21 02:19 libboost_atomic.so.1.58.0
-rwxr-xr-x 1 root root  26036 Oct 21 02:19 libboost_chrono.so.1.58.0
-rwxr-xr-x 1 root root  56824 Oct 21 02:19 libboost_date_time.so.1.58.0
-rwxr-xr-x 1 root root 101668 Oct 21 02:19 libboost_filesystem.so.1.58.0
-rwxr-xr-x 1 root root 323468 Oct 21 02:19 libboost_graph.so.1.58.0
-rwxr-xr-x 1 root root  90296 Oct 21 02:19 libboost_iostreams.so.1.58.0
-rwxr-xr-x 1 root root 811012 Oct 21 02:19 libboost_log.so.1.58.0
-rwxr-xr-x 1 root root 976360 Oct 21 02:19 libboost_log_setup.so.1.58.0
-rwxr-xr-x 1 root root  56736 Oct 21 02:19 libboost_prg_exec_monitor.so.1.5=
8.0
-rwxr-xr-x 1 root root 445064 Oct 21 02:19 libboost_program_options.so.1.58=
.0
-rwxr-xr-x 1 root root  18964 Oct 21 02:19 libboost_random.so.1.58.0
-rwxr-xr-x 1 root root 959576 Oct 21 02:19 libboost_regex.so.1.58.0
-rwxr-xr-x 1 root root 339904 Oct 21 02:19 libboost_serialization.so.1.58.0
-rwxr-xr-x 1 root root  98740 Oct 21 02:19 libboost_signals.so.1.58.0
-rwxr-xr-x 1 root root  11824 Oct 21 02:19 libboost_system.so.1.58.0
-rwxr-xr-x 1 root root 119904 Oct 21 02:19 libboost_thread.so.1.58.0
-rwxr-xr-x 1 root root 595776 Oct 21 02:19 libboost_unit_test_framework.so.=
1.58.0
-rwxr-xr-x 1 root root 236348 Oct 21 02:19 libboost_wserialization.so.1.58.=
0

That's why we don't want to pre-populate the dependency sections so that we=
 can install them without any errors.

Abhinav

Alex

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.o=
rg_listinfo_yocto&d=3DDQICAg&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DgeJ1wB7xRIMmteY=
B2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3DFeKYhuKIOgKi8l5-w8UurfoeqRmIQsl85fImHIm8Te=
Y&s=3D4Q8Zpb9FOMKgs8iCSOGRmw8o6mWm32Q1YboglTdDhOg&e=3D=20

