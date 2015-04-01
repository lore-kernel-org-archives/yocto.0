Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBB09E00828; Wed,  1 Apr 2015 00:07:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A16D1E006E9
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 00:07:41 -0700 (PDT)
Received: from [99.240.204.5] (port=52165 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YdCkg-0004c3-Si; Wed, 01 Apr 2015 03:07:50 -0400
Date: Wed, 1 Apr 2015 03:07:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <551B4086.8050200@windriver.com>
Message-ID: <alpine.LFD.2.11.1504010306190.24212@localhost>
References: <alpine.LFD.2.11.1503311824570.28969@localhost>
	<551B4086.8050200@windriver.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "fatal: A branch named 'meta-orig' already exists."
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
X-List-Received-Date: Wed, 01 Apr 2015 07:07:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 31 Mar 2015, Bruce Ashfield wrote:

> On 2015-03-31 6:26 PM, Robert P. J. Day wrote:
> >
> >    oh, what fresh hell is this?
> >
> > ... snip ...
> > NOTE: Preparing RunQueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: Function failed: do_validate_branches (log file is located at
> > /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524)
> > ERROR: Logfile of failure stored in:
> > /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524
> > Log data follows:
> > | DEBUG: Executing shell function do_validate_branches
> > | NOTE: Setting branch meta to
> > 9e70b482d3773abf92c9c5850e134cbca1d5651f
> > | fatal: A branch named 'meta-orig' already exists.
> >
> >    this is building core-image-minimal for qemux86, and i'm assuming
> > this is not fedora rawhide related.
>
> You've got a borked tree sitting in work-shared. If you clean-all
> and start again, does it show up ?
>
> If it repeats, then it very well could be the version of git in
> rawhide that is causing the issue.

  i started with a fresh build, got a validate_branches error, and
used "bb" to dump the log file for that step:

///// START /////

DEBUG: Executing shell function do_validate_branches
NOTE: Setting branch meta to 9e70b482d3773abf92c9c5850e134cbca1d5651f
error: The following untracked working tree files would be removed by checkout:
	.gitignore
	.mailmap
	COPYING
	CREDITS
	Documentation/00-INDEX
	Documentation/ABI/README
	Documentation/ABI/obsolete/proc-sys-vm-nr_pdflush_threads
	Documentation/ABI/obsolete/sysfs-bus-usb
	Documentation/ABI/obsolete/sysfs-class-rfkill
	Documentation/ABI/obsolete/sysfs-driver-hid-roccat-koneplus
	Documentation/ABI/obsolete/sysfs-driver-hid-roccat-kovaplus
	Documentation/ABI/obsolete/sysfs-driver-hid-roccat-pyra
	Documentation/ABI/removed/devfs
	Documentation/ABI/removed/dv1394
	Documentation/ABI/removed/ip_queue
	Documentation/ABI/removed/net_dma
	Documentation/ABI/removed/o2cb
	Documentation/ABI/removed/raw1394
	Documentation/ABI/removed/video1394
	Documentation/ABI/stable/firewire-cdev
	Documentation/ABI/stable/o2cb
	Documentation/ABI/stable/syscalls
	Documentation/ABI/stable/sysfs-acpi-pmprofile
	Documentation/ABI/stable/sysfs-bus-firewire
	Documentation/ABI/stable/sysfs-bus-usb
	Documentation/ABI/stable/sysfs-bus-xen-backend
	Documentation/ABI/stable/sysfs-class-backlight
	Documentation/ABI/stable/sysfs-class-rfkill
	Documentation/ABI/stable/sysfs-class-tpm
	Documentation/ABI/stable/sysfs-class-ubi
	Documentation/ABI/stable/sysfs-class-udc
	Documentation/ABI/stable/sysfs-devices-node
	Documentation/ABI/stable/sysfs-devices-system-cpu
	Documentation/ABI/stable/sysfs-devices-system-xen_memory
	Documentation/ABI/stable/sysfs-driver-ib_srp
	Documentation/ABI/stable/sysfs-driver-qla2xxx
	Documentation/ABI/stable/sysfs-driver-usb-usbtmc
	Documentation/ABI/stable/sysfs-driver-w1_ds28e04
	Documentation/ABI/stable/sysfs-firmware-efi-vars
	Documentation/ABI/stable/sysfs-firmware-opal-dump
	Documentation/ABI/stable/sysfs-firmware-opal-elog
	Documentation/ABI/stable/sysfs-module
	Documentation/ABI/stable/sysfs-transport-srp
	Documentation/ABI/stable/thermal-notification
	Documentation/ABI/stable/vdso
	Documentation/ABI/testing/configfs-spear-pcie-gadget
	Documentation/ABI/testing/configfs-usb-gadget
	Documentation/ABI/testing/configfs-usb-gadget-acm
	Documentation/ABI/testing/configfs-usb-gadget-ecm
	Documentation/ABI/testing/configfs-usb-gadget-eem
	Documentation/ABI/testing/configfs-usb-gadget-ffs
	Documentation/ABI/testing/configfs-usb-gadget-hid
	Documentation/ABI/testing/configfs-usb-gadget-loopback
	Documentation/ABI/testing/configfs-usb-gadget-mass-storage
	Documentation/ABI/testing/configfs-usb-gadget-midi
	Documentation/ABI/testing/configfs-usb-gadget-ncm
	Documentation/ABI/testing/configfs-usb-gadget-obex
	Documentation/ABI/testing/configfs-usb-gadget-phonet
	Documentation/ABI/testing/configfs-usb-gadget-rndis
	Documentation/ABI/testing/configfs-usb-gadget-serial
	Documentation/ABI/testing/configfs-usb-gadget-sourcesink
	Documentation/ABI/testing/configfs-usb-gadget-subset
	Documentation/ABI/testing/configfs-usb-gadget-uac1
	Documentation/ABI/testing/configfs-usb-gadget-uac2
	Documentation/ABI/testing/debugfs-driver-genwqe
	Documentation/ABI/testing/debugfs-ec
	Documentation/ABI/testing/debugfs-ideapad
	Documentation/ABI/testing/debugfs-olpc
	Documentation/ABI/testing/debugfs-pfo-nx-crypto
	Documentation/ABI/testing/debugfs-pktcdvd
	Documentation/ABI/testing/dev-kmsg
	Documentation/ABI/testing/evm
	Documentation/ABI/testing/ima_policy
	Documentation/ABI/testing/procfs-diskstats
	Documentation/ABI/testing/pstore
	Documentation/ABI/testing/sysfs-ata
	Documentation/ABI/testing/sysfs-block
	Documentation/ABI/testing/sysfs-block-bcache
	Documentation/ABI/testing/sysfs-block-dm
	Documentation/ABI/testing/sysfs-block-rssd
	Documentation/ABI/testing/sysfs-block-zram
	Documentation/ABI/testing/sysfs-bus-acpi
	Documentation/ABI/testing/sysfs-bus-bcma
	Documentation/ABI/testing/sysfs-bus-coresight-devices-etb10
	Documentation/ABI/testing/sysfs-bus-coresight-devices-etm3x
	Documentation/ABI/testing/sysfs-bus-coresight-devices-funnel
	Documentation/ABI/testing/sysfs-bus-coresight-devices-tmc
	Documentation/ABI/testing/sysfs-bus-css
	Documentation/ABI/testing/sysfs-bus-event_source-devices-events
	Documentation/ABI/testing/sysfs-bus-event_source-devices-form
Aborting
ERROR: Could not checkout meta branch from known hash 9e70b482d3773abf92c9c5850e134cbca1d5651f
WARNING: /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/run.do_validate_branches.11619:1 exit 1 from
  exit 1
ERROR: Function failed: do_validate_branches (log file is located at /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.11619)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

