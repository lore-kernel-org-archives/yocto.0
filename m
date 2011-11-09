Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4552E00307
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 09:50:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Nov 2011 09:50:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="72893293"
Received: from unknown (HELO [10.255.15.253]) ([10.255.15.253])
	by orsmga002.jf.intel.com with ESMTP; 09 Nov 2011 09:50:16 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
References: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
Date: Wed, 09 Nov 2011 11:51:23 -0600
Message-ID: <1320861083.16608.45.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build failure on crownbay with EMGD
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
X-List-Received-Date: Wed, 09 Nov 2011 17:50:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-09 at 09:41 -0800, James Abernathy wrote:
> In the past I've built the crownbay-noemgd successfully, using the
> Development Manual Appendix A corrected instructions that have been
> patched.  I thought I'd try my hand at building the crownbay with EMGD
> this time.  Following the instructions in the Appendix A, but using
> the opposite instructions related to EMGD, plus installing EMGD per
> the instructions in the README file in the meta-crownbay directory, I
> got a long way into the build, but failed toward the end in what looks
> like a dependance issue.  Can someone spot what I need to change???
>  

Yes, you've hit the missing step added to the update release notes here:

http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1


7. Remove the following unused file from the emgd binaries in order to
avoid a packaging error at build-time:
        $ rm
meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so


This was an omission in the README, queued for the next edison point
release.

Tom

> NOTE: Running noexec task 4432 of 4436 (ID:
> 715, /home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
> do_package_write)
> NOTE: package eglibc-locale-2.13-r16: task do_package_write_rpm:
> Succeeded
> NOTE: Running task 4433 of 4436 (ID:
> 8, /home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> do_rootfs)
> NOTE: Running noexec task 4434 of 4436 (ID:
> 260, /home/jim/poky/meta/recipes-core/eglibc/eglibc-locale_2.13.bb,
> do_package_write)
> NOTE: package core-image-sato-1.0-r0: task do_rootfs: Started
> ERROR: Function 'do_rootfs' failed
> (see /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608 for further information)
> ERROR: Logfile of failure stored
> in: /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608
> Log data follows:
> | Generating solve db
> for /home/jim/poky/build/tmp/deploy/rpm/mymachine...
> |    total:               1      0.000000 MB      1.251276 secs
> |    fingerprint:      1179      0.007580 MB      0.225419 secs
> |    install:           393      0.000000 MB      0.467978 secs
> |    dbadd:             393      0.000000 MB      0.458049 secs
> |    dbget:            2413      0.000000 MB      0.002657 secs
> |    dbput:             393      1.816904 MB      0.387933 secs
> |    readhdr:          3931      3.623312 MB      0.007842 secs
> |    hdrload:          1965      5.352088 MB      0.015769 secs
> |    hdrget:          67287      0.000000 MB      0.025251 secs
> | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/core2...
> |    total:               1      0.000000 MB     30.690842 secs
> |    fingerprint:     16377      0.192190 MB      1.357263 secs
> |    install:          5459      0.000000 MB      9.185276 secs
> |    dbadd:            5459      0.000000 MB      8.997421 secs
> |    dbget:           61190      0.000000 MB      0.097393 secs
> |    dbput:            5459     27.436448 MB      8.057184 secs
> |    readhdr:         54591     55.326554 MB      0.216373 secs
> |    hdrload:         27777     84.106654 MB      0.241450 secs
> |    hdrget:         982855      0.000000 MB      0.367838 secs
> | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...
> |    total:               1      0.000000 MB      0.123502 secs
> |    fingerprint:        96      0.003258 MB      0.004244 secs
> |    install:            32      0.000000 MB      0.065233 secs
> |    dbadd:              32      0.000000 MB      0.062755 secs
> |    dbget:             585      0.000000 MB      0.000230 secs
> |    dbput:              32      0.259492 MB      0.039171 secs
> |    readhdr:           321      0.520536 MB      0.000570 secs
> |    hdrload:           160      0.772764 MB      0.001263 secs
> |    hdrget:           5288      0.000000 MB      0.002207 secs
> | Generating solve db for /home/jim/poky/build/tmp/deploy/rpm/all...
> |    total:               1      0.000000 MB      0.111927 secs
> |    fingerprint:        96      0.003258 MB      0.004173 secs
> |    install:            32      0.000000 MB      0.057706 secs
> |    dbadd:              32      0.000000 MB      0.055191 secs
> |    dbget:             585      0.000000 MB      0.000204 secs
> |    dbput:              32      0.259492 MB      0.034089 secs
> |    readhdr:           321      0.520536 MB      0.000673 secs
> |    hdrload:           160      0.772764 MB      0.001158 secs
> |    hdrget:           5288      0.000000 MB      0.001854 secs
> | Processing locale-base-en-us...
> | Processing locale-base-en-gb...
> | Processing task-core-boot...
> | Processing task-core-apps-console...
> | Processing task-core-ssh-dropbear...
> | Processing task-core-apps-x11-pimlico...
> | Processing task-core-x11-sato...
> | Processing zypper...
> | Processing task-core-x11-base...
> | Processing task-core-apps-x11-games...
> | Processing task-core-apps-x11-core...
> | Processing task-base-extended...
> | Processing rpm...
> | error: Failed dependencies:
> |     libva.so.1 is needed by libegl1-1.8-r7.core2
> | ERROR: Function 'do_rootfs' failed
> (see /home/jim/poky/build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_rootfs.29608 for further information)
> NOTE: package core-image-sato-1.0-r0: task do_rootfs: Failed
> ERROR: Task 8
> (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> do_rootfs) failed with exit code '1'
> ERROR: '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
> failed
> jim@jim-ubuntu:~/poky/build$ 
> 
> 



