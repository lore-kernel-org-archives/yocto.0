Return-Path: <sven.ebenfeld@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4758FE008E5; Tue,  3 Feb 2015 05:17:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.ebenfeld[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E97FE008CC
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 05:17:31 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id y19so44552035wgg.2
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 05:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=mzGC9kxhonySh4AtAYFcMKEMM3aIuPqj35QRgolzYJM=;
	b=eeFv5UuV5eFoWogE0dcXo4oQ/OPubP6y84QqfFN4B0/UO+Wq3snQOqGJgEs6MuJpBG
	vEZ6g1/REMfHv7t8FgyGSos9lLuoFiRp7RohWOCma84djg0cwU1Lma8IaAmNVPJxRk+m
	c7ApgPQxIvkH2rUzG1hF11u4NRzQ+pgLE5nLLlzvonarzEm75s32KufZnx55Rnmm1TPD
	6LLEPsmqT74RpgKelQuT8PVq1a4tE9LWDkLjvQkfv0dKiJwQPxGpcnF+jGi40N2d/gKX
	o1aPl2fi5kch1QYh1lKKFYi98Di5RatmZgCGmCieDQ/u6iw1typXg1H5X8ZaN2RRXVQR
	2JJQ==
X-Received: by 10.180.221.232 with SMTP id qh8mr35393320wic.6.1422969450271;
	Tue, 03 Feb 2015 05:17:30 -0800 (PST)
Received: from [192.168.50.198] (ip-84-119-96-251.unity-media.net.
	[84.119.96.251]) by mx.google.com with ESMTPSA id
	bb2sm32624981wjc.43.2015.02.03.05.17.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Feb 2015 05:17:29 -0800 (PST)
Message-ID: <54D0CA7C.9060508@gmail.com>
Date: Tue, 03 Feb 2015 14:17:48 +0100
From: Sven Ebenfeld <sven.ebenfeld@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, raghavendra.kakarla@inedasystems.com
References: <17820165.95.1422967233382.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <17820165.95.1422967233382.JavaMail.kraghavendra@Raghavendra>
Subject: Re: yocto-custom-kernel issue
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
X-List-Received-Date: Tue, 03 Feb 2015 13:17:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Raghavendra,

Am 03.02.2015 um 13:40 schrieb Raghavendra Kakarla:
> Hi,
>  I want to add BSP layer for my mechine and I should take the our own customized kernel source(our kernel source).
> 
>  For that I add the BSP layer and wrote the recipe for that.
> 
>  My recipe is as follows:
> 
> *******************************************************************************************************************************************************
> 
>  # This file was derived from the linux-yocto-custom.bb recipe in
> # oe-core.
> #
> # linux-yocto-custom.bb:
> #
> #   A yocto-bsp-generated kernel recipe that uses the linux-yocto and
> #   oe-core kernel classes to apply a subset of yocto kernel
> #   management to git managed kernel repositories.
> #
> # Warning:
> #
> #   Building this kernel without providing a defconfig or BSP
> #   configuration will result in build or boot errors. This is not a
> #   bug.
> #
> # Notes:
> #
> #   patches: patches can be merged into to the source git tree itself,
> #            added via the SRC_URI, or controlled via a BSP
> #            configuration.
> #
> #   example configuration addition:
> #            SRC_URI += "file://smp.cfg"
> #   example patch addition:
> #            SRC_URI += "file://0/home/testuser/yocto.git/android-linux-mti-unif-3.10.14/arch/mips/configs001-linux-version-tweak.patch
> #   example feature addition:
> #            SRC_URI += "file://feature.scc"
> #
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
> 
> SRC_URI = "git://192.168.42.75/vineethchowdhary/incdhad1-kernel-3-10.git;protocol=http;bareclone=1"

Why are you doing a bareclone??
Shouldn't it do a checkout to have a working copy that it can compile?

> 
> SRC_URI += "file://defconfig"
> 
> SRC_URI += "file://mydhanush.scc \
>             file://mydhanush.cfg \
>             file://mydhanush-user-config.cfg \
>             file://mydhanush-user-patches.scc \
>            "
> 
> 
> LINUX_VERSION ?= "3.10.14"
> LINUX_VERSION_EXTENSION ?= "-custom"
> 
> #SRCREV="12bbf6468e2ef179800aaab46c724f523b5002e3"
> SRCREV="f91e563c45d457aa441f687eda294ad899e2b25f"
> PR = "r0"
> PV = "${LINUX_VERSION}+git${SRCPV}"
> 
> #COMPATIBLE_MACHINE_mydhanush = "mydhanush"
> COMPATIBLE_MACHINE_mydhanush = "mydhanush"
> 
> ***************************************************************************************************************************************************************
> 
> 
> but I got error as follows:
> 
> Log data follows:
> | DEBUG: Executing shell function do_kernel_checkout
> | ERROR: S is not set to the linux source directory. Check
> | ERROR: the recipe and set S to the proper extracted subdirectory

This states, that it doesn't find the source directory where it is
expected. If "bareclone=1" has the effect I think it has, this is normal
as there will probably only be a bare git repository insted of it's
working copy.

> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_kernel_checkout (log file is located at /home/testuser/poky/build/tmp/work/mydhanush-poky-linux/linux-yocto-custom/3.10.14+gitAUTOINC+f91e563c45-r0/temp/log.do_kernel_checkout.11798)
> 
> could you please help for resolving this issue.
> 
> Thanks and Regards,
> 
> Raghavendra.
> 

Cheers,
Sven

