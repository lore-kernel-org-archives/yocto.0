Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E47BE00509; Wed, 25 Jun 2014 13:20:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D03B4E003D8
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 13:20:53 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	2B542F3CC3_3AB2F24B
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 20:20:52 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	06410F3CC1_3AB2F24F
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 20:20:52 +0000 (GMT)
Received: from [192.168.178.38] (77-22-222-80-dynip.superkabel.de
	[77.22.222.80])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id DD3913111C
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 22:20:51 +0200 (CEST)
Message-ID: <53AB2F38.9060105@dfki.de>
Date: Wed, 25 Jun 2014 22:21:12 +0200
From: Markus Eich <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Bitbake: error in cachedpath.py
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
X-List-Received-Date: Wed, 25 Jun 2014 20:20:56 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Dear all,

I am setting up Yocto to compile my kernel for odroid xu. During the 
package phase of building the kernel, I get an error in cachedpath.py

================

DEBUG: Executing python function sstate_task_prefunc
DEBUG: Python function sstate_task_prefunc finished
DEBUG: Executing python function do_package
DEBUG: Executing python function package_get_auto_pr
DEBUG: Python function package_get_auto_pr finished
DEBUG: Executing python function perform_packagecopy
DEBUG: Python function perform_packagecopy finished
DEBUG: Executing python function split_and_strip_files
ERROR: Error executing a python function in 
/home/eich/yocto/poky/meta-odroid/recipes-kernel/linux/linux-hardkernel_3.4.bb:

The stack trace of python calls that resulted in this exception/failure 
was:
File: 'split_and_strip_files', lineno: 222, function: <module>
      0218:    # End of strip
      0219:    #
      0220:
      0221:
  *** 0222:split_and_strip_files(d)
      0223:
File: 'split_and_strip_files', lineno: 85, function: split_and_strip_files
      0081:                if debugdir and debugdir in 
os.path.dirname(file[len(dvar):]):
      0082:                    continue
      0083:
      0084:                try:
  *** 0085:                    ltarget = cpath.realpath(file, dvar, False)
      0086:                    s = cpath.lstat(ltarget)
      0087:                except OSError as e:
      0088:                    (err, strerror) = e.args
      0089:                    if err != errno.ENOENT:
File: '/home/eich/yocto/poky/meta/lib/oe/cachedpath.py', lineno: 229, 
function: realpath
      0225:                # be printed a backtrace with 100s of OSError 
exceptions
      0226:                # else
      0227:                raise OSError(errno.ELOOP,
      0228:                              "too much recursions while 
resolving '%s'; loop in '%s'" %
  *** 0229:                              (file, e.strerror))
      0230:
      0231:            raise
      0232:
      0233:        return file
Exception: OSError: [Errno 40] too much recursions while resolving 
'/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4-r0/package/usr/src/kernel/drivers/gpu/arm/mali400/ump/arch/arch-release'; 
loop in 
'/home/eich/odroid/build/tmp/work/odroid_xu-poky-linux-gnueabi/linux-hardkernel/3.4-r0/package/usr/src/kernel/drivers/gpu/arm/mali400/ump/arch/arch-release'

DEBUG: Python function split_and_strip_files finished
DEBUG: Python function do_package finished
ERROR: Function failed: split_and_strip_files

====================

Seems that the path is to deep?

To track the error, I have attached my kernel.bb


==================
require recipes-kernel/linux/linux-yocto.inc

KERNEL_IMAGETYPE = "uImage"

COMPATIBLE_MACHINE = "odroid-xu"

LINUX_VERSION = "3.4.91"
LINUX_VERSION_EXTENSION = "-custom"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-hardkernel-3.4:"

S = "${WORKDIR}/git"

# from where to fetch the kernel
KERNEL_REPO_OWNER ??= "hardkernel"
KERNEL_REPO_URI ??= "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
KBRANCH = "odroidxu-3.4.y"

SRCREV = "${AUTOREV}"

SRC_URI = " \
   ${KERNEL_REPO_URI};nocheckout=1;branch=${KBRANCH} \
file://defconfig \
"


Any ideas ?

Cheers,

Markus


