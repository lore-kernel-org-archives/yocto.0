Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.52978.1583746554394971718
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Mar 2020 02:35:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=dw3akVGy;
 spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: changqing.li@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10AB0E01801; Mon,  9 Mar 2020 02:35:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.243.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.9 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2085.outbound.protection.outlook.com [40.107.243.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C65E007EE
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2020 02:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DSzxT5pxWqPd68R8jWIlOlJK54SJC3fJRSOJe3M3X1618ktyGKKcrsAVSSGzyF9TJuzaoQHoFeuLTobEZsh4Lmylz3fNn06lubq9f0k8woZ4IQB/bt6jaadIyoXYjkfO0v+aFMVw6z/UsJAt0ILUWuhjsIDPtL6d4QMwll4qtwd5wSqwsZPK52vrH3lmHQYhiLr7WAPWs7P7cdW1egQtVXxuAF+h+WJ/xgKyAKCrU7SMTo9d7DLi51bnf6q4TeF9tzVTAwDJ57PTGwHG9uttQbk77b0/Xk71OHFKs2XOGBI9r7Y1N7lU9+VPfzaGaZb0yw2HRWShvBmPBFD35R8IOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TSrcEfJfER3WOZtdihSIhgNC1haisWfy28EXvjf6sfY=;
 b=kCNPGxdAnr6x+alsGcd9v9d8QciB5dQcIXmo8iLFyI8xym6OZm51+4NQYr31lHqIzgL75hcxNr/i1NlR8cWoUQBk6PFktG5YW3AN8in44vpTWcnpnNzSi5+RrNXv90lA2ExdOjKPpofpXIo2B7PL6gGzQECp1p31LF+3a9Kk3/cEih4bGOcbyThpUXLvOkU94v8Kj6mSkoZYOxPqZh50r5Iu7Uiuf3k9AgBsJL2LzrotbkP7hpiaef4qCM8EfOh9dEBPus1oHYNJx+iXnWLA0xzjtSD+aZ/QH2LXyheS3noS577enK6bVzjNkj27rnfPOwQR0fRWUnh9SyuCiDR69Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TSrcEfJfER3WOZtdihSIhgNC1haisWfy28EXvjf6sfY=;
 b=dw3akVGynfcGit4xd2eZTaXT+c3c5L2PiHJOdAvQH8X1Pi68WtHwiudqfuhulGLIORsc8+XpBEElHKcbA9j3H2689J3s2sh1U65uxf6N2X0jFAnpqp18jW3wtyjN8MFtfQSA7Iy53WGUBrlS9NsTfI8O/RRjKKbQJI9fN9QAx6Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Changqing.Li@windriver.com; 
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SN6PR11MB2813.namprd11.prod.outlook.com (2603:10b6:805:61::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Mon, 9 Mar
 2020 09:35:48 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::ecac:629d:9a5a:4d10]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::ecac:629d:9a5a:4d10%7]) with mapi id 15.20.2793.013; Mon, 9 Mar 2020
 09:35:48 +0000
