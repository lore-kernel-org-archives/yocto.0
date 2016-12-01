Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ABD3E00D44; Thu,  1 Dec 2016 15:09:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB31E00D3D
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 15:09:25 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id h133so4908261ioe.2
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 15:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bq/WkWtMHBZCzTGhouiuubaxif8d+3C2MBjp1nXFsuI=;
	b=mGTD9gO5ncmVN6qeoqIXgb7CKCQibjgONfWQ18qfq2srTLhRBOFJEcyZKxrWm8zUT1
	a6wKdtaiJZyiJTgOgoyjdNvVHODy0BdOAF990axnjHK4yWtTzJin98IzWuvQcz4SijTS
	WnhGmx0ivSJ61q8fOZU5GNekzxzq1OCAbCDkyryRPb+9X3A9XhIVGVIHbWj9hqvw6U4a
	rhKRXlG0MvmibJNfShbLzw8RHumzn4IH38e5mJ44HM+wBI3gH9z7siybMczx8j3vItFm
	+Q/G7vq380WWQMb94hmRybjlWFupxgKHCGCRJ1uaVZCAmo9LkxUQDv4hpZo5VrVqfL3H
	Z33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bq/WkWtMHBZCzTGhouiuubaxif8d+3C2MBjp1nXFsuI=;
	b=OSWlcx9YfluI2FW8sLQSvMw+CTTQB++JyqUGml7XKItnLQcYLGmpta8GiOpV+HFed8
	JIbwT+MhiSanDzjeHk+Ol1HnbRT8duPziGlNpWWqAHnZcOKm6HYuCThYo2w+BzTkjX6Q
	dCgnF7R/KujAG3tPrvjkdbuqbSt+2wpeqbtXW3mDxSmLBJLLORYM9UfbUojtql/2tneK
	pHF7akzggPcuxjAj81uG2Na48CXmiOFzdlVgeGvd7gjGNvityVutwbiOMGuekfrfinmF
	CQlCEiNMOSnEJOr1J7po/GC3EUjxIq1SSktAn4yrXw2IHxiMpwzFgdR3KOxmNWjH6Tq1
	DpCg==
X-Gm-Message-State: AKaTC03gBizPssDt+Oq5b2LoLJxDHvrprHoKE2LXwbZF0lTG9ON7WvFcr62QJo55iAX39g==
X-Received: by 10.36.28.204 with SMTP id c195mr185649itc.81.1480633764987;
	Thu, 01 Dec 2016 15:09:24 -0800 (PST)
Received: from openSUSE-i7.site ([45.72.162.223])
	by smtp.gmail.com with ESMTPSA id
	h76sm1020301ioi.43.2016.12.01.15.09.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Dec 2016 15:09:24 -0800 (PST)
Date: Thu, 1 Dec 2016 18:09:21 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20161201230921.GA4961@openSUSE-i7.site>
References: <20161201200550.GA31925@openSUSE-i7.site>
	<CADkTA4OX9crgydX7FWBs6hQ1AYr3rOsGhokNPG+fdZNKef_-7w@mail.gmail.com>
	<20161201224415.GA4271@openSUSE-i7.site>
	<ece5577e-1fa2-aa07-fca4-716875ec921b@windriver.com>
MIME-Version: 1.0
In-Reply-To: <ece5577e-1fa2-aa07-fca4-716875ec921b@windriver.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: yocto-kernel-tools and multiple users
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
X-List-Received-Date: Thu, 01 Dec 2016 23:09:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2016-12-01 @ 05:50:21 PM, Bruce Ashfield wrote:
> Can you just provide me the details of exactly how you are invoking
> the build that triggers the error ?

$ git clone git://git.openembedded.org/openembedded-core.git
	(HEAD @ 11063a01d4511b2688ea7ba2d7359e4e07328c66)
$ git clone git://git.yoctoproject.org/meta-raspberrypi
	(HEAD @ 44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9)
$ git clone git://git.openembedded.org/bitbake.git
	(HEAD @ 0bb188f01e396052b127e170a25246d79a6d6741)

$ openembedded-core/oe-init-build-env raspi2-test bitbake
$ bitbake-layers add-layer ../meta-raspberrypi

$ MACHINE=raspberrypi2 bitbake virtual/kernel

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "opensuse-42.2"
TARGET_SYS        = "arm-oe-linux-gnueabi"
MACHINE           = "raspberrypi2"
DISTRO            = "nodistro"
DISTRO_VERSION    = "nodistro.0"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard
cortexa7"
TARGET_FPU        = "hard"
meta              = "master:11063a01d4511b2688ea7ba2d7359e4e07328c66"
meta-raspberrypi  = "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"

ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_metadata: Function failed: do_kernel_metadata (log file is located at /z/layerindex-master/raspi2-basic-2/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.9670)
ERROR: Logfile of failure stored in: /z/layerindex-master/raspi2-basic-2/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.9670
Log data follows:
| DEBUG: Executing shell function do_kernel_metadata
| [ERROR]: processing of file /tmp/tmp.G7DTQu11V3 failed
| /z/layerindex-master/raspi2-basic-2/tmp-glibc/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
| 
| Context around the error is:
| 
|     #
|     prefix /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
|     kconf non-hardware /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     prefix /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
|     patch "/z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
|     # run time: 0 seconds
|     # processed files:
|     # _cfg /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     # _cfg /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
| 
| See pre-processed file /tmp/tmp.G7DTQu11V3 for more details
| #
| # scc v0.8
| # processed: Thu Dec  1 18:08:50 EST 2016
| #
| # This is a scc output file, do not edit
| #
| [ERROR]: processing of file /tmp/tmp.zvbMU6XqZm failed
| # _reloc_dir /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux
| # _reloc_dir /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux
| /z/layerindex-master/raspi2-basic-2/tmp-glibc/sysroots/x86_64-linux/usr/bin/scc-cmds/patch.cmd: line 29: : No such file or directory
| 
| Context around the error is:
| 
|     #
|     prefix /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/
|     kconf non-hardware /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     prefix /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/
|     patch "/z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch"
|     # run time: 0 seconds
|     # processed files:
|     # _cfg /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig
|     # _cfg /z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
| 
| See pre-processed file /tmp/tmp.zvbMU6XqZm for more details
| ERROR: Function failed: do_kernel_metadata (log file is located at /z/layerindex-master/raspi2-basic-2/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.9670)
ERROR: Task (/z/layerindex-master/layers/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:do_kernel_metadata) failed with exit code '1'


