Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68080E00796; Fri, 17 Oct 2014 09:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0ACBE00796
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 09:09:47 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XfA65-00036o-NG
	for yocto@yoctoproject.org; Fri, 17 Oct 2014 18:09:45 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 18:09:45 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 18:09:45 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 17 Oct 2014 18:09:36 +0200
Message-ID: <m1rf00$l0m$1@ger.gmane.org>
References: <m1qpbo$lsa$1@ger.gmane.org>	<9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>	<m1rb0r$ucm$1@ger.gmane.org>	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
In-Reply-To: <m1rc1u$cvb$1@ger.gmane.org>
Subject: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Fri, 17 Oct 2014 16:09:52 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hmm, going deeper into the configure error I found the following:

File
/home/ubuntu/yocto/build/tmp/sysroots/i686-linux/usr/lib/python3.3/distutils/sysconfig.py
contains in line 19:

PREFIX = os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"),
os.getenv("HOST_SYS") )

This gives error

TypeError: Can't convert 'NoneType' object to str implicitly

It does the same if I type this line on python3 on my host computer.

Looking into the sysconfig of python3 of my ubuntu installation, it does
NOT HAVE this line!

here are the lines from python3 sysconfig.py from yocto:

---------------------------------------------------------------------
"""Provide access to Python's configuration information.  The specific
configuration variables available depend heavily on the platform and
configuration.  The values may be retrieved using
get_config_var(name), and the list of variables is available via
get_config_vars().keys().  Additional convenience functions are also
available.

Written by:   Fred L. Drake, Jr.
Email:        <fdrake@acm.org>
"""

import os
import re
import sys

from .errors import DistutilsPlatformError

# These are needed in a couple of spots, so just compute them once.
PREFIX = os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"),
os.getenv("HOST_SYS") )
EXEC_PREFIX = os.path.normpath(sys.exec_prefix).replace(
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
BASE_PREFIX = os.path.normpath(sys.base_prefix).replace(
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )
BASE_EXEC_PREFIX= os.path.normpath(sys.base_exec_prefix).replace(
os.getenv("BUILD_SYS"), os.getenv("HOST_SYS") )

[...]
----------------------------------------------------------------------

and here from my host pc:

----------------------------------------------------------------------
"""Provide access to Python's configuration information.  The specific
configuration variables available depend heavily on the platform and
configuration.  The values may be retrieved using
get_config_var(name), and the list of variables is available via
get_config_vars().keys().  Additional convenience functions are also
available.

Written by:   Fred L. Drake, Jr.
Email:        <fdrake@acm.org>
"""

import os
import re
import sys

from .errors import DistutilsPlatformError

# These are needed in a couple of spots, so just compute them once.
PREFIX = os.path.normpath(sys.prefix)
EXEC_PREFIX = os.path.normpath(sys.exec_prefix)
BASE_PREFIX = os.path.normpath(sys.base_prefix)
BASE_EXEC_PREFIX = os.path.normpath(sys.base_exec_prefix)
----------------------------------------------------------------------


Now, I don't know if that changed with the daisy update, but it
definitely seems to be wrong.

Any python3 expert out there? Can we find out (git blame) when these
lines were changed last?


EDIT: found it, it's this patch:

./poky/meta/recipes-devtools/python/python3/12-distutils-prefix-is-inside-staging-area.patch

and it is from 2013-05-14, so pretty old... :-(

That leaves the question why it gives an error now after updating daisy,
but not before.

Here is the log_configure from before updating daisy:

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/sysroot-providers/pyotherside
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/qml/io/thp/pyotherside/qmldir
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/qml/io/thp/pyotherside/libpyothersideplugin.so
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/qml/io/thp/pyotherside/
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/qml/io/thp/
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/qml/io/
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/sysroot-providers/
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/qml/
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/qt5/
DEBUG: Removing manifest:
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/
DEBUG: Removing manifest: /home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/
DEBUG: Python function sysroot_cleansstate finished
DEBUG: Executing shell function qmake5_base_preconfigure
Previously configured separate build directory detected, cleaning
/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/pyotherside/1.2+gitAUTOINC+87e5eaf470-r0/build
DEBUG: Shell function qmake5_base_preconfigure finished
DEBUG: Executing shell function do_configure
Reading
/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/pyotherside/1.2+gitAUTOINC+87e5eaf470-r0/git/src/src.pro
[/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/pyotherside/1.2+gitAUTOINC+87e5eaf470-r0/build/src]
Project MESSAGE: PYTHON_CONFIG = python3-config
Reading
/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/pyotherside/1.2+gitAUTOINC+87e5eaf470-r0/git/tests/tests.pro
[/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/pyotherside/1.2+gitAUTOINC+87e5eaf470-r0/build/tests]
Project MESSAGE: PYTHON_CONFIG = python3-config
DEBUG: Shell function do_configure finished
DEBUG: Executing python function do_qa_configure
NOTE: Checking autotools environment for common misconfiguration
NOTE: pyotherside: md5 checksum matched for
file:///home/ubuntu/yocto/sources/poky/meta/files/common-licenses/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302
DEBUG: Python function do_qa_configure finished
DEBUG: Executing shell function qmake5_base_postconfigure
DEBUG: Shell function qmake5_base_postconfigure finished

NO ERROR...

Hmmm...


