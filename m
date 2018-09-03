Return-Path: <brgl@bgdev.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17F43E007DA; Mon,  3 Sep 2018 08:59:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A002FE00720
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2018 08:59:09 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id v14-v6so753884iob.4
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2018 08:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=vK3LM9Bx8cbURpcTT6vX5Q5/FQPjQrrl7Un5hc0CtfA=;
	b=YI04B6TOJ9DiEA8MK9yGIdDkdgJSvCaskhoOdxXNbVAZ2BYqRhCDFam/Qr5ZuE7SdY
	sdG9wDIhMpDfVmYethnEDyJxyRVIgSMmzRCi1yLlCJvS7z5xCFlvFPu4DwibC2Kp9PZm
	TWrJpY2cxvjXeFIT3NVntKl/Lh0Y/8/8RIkZHRaXl4Psk0Fm2QASRQTsZ6v4wP+yOna8
	yf9MYEjT/tNvGBm/lG4C7mHKdXPCoK+AO2udSvgIVGYzrEIkvjvPhej85hAHSTLlYb/G
	G276qXbn4QPbhGZlD4Dcjl7GBcAzt504liWf9EmTjxJF3rBodgUPZETbj7kvF6kHRmUW
	rIoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vK3LM9Bx8cbURpcTT6vX5Q5/FQPjQrrl7Un5hc0CtfA=;
	b=QVnoTIZrSnzgkA36FsQiNXfJOuLkKdK70l+xuVLUpm+3DwJOx5mWYIR1meFj4N7tcF
	peWzr9ZfBV6fkjeaS5NKFjplsRdZ0kRS2uqtLEWcjxVfjjHJum2Yslp2qO4VeYtiUUrm
	5bBhFgglLmO1AuLxaLDHQKdvEOHYpWmPCzJTG+QgUetEu79kuN3Cv+nsnVVdYfIWAIcO
	xLRPw8+ZX39Te0Ae4bkgZ0/v3cMolxtfUjefglTeZ+6CqXPu8K4u5JnurGlVI/ypm4X4
	fp5B4FrUIfrP8D3+a0w1rzgb3vmm7Ed5+LqKaeF9kqOleyILc8iBh1RiU1ZU1ayhhOR8
	ydBQ==
X-Gm-Message-State: APzg51DBHSOy4jKZ0aLIYteMgxX0vVnCyj5SH2GqijAVXUyEcp7z88yu
	u+OfIEnr7XNWnCnQAR+tbt/VLm6jStJS2BfK528rgr9xsYQ=
X-Google-Smtp-Source: ANB0VdY16cf6xUUnqYN5OPfs38FSvXfMLmQQMDx10CIbqrjFPRw8dhTxR7fiddVoCVYr0vW+oQ3Q/R+1qwhQvL0uc/A=
X-Received: by 2002:a6b:6401:: with SMTP id
	t1-v6mr20863470iog.111.1535990348953; 
	Mon, 03 Sep 2018 08:59:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:f205:0:0:0:0:0 with HTTP;
	Mon, 3 Sep 2018 08:59:08 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 3 Sep 2018 17:59:08 +0200
Message-ID: <CAMRc=Mec347nTORFRnFdHjB5We1Tu_5g78GWqpCj6aWZdNc9CQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: native perl build wants to run target shared object
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
X-List-Received-Date: Mon, 03 Sep 2018 15:59:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add a recipe for a new perl package: linux-inotify.

It's fairly standard package available in cpan[1].

I added the following DEPENDS and RDEPENDS:

RDEPENDS_${PN} += " \
    perl \
    perl-module-base \
"

DEPENDS += " \
    perl-native \
    libmodule-build-perl-native \
"

But I'm getting the following build error:

ERROR: linux-inotify-perl-0.05-r0 do_compile: oe_runmake failed
ERROR: linux-inotify-perl-0.05-r0 do_compile: Function failed:
do_compile (log file is located at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/temp/log.do_compile.15693)
ERROR: Logfile of failure stored in:
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/temp/log.do_compile.15693
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 40 PASTHRU_INC= -O2 -pipe -g
-feliminate-unused-debug-types
-fdebug-prefix-map=/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0=/usr/src/debug/linux-inotify-perl/0.05-r0
-fdebug-prefix-map=/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot=
-fdebug-prefix-map=/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native=
 LD=aarch64-poky-linux-gcc
--sysroot=/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot
| /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native/usr/bin/perl-native/perl
Build --makefile_env_macros 1
| Can't load '/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot/usr/lib/perl/5.24.1/auto/File/Glob/Glob.so'
for module File::Glob:
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot/usr/lib/perl/5.24.1/auto/File/Glob/Glob.so:
cannot open shared object file: No such file or directory at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/5.24.1/XSLoader.pm
line 96.
|  at /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot/usr/lib/perl/5.24.1/File/Glob.pm
line 68.
| Compilation failed in require at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/vendor_perl/5.24.1/Module/Build/Base.pm
line 1263.
| BEGIN failed--compilation aborted at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/vendor_perl/5.24.1/Module/Build/Base.pm
line 1263.
| Compilation failed in require at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/vendor_perl/5.24.1/Module/Build.pm
line 17.
| BEGIN failed--compilation aborted at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/recipe-sysroot-native/usr/bin/perl-native/../../../usr/lib/perl-native/perl/vendor_perl/5.24.1/Module/Build.pm
line 17.
| Compilation failed in require at Build line 47.
| BEGIN failed--compilation aborted at Build line 47.
| Makefile:33: recipe for target 'all' failed
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| WARNING: /<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/temp/run.do_compile.15693:1
exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at
/<snip!>/build/tmp/work/aarch64-poky-linux/linux-inotify-perl/0.05-r0/temp/log.do_compile.15693)
ERROR: Task (/<snip!>/meta-<snip!>/recipes-perl/linux-inotify/linux-inotify-perl_0.05.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3669 tasks of which 3667 didn't need to
be rerun and 1 failed.

Apparently the XSLoader module tries to use glob but instead of
loading the host shared object it opens the target shared object and
fails.

I couldn't find any reason nor fix for that. Would appreciate any help.

Best regards,
Bartosz Golaszewski

[1] https://metacpan.org/pod/Linux::Inotify

