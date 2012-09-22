Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95817E011C9
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 11:35:31 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so5589909obb.35
	for <yocto@yoctoproject.org>; Sat, 22 Sep 2012 11:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=iLyeXRoRm848/OoP/dtprHRZSQccXJx5ecyIK6B9Z9w=;
	b=eDKHnNK/pARqEarhwYwT7Gw8ASgIJEIeluYgEvzk3dCWgcnwkH/yNBLAAjRVR1kBld
	JjVkKFnNvIQwBCjrisWCltm1h2xEGYSqEBYXB2a2hbG2mfVYZ7ZfFUInFMsF6eRRL5eM
	0UZBePPd5WqevIWL/L0dxlWHtysFIp+PLGsHEEpYSWGM//jpGO5rqNEGiRxwvR0iPAQe
	M0FLa6GwmHqpN60MzH+IByfy+K98suD51Luapb23SXH3vQmRJ/8a0UUVYzD15dibwWrc
	rEk9iVATcj7yOBTMwnvM9eu+ZOiqhtUYtTrZKZubzS3iohKWqNpfLR3XAI2KL+ekHiKR
	8jLw==
MIME-Version: 1.0
Received: by 10.60.171.138 with SMTP id au10mr6705855oec.39.1348338928813;
	Sat, 22 Sep 2012 11:35:28 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Sat, 22 Sep 2012 11:35:28 -0700 (PDT)
Date: Sat, 22 Sep 2012 14:35:28 -0400
Message-ID: <CAMAb8ZN9a7Dtn6evFZ-zQn47EBLnR4y=RZ8KNtX=ooMUpHM2uw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: IPK Package name contains illegal characters?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 22 Sep 2012 18:35:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

After (finally!) getting all the required sources pre-mirrorred, I was
able to the build the 'discovery-image' in the meta-ivi layer in 2 hours
+ 17 minutes:

  http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/

This was using package_rpm, though, so I thought I could do better by
changing conf/local.conf to contain:

  PACKAGE_CLASSES ?= "package_ipk"

It appears that this was going to be quite a bit faster, but after 1
hour it generated the error:

  *** Error: Package name  contains illegal characters, (other than [a-z0-9.+-])


The extra space between 'name' and 'contains' seems *very* suspicious,
but I don't know what to make of it. (The package name is an empty
string? Why?)  Any suggestions as to how I can debug this? The log file
doesn't show what command was attempted, so I really don't know where to
begin.

In case it's helpful, the tail-end of the output from running 'bitbake
-DD DLT-daemon' is appended below.  (NOTE: The exact same problem exists
for the AudioManager component of the meta-ivi layer...)


DEBUG: Stampfile
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_compile
not available
NOTE: Running task 716 of 722 (ID: 8,
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_compile)
NOTE: package DLT-daemon-2.5.2-r0: task do_compile: Started
NOTE: package DLT-daemon-2.5.2-r0: task do_compile: Succeeded
DEBUG: Marking task 2
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_install) as buildable
DEBUG: Stampfile
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_install
not available
NOTE: Running task 717 of 722 (ID: 2,
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_install)
DEBUG: Running /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb:do_install
under fakeroot, fakedirs:
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/
NOTE: package DLT-daemon-2.5.2-r0: task do_install: Started
NOTE: package DLT-daemon-2.5.2-r0: task do_install: Succeeded
DEBUG: Marking task 10
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_package) as buildable
DEBUG: Marking task 3
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_populate_sysroot) as buildable
DEBUG: Stampfile
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_package.vexpressa9
not available
NOTE: Running task 718 of 722 (ID: 10,
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_package)
DEBUG: Running /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb:do_package
under fakeroot, fakedirs:
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/
DEBUG: Stampfile
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_populate_sysroot.vexpressa9
not available
NOTE: Running task 719 of 722 (ID: 3,
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_populate_sysroot)
NOTE: package DLT-daemon-2.5.2-r0: task do_populate_sysroot: Started
NOTE: package DLT-daemon-2.5.2-r0: task do_package: Started
NOTE: package DLT-daemon-2.5.2-r0: task do_populate_sysroot: Succeeded
NOTE: package DLT-daemon-2.5.2-r0: task do_package: Succeeded
DEBUG: Marking task 12
(/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_package_write_ipk) as buildable
DEBUG: Stampfile
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/stamps/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0.do_package_write_ipk
not available
NOTE: Running task 720 of 722 (ID: 12,
/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_package_write_ipk)
DEBUG: Running /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb:do_package_write_ipk
under fakeroot, fakedirs:
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/pseudo/
NOTE: package DLT-daemon-2.5.2-r0: task do_package_write_ipk: Started
ERROR: Function failed: opkg-build execution failed
ERROR: Logfile of failure stored in:
/home/evadeflow/projects/poky-git/build/tmp-eglibc-eglibc/work/armv7a-vfp-neon-oe-linux-gnueabi/DLT-daemon-2.5.2-r0/temp/log.do_package_write_ipk.27610
Log data follows:
| DLT-daemon-systemd
| *** Error: Package name  contains illegal characters, (other than [a-z0-9.+-])
|
| opkg-build: Please fix the above errors and try again.
| ERROR: Function failed: opkg-build execution failed
NOTE: package DLT-daemon-2.5.2-r0: task do_package_write_ipk: Failed
ERROR: Task 12 (/home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_package_write_ipk) failed with exit code '1'
NOTE: Tasks Summary: Attempted 720 tasks of which 709 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /home/evadeflow/projects/poky-git/meta-ivi/recipes-extended/DLT-daemon/DLT-daemon_2.5.2.bb,
do_package_write_ipk
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

