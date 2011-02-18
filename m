Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id A45BA4C8007E
	for <yocto@yoctoproject.org>; Fri, 18 Feb 2011 03:06:13 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:22899
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PqMI0-0002Bo-E2
	for yocto@yoctoproject.org; Fri, 18 Feb 2011 09:06:12 +0000
Message-Id: <13233D92-281E-48E5-9830-E31753F2717E@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 18 Feb 2011 09:06:09 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: do_compile() isn't run when building
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
X-List-Received-Date: Fri, 18 Feb 2011 09:06:13 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I've created a simple recipe based on an example from the Poky  
Reference manual (I've added a license to get it to build):

DESCRIPTION = "Simple helloworld application"
SECTION = "examples"
LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://LICENSE;md5=6d43ecbcf91bccef1e852520086c219c"

PR = "r0"

SRC_URI = "file://helloworld.c file://LICENSE"

S = "${WORKDIR}"

do_compile() {
  ${CC} helloworld.c -o helloworld
}

do_install() {
  install -d ${D}${bindir}
  install -m 0755 helloworld ${D}${bindir}
}

However, if I 'bitbake test' the code isn't compiled:

NOTE: Running setscene task 178 of 276 (/home/chris/poky-dev/meta/ 
recipes-keylevel/test/test_0.1.0.bb:do_populate_sysroot_setscene)
NOTE: Running setscene task 179 of 276 (/home/chris/poky-dev/meta/ 
recipes-keylevel/test/test_0.1.0.bb:do_package_setscene)
NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene: Started
NOTE: package test-0.1.0-r0: task do_package_setscene: Started
NOTE: package test-0.1.0-r0: task do_populate_sysroot_setscene:  
Succeeded
NOTE: Running setscene task 180 of 276 (/home/chris/poky-dev/meta/ 
recipes-keylevel/test/test_0.1.0.bb:do_populate_lic_setscene)
NOTE: package test-0.1.0-r0: task do_package_setscene: Succeeded
NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Started
NOTE: Running setscene task 181 of 276 (/home/chris/poky-dev/meta/ 
recipes-keylevel/test/test_0.1.0.bb:do_package_write_ipk_setscene)
NOTE: package test-0.1.0-r0: task do_populate_lic_setscene: Succeeded
NOTE: package test-0.1.0-r0: task do_package_write_ipk_setscene: Started
NOTE: package test-0.1.0-r0: task do_package_write_ipk_setscene:  
Succeeded
NOTE: Executing RunQueue Tasks
NOTE: Running noexec task 828 of 829 (ID: 9, /home/chris/poky-dev/meta/ 
recipes-keylevel/test/test_0.1.0.bb, do_package_write)
NOTE: Running noexec task 829 of 829 (ID: 4, /home/chris/poky-dev/meta/ 
recipes-keylevel/test/test_0.1.0.bb, do_build)


Why doesn't the code get built?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




