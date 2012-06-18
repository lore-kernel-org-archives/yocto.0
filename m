Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66165E00746
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:13:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Jun 2012 14:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="159188581"
Received: from jstreic1-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.154])
	by orsmga002.jf.intel.com with ESMTP; 18 Jun 2012 14:13:16 -0700
Message-ID: <4FDF999E.2030200@linux.intel.com>
Date: Mon, 18 Jun 2012 14:11:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1340050502.git.dvhart@linux.intel.com>
	<ca931379d2b30a750ea068558d0040647adcee75.1340050502.git.dvhart@linux.intel.com>
	<160abe7fb477d772d5563a1b826c307630332a5d.1340050502.git.dvhart@linux.intel.com>
	<CAMKF1somYK7Qb4kNfXMH=5wh4kaPdt2vi8s-OywAMwHT2T48WQ@mail.gmail.com>
In-Reply-To: <CAMKF1somYK7Qb4kNfXMH=5wh4kaPdt2vi8s-OywAMwHT2T48WQ@mail.gmail.com>
X-Enigmail-Version: 1.4.2
Cc: Yocto Project <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Phil Blundell <philb@gnu.org>
Subject: Re: [PATCH 2/2] tiny-init: Basic init mechanism for poky-tiny
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
X-List-Received-Date: Mon, 18 Jun 2012 21:13:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/18/2012 02:06 PM, Khem Raj wrote:
>> diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-yocto/recipes-core/tiny-init/files/init
>> new file mode 100644
>> index 0000000..bf2817d
>> --- /dev/null
>> +++ b/meta-yocto/recipes-core/tiny-init/files/init
>> @@ -0,0 +1,21 @@
>> +#!/bin/sh
>> +
>> +# Mount the Linux kernel virtual filesystems
>> +mount none -t proc /proc
>> +mount none -t sysfs /sys
>> +mkdir /dev/pts
>> +mount none -t devpts /dev/pts
>> +
>> +ifup lo
>> +
>> +# Allow for distro or local customizations
>> +if [ -f /etc/rc.local ] ; then
>> +       source /etc/rc.local
>> +fi
>> +
>> +# Become session leader and try to find a real tty (e.g. ttyS0)
>> +while true; do
>> +       setsid cttyhack sh
>> +       echo "Console sh exited with $?, respawning..."
>> +       sleep 1
>> +done
>> diff --git a/meta-yocto/recipes-core/tiny-init/files/rc.local.sample b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
>> new file mode 100644
>> index 0000000..d9e198a
>> --- /dev/null
>> +++ b/meta-yocto/recipes-core/tiny-init/files/rc.local.sample
>> @@ -0,0 +1,23 @@
>> +#!/bin/sh
>> +
>> +# Start services and customize the boot process here.
>> +echo "Running /etc/rc.local..."
>> +
>> +# Use init scripts included with packages such as dropbear
>> +#/etc/init.d/dropbear start
>> +
>> +# Spawn a getty manually
>> +#setsid /sbin/getty 115200 ttyS2
>> +
>> +# Print a banner
>> +#echo "You are running a poky-tiny image brought to you by the Yocto Project."
>> +
>> +# Setup a debugging environment
>> +#mkdir /debugfs
>> +#mount none -t debugfs /debugfs
>> +
>> +# Load modules (note: linux-yocto-tiny does not have module support by default)
>> +#modprobe yourdriver
>> +
>> +# DO NOT run any long running tasks or loops as these will delay
>> +# the /init script and the console shell.
>> diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
>> new file mode 100644
>> index 0000000..1cf46ed
>> --- /dev/null
>> +++ b/meta-yocto/recipes-core/tiny-init/tiny-init.bb
>> @@ -0,0 +1,26 @@
>> +SUMMARY = "Poky-tiny init"
>> +DESCRIPTION = "Basic init system for poky-tiny"
>> +LICENSE = "MIT"
>> +LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>> +
>> +PR = "r0"
>> +
>> +SRC_URI = "file://init \
>> +          file://rc.local.sample \
>> +         "
>> +
>> +do_configure() {
>> +       :
>> +}
>> +
>> +do_compile() {
>> +       :
>> +}
>> +
>> +do_install() {
>> +       install -d ${D}${sysconfdir}
>> +       install -m 0755 ${WORKDIR}/init ${D}
>> +       install -m 0755 ${WORKDIR}/rc.local.sample ${D}${sysconfdir}
>> +}
>> +
>> +FILES_${PN} = "/init ${sysconfdir}/rc.local.sample"
>> --
>> 1.7.5.4
>>
> 
> 
> should this recipe rdepend on busybox ? since it uses the binaries from it.?

I suppose so, I wasn't even sure how to build an image WITHOUT busybox -
but I'm sure it's doable, and the RDEPENDS should reflect the
dependencies accurately.

I've updated the patch in the branch:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=dvhart/tiny&id=ed5ded75a66c6ae0defaef6301e333615f71d616

Thanks for catching that.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



