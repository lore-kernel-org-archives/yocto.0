Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7891E00596
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 05:46:50 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1S609g-0007N4-Pl
	for yocto@yoctoproject.org; Fri, 09 Mar 2012 14:46:49 +0100
Received: from 59.145.122.192 ([59.145.122.192])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 14:46:48 +0100
Received: from praveen.vk by 59.145.122.192 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 14:46:48 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: praveenvk <praveen.vk@lnties.com>
Date: Fri, 9 Mar 2012 13:46:35 +0000 (UTC)
Message-ID: <loom.20120309T142430-863@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 59.145.122.192 (Mozilla/5.0 (Windows NT 5.1;
	rv:10.0.2) Gecko/20100101 Firefox/10.0.2)
Subject: Re: meta-toolchain-qte problems
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
X-List-Received-Date: Fri, 09 Mar 2012 13:46:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,
 
 I wish to create bsp for our project in which we are 
using arm1136 processor.  I have created a layer (meta_EB)
 same as meta for our project and have made required 
changes in conf file for meta_EB to get compiled.

I am trying to  bitbake -v meta-toolchain-qte, but it 
gives me an error when it reaches linux-libc-headers.

Following is the error I am getting:

NOTE: package update-rc.d-0.7-r3: task do_compile: Started
NOTE: package update-rc.d-0.7-r3: task do_compile: Succeeded
NOTE: Running task 2099 of 3217 (ID: 1368,
/home/navani/Yocto_Patches/poky-bernard-5.0/meta_EB/
recipes-core/update-rc.d/update-rc.d_0.7.bb,do_install)
NOTE: package update-rc.d-0.7-r3: task do_install: Started
NOTE: package update-rc.d-0.7-r3: task do_install: Succeeded
NOTE: Running noexec task 2100 of 3217 (ID: 939,
virtual:native:/home/navani/Yocto_Patches/poky-bernard-5.0/
meta_EB/recipes-devtools/bison/bison_2.4.3.bb,
do_package_write)
NOTE: Running noexec task 2101 of 3217 (ID: 925,
virtual:native:/home/navani/Yocto_Patches/poky-bernard-5.0/
meta_EB/recipes-devtools/flex/flex_2.5.35.bb,do_package_write)
NOTE: Running noexec task 2102 of 3217 (ID: 461,
virtual:native:/home/Yocto_Patches/poky-bernard-5.0/meta_EB/
recipes-support/libmpc/libmpc_0.8.2.bb,
do_package_write)
NOTE: Running noexec task 2103 of 3217 (ID: 447,
virtual:native:/home/Yocto_Patches/poky-bernard-5.0/meta_EB/
recipes-support/gmp/gmp_5.0.1.bb,
do_package_write)
NOTE: Running noexec task 2104 of 3217 (ID: 433,
virtual:native:/home/Yocto_Patches/poky-bernard-5.0/meta_EB/
recipes-support/mpfr/mpfr_3.0.0.bb,
do_package_write)
NOTE: Running task 2105 of 3217 (ID: 171,
/home/Yocto_Patches/poky-bernard-5.0/meta_EB/recipes-kernel/
linux-libc-headers/linux-libc-headers_2.6.37.2.bb,
do_package_write_rpm)
NOTE: package linux-libc-headers-2.6.37.2-r0: task do_package_w
rite_rpm: 
Started
NOTE: Creating RPM package for linux-libc-headers-dbg
NOTE: Not creating empty RPM package for linux-libc-headers
NOTE: Not creating empty RPM package for linux-libc-headers-doc
ERROR:
'/home//Yocto_Patches/poky-bernard-5.0/meta_EB/recipes-kernel/
linux-libc-headers/linux-libc-headers_2.6.37.2.bb'
failed
NOTE: Creating RPM package for linux-libc-headers-dev
NOTE: Not creating empty RPM package for linux-libc-
headers-locale
ERROR: Lockfile destination directory
'/home/Yocto_Patches/poky-bernard-5.0/build/tmp/deploy
/rpm' does not exist
ERROR: Function 'do_package_rpm' failed
ERROR: Logfile of failure stored in:
/home/Yocto_Patches/poky-bernard-5.0/build/tmp/work/
armv6-poky-linux-gnueabi/linux-libc-headers-2.6.37.2-r0/temp/log.do_package_write
_rpm.25095
Log data follows:
|NOTE: Creating RPM package for linux-libc-headers-dbg
|NOTE: Not creating empty RPM package for linux-libc-headers
|NOTE: Not creating empty RPM package for linux-libc-headers-doc
|NOTE: Creating RPM package for linux-libc-headers-dev
|NOTE: Not creating empty RPM package for linux-libc-headers-locale
|ERROR: Lockfile destination directory
'/home/Yocto_Patches/poky-bernard-5.0/build/tmp/deploy/rpm' 
does not exist
| ERROR: Function 'do_package_rpm' failed
NOTE: package linux-libc-headers-2.6.37.2-r0: task do_package_
write_rpm: Failed
ERROR: Task 171
(/home/Yocto_Patches/poky-bernard-5.0/meta_EB/
recipes-kernel/linux-libc-headers/linux-libc-headers_
2.6.37.2.bb,do_package_write_rpm

So what changes should I make and Could anyone please assist me 
with this problem?

Regards,
praveen vk



