Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B41C1E00749
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 14:29:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1SMTRg6008897
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Feb 2012 14:29:27 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.27) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 28 Feb 2012 14:29:27 -0800
Message-ID: <4F4D5545.8070108@windriver.com>
Date: Tue, 28 Feb 2012 17:29:25 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <a85166ef33afd6f4c520e2cbffe74837240bdc84.1330467937.git.dvhart@linux.intel.com>
In-Reply-To: <a85166ef33afd6f4c520e2cbffe74837240bdc84.1330467937.git.dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-kernel-dev: Fix quoting
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
X-List-Received-Date: Tue, 28 Feb 2012 22:29:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-28 5:25 PM, Darren Hart wrote:
> Several unquoted variables assignments are now resulting parse errors.
> Correct them throughout meta-kernel-dev.

Looks good. I have the same fix that I didn't get around to pushing
today.

I assume you'll push this into the layer ?

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Tom Zanussi<tom.zanussi@intel.com>
> CC: Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>   .../kern-tools-native_git.bbappend                 |    2 +-
>   meta-kernel-dev/recipes-kernel/linux/linux-korg.bb |   11 +++++------
>   .../recipes-kernel/linux/linux-yocto-dev.bb        |    4 ++--
>   .../recipes-kernel/linux/linux-yocto-dev.bbappend  |    6 +++---
>   .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
>   .../linux/linux-yocto_2.6.37.bbappend              |    6 +++---
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    6 +++---
>   .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 +++---
>   8 files changed, 23 insertions(+), 24 deletions(-)
>
> diff --git a/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend b/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
> index 201ec7f..8d7ee18 100644
> --- a/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/kern-tools-native/kern-tools-native_git.bbappend
> @@ -1,4 +1,4 @@
> -SRCREV=${AUTOREV}
> +SRCREV="${AUTOREV}"
>   # BB_LOCALCOUNT_OVERRIDE = "1"
>   LOCALCOUNT = "0"
>
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-korg.bb b/meta-kernel-dev/recipes-kernel/linux/linux-korg.bb
> index cee1aa2..f53584f 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-korg.bb
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-korg.bb
> @@ -4,13 +4,12 @@ require recipes-kernel/linux/linux-yocto.inc
>   KMACHINE = "yocto/standard/auto-bsp"
>   YOCTO_KERNEL_EXTERNAL_BRANCH ?= "yocto/standard/auto-bsp"
>
> -KBRANCH = ${KMACHINE}
> -KMETA = meta
> +KBRANCH = "${KMACHINE}"
> +KMETA = "meta"
>
>   SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;nocheckout=1"
> -SRCREV=${AUTOREV}
>
> -SRCREV=${AUTOREV}
> +SRCREV="${AUTOREV}"
>   # SRCREV_pn-linux-korg =
>
>   LINUX_VERSION ?= "3.1"
> @@ -21,7 +20,7 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
>   COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
>
>   # Functionality flags
> -KERNEL_REVISION_CHECKING=
> -YOCTO_KERNEL_META_DATA=
> +KERNEL_REVISION_CHECKING=""
> +YOCTO_KERNEL_META_DATA=""
>
>   require recipes-kernel/linux/linux-tools.inc
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bb b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bb
> index 66d0865..fb89d84 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bb
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bb
> @@ -25,7 +25,7 @@ KBRANCH_beagleboard = "yocto/standard/beagleboard"
>
>   SRC_URI = "git://git.pokylinux.org/linux-yocto-dev;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> -SRCREV=${AUTOREV}
> +SRCREV="${AUTOREV}"
>
>   LINUX_VERSION ?= "3.2"
>   LINUX_VERSION_EXTENSION ?= "-yoctodev-${LINUX_KERNEL_TYPE}"
> @@ -35,7 +35,7 @@ PV = "${LINUX_VERSION}+git${SRCPV}"
>   COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro)"
>
>   # Functionality flags
> -KERNEL_REVISION_CHECKING=
> +KERNEL_REVISION_CHECKING=""
>   KERNEL_FEATURES="features/netfilter"
>   KERNEL_FEATURES_append_qemux86=" cfg/sound"
>   KERNEL_FEATURES_append_qemux86-64=" cfg/sound"
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bbappend
> index 534c8ff..a068a3f 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-dev.bbappend
> @@ -1,6 +1,6 @@
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> -COMPATIBLE_MACHINE = ${MACHINE}
> +COMPATIBLE_MACHINE = "${MACHINE}"
>
>   # KMACHINE is the branch to build
>   # KMACHINE_<MACHINE>  = "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> @@ -20,7 +20,7 @@ COMPATIBLE_MACHINE = ${MACHINE}
>   # KSRC_linux_yocto_dev ?= /path/to/your/local/clone/linux-yocto-2.6.<ver>.git
>   SRC_URI = "git://${KSRC_linux_yocto_dev};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> -KERNEL_REVISION_CHECKING=
> -SRCREV=${AUTOREV}
> +KERNEL_REVISION_CHECKING=""
> +SRCREV="${AUTOREV}"
>   #BB_LOCALCOUNT_OVERRIDE = "1"
>   LOCALCOUNT = "0"
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> index fbf81b2..90cf856 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> @@ -1,6 +1,6 @@
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> -COMPATIBLE_MACHINE = ${MACHINE}
> +COMPATIBLE_MACHINE = "${MACHINE}"
>
>   # It is often nice to have a local clone of the kernel repos, to
>   # allow patches to be staged, branches created, etc. Modify
> @@ -16,8 +16,8 @@ KMACHINE ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
>
>   SRC_URI = "git://${KSRC_linux_yocto_rt};nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> -KERNEL_REVISION_CHECKING=
> -SRCREV=${AUTOREV}
> +KERNEL_REVISION_CHECKING=""
> +SRCREV="${AUTOREV}"
>   # BB_LOCALCOUNT_OVERRIDE = "1"
>   LOCALCOUNT = "0"
>
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> index 484c97f..cfc57c9 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -1,6 +1,6 @@
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> -COMPATIBLE_MACHINE = ${MACHINE}
> +COMPATIBLE_MACHINE = "${MACHINE}"
>
>   # KMACHINE is the branch to build
>   # KMACHINE_<MACHINE>  ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> @@ -19,7 +19,7 @@ KMACHINE ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
>
>   SRC_URI = "git://${KSRC_linux_yocto};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> -KERNEL_REVISION_CHECKING=
> -SRCREV=${AUTOREV}
> +KERNEL_REVISION_CHECKING=""
> +SRCREV="${AUTOREV}"
>   #BB_LOCALCOUNT_OVERRIDE = "1"
>   LOCALCOUNT = "0"
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 977d856..d4288b1 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -1,6 +1,6 @@
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> -COMPATIBLE_MACHINE = ${MACHINE}
> +COMPATIBLE_MACHINE = "${MACHINE}"
>
>   # KMACHINE is the branch to build
>   # KMACHINE_<MACHINE>  ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> @@ -19,7 +19,7 @@ KMACHINE ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
>
>   SRC_URI = "git://${KSRC_linux_yocto};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> -KERNEL_REVISION_CHECKING=
> -SRCREV=${AUTOREV}
> +KERNEL_REVISION_CHECKING=""
> +SRCREV="${AUTOREV}"
>   #BB_LOCALCOUNT_OVERRIDE = "1"
>   LOCALCOUNT = "0"
> diff --git a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend
> index 8429cf6..48a115f 100644
> --- a/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend
> +++ b/meta-kernel-dev/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -1,6 +1,6 @@
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> -COMPATIBLE_MACHINE = ${MACHINE}
> +COMPATIBLE_MACHINE = "${MACHINE}"
>
>   # KMACHINE is the branch to build
>   # KMACHINE_<MACHINE>  ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
> @@ -18,7 +18,7 @@ COMPATIBLE_MACHINE = ${MACHINE}
>   # KMACHINE ?= "${LINUX_KERNEL_TYPE}/${KMACHINE}"
>   SRC_URI = "git://${KSRC_linux_yocto_3_2};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> -KERNEL_REVISION_CHECKING=
> -SRCREV=${AUTOREV}
> +KERNEL_REVISION_CHECKING=""
> +SRCREV="${AUTOREV}"
>   #BB_LOCALCOUNT_OVERRIDE = "1"
>   LOCALCOUNT = "0"


