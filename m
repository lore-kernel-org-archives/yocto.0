Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA2FBE008E2; Mon, 24 Nov 2014 19:33:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1933E008D6
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 19:33:28 -0800 (PST)
Received: by mail-pd0-f179.google.com with SMTP id w10so11126884pde.38
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 19:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=hUyo2wpAVufMSRnDb+EhpWZCy1/F+73X7YctCwiH5uM=;
	b=lCWKcaEkJq3ztnk91kzZmWtHPOqlasKiS5Zh6UFI/A09n5Qrwg4CcgdMPWSpFQjT+T
	PqBTMALcC5rFHIF6evjTaaJoXKtkTRzg/Bou44+SbvvzAlJE1JXvmOk02Djatzy8Co0m
	uqB9q/l5/ILnUclQGFXVm3s0Yb4y94ZcZY4Z7NMEE5BuVT+ZdxO63EZn8U8H5tI+pTya
	sYOGcRYflG8ItQzZm1JAfiS0anneL1T+P2tYsUNWVTljDQBJV9pvmUQTtpw0qHOdNyWp
	iZNbbie4lZdPprYeLsXfL1GG3UlS3s0RZGVuYsMBKYnk0nTrkqFJSyMXp39YGmGuSe5J
	VwNg==
X-Received: by 10.68.111.37 with SMTP id if5mr38329267pbb.140.1416886408025;
	Mon, 24 Nov 2014 19:33:28 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:e95a:607d:d083:a0f9?
	([2601:c:9380:601:e95a:607d:d083:a0f9])
	by mx.google.com with ESMTPSA id
	mr4sm13688231pdb.64.2014.11.24.19.33.25 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Nov 2014 19:33:26 -0800 (PST)
Message-ID: <5473F884.2060509@gmail.com>
Date: Mon, 24 Nov 2014 19:33:24 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: peterengcomau001@adam.com.au, yocto@yoctoproject.org
References: <cffbbdaa26a9cdb74f9da8d76dc896db17132f84@webmail.adam.com.au>
In-Reply-To: <cffbbdaa26a9cdb74f9da8d76dc896db17132f84@webmail.adam.com.au>
Subject: Re: New error in 1.7
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
X-List-Received-Date: Tue, 25 Nov 2014 03:33:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

There was an issue with the curl package over the weekend. It was 
corrected early this morning (PST). Do you have the changes? if not, 
please refresh your cloned source.

regards,
Armin

On 11/24/2014 07:16 PM, peterengcomau001@adam.com.au wrote:
> I have just downloaded poky 1.7 and am rebuilding the image. I get an
> error that I did not when doing this in 1.6.1
>
> lachlan@lachlan-SVP13215PXB:~/poky/build-atmel$ bitbake
> atmel-qt5-demo-image -c populate_sdk
>
> Build Configuration:
> BB_VERSION        = "1.24.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "sama5d3xek"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.7"
> TUNE_FEATURES     = "arm armv7a vfp thumb callconvention-hard cortexa5"
> TARGET_FPU        = "vfp"
> meta-atmel        = "my_branch:711809b0d91f816b10e70508986b3f43098000ba"
> meta-qt5          = "my_branch:0732e184acef5e0200f46d7f95702774e5de1904"
> meta
> meta-yocto
> meta-yocto-bsp    = "dizzy:9bfb78bff606700176909abaa5cf8a332292738a"
> meta-oe
> meta-python
> meta-networking
> meta-ruby         = "my_branch:9efaed99125b1c4324663d9a1b2d3319c74e7278"
>
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Command Error: exit status: 1  Output:
> Applying patch CVE-2014-3613.patch
> patching file lib/cookie.c
> patching file tests/data/test1105
> patching file tests/data/test31
> Hunk #1 FAILED at 49 (different line endings).
> 1 out of 2 hunks FAILED -- rejects in file tests/data/test31
> patching file tests/data/test8
> Patch CVE-2014-3613.patch does not apply (enforce with -f)
> ERROR: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
> /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/curl/7.37.1-r0/temp/log.do_patch.31221
> ERROR: Task 1666
> (/home/lachlan/poky/meta/recipes-support/curl/curl_7.37.1.bb, do_patch)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2914 tasks of which 2912 didn't need to
> be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>    /home/lachlan/poky/meta/recipes-support/curl/curl_7.37.1.bb, do_patch
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
> any thoughts as to what this probleb could be.
> ___________________________________________________________
>
> I also have problems with the ADT cross compiler installer in V1.7
> compared with 1.6.1. where it wont install the rootfs as follows:
>
> #########################################################################
> # Welcome to Yocto Application Developement Tools (ADT) Installer
> #
> # Host Machine:                x86_64
> # OS info:                3.13.0-39-generic
> # Yocto ADT version to be installed:
> # supported target architectures:    x86 x86_64 arm ppc mips
> # supported target root_fs images:    minimal minimal-dev sato sato-dev
> sato-sdk lsb lsb-dev lsb-sdk
> #########################################################################
>
> Systemwide installation. Installation will occur under /opt/poky/1.7
>
> ############################################################################
> # Your system installation configurations from adt_installer.conf
> ############################################################################
> # Cross toolchains:        arm
> # Install Qemu:            Y
> # Install NFS utilities:    Y
>
> ##############################################################################
> # Your rootfs image(s) and target sysroot selections from adt_installer.conf
> ##############################################################################
> # Target architecture:        arm
> # Target machine:        qemuarm
> # Root_fs images:        minimal sato-sdk
> # Target sysroot image:        sato-sdk
> # Target sysroot loc:        /home/lachlan/test-yocto/qemuarm
> ############################################################################
>
> Successfully installed selected native ADT!
> Installing target sysroot for arch: arm, rootfs type: sato-sdk,
> location: /home/lachlan/test-yocto/qemuarm
>
> Target sysroot location: /home/lachlan/test-yocto/qemuarm, already
> exists! If you continue installation, this folder will be re-created.
> Creating directory /home/lachlan/test-yocto/qemuarm...
> Extracting rootfs: core-image-sato-sdk-qemuarm.tar.bz2, using pseudo...
> tar (child): ./download_image/core-image-sato-sdk-qemuarm.tar.bz2:
> Cannot open: No such file or directory
> tar (child): Error is not recoverable: exiting now
> tar: Child returned status 2
> tar: Error is not recoverable: exiting now
>
> Is there anyway to overcome this or is it best to go back to 1.6.1
>
> Thanks
> Lachlab
> ---- Message sent via Adam Internet WebMail - http://www.adam.com.au/
>
>

