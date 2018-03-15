Return-Path: <pab@pabigot.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D11E00C56; Thu, 15 Mar 2018 13:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [173.201.193.236 listed in list.dnswl.org]
Received: from p3plsmtpa09-07.prod.phx3.secureserver.net
	(p3plsmtpa09-07.prod.phx3.secureserver.net [173.201.193.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F25E00AAF
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 13:12:47 -0700 (PDT)
Received: from [192.168.65.22] ([24.118.100.205]) by :SMTPAUTH: with SMTP
	id wZF0eJHdPlJzZwZF0epMbt; Thu, 15 Mar 2018 13:12:47 -0700
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Peter A. Bigot" <pab@pabigot.com>
Organization: Peter Bigot Consulting, LLC
Message-ID: <a2bf42e9-7edf-afab-9abd-41f02161d832@pabigot.com>
Date: Thu, 15 Mar 2018 15:12:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfG+o3qTD6NgH40pk0UDKJJSJ4nD3KnoRC5j9rvncxg7FlWjxRJcTfF2ms2gu8+IwptMJvm7YDYpvKvgoKLF6yTfovUFHSJDyUYRuufYLZznPyph4dMtB
	cN7snIsip/WWUw6h1POb1Ggu3CRG37dAzTBUiffGX0P7/FxH1Xtv4TyE
Subject: package manager contamination in state?
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
X-List-Received-Date: Thu, 15 Mar 2018 20:12:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

While attempting to diagnose a package index problem visible on current
poky head I changed local.conf from:

PACKAGE_CLASSES ?= "package_rpm"

to

PACKAGE_CLASSES ?= "package_deb"

then removed tmp and buildhistory.  Rebuilding the image produced:

ERROR: pabigot-image-cmdline-sdk-1.0-r0 do_rootfs: Unable to install 
packages. Command 
'/mnt/devel/yocto/build-rpi3-sumo/tmp/work/raspberrypi3-poky-linux-gnueabi/pabigot-image-cmdline-sdk/1.0-r0/recipe-sysroot-native/usr/bin/apt-get 
install --force-yes --allow-unauthenticated git 
packagegroup-core-full-cmdline packagegroup-core-standalone-sdk-target 
kernel-modules apt dpkg packagegroup-core-boot oe-build-info 
psplash-raspberrypi bluez5 bluez5-dev run-postinsts nodejs 
bluez5-noinst-tools connman vim packagegroup-core-sdk bluez5-testtools 
packagegroup-core-ssh-openssh packagegroup-base connman-client minicom 
linux-firmware' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
  packagegroup-core-full-cmdline : Depends: 
packagegroup-core-full-cmdline-initscripts but it is not going to be 
installed
E: Unable to correct problems, you have held broken packages.

Reverting to package_rpm and doing a clean build worked fine, so it
appears something in the state that's dependent on the package manager
is not getting rebuilt.  Based on the complaint the following additional
configuration settings in local.conf might be relevant:

# Section 4.24 Selecting an Initialization Manager
DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = ""

FYI only, I have no reason to switch between packaging systems like this
normally.

Peter


