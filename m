Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53999E00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 04:34:55 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id n16so2770278oag.31
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 04:34:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=5EQGkEwfpY5JNkmvGln+Jl/gjI2tkRHeN36yn4EE0gE=;
	b=iqKIDXJOeu3j1KOH+VFmOd0vy7H6PuYsuzuxMY9eYTJiSmbavy7TYmDFpHQcow5DKi
	C8oJ6MHuNGwuNq7Kj5l1oMiD6gPG0ZsMimgwbM5lLDzkiK1cxvLyNQ5Ug+/jgK9i1p9q
	jo5DifRNUo/Dteo/7RUF588OvhlEKaOVmVtXeIutE5UlfwavqMZQ7FLIyOh8dNkA8p9U
	XcwsEqm5QnMe0gAWgIDtaTBdPBeGgwKNsYi4bbOM8vamHgcaptWNG4DjuvmMflDFgE9e
	wlWzE8RjUGTKZJq/b29aYX7tKse2gxSYR5nkl7pmc8AOWcGBZpLeQvCkQ2KGD5I/wb6o
	KnhA==
X-Gm-Message-State: ALoCoQnN2S/niw5U3rZ77XQgxUfdx03/dRQtkfypDTdDnxoycR/Rq08hEgeXLIhvW3vRB4mBsuXf
X-Received: by 10.182.118.169 with SMTP id kn9mr7200193obb.46.1398166494750;
	Tue, 22 Apr 2014 04:34:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.110.9 with HTTP; Tue, 22 Apr 2014 04:34:34 -0700 (PDT)
In-Reply-To: <F7680723A1CA6840825A59020FA77064010BC709@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA77064010BC709@sdexmbx1srv.skidata.net>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 22 Apr 2014 13:34:34 +0200
Message-ID: <CAP71WjyCK-JQMdDKh42VX2aXeUPTL0bb0ELpFHsRafpuwpcUpg@mail.gmail.com>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
Cc: "Yocto Project Discussion ML \(yocto@yoctoproject.org\)"
	<yocto@yoctoproject.org>
Subject: Re: Problem with own kernel recipe on Dora
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
X-List-Received-Date: Tue, 22 Apr 2014 11:34:59 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 22, 2014 at 9:52 AM, Richard Leitner - SKIDATA
<Richard.Leitner@skidata.com> wrote:
> Hi Yocto-Community,
> as the subject already says I've a problem with my kernel recipe after the "migration" from the Dylan to the Dora (10.0.1) branch.
> I've tried the 10.0.1 release tag as well as the current dora master (50e9ccb2aff7b9f9dca4fda99a6832c60f64de3b).
>
> The kernel recipe I'm using is derived from the skeleton:
> DESCRIPTION = "Linux Kernel"
> SECTION = "kernel"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> inherit kernel
> KSRC = "/home/leri/VCS/git/linux"
> KBRANCH = "master"
> SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel;nocheckout=1"
> SRCREV = "2014_03_07"
> PR = "sd_15.2"
> LINUX_VERSION = "${PV}"
> LINUX_VERSION_EXTENSION = "-${PR}+${SRCREV}"
> COMPATIBLE_MACHINE = "skidata-harmony|smartcpu"
> KERNEL_IMAGETYPE = "uImage"
> SRC_URI += "file://defconfig"
> require recipes-kernel/linux/linux-yocto.inc
>
>
> This recipe was working well with the Dylan branch and following changes:
> -SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel;nocheckout=1"
> +SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel"
> +S = "${WORKDIR}/git"
>
>
> When compiled with the dora branch the kernel hangs at "Starting kernel..." and doesn't start:
> ## Booting kernel from Legacy Image at 00000000 ...
>    Image Name:   Linux-3.1.10-sd_15.2
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    3181616 Bytes = 3 MiB
>    Load Address: 00008000
>    Entry Point:  00008000
>    Verifying Checksum ... OK
>    Loading Kernel Image ... OK
> OK
>
> Starting kernel ...
>
>
> I've already looked through the migration notes in the manual but I'm unable to find any hints...
> Are there any ideas why the kernel doesn't start with the Dora branch?

you don't mention anything about gcc, so assuming you are using the
'default' gcc for each release, dylan has 4.7, and dora has 4.8. On a
couple of ARM platforms, i have seen similar issue when using gcc-4.8
with old kernel (<v3.4).

the following linux kernel patches were used to fix the boot problem:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=455bd4c430b0c0a361f38e8658a0d6cb469942b5
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=418df63adac56841ef6b0f1fcf435bc64d4ed177

They should cleanly apply to v3.1 which you seem to be using.

cheers,
nico

