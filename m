Return-Path: <richbayliss@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8E03E01431
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:38:12 -0700 (PDT)
Received: by mail-ob0-f181.google.com with SMTP id dn14so11657125obc.12
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aj4PGeO6427hb/auUp7XaXYzQ326I/RNKPTqwYOOt5Q=;
	b=oRUr34ZJGSURs0YIGrWDepec21mIicyT0Y1VBDRs4iNX2HwDv2TCUQy215qHtp7y3B
	ynAT0GYF3Cx3p56DCLYLEhOKfR1rcRsP/CXKBL2V7jkw+1yIA6Fu5k9tp81QblBSKk+t
	AN9SVIaedyYuniRGvRm7aROmXYV4vN+OtyxdxgWCBx5dbwkMQT2pibFggpfo2/PR524Y
	afxAsD52qTVV3f3nGcJ1U/zXXiOFapFztKwTy6bjfmU7kS6mKdQgUTl8V+juRjHqBoVl
	p3xbTjyPa7CNNLRg6lWpK8N00BqFsSVGgzj0HjPDZkLwINsnk4fxTVFESv9Cp4qzJEKH
	BmRA==
MIME-Version: 1.0
X-Received: by 10.50.108.71 with SMTP id hi7mr73506igb.59.1375180690395; Tue,
	30 Jul 2013 03:38:10 -0700 (PDT)
Received: by 10.64.25.1 with HTTP; Tue, 30 Jul 2013 03:38:10 -0700 (PDT)
In-Reply-To: <loom.20130730T122304-969@post.gmane.org>
References: <loom.20130730T122304-969@post.gmane.org>
Date: Tue, 30 Jul 2013 11:38:10 +0100
Message-ID: <CAHLvMfZnTGyNwzCihqYn3CCcOhZjqQhigbsyJ6bF8yJu4Vt8+g@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: kiranbobbu <kirankumar.bobbu@smartplayin.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: build crash
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
X-List-Received-Date: Tue, 30 Jul 2013 10:38:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 30 July 2013 11:27, kiranbobbu <kirankumar.bobbu@smartplayin.com> wrote:
> I got following errors while building the yocto layers:
> please help
>
> Build Configuration:
> BB_VERSION        = "1.17.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "omap5-evm"
> DISTRO            = "arago"
> DISTRO_VERSION    = "2013.06"
> TUNE_FEATURES     = "${TUNE_FEATURES_tune-cortexa8thf-neon}"
> TARGET_FPU        = "soft"
> meta-arago-distro
> meta-arago-extras = "(nobranch):d08f424bd078d9a0c88a94ac92f859c8efaf06d4"
> toolchain-layer
> meta-oe           = "(nobranch):f00028caf257e386c0f3ae46bd4b3ba53dd0729d"
> meta-ti           = "(nobranch):af9632689392ea03fd14879ca33b3c6c6ed2e347"
> meta-linaro       = "(nobranch):d0558fa4304592622423582f8b464e1c22cfe6f1"
> meta              = "(nobranch):0785489d558c34cacf5cb349949a15e27084efbf"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL ftp://ftp.ossp.org/pkg/lib/uuid/uuid-
> 1.6.2.tar.gz, attempting MIRRORS if available
> WARNING: Failed to fetch URL ftp://ftp.gnu.org/gnu/binutils/binutils-
> 2.20.1a.tar.bz2, attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
> Error in server response, closing control connection.
> Error in server response, closing control connection.
>
> ERROR: Function failed: Fetcher failure for URL:
> 'ftp://ftp.gnu.org/gnu/binutils/binutils-2.20.1a.tar.bz2'. Unable to fetch
> URL from any source.
> ERROR: Logfile of failure stored in: /home/bkiran/ti-glsdk_omap5-
> uevm_6_01_00_01/yocto-layers/build/arago-tmp-external-linaro-
> toolchain/work/x86_64-linux/binutils-native-2.20.1-
> r9/temp/log.do_fetch.31242
> ERROR: Task 527 (virtual:native:/home/bkiran/ti-glsdk_omap5-
> uevm_6_01_00_01/yocto-layers/sources/meta-arago/meta-arago-extras/recipes-
> devtools/binutils/binutils_2.20.1.bb, do_fetch) failed with exit code '1'
>
>
> thanks
> kiran

Have you checked that you can download that file on your build
machine? The error is quite clear that it is struggling to download
that file. I just tried and I have access to it from here.

-- 
Rich Bayliss

