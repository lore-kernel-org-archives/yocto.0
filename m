Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E07FE00747
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 15:27:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Aug 2013 15:27:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,923,1367996400"; d="scan'208";a="383990077"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.209])
	by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2013 15:27:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <bradl@taser.com>
Date: Tue, 20 Aug 2013 23:27:54 +0100
Message-ID: <2234378.IGkL2KjiRV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
References: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What are _virtual providers? and other Suffixes?
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
X-List-Received-Date: Tue, 20 Aug 2013 22:27:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brad,

On Monday 19 August 2013 22:51:04 Brad Litterell wrote:
> I searched the Yocto Mega Manual, but am still somewhat mystified by the
> suffix formatting of various variable - especially virtual ones like this:
> 
> 
> PREFERRED_PROVIDER_virtual/gettext = "gettext"
> 
> PREFERRED_PROVIDER_virtual/kernel_am335x-evm = "linux-ti-staging"
> 
> PREFERRED_PROVIDER_virtual/bootloader_am335x-evm = "u-boot-ti-staging"

These are setting PREFERRED_PROVIDER for a number of targets. "virtual/xyz" is
a convention we use where there are multiple providers for a particular
component, so a recipe that requires that component can have virtual/xyz in
its DEPENDS, each provider declares virtual/xyz in its PROVIDES, and then in
configuration the desired recipe to provide that can be selected via 
PREFERRED_PROVIDER_virtual/xyz = "...".

The second two examples have an additional override which makes them only
applicable for a specific machine (am335x-evm). If you want to know how this
mechanism works have a look at this:

http://docs.openembedded.org/bitbake/html/ch02.html#id439023

(We're in the process of updating the BitBake manual, so this old version will have to suffice.)

> Also, there seems to be some sort of prioritization going on with the
> multiple levels underscore characters in places like this:
> 
> 
> # Set the PREFERRED_PROVIDER for jpeg functionality based on the MACHINE
> 
> # architecture.  For armv7a devices libjpeg-turbo should be used to take
> 
> # advantage of the SIMD instructions.
> 
> PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
> 
> PREFERRED_PROVIDER_jpeg_armv5te = "jpeg"
> 
> 
> (all examples from the arago project in arago-prefs.inc)
> 
> Is there a succinct way of viewing these suffixes that will allow me to wrap
> my head around their various & myriad versions?

OVERRIDES is listed in order so that overrides for the later items are
preferred. If you run bitbake -e | less and search for OVERRIDES (with the /
key) you can see what the value is for the global environment; here is an
example for my current configuration:

# $OVERRIDES [3 operations]
#   set conf/bitbake.conf:670
#     "${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable"
#   set conf/bitbake.conf:671
#     [vardepsexclude] "MACHINEOVERRIDES"
#   postdot /home/paul/poky/poky/meta/conf/distro/include/tclibc-eglibc.inc:9
#     "${LIBCOVERRIDE}"
# computed:
#   "${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable${LIBCOVERRIDE}"
OVERRIDES="linux:i586:build-linux:pn-bblayers:x86:qemuall:qemux86:poky:class-target:forcevariable:libc-glibc"

Putting the values of all these variables into OVERRIDES gives us a way of
setting variable values per-machine, per-architecture etc. Based on the
above value, if I had:

SOMEVAR = "value1"
SOMEVAR_qemux86 = "anothervalue"
SOMEVAR_i586 = "yetanothervalue"

The computed value of SOMEVAR would be "anothervalue". If MACHINE were
changed to, say, "qemumips", then OVERRIDES would change and the value 
of SOMEVAR would become "value1".

> Am I right in assuming the "variable name" consists of the uppercase parse
> (regardless of number of underscores)?

That is our (fairly strict) convention in OpenEmbedded, but FWIW I don't
think bitbake itself enforces that; it's all dependent on what is in OVERRIDES
and where the _ character appears in the left hand side of the assignment
statement.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

