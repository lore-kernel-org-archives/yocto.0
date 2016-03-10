Return-Path: <laguest@archeia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48415E00CBC; Thu, 10 Mar 2016 11:47:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from beast.archeia.com (beast.archeia.com [74.207.226.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1545DE00CA7
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 11:47:04 -0800 (PST)
Received: from [192.168.0.2] (0545bbff.skybroadband.com [5.69.187.255])
	(Authenticated sender: laguest)
	by beast.archeia.com (Postfix) with ESMTPSA id 2EADC8002
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 19:49:26 +0000 (GMT)
To: yocto@yoctoproject.org
From: "Luke A. Guest" <laguest@archeia.com>
Message-ID: <56E1CF82.5030402@archeia.com>
Date: Thu, 10 Mar 2016 19:48:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
Subject: Need help getting meta-ada going
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
X-List-Received-Date: Thu, 10 Mar 2016 19:47:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

Turns out updating this and making it work properly is harder than I
thought. I'm running into symlink recursion errors on the
popular_sysroot task on gcc-cross-arm.

[log]
DEBUG: Shell function sysroot_stage_all finished
DEBUG: Executing python function sysroot_strip
ERROR: Error executing a python function in
/mnt/data/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb:

The stack trace of python calls that resulted in this exception/failure was:
File: 'sysroot_strip', lineno: 97, function: <module>
     0093:
     0094:        oe.utils.multiprocess_exec(sfiles, oe.package.runstrip)
     0095:
     0096:
 *** 0097:sysroot_strip(d)
     0098:
File: 'sysroot_strip', lineno: 50, function: sysroot_strip
     0046:            for f in files:
     0047:                file = os.path.join(root, f)
     0048:
     0049:                try:
 *** 0050:                    ltarget = oe.path.realpath(file, dvar, False)
     0051:                    s = os.lstat(ltarget)
     0052:                except OSError as e:
     0053:                    (err, strerror) = e.args
     0054:                    if err != errno.ENOENT:
File: '/mnt/data/yocto/poky/meta/lib/oe/path.py', lineno: 239, function:
realpath
     0235:            # be printed a backtrace with 100s of OSError
exceptions
     0236:            # else
     0237:            raise OSError(errno.ELOOP,
     0238:                          "too much recursions while resolving
'%s'; loop in '%s'" %
 *** 0239:                          (file, e.strerror))
     0240:
     0241:        raise
     0242:
     0243:    return file
Exception: OSError: [Errno 40] too much recursions while resolving
'/mnt/data/yocto/poky/build/tmp/work/x86_64-linux/gcc-cross-arm/4.9.3-r0/sysroot-destdir/mnt/data/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include/gcc-build-internal-arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/include/bits/stamp-bits';
loop in
'/mnt/data/yocto/poky/build/tmp/work/x86_64-linux/gcc-cross-arm/4.9.3-r0/sysroot-destdir/mnt/data/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/include/gcc-build-internal-arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/include/bits/stamp-bits'

DEBUG: Python function sysroot_strip finished
DEBUG: Python function do_populate_sysroot finished
ERROR: Function failed: sysroot_strip
ERROR: Logfile of failure stored in:
/mnt/data/yocto/poky/build/tmp/work/x86_64-linux/gcc-cross-arm/4.9.3-r0/temp/log.do_populate_sysroot.21067
NOTE: recipe gcc-cross-arm-4.9.3-r0: task do_populate_sysroot: Failed
ERROR: Task 1
(/mnt/data/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb,
do_populate_sysroot) failed with exit code '1'
DEBUG: Teardown for bitbake-worker
NOTE: Tasks Summary: Attempted 357 tasks of which 353 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /mnt/data/yocto/poky/meta/recipes-devtools/gcc/gcc-cross_4.9.bb,
do_populate_sysroot
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
[endlog]

All, I've done so far is add ",ada" to the "--enable-languages" flag on
configure, and it's creating a symlink to stamp-bits to itself in the
above directory for some reason, causing recursion.

The layer can be grabbed here:
https://github.com/Lucretia/meta-ada/tree/jethro

Can anyone help?

Thanks,
Luke.


