Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23B32E00D14; Sun, 12 May 2019 03:54:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 043F5E00C93
	for <yocto@yoctoproject.org>; Sun, 12 May 2019 03:53:58 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id t1so2759030qtc.12
	for <yocto@yoctoproject.org>; Sun, 12 May 2019 03:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=d68kcDlFnriHYg9kKWa06RAWghGTiuX2/udhYMxrZ/E=;
	b=obuBya9/kh05/RNer7A+xq+XTo+naCAEtUTW7eseBES4umFjWOFLffMnEPS3ACXal3
	iwslH1vbJFOYEFhoy2wklebpSLZ2hMLWgv3auamFDTJ7bPYZOaqNJJDomEPNyjQ8RId3
	tQY2IiWBd2mair3IrSTuqVA5tPhfDdXs2YZV/FSfaeIzXuCEXwM3Lz1U6Yvzr9CLGxsI
	yeDQjmoRgnankFnrJESYOmuUAdwQztIhBMn9D7Vb6t8YEbqbK3YuL+uIQFczMqjXcag1
	oW9a07JkZgUzuT4YDRAzxHeaO/15eNqnoerxTfoY/d77t/am7U13MM8Sq9b1komSnljG
	50gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=d68kcDlFnriHYg9kKWa06RAWghGTiuX2/udhYMxrZ/E=;
	b=rLTZqy8MnChz7mFoW13zFcQDsov3YCtIJVIYZVrPvhiWiwYe9NoAT5B0q7weYlm6c+
	vzBv5sNJEA+Sq4gh9PDk+7xve6xpextbgFwfWpR7XBRzbMCHBb3T4APuySKtDHx8pUuJ
	L00fxBjUFnawU3uXYdKEBKQFZnm6o8V6JUL2bLUYfLuy3cvqORFQRZ96SGebgHEgME9X
	sBtlZT7XbH5y5hACnNFM/zxDGWhBXtywjEjvgqb67ZXiWN1NKmFW1LapOJbIevIKttq3
	4m2Wtznqen4v1FvLK0gQiGDWdy00NMS63uAO0b27rTa6IsH+Yhxt8X1HgCcligqYKh+C
	gtWw==
X-Gm-Message-State: APjAAAV20JjzF+IFYcMQnGzRuSxCrRdH5MDbB5M5UBmNx9RGkzZkPSJA
	xlOVkwTfofsQ90v25nUOaeMSBKo2kEvMhgtDSADR1P1aHtM=
X-Google-Smtp-Source: APXvYqwjwJ62VQ0nF6ykjMTVQvYN7KokZOOCWEDauIfh9cDEFzFxCmkRyWS5iq+4o00lIcy897hZRQZHcfoqd3DEN2s=
X-Received: by 2002:ac8:392c:: with SMTP id s41mr18706541qtb.34.1557658438151; 
	Sun, 12 May 2019 03:53:58 -0700 (PDT)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sun, 12 May 2019 12:53:46 +0200
Message-ID: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: Building Out-of-Tree Modules on the BBB Target
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
X-List-Received-Date: Sun, 12 May 2019 10:54:01 -0000
Content-Type: text/plain; charset="UTF-8"

Hello to the YOCTO community,

I am using (to build the target for Beagle Bone Black) the following script:
https://github.com/ZoranStojsavljevic/bbb-yocto
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh

The latest kernel I am using from the following repo:
https://github.com/jumpnow/meta-bbb

Is kernel 5.0.14 .

Here is the snippet of the boot traces:
Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gcc
version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
instruction cache
[    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
[    0.000000] Memory policy: Data cache writeback
[    0.000000] cma: Reserved 16 MiB at 0x9f000000
[    0.000000] CPU: All CPU(s) started in SVC mode.
[    0.000000] AM335X ES2.1 (sgx neon)
[    0.000000] random: get_random_bytes called from
start_kernel+0xa4/0x460 with crng_init=0
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 130048
[    0.000000] Kernel command line: console=ttyO0,115200n8
root=/dev/ram0 ip=dhcp

According to the documentation, the following:
2.10.1. Building Out-of-Tree Modules on the Target
https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html

I tried to find /usr/src/kernels/5.0.14... Directory, since I see
from the build that kernel-dev and kernel-devsrc are included:
[user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
core-image-kernel-dev                                 :1.0-r0
kernel-devsrc                                         :1.0-r0
kernel-selftest                                       :1.0-r0

THE PROBLEM: But I could not find ob BBB target /usr/src/kernels
directory at all!?

Two questions here?
[1] Do you have any advice on this problem (what I am missing here)?
[2] Alternative to [1]: how I can use cross compiler from
.../build/tmp to build Out-of-Tree Module for the BBB target on the
host?

Thank you,
Zoran
_______

