Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F2F1E00B94; Sat,  7 Jun 2014 23:05:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC35E00A44
	for <yocto@yoctoproject.org>; Sat,  7 Jun 2014 23:05:28 -0700 (PDT)
Received: from [192.168.178.30] (ip-88-153-108-136.unitymediagroup.de
	[88.153.108.136])
	by server.galauner.de (Postfix) with ESMTPSA id 2D36A40050
	for <yocto@yoctoproject.org>; Sun,  8 Jun 2014 08:05:25 +0200 (CEST)
Message-ID: <5393FD24.6090807@galauner.de>
Date: Sun, 08 Jun 2014 08:05:24 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: Python3-distribute-native build fails in daisy
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
X-List-Received-Date: Sun, 08 Jun 2014 06:05:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

I'm currently trying to add a few python packages to my image for which
I need Python 3.3 because a few of them depend on asyncio. These
packages (asyncio itself, websockets and django) are installed with the
usual distribute setup.py scripts either using setuptools or distribute.

Now when trying to build python3-distribute-native as a build dependency
for any of these packages, bitbake fails with the following message:

----------------------------> snip <----------------------------
> | copying DEVGUIDE.txt -> build/src
> | copying CHANGES.txt -> build/src
> | copying README.txt -> build/src
> | copying MANIFEST.in -> build/src
> | copying launcher.c -> build/src
> | Traceback (most recent call last):
> |   File "setup.py", line 34, in <module>
> |     util.run_2to3(outfiles_2to3)
> |   File "/media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/distutils/util.py", line 507, in run_2to3
> |     from lib2to3.refactor import RefactoringTool, get_fixers_from_package
> |   File "/media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/lib2to3/refactor.py", line 19, in <module>
> |     import logging
> |   File "/media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/sysroots/x86_64-linux/usr/lib/python3.3/logging/__init__.py", line 26, in <module>
> |     import sys, os, time, io, traceback, warnings, weakref
> | ImportError: No module named 'time'
> | ERROR: python3 setup.py build_ext execution failed.
> | WARNING: /media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/work/x86_64-linux/python3-distribute-native/0.6.32-ml5/temp/run.do_compile.1363:1 exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at /media/andy/Data/Zedboard/openembedded/build_poky/tmp-eglibc/work/x86_64-linux/python3-distribute-native/0.6.32-ml5/temp/log.do_compile.1363)
----------------------------> snip <----------------------------
(Note: even if the path says openembedded, it's yocto)

When using the devshell to launch python3 and trying to import time, it
fails in the same way.
I'm using an up-to-date checkout of the daisy branch.

Any ideas what the cause for this could be and how to solve this?

- Andy

