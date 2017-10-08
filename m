Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7241EE00D2A; Sun,  8 Oct 2017 13:37:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58B7DE00CCD
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 13:37:39 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1e1IKB-0005bL-9n
	for yocto@yoctoproject.org; Sun, 08 Oct 2017 22:37:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Ferry Toth <ftoth@telfort.nl>
Date: Sun, 08 Oct 2017 22:37:19 +0200
Organization: Exalon Delft
Message-ID: <ore29n$fsd$1@blaine.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: KNode/4.14.10
Subject: populate sdk fails when multilib enabled
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
X-List-Received-Date: Sun, 08 Oct 2017 20:37:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7Bit

When I build for x86_64 I found I needed to enable multilib to be able to 
build u-boot (actually lib32_u-boot). U-boot now builds.

However 'bitbake edison-image -c populate_sdk' now errors with
Build Configuration: 
BB_VERSION        = "1.32.0" 
BUILD_SYS         = "x86_64-linux" 
NATIVELSBSTRING   = "universal" 
TARGET_SYS        = "x86_64-poky-linux" 
MACHINE           = "edison" 
DISTRO            = "poky-edison" 
DISTRO_VERSION    = "2.2.2" 
TUNE_FEATURES     = "m64 core2"

The following packages have unmet dependencies:
 lib32-packagegroup-core-standalone-sdk-target : 
	Depends: lib32-glibc but it is not installable
	Depends: lib32-glibc-dbg but it is not installable
	Depends: lib32-glibc-dev but it is not installable
	Depends: lib32-glibc-gconv-cp1252 but it is not installable
	Depends: lib32-glibc-gconv-ibm850 but it is not installable
	Depends: lib32-glibc-gconv-iso8859-1 but it is not installable
 	Depends: lib32-glibc-gconv-iso8859-15 but it is not installable
	Depends: lib32-glibc-localedata-i18n but it is not installable
	Depends: lib32-glibc-thread-db but it is not installable
	Depends: lib32-glibc-utils but it is not installable
	Depends: lib32-libatomic but it is not installable
	Depends: lib32-libatomic-dev but it is not installable
	Depends: lib32-libgcc but it is not installable
	Depends: lib32-libgcc-dev but it is not installable
	Depends: lib32-libsegfault but it is not installable
	Depends: lib32-libstdc++ but it is not installable
	Depends: lib32-libstdc++-dev but it is not installable
E: Unable to correct problems, you have held broken packages.


Other than u-boot I am not building any lib32- packages. In my image recipy 
I have:
EXTRA_IMAGEDEPENDS += "lib32-u-boot"

In my conf file I have:
#multilib
require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "core2-32"
IMAGE_INSTALL_append = " lib32-libgcc"

Both lib32-packagegroup-core-standalone-sdk-target and packagegroup-core-
standalone-sdk-target can be found under deploy/deb/all, the packages should 
probably be under deploy/deb/core2-32. Some are there, some I don't 
recognize, but I have not idea why there are not installable.

Does anybody know what's wrong here? Is there a bug in the lib32 package 
group?

Is there a way I can prevent this package group from being installed in the 
sdk?

Thanks in advance!

-- 
Ferry Toth