Subject: Re: [yocto] [meta-cgl][PATCH 1/2] core-image-cgl/core-image-cgl-initramfs: remove them
To: yocto@yoctoproject.org
References: <1568707486-382596-1-git-send-email-changqing.li@windriver.com>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <42c29413-19bd-f653-6c79-37b29ddefd17@windriver.com>
Date: Mon, 9 Mar 2020 17:35:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
In-Reply-To: <1568707486-382596-1-git-send-email-changqing.li@windriver.com>
X-ClientProxiedBy: HK2PR06CA0021.apcprd06.prod.outlook.com
 (2603:1096:202:2e::33) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by HK2PR06CA0021.apcprd06.prod.outlook.com (2603:1096:202:2e::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.14 via Frontend Transport; Mon, 9 Mar 2020 09:35:47 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e470f61f-06e5-4fd8-08f3-08d7c40d3fc3
X-MS-TrafficTypeDiagnostic: SN6PR11MB2813:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB2813734DD6F62DE832C0BED582FE0@SN6PR11MB2813.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0337AFFE9A
X-Forefront-Antispam-Report: 
	SFV:NSPM;SFS:(10009020)(366004)(199004)(189003)(31686004)(86362001)(498600001)(956004)(66556008)(66476007)(66946007)(31696002)(2616005)(2906002)(44832011)(6916009)(6706004)(6666004)(36756003)(16576012)(6486002)(53546011)(5660300002)(16526019)(52116002)(8936002)(81156014)(186003)(81166006)(8676002)(26005)(78286006);DIR:OUT;SFP:1101;SCL:1;SRVR:SN6PR11MB2813;H:SN6PR11MB2557.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dbYROK11GobAogaWwNR7mZsHAmAQxeEOFbT2g1fFSW+61wlcG46qgnc68ybH7Vn6GqCfqj6wlCa4aeuJqcUWXfIl6p6447Z0waEWq5cWWuf4ohgU2JS88c/uHRRw9Vj6qDMIh2Hz7KldHat17m8CkncQ11oNBC1gxavp9EWSCMx7jdsJ2Ka/Mu2/TrsUf/svKqmPk63iUmP9Qu0jGpaUrTRraw0PyN5CHGY40vPYdM5L9vU4JcM6D1YGrvrMcZ987H0J5/L25997VFrP3CnM9kHIwmT71pVfsVOdNEYqKxDMmEuAdcr3t0+lCO0TC2L9aRDUhEVSOvOPooWvUSBddiLUnEDDj+dW7A8x+0GrOlnJeL87ZDCQkTP7kIXFBgW94OiYIp5chHigNxCZNlElrIPjGT6Vx/3ful1LFekWRXoO3IpRLhZP/WJBpLGQclcuFAPZckLI+be4ABjojjHxJhBuYG10o//tv6b4DYnrIR/SmthuLLY2j4nuFoodFp9KErzoj3DbLMUTDY97iRF5oAC9QOZoxw+rJq1d+fv654c=
X-MS-Exchange-AntiSpam-MessageData: 
	RBbv9vk/77xk/GZUeIjJ77I3c1+K+z6XhjF6S5VhvjPoc8ADkoR93SvzLSAPWlFT+YWm6skV1kS7F6Z7saVW8UbueoZc+Kx8rYOfjVe7co5t33hcsNCnId6jUvMpqs1kBzO2g2t2URkU7Hc4PLdP8Q==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e470f61f-06e5-4fd8-08f3-08d7c40d3fc3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2020 09:35:48.7865
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jv55Mpulo3i+5iGc9+Ln7eM7FWuDZ3bxPsz8flo8y0OgoZUq86i76IofPw+MTejpgCDeQnPXkMwsLizF0B1f0BQK0RY0mWnwnioT+XKnYSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2813
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

ping

On 9/17/19 4:04 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> remove core-image-cgl.bb and core-image-cgl-initramfs.bb
>
> * They require core-image-lsb.bb which has been removed by oe-core
>
> * Even before LSB support is dropped by oe-core, core-image-cgl
>    and core-image-cgl-initramfs cannot build success, failed during
>    do_rootfs with below error, so I suppose that no one use these
>    2 recipes, so remove it
>
> Error:
>   Problem: package logcheck-1.3.20-r0.core2_64 requires rsyslog, but none of the providers can be installed
>    - package rsyslog-8.1907.0-r0.core2_64 conflicts with sysklogd provided by sysklogd-1.5.1-r0.core2_64
>    - package sysklogd-1.5.1-r0.core2_64 conflicts with rsyslog provided by rsyslog-8.1907.0-r0.core2_64
>    - package packagegroup-cgl-applications-1.0-r0.noarch requires logcheck, but none of the providers can be installed
>    - package packagegroup-core-full-cmdline-initscripts-1.0-r6.noarch requires sysklogd, but none of the providers can be installed
>    - package packagegroup-cgl-1.0-r0.noarch requires packagegroup-cgl-applications, but none of the providers can be installed
>    - package packagegroup-core-full-cmdline-1.0-r6.noarch requires packagegroup-core-full-cmdline-initscripts, but none of the providers can be installed
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   meta-cgl-common/images/core-image-cgl-initramfs.bb | 19 ---------------
>   meta-cgl-common/images/core-image-cgl.bb           | 28 ----------------------
>   2 files changed, 47 deletions(-)
>   delete mode 100644 meta-cgl-common/images/core-image-cgl-initramfs.bb
>   delete mode 100644 meta-cgl-common/images/core-image-cgl.bb
>
> diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb
> deleted file mode 100644
> index 67cb4c1..0000000
> --- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -require core-image-cgl.bb
> -
> -# Recipe is based on core-image-minimal.bb
> -DESCRIPTION = "Initramfs used to mount multipath device as root file system"
> -
> -PACKAGE_INSTALL = "initramfs-cgl-boot busybox base-passwd udev"
> -
> -# Do not pollute the initrd image with rootfs features
> -IMAGE_FEATURES = ""
> -
> -export IMAGE_BASENAME = "core-image-cgl-initramfs"
> -IMAGE_LINGUAS = ""
> -
> -LICENSE = "MIT"
> -IMAGE_FSTYPES ??= "cpio.gz.u-boot"
> -
> -IMAGE_ROOTFS_SIZE = "8192"
> -
> -BAD_RECOMMENDATIONS += "busybox-syslog"
> diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/images/core-image-cgl.bb
> deleted file mode 100644
> index 86bf7d4..0000000
> --- a/meta-cgl-common/images/core-image-cgl.bb
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -require recipes-extended/images/core-image-lsb.bb
> -
> -
> -VALGRIND ?= ""
> -VALGRIND_powerpc ?= "valgrind"
> -VALGRIND_e500v2 ?= ""
> -VALGRIND_x86 ?= "valgrind"
> -VALGRIND_x86_64 ?= "valgrind"
> -VALGRIND_armv7a ?= "valgrind"
> -
> -# Include modules in rootfs
> -IMAGE_INSTALL += "\
> -    packagegroup-core-buildessential \
> -    packagegroup-core-selinux \
> -    packagegroup-cgl \
> -    kexec-tools \
> -    lttng-tools \
> -    lttng-modules \
> -    ${VALGRIND} \
> -    "
> -
> -IMAGE_FSTYPES += " ext3.gz"
> -
> -# kexec-tools doesn't work on Mips
> -KEXECTOOLS_mips ?= ""
> -KEXECTOOLS_mipsel ?= ""
> -
> -IMAGE_FEATURES += "tools-debug tools-profile"
