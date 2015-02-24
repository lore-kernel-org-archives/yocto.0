Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92260E0074C; Tue, 24 Feb 2015 07:20:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C0A0E003A8
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 07:20:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 24 Feb 2015 07:11:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,639,1418112000"; d="scan'208";a="670844190"
Received: from aryan3-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.21.162])
	by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2015 07:19:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Rafert <jimr@spectralogic.com>
Date: Tue, 24 Feb 2015 15:19:32 +0000
Message-ID: <1945651.z7kxVdh8gx@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E3D4E6@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E3D34E@reactor.sldomain.com>
	<1674116.AmgqaYKJqr@peggleto-mobl5.ger.corp.intel.com>
	<86196249137E0843B2E0673D4F731E0C0108E3D4E6@reactor.sldomain.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Simple recipe quit working in dizzy
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
X-List-Received-Date: Tue, 24 Feb 2015 15:20:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Jim,

I've just figured out what's going on here. Currently, the RPM backend code 
deletes any directory named /install in the root directory of the image 
because it assumes that is a temporary directory created by the image 
construction code. I have filed a bug to track this issue with a few more 
details:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=7353

Cheers,
Paul

On Friday 20 February 2015 17:49:28 Jim Rafert wrote:
> Thank you for taking an interest in this.
> 
> I looked at the log.do_rootfs, and didn't see anything that was immediately
> suspicious. I have inlined the log at the end of my reply, here.
> 
> I don't see how such a simple recipe could be broken by a Yocto bug, and not
> have the whole thing be massively broken.
> 
> -Jim-
> 
> cat ./core-image-full-cmdline/1.0-r0/temp/log.do_rootfs
> DEBUG: Executing python function rootfs_process_ignore
> DEBUG: Python function rootfs_process_ignore finished
> DEBUG: Executing python function rootfs_runtime_mapping
> DEBUG: Python function rootfs_runtime_mapping finished
> DEBUG: Executing python function do_rootfs
> NOTE: configuring RPM platform settings
> NOTE: configuring RPM system provides
> NOTE: configuring RPM DB settings
> NOTE: configuring Smart settings
> NOTE: Note: adding Smart channel spectra_ls (35)
> NOTE: Note: adding Smart channel i586 (30)
> NOTE: Note: adding Smart channel all (25)
> NOTE: adding Smart RPM DB channel
> NOTE: Note: configuring RPM cross-install scriptlet_wrapper
> NOTE: ###### Generate rootfs #######
> NOTE: Executing
> '/home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linux/usr/bin/create
> repo --update -q /home/jimr/tera/yocto/dizzy/build/tmp/deploy/rpm/i586' ...
> NOTE: Installing the following packages: libgcc1 parted grub dosfstools
> psplash vim udev-extraconf rsyslog libsoci nss rpm unzip zip
> spectra-postbuild smartpm e2fsprogs-tune2fs packagegroup-core-eclipse-debug
> poco libstdc++6 sqlite3 e2fsprogs-e2fsck openssl-staticdev boost
> packagegroup-core-ssh-openssh packagegroup-core-boot
> packagegroup-core-full-cmdline rpmresolve ntp e2fsprogs-mke2fs util-linux
> packagegroup-core-tools-debug openssl e2fsprogs sys-freedos
> e2fsprogs-badblocks locale-base-en-us locale-base-en-gb NOTE: to be
> installed: libgcc1@i586 parted@i586 grub@i586 dosfstools@i586 psplash@i586
> vim@i586 udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586 rpm@i586
> unzip@i586 zip@i586 spectra-postbuild@i586 smartpm@i586
> e2fsprogs-tune2fs@i586 packagegroup-core-eclipse-debug@all poco@i586
> libstdc++6@i586 sqlite3@i586 e2fsprogs-e2fsck@i586 openssl-staticdev@i586
> boost@i586 packagegroup-core-ssh-openssh@all
> packagegroup-core-boot@spectra_ls packagegroup-core-full-cmdline@all
> rpmresolve@i586 ntp@i586 e2fsprogs-mke2fs@i586 util-linux@i586
> packagegroup-core-tools-debug@all openssl@i586 e2fsprogs@i586
> sys-freedos@i586 e2fsprogs-badblocks@i586 locale-base-en-us@i586
> locale-base-en-gb@i586 NOTE:
> /home/jimr/tera/yocto/dizzy/build/tmp/sysroots/x86_64-linux/usr/bin/smart
> --quiet
> --data-dir=/home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux
> /core-image-full-cmdline/1.0-r0/rootfs/var/lib/smart install -y libgcc1@i586
> parted@i586 grub@i586 dosfstools@i586 psplash@i586 vim@i586
> udev-extraconf@i586 rsyslog@i586 libsoci@i586 nss@i586 rpm@i586 unzip@i586
> zip@i586 spectra-postbuild@i586 smartpm@i586 e2fsprogs-tune2fs@i586
> packagegroup-core-eclipse-debug@all poco@i586 libstdc++6@i586 sqlite3@i586
> e2fsprogs-e2fsck@i586 openssl-staticdev@i586 boost@i586
> packagegroup-core-ssh-openssh@all packagegroup-core-boot@spectra_ls
> packagegroup-core-full-cmdline@all rpmresolve@i586 ntp@i586
> e2fsprogs-mke2fs@i586 util-linux@i586 packagegroup-core-tools-debug@all
> openssl@i586 e2fsprogs@i586 sys-freedos@i586 e2fsprogs-badblocks@i586
> locale-base-en-us@i586 locale-base-en-gb@i586 NOTE: Output from
> bash-4.3-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sh to /bin/bash Output from
> busybox-1.22.1-r32@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/ar to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/gunzip to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/zcat to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/bunzip2 to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/bzcat to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/cpio to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/gzip to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/tar to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/unzip to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/date to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/groups to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/id to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/touch to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/users to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/who to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/awk to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/cmp to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/diff to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/patch to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sed to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/vi to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/find to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/grep to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/egrep to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/fgrep to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/xargs to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/halt to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/poweroff to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/reboot to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/rfkill to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/depmod to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/insmod to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/lsmod to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/modprobe to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/rmmod to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ash to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sh to /bin/bash update-alternatives:
> Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/fstrim to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/[ to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/[[ to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/addgroup to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/adduser to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/basename to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/cat to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chattr to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chgrp to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chmod to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chown to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/chroot to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/chvt to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/clear to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/cp to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/cut to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dc to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dd to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/deallocvt to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/delgroup to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/deluser to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/df to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dirname to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dmesg to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dnsdomainname to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/du to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dumpkmap to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dumpleases to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/echo to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/env to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/expr to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/false to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/fbset to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/fdisk to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/flock to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/free to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/fsck to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/fuser to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/getty to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/head to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/hexdump to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/hostname to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/hwclock to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ifconfig to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ifdown to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ifup to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ip to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/kill to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/killall to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/klogd to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/less to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ln to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/loadfont to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/loadkmap to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/logger to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/logname to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/logread to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/losetup to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ls to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/md5sum to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/microcom to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mkdir to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mknod to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/mkswap to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mktemp to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/more to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mount to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mv to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nc to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/netstat to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nohup to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nslookup to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/od to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/openvt to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/pidof to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/pivot_root to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/printf to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ps to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/pwd to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/rdate to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/readlink to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/realpath to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/renice to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/reset to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/rm to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/rmdir to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/route to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/run-parts to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/seq to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/setconsole to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sha3sum to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sleep to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sort to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/start-stop-daemon to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/stat to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/strings to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/stty to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/sulogin to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/swapoff to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/swapon to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/switch_root to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sync to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/sysctl to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/syslogd to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tail to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tee to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/telnet to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/test to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tftp to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/time to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/top to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tr to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/true to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tty to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/udhcpc to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/udhcpd to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/umount to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/uname to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/uniq to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/uptime to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/usleep to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/watch to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/wc to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/wget to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/which to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/whoami to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/yes to /bin/busybox.nosuid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ping to /bin/busybox.suid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ping6 to /bin/busybox.suid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/login to /bin/busybox.suid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/passwd to /bin/busybox.suid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/su to /bin/busybox.suid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/traceroute to /bin/busybox.suid
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/vlock to /bin/busybox.suid Output from
> init-ifupdown-1.0-r7@i586:
>  Removing any system startup links for networking ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/networking. Output from
> initscripts-functions-1.0-r155@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//etc/init.d/functions to
> /etc/init.d/functions.initscripts Output from run-postinsts-1.0-r9@all:
>  Removing any system startup links for run-postinsts ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/run-postinsts. Output from
> modutils-initscripts-1.0-r7@i586:
>  Removing any system startup links for modutils.sh ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/modutils.sh. Output from
> udev-cache-182-r9@i586:
>  Removing any system startup links for udev-cache ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/udev-cache. Output from
> busybox-hwclock-1.22.1-r32@i586:
>  Removing any system startup links for hwclock.sh ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/hwclock.sh. Output from
> kernel-image-3.10.62-ltsi-yocto-standard-3.10.62+git0+f4ab00d96a_b2ac933df1
> -r0.1@spectra_ls: update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//boot/bzImage to
> /boot/bzImage-3.10.62-ltsi-yocto-standard Output from
> busybox-syslog-1.22.1-r32@i586:
>  Removing any system startup links for syslog ...
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//etc/syslog.conf to /etc/syslog.conf.busybox
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//etc/init.d/syslog to /etc/init.d/syslog.busybox
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//etc/syslog-startup.conf to
> /etc/syslog-startup.conf.busybox Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/syslog. Output from
> util-linux-losetup-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/losetup to /sbin/losetup.util-linux Output
> from killall-22.21-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/killall to /usr/bin/killall.psmisc
> Output from shadow-4.2.1-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/passwd to /usr/bin/passwd.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/chfn to /usr/bin/chfn.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/newgrp to /usr/bin/newgrp.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/chsh to /usr/bin/chsh.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/groups to /usr/bin/groups.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/chpasswd to /usr/sbin/chpasswd.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/login to /bin/login.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/vipw to /sbin/vipw.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/vigr to /sbin/vigr.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/su to /bin/su.shadow Output from
> kbd-2.0.2-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/chvt to /usr/bin/chvt.kbd
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/deallocvt to /usr/bin/deallocvt.kbd
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/fgconsole to /usr/bin/fgconsole.kbd
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/openvt to /usr/bin/openvt.kbd Output
> from openssh-scp-6.6p1-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/scp to /usr/bin/scp.openssh Output from
> grep-2.19-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/grep to /bin/grep.grep update-alternatives:
> Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/egrep to /bin/egrep.grep
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/fgrep to /bin/fgrep.grep Output from
> net-tools-1.60+25-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/arp to /sbin/arp.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ifconfig to /sbin/ifconfig.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ipmaddr to /sbin/ipmaddr.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/iptunnel to /sbin/iptunnel.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/mii-tool to /sbin/mii-tool.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/nameif to /sbin/nameif.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/plipconfig to /sbin/plipconfig.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/rarp to /sbin/rarp.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/route to /sbin/route.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/slattach to /sbin/slattach.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dnsdomainname to
> /bin/dnsdomainname.net-tools update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/domainname to /bin/domainname.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/hostname to /bin/hostname.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/netstat to /bin/netstat.net-tools
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/nisdomainname to
> /bin/nisdomainname.net-tools update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ypdomainname to /bin/ypdomainname.net-tools
> Output from sysklogd-1.5-r7@i586:
> update-rc.d:
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/syslog exists during rc.d purge
> (continuing) Removing any system startup links for syslog ...
>  
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc0.d/K20syslog
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc1.d/K20syslog
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc2.d/S20syslog
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc3.d/S20syslog
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc4.d/S20syslog
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc5.d/S20syslog
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/rc6.d/K20syslog update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/syslogd to /sbin/syslogd.sysklogd
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/klogd to /sbin/klogd.sysklogd
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//etc/init.d/syslog to
> /etc/init.d/syslog.sysklogd update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//etc/syslog.conf to /etc/syslog.conf.sysklogd
> Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/syslog. Output from bc-1.06-r2@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dc to /usr/bin/dc.bc Output from
> fuser-22.21-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/fuser to /usr/bin/fuser.psmisc Output
> from sed-4.2.2-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sed to /bin/sed.sed Output from
> gawk-4.1.1-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/awk to /usr/bin/gawk Output from
> diffutils-3.3-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/diff to /usr/bin/diff.diffutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/cmp to /usr/bin/cmp.diffutils Output
> from tar-1.27.1-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/tar to /bin/tar.tar Output from
> cpio-2.11-r5@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/cpio to /bin/cpio.cpio Output from
> sysvinit-pidof-2.88dsf-r14@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/pidof to /bin/pidof.sysvinit Output from
> findutils-4.4.2-r6@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/find to /usr/bin/find.findutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/xargs to /usr/bin/xargs.findutils
> Output from psplash-0.1+git0+afd4e228c6-r15@i586:
>  Removing any system startup links for psplash.sh ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/psplash.sh. Output from
> time-1.7-r2@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/time to /usr/bin/time.time Output from
> mktemp-1.7-r3@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mktemp to /bin/mktemp.mktemp Output from
> gzip-1.6-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/gunzip to /bin/gunzip.gzip
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/gzip to /bin/gzip.gzip update-alternatives:
> Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/zcat to /bin/zcat.gzip Output from
> iproute2-3.16.0-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/ip to /sbin/ip.iproute2 Output from
> util-linux-readprofile-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/readprofile to
> /sbin/readprofile.util-linux Output from less-466-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/less to /usr/bin/less.less Output from
> cronie-1.4.11-r0@i586:
>  Removing any system startup links for crond ...
> Running groupadd commands...
> NOTE: Performing groupadd with [--root
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs --system crontab] and 10 times of retry Adding
> system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/crond. Output from
> keymaps-1.0-r31@spectra_ls:
>  Removing any system startup links for keymap.sh ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/keymap.sh. Output from
> patch-2.7.1-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/patch to /usr/bin/patch.patch Output
> from kmod-18+git0+ae58de0fcb-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/insmod to /sbin/insmod.kmod
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/modprobe to /sbin/modprobe.kmod
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/rmmod to /sbin/rmmod.kmod
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/modinfo to /sbin/modinfo.kmod
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/lsmod to /bin/lsmod.kmod
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/lsmod to /bin/lsmod.kmod
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/depmod to /sbin/depmod.kmod Output from
> openssh-ssh-6.6p1-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/ssh to /usr/bin/ssh.openssh Output from
> sysvinit-2.88dsf-r14@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/init to /sbin/init.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mountpoint to /bin/mountpoint.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/halt to /sbin/halt.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/reboot to /sbin/reboot.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/runlevel to /sbin/runlevel.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/shutdown to /sbin/shutdown.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/poweroff to /sbin/poweroff.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/last to /usr/bin/last.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/mesg to /usr/bin/mesg.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/utmpdump to /usr/bin/utmpdump.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/wall to /usr/bin/wall.sysvinit Output
> from psplash-default-0.1+git0+afd4e228c6-r15@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/psplash to /usr/bin/psplash-default
> Output from ntp-4.2.6p3-r5@i586:
>  Removing any system startup links for ntpd ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/ntpd. Output from
> coreutils-8.22-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/[ to /usr/bin/lbracket.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/arch to /usr/bin/arch.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/basename to /usr/bin/basename.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/chcon to /usr/bin/chcon.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/cksum to /usr/bin/cksum.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/comm to /usr/bin/comm.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/csplit to /usr/bin/csplit.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/cut to /usr/bin/cut.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dir to /usr/bin/dir.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dircolors to
> /usr/bin/dircolors.coreutils update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/dirname to /usr/bin/dirname.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/du to /usr/bin/du.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/env to /usr/bin/env.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/expand to /usr/bin/expand.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/expr to /usr/bin/expr.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/factor to /usr/bin/factor.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/fmt to /usr/bin/fmt.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/fold to /usr/bin/fold.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/groups to /usr/bin/groups.shadow
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/head to /usr/bin/head.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/hostid to /usr/bin/hostid.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/id to /usr/bin/id.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/install to /usr/bin/install.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/join to /usr/bin/join.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/link to /usr/bin/link.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/logname to /usr/bin/logname.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/md5sum to /usr/bin/md5sum.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/mkfifo to /usr/bin/mkfifo.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nice to /usr/bin/nice.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nl to /usr/bin/nl.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nohup to /usr/bin/nohup.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/nproc to /usr/bin/nproc.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/od to /usr/bin/od.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/paste to /usr/bin/paste.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pathchk to /usr/bin/pathchk.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pinky to /usr/bin/pinky.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pr to /usr/bin/pr.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/printenv to /usr/bin/printenv.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/printf to /usr/bin/printf.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/ptx to /usr/bin/ptx.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/readlink to /usr/bin/readlink.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/realpath to /usr/bin/realpath.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/runcon to /usr/bin/runcon.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/seq to /usr/bin/seq.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sha1sum to /usr/bin/sha1sum.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sha224sum to
> /usr/bin/sha224sum.coreutils update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sha256sum to
> /usr/bin/sha256sum.coreutils update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sha384sum to
> /usr/bin/sha384sum.coreutils update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sha512sum to
> /usr/bin/sha512sum.coreutils update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/shred to /usr/bin/shred.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/shuf to /usr/bin/shuf.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sort to /usr/bin/sort.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/split to /usr/bin/split.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/stdbuf to /usr/bin/stdbuf.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/sum to /usr/bin/sum.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tac to /usr/bin/tac.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tail to /usr/bin/tail.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tee to /usr/bin/tee.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/test to /usr/bin/test.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/timeout to /usr/bin/timeout.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tr to /usr/bin/tr.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/truncate to /usr/bin/truncate.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tsort to /usr/bin/tsort.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/tty to /usr/bin/tty.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/unexpand to /usr/bin/unexpand.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/uniq to /usr/bin/uniq.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/unlink to /usr/bin/unlink.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/uptime to /usr/bin/uptime.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/users to /usr/bin/users.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/vdir to /usr/bin/vdir.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/wc to /usr/bin/wc.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/who to /usr/bin/who.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/whoami to /usr/bin/whoami.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/yes to /usr/bin/yes.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/cat to /bin/cat.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chgrp to /bin/chgrp.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chmod to /bin/chmod.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chown to /bin/chown.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/cp to /bin/cp.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/date to /bin/date.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dd to /bin/dd.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/echo to /bin/echo.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/false to /bin/false.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/kill to /bin/kill.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ln to /bin/ln.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ls to /bin/ls.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mkdir to /bin/mkdir.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mknod to /bin/mknod.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mv to /bin/mv.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/pwd to /bin/pwd.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/rm to /bin/rm.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/rmdir to /bin/rmdir.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sleep to /bin/sleep.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/stty to /bin/stty.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/sync to /bin/sync.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/touch to /bin/touch.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/true to /bin/true.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/uname to /bin/uname.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/stat to /bin/stat.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/sbin/chroot to /usr/sbin/chroot.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/base64 to /usr/bin/base64.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mktemp to /usr/bin/mktemp.coreutils
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/df to /usr/bin/df.coreutils Output from
> iputils-ping-s20121221-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ping to /bin/ping.iputils Output from
> rsyslog-7.4.4-r0@i586:
>  Removing any system startup links for rsyslogd ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/rsyslogd. Output from
> rpcbind-0.2.1-r0@i586:
>  Removing any system startup links for rpcbind ...
> Running useradd commands...
> NOTE: Performing useradd with [--root
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs --system --no-create-home --home-dir /          
>              --shell /bin/false --user-group rpc] and 10 times of retry
> Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/rpcbind. Output from
> bzip2-1.0.6-r5@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/bunzip2 to /usr/bin/bunzip2.bzip2
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/bzcat to /usr/bin/bzcat.bzip2 Output
> from procps-3.2.8-r12@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/top to /usr/bin/top.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/uptime to /usr/bin/uptime.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/free to /usr/bin/free.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pkill to /usr/bin/pkill.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pmap to /usr/bin/pmap.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/kill to /bin/kill.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/sysctl to /sbin/sysctl.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ps to /bin/ps.procps update-alternatives:
> Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pgrep to /usr/bin/pgrep.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/pwdx to /usr/bin/pwdx.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/watch to /usr/bin/watch.procps Output from
> lighttpd-1.4.35-r1@i586:
>  Removing any system startup links for lighttpd ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/lighttpd. Output from
> tcf-agent-0.4.0+git0+4ef94ecb92-r2@i586:
>  Removing any system startup links for tcf-agent ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/tcf-agent. Output from
> openssh-sshd-6.6p1-r0@i586:
>  Removing any system startup links for sshd ...
> Running useradd commands...
> NOTE: Performing useradd with [--root
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs --system --no-create-home --home-dir
> /var/run/sshd --shell /bin/false --user-group sshd] and 10 times of retry
> Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/sshd. Output from udev-182-r9@i586:
>  Removing any system startup links for udev ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/udev. Output from
> util-linux-fdisk-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/fdisk to /sbin/fdisk.util-linux Output
> from at-3.1.15-r0@i586:
>  Removing any system startup links for atd ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/atd. Output from
> dbus-1-1.8.2-r0@i586:
>  Removing any system startup links for dbus-1 ...
> Running groupadd commands...
> NOTE: Performing groupadd with [--root
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs -r netdev] and 10 times of retry Running useradd
> commands...
> NOTE: Performing useradd with [--root
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs --system --home /var/lib/dbus                   
>     --no-create-home --shell /bin/false                        --user-group
> messagebus] and 10 times of retry Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/dbus-1. Output from
> util-linux-umount-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/umount to /bin/umount.util-linux Output
> from util-linux-mount-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/mount to /bin/mount.util-linux Output from
> util-linux-swaponoff-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/swapoff to /sbin/swapoff.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/swapon to /sbin/swapon.util-linux Output
> from nfs-utils-client-1.3.0-r0@i586:
>  Removing any system startup links for nfscommon ...
> Running useradd commands...
> NOTE: Performing useradd with [--root
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs --system  --home-dir /var/lib/nfs 			     
> --shell /bin/false --user-group rpcuser] and 10 times of retry Adding
> system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/nfscommon. Output from
> iputils-ping6-s20121221-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/ping6 to /bin/ping6.iputils Output from
> e2fsprogs-1.42.9-r0@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/chattr to /bin/chattr.e2fsprogs Output from
> util-linux-2.24.2-r1@i586:
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/dmesg to /bin/dmesg.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/kill to /bin/kill.procps
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/more to /bin/more.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/mkswap to /sbin/mkswap.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/blockdev to /sbin/blockdev.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/pivot_root to /sbin/pivot_root.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/switch_root to
> /sbin/switch_root.util-linux update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/mkfs.minix to /sbin/mkfs.minix.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/hexdump to /usr/bin/hexdump.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/last to /usr/bin/last.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/logger to /usr/bin/logger.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/mesg to /usr/bin/mesg.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/renice to /usr/bin/renice.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/wall to /usr/bin/wall.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/setsid to /usr/bin/setsid.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/chrt to /usr/bin/chrt.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/flock to /usr/bin/flock.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/utmpdump to /usr/bin/utmpdump.sysvinit
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//usr/bin/eject to /usr/bin/eject.util-linux
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//bin/getopt to /usr/bin/getopt
> update-alternatives: Linking
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs//sbin/sulogin to /sbin/sulogin.util-linux Output
> from nfs-utils-1.3.0-r0@i586:
>  Removing any system startup links for nfsserver ...
>  Adding system startup for
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/init.d/nfsserver.
> 
> 
> NOTE: Installing the following packages:
> NOTE: Installing complementary packages ...
> NOTE: Installing the following packages: mc-locale-en-gb glibc-locale-en-gb
> libglib-2.0-locale-en-gb NOTE: installing attempt only packages...
> NOTE: Attempting mc-locale-en-gb@i586 glibc-locale-en-gb@i586
> libglib-2.0-locale-en-gb@i586 NOTE:
> 
> NOTE: Running intercept scripts:
> NOTE: Executing write_package_manifest ...
> DEBUG: Executing python function write_package_manifest
> DEBUG: Python function write_package_manifest finished
> NOTE: Executing license_create_manifest ...
> DEBUG: Executing shell function license_create_manifest
> WARNING: The license listed GPLv2 was not in the licenses collected for
> glibc-locale WARNING: The license listed LGPLv2.1 was not in the licenses
> collected for glibc-locale WARNING: The license listed GPLv2 was not in the
> licenses collected for glibc-locale WARNING: The license listed LGPLv2.1
> was not in the licenses collected for glibc-locale WARNING: The license
> listed GPLv2 was not in the licenses collected for glibc-locale WARNING:
> The license listed LGPLv2.1 was not in the licenses collected for
> glibc-locale WARNING: The license listed GPLv2 was not in the licenses
> collected for glibc-mtrace WARNING: The license listed LGPLv2.1 was not in
> the licenses collected for glibc-mtrace WARNING: The license listed CLOSED
> was not in the licenses collected for libsoci WARNING: The license listed
> GPLv2 was not in the licenses collected for glibc-locale WARNING: The
> license listed LGPLv2.1 was not in the licenses collected for glibc-locale
> WARNING: The license listed GPLv2 was not in the licenses collected for
> glibc-locale WARNING: The license listed LGPLv2.1 was not in the licenses
> collected for glibc-locale WARNING: The license listed ntp was not in the
> licenses collected for ntp WARNING: The license listed ntp was not in the
> licenses collected for ntp WARNING: The license listed MIT was not in the
> licenses collected for packagegroup-core-boot WARNING: The license listed
> MIT was not in the licenses collected for packagegroup-core-eclipse-debug
> WARNING: The license listed MIT was not in the licenses collected for
> packagegroup-core-full-cmdline WARNING: The license listed MIT was not in
> the licenses collected for packagegroup-core-full-cmdline WARNING: The
> license listed MIT was not in the licenses collected for
> packagegroup-core-full-cmdline WARNING: The license listed MIT was not in
> the licenses collected for packagegroup-core-full-cmdline WARNING: The
> license listed MIT was not in the licenses collected for
> packagegroup-core-full-cmdline WARNING: The license listed MIT was not in
> the licenses collected for packagegroup-core-full-cmdline WARNING: The
> license listed MIT was not in the licenses collected for
> packagegroup-core-full-cmdline WARNING: The license listed MIT was not in
> the licenses collected for packagegroup-core-full-cmdline WARNING: The
> license listed MIT was not in the licenses collected for
> packagegroup-core-ssh-openssh WARNING: The license listed MIT was not in
> the licenses collected for packagegroup-core-tools-debug WARNING: The
> license listed vim was not in the licenses collected for vim DEBUG: Shell
> function license_create_manifest finished
> NOTE: Executing write_image_manifest ...
> DEBUG: Executing python function write_image_manifest
> DEBUG: Python function write_image_manifest finished
> NOTE: Executing ssh_allow_empty_password ...
> DEBUG: Executing shell function ssh_allow_empty_password
> sed: warning: failed to get security context of
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/ssh/sshd_config: No data availablesed:
> warning: failed to get security context of
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/rootfs/etc/ssh/sshd_config: No data availableDEBUG:
> Shell function ssh_allow_empty_password finished NOTE: Executing
> postinst_enable_logging ...
> DEBUG: Executing shell function postinst_enable_logging
> DEBUG: Shell function postinst_enable_logging finished
> NOTE: Executing rootfs_update_timestamp ...
> DEBUG: Executing shell function rootfs_update_timestamp
> DEBUG: Shell function rootfs_update_timestamp finished
> NOTE: Executing: ldconfig
> -r/home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-ima
> ge-full-cmdline/1.0-r0/rootfs-c new -v NOTE: ###### Generate images #######
> NOTE: Executing mklibs_optimize_image ...
> DEBUG: Executing shell function mklibs_optimize_image
> DEBUG: Shell function mklibs_optimize_image finished
> NOTE: Executing prelink_image ...
> DEBUG: Executing shell function prelink_image
> Size before prelinking 210672.
> Size after prelinking 212588.
> DEBUG: Shell function prelink_image finished
> NOTE: The image creation groups are: [['ext3', 'cpio']]
> NOTE: Running image creation script for cpio:
> /home/jimr/tera/yocto/dizzy/build/tmp/work/spectra_ls-poky-linux/core-image
> -full-cmdline/1.0-r0/temp/create_image.cpio ... NOTE: Creating symlinks for
> ext3 image ...
> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.ext3 ->
> core-image-full-cmdline-spectra-ls-20150220171753.rootfs.ext3 NOTE:
> Creating symlinks for cpio image ...
> NOTE: Creating symlink: core-image-full-cmdline-spectra-ls.cpio.gz ->
> core-image-full-cmdline-spectra-ls-20150220171753.rootfs.cpio.gz DEBUG:
> Python function do_rootfs finished
> [jimr@krusty spectra_ls-poky-linux]$
> 
> 
> 
> ________________________________________
> From: Paul Eggleton [paul.eggleton@linux.intel.com]
> Sent: Friday, February 20, 2015 2:51 AM
> To: Jim Rafert
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Simple recipe quit working in dizzy
> 
> Hi Jim,
> 
> On Wednesday 18 February 2015 20:33:43 Jim Rafert wrote:
> > The following recipe, spectra-postbuild_0.1.bb, quit working when I ported
> > from 1.6 daisy to 1.7.1 dizzy.  I include the recipe in my image by adding
> > it at the end of of the IMAGE_INSTALL_append variable in my local.conf
> > file.  The purpose of the recipe is simply to lay down some files that
> > will
> > later be used by an installer script.  Two if the files are deposited in
> > the root directory, and the rest are placed in the /install/spectra
> > directory, which is created by the recipe.  Nothing is compiled or
> > transformed in any way.
> > 
> > When I bitbake the recipe, then bitbake core-image-full-cmdline, both
> > complete without errors. When I look at the contents of the rpm file
> > produced by the recipe, all the files and directories are listed. However,
> > when I examine the file system images created, only the two files that I
> > place in the root directory (/) are there, and the entire /install
> > directory hierarchy is missing. If I modify the recipe such that the
> > missing files are placed in a directory that is already created by other
> > recipes (/home/root), all the files are deposited as expected.
> > 
> > I have looked at section 5.6 of the Yocto reference manual, "Moving to the
> > Yocto Project 1.7 Release", but did not see anything that was obviously
> > relevant.
> > 
> > Can someone tell me how to fix this for dizzy?
> > 
> > ######################################################
> > # spectra-postbuild_0.1.bb
> > ######################################################
> > 
> > SUMMARY = "Post processing of configuration files for SpectraOS"
> > SECTION = "base"
> > LICENSE = "GPLv2"
> > LIC_FILES_CHKSUM =
> > "file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4"
> > PR = "r0"
> > 
> > SRC_URI = "file://inittab \
> > 
> >        file://fstab \
> >        file://rsyslog.conf \
> >        
> >            file://profile \
> >        
> >        file://grub.cfg \
> >        file://mount.sh \
> >        file://RELEASE-NOTES.txt \
> >        file://Spectra-OS-Version \
> >        file://initializeCustomKernelModules \
> >        file://firewall \
> >        file://sysctl.conf \
> >        
> >            file://InstallOS.sh \
> >        
> >        file://COPYRIGHT \
> >        
> >            file://WinCE_LCM.tar.bz \
> >        
> >        "
> > 
> > FILES_${PN} =  "/RELEASE-NOTES.txt \
> > 
> >                 /Spectra-OS-Version \
> >                 /install \
> >                 /install/spectra \
> >                 /install/spectra/InstallOS.sh \
> >                 /install/spectra/fstab \
> >                 /install/spectra/mount.sh \
> >                 /install/spectra/grub.cfg \
> >                 /install/spectra/rsyslog.conf \
> >                 /install/spectra/profile \
> >                 /install/spectra/inittab \
> >                 /install/spectra/WinCE_LCM.tar.bz \
> >                 /install/spectra/sysctl.conf \
> >                 /install/spectra/init.d \
> >                 /install/spectra/rc5.d \
> >                 /install/spectra/init.d/initializeCustomKernelModules \
> >                 /install/spectra/init.d/firewall \
> >                 "
> > 
> > do_install () {
> > 
> >     install -m 755 ${WORKDIR}/RELEASE-NOTES.txt ${D}
> >     install -m 755 ${WORKDIR}/Spectra-OS-Version ${D}
> >     
> >         install -d ${D}/install
> >         install -d ${D}/install/spectra
> >         install -m 544 ${WORKDIR}/inittab ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/fstab ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/rsyslog.conf ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/profile ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/grub.cfg ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/mount.sh ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/InstallOS.sh ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/sysctl.conf ${D}/install/spectra
> >         install -m 644 ${WORKDIR}/WinCE_LCM.tar.bz ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/firewall ${D}/install/spectra
> >         install -m 755 ${WORKDIR}/initializeCustomKernelModules
> > 
> > ${D}/install/spectra
> > 
> > }
> 
> Hmm, so I can't see anything immediately wrong with the recipe that would
> lead to a problem such as what you describe, so rather than something
> expected change between releases this looks more like a bug. Is there
> anything in the log.do_rootfs for the image that might indicate something
> going wrong? Perhaps an uncaught error?
> 
> Cheers,
> Paul
> 
> --
> 
> Paul Eggleton
> Intel Open Source Technology Centre

-- 

Paul Eggleton
Intel Open Source Technology Centre

