Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B73A6E0127A
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 19:25:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Oct 2012 19:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,676,1344236400"; d="scan'208";a="212771691"
Received: from unknown (HELO [10.255.14.158]) ([10.255.14.158])
	by orsmga001.jf.intel.com with ESMTP; 29 Oct 2012 19:25:17 -0700
Message-ID: <1351563916.9523.38.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Date: Mon, 29 Oct 2012 21:25:16 -0500
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE233E729EA@ORSMSX105.amr.corp.intel.com>
References: <cover.1351551995.git.tom.zanussi@intel.com>
	<3898886e634523bc1bfbfae9f942959f6badfdb0.1351551995.git.tom.zanussi@intel.com>
	<D956029D25CF204F948EA0FB515E1EE233E72903@ORSMSX105.amr.corp.intel.com>
	<1351556987.9523.36.camel@empanada>
	<D956029D25CF204F948EA0FB515E1EE233E729EA@ORSMSX105.amr.corp.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Subject: Re: [PATCH 1/2] meta-intel: update kernel SRCREVs and pin LINUX_VERSION
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
X-List-Received-Date: Tue, 30 Oct 2012 02:25:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-10-29 at 21:12 -0500, Bodke, Kishore K wrote:
> 
> >-----Original Message-----
> >From: Zanussi, Tom
> >Sent: Monday, October 29, 2012 5:30 PM
> >To: Bodke, Kishore K
> >Cc: yocto@yoctoproject.org; dvhart@linux.intel.com; Kamble, Nitin A; Saxena,
> >Rahul
> >Subject: Re: [PATCH 1/2] meta-intel: update kernel SRCREVs and pin
> >LINUX_VERSION
> >
> >On Mon, 2012-10-29 at 18:57 -0500, Bodke, Kishore K wrote:
> >> Why are we not doing this LINUX_VERSION for the RT Kernel bbappend
> >files?
> >>
> >
> >Oh, did I miss something?  The rt recipes I looked at didn't define any
> >SRCREVs...
> >
> >But if you want to change that, sure, go ahead and send a patch...
> >
> Yeah, I have them for Crystal Forest, but I don't see these in all BSPs.
> May be I can send a patch for the Crystal Forest?
> 

Yeah, that would be good - I'll pull it in with the rest.

Tom

> Thanks
> Kishore.
> 
> >Thanks,
> >
> >Tom
> >
> >> Thanks
> >> Kishore.
> >>
> >> >-----Original Message-----
> >> >From: Zanussi, Tom
> >> >Sent: Monday, October 29, 2012 4:12 PM
> >> >To: yocto@yoctoproject.org; dvhart@linux.intel.com; Kamble, Nitin A;
> >Bodke,
> >> >Kishore K; Saxena, Rahul
> >> >Cc: Zanussi, Tom
> >> >Subject: [PATCH 1/2] meta-intel: update kernel SRCREVs and pin
> >> >LINUX_VERSION
> >> >
> >> >From: Tom Zanussi <tom.zanussi@intel.com>
> >> >
> >> >Update all the linux-yocto .bbappends with the latest kernel SRCREVs
> >> >and add explicit LINUX_VERSIONs for the 1.3 release, to prevent a
> >> >mismatch between the kernel version actually used in the machine
> >> >branch vs the version the recipe uses for the kernel image, which can
> >> >change with stable updates.
> >> >
> >> >Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> >> >---
> >> > meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend  |  2 ++
> >> > meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend  |  6
> >++++--
> >> > meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend    | 10
> >> >++++++----
> >> > meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend    | 10
> >> >++++++----
> >> > .../recipes-kernel/linux/linux-yocto_3.4.bbappend              | 10 ++++++----
> >> > meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend     |  6
> >++++--
> >> > meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend     |  6
> >++++--
> >> > meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend        | 10
> >++++++----
> >> > meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend        |  2 ++
> >> > .../recipes-kernel/linux/linux-yocto_3.2.bbappend              |  2 ++
> >> > .../recipes-kernel/linux/linux-yocto_3.4.bbappend              |  6 ++++--
> >> > meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend      |  6 ++++-
> >-
> >> > meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend    |  6
> >++++--
> >> > meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend    |  6
> >++++--
> >> > meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend     | 10
> >> >++++++----
> >> > 15 files changed, 64 insertions(+), 34 deletions(-)
> >> >
> >> >diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index d4e2ee6..3b07968 100644
> >> >--- a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -8,3 +8,5 @@ KERNEL_FEATURES_append_chiefriver = "
> >> >features/amt/mei"
> >> >
> >> > SRCREV_machine_pn-linux-yocto_chiefriver ?=
> >> >"56d1c9ec36287350d154a3abef339598ef4028c2"
> >> > SRCREV_meta_pn-linux-yocto_chiefriver ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 413dc74..f023a54 100644
> >> >--- a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -6,5 +6,7 @@ KBRANCH_chiefriver  = "standard/common-pc-
> >> >64/chiefriver"
> >> >
> >> > KERNEL_FEATURES_append_chiefriver = " features/amt/mei"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_chiefriver ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_chiefriver ?=
> >> >"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >> >+SRCREV_machine_pn-linux-yocto_chiefriver ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_chiefriver ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >+
> >> >+LINUX_VERSION = "3.4.11"
> >> >diff --git a/meta-crownbay/recipes-kernel/linux/linux-
> >yocto_3.2.bbappend
> >> >b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index fbe13a8..6478c6b 100644
> >> >--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -8,8 +8,10 @@ COMPATIBLE_MACHINE_crownbay-noemgd =
> >> >"crownbay-noemgd"
> >> > KMACHINE_crownbay-noemgd  = "crownbay"
> >> > KBRANCH_crownbay-noemgd  = "standard/default/crownbay"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_crownbay ?=
> >> >"ddcccbf870485c835f9b4b94823ca0c4186d78df"
> >> >-SRCREV_meta_pn-linux-yocto_crownbay ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_crownbay ?=
> >> >"f5a22aa0b14bb998d88ad4732f85b66c347631f8"
> >> >+SRCREV_meta_pn-linux-yocto_crownbay ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=
> >> >"ddcccbf870485c835f9b4b94823ca0c4186d78df"
> >> >-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=
> >> >"f5a22aa0b14bb998d88ad4732f85b66c347631f8"
> >> >+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >diff --git a/meta-crownbay/recipes-kernel/linux/linux-
> >yocto_3.4.bbappend
> >> >b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 8a9ef9d..e8c90f9 100644
> >> >--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -8,13 +8,15 @@ COMPATIBLE_MACHINE_crownbay-noemgd =
> >> >"crownbay-noemgd"
> >> > KMACHINE_crownbay-noemgd  = "crownbay"
> >> > KBRANCH_crownbay-noemgd  = "standard/crownbay"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_crownbay ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_crownbay ?=
> >> >"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >> >+SRCREV_machine_pn-linux-yocto_crownbay ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_crownbay ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> > SRCREV_emgd_pn-linux-yocto_crownbay ?=
> >> >"86643bdd8cbad616a161ab91f51108cf0da827bc"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=
> >> >"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >> >+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >
> >> > KSRC_linux_yocto_3_4 ?= "git.yoctoproject.org/linux-yocto-3.4.git"
> >> > SRC_URI_crownbay = "git://git.yoctoproject.org/linux-yocto-
> >> >3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta,emgd-
> >> >1.14;name=machine,meta,emgd"
> >> > SRC_URI_crownbay-noemgd = "git://git.yoctoproject.org/linux-yocto-
> >>
> >>3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machin
> >e,
> >> >meta"
> >> >+
> >> >+LINUX_VERSION = "3.4.11"
> >> >diff --git a/meta-crystalforest/recipes-kernel/linux/linux-
> >yocto_3.4.bbappend
> >> >b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 8418307..15ff21a 100644
> >> >--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -4,14 +4,16 @@ COMPATIBLE_MACHINE_crystalforest-gladden =
> >> >"crystalforest-gladden"
> >> > KMACHINE_crystalforest-gladden  = "crystalforest"
> >> > KBRANCH_crystalforest-gladden  = "standard/common-pc-
> >64/crystalforest"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_crystalforest-gladden ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_crystalforest-gladden ?=
> >> >"2ec32d511b62d44b63e8560a9b1d6895a5dac695"
> >> >+SRCREV_machine_pn-linux-yocto_crystalforest-gladden ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_crystalforest-gladden ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >
> >> > COMPATIBLE_MACHINE_crystalforest-server = "crystalforest-server"
> >> > KMACHINE_crystalforest-server  = "crystalforest"
> >> > KBRANCH_crystalforest-server  = "standard/common-pc-64/crystalforest"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_crystalforest-server ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_crystalforest-server ?=
> >> >"2ec32d511b62d44b63e8560a9b1d6895a5dac695"
> >> >+SRCREV_machine_pn-linux-yocto_crystalforest-server ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_crystalforest-server ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >+
> >> >+LINUX_VERSION = "3.4.11"
> >> >
> >> > module_autoload_uio = "uio"
> >> >diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index 3e8aa9b..41dfe9a 100644
> >> >--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -4,5 +4,7 @@ COMPATIBLE_MACHINE_emenlow = "emenlow"
> >> > KMACHINE_emenlow  = "emenlow"
> >> > KBRANCH_emenlow  = "standard/default/emenlow"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_emenlow ?=
> >> >"33fea086cb668a39765dfc7a01fd715f3ef8f6b8"
> >> >-SRCREV_meta_pn-linux-yocto_emenlow ?=
> >> >"5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
> >> >+SRCREV_machine_pn-linux-yocto_emenlow ?=
> >> >"9432e99fb8ca08b0d713fc4001f0b4a11138d20e"
> >> >+SRCREV_meta_pn-linux-yocto_emenlow ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 4fac478..7b2185f 100644
> >> >--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -4,5 +4,7 @@ COMPATIBLE_MACHINE_emenlow = "emenlow"
> >> > KMACHINE_emenlow  = "emenlow"
> >> > KBRANCH_emenlow  = "standard/emenlow"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_emenlow ?=
> >> >"ace4e2276ac0592e3602b9b6a95348e56e7cf246"
> >> >-SRCREV_meta_pn-linux-yocto_emenlow ?=
> >> >"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >> >+SRCREV_machine_pn-linux-yocto_emenlow ?=
> >> >"d8178545bc69adf262620fcfa40dd8f8ef64ba14"
> >> >+SRCREV_meta_pn-linux-yocto_emenlow ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >+
> >> >+LINUX_VERSION = "3.4.11"
> >> >diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >b/meta-
> >> >fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index 35d0b3a..8459a35 100644
> >> >--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -3,13 +3,15 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >> > COMPATIBLE_MACHINE_fri2 = "fri2"
> >> > KMACHINE_fri2  = "fri2"
> >> > KBRANCH_fri2 = "standard/default/fri2"
> >> >-SRCREV_machine_pn-linux-yocto_fri2 ?=
> >> >"046bef8ea4dbb9c279e49ad9faf240b86fc80fdc"
> >> >-SRCREV_meta_pn-linux-yocto_fri2 ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_fri2 ?=
> >> >"e0b29aa980673a1a5abde5ffdf356ca21b00f3ec"
> >> >+SRCREV_meta_pn-linux-yocto_fri2 ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >
> >> > COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
> >> > KMACHINE_fri2-noemgd  = "fri2"
> >> > KBRANCH_fri2-noemgd = "standard/default/fri2"
> >> >-SRCREV_machine_pn-linux-yocto_fri2-noemgd ?=
> >> >"046bef8ea4dbb9c279e49ad9faf240b86fc80fdc"
> >> >-SRCREV_meta_pn-linux-yocto_fri2-noemgd ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_fri2-noemgd ?=
> >> >"e0b29aa980673a1a5abde5ffdf356ca21b00f3ec"
> >> >+SRCREV_meta_pn-linux-yocto_fri2-noemgd ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >
> >> > module_autoload_iwlwifi = "iwlwifi"
> >> >diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >b/meta-
> >> >fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 522c703..dff9456 100644
> >> >--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -12,4 +12,6 @@ KBRANCH_fri2-noemgd = "standard/fri2"
> >> > SRCREV_machine_pn-linux-yocto_fri2-noemgd ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> > SRCREV_meta_pn-linux-yocto_fri2-noemgd ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >
> >> >+LINUX_VERSION = "3.4.11"
> >> >+
> >> > module_autoload_iwlwifi = "iwlwifi"
> >> >diff --git a/meta-jasperforest/recipes-kernel/linux/linux-
> >yocto_3.2.bbappend
> >> >b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index 2c3dd86..537a90c 100644
> >> >--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -7,3 +7,5 @@ KBRANCH_jasperforest  = "standard/default/common-
> >pc-
> >> >64/jasperforest"
> >> >
> >> > SRCREV_machine_pn-linux-yocto_jasperforest ?=
> >> >"3303a0ec2cde4766fd0ee9dd059e9b4dd7bd7e79"
> >> > SRCREV_meta_pn-linux-yocto_jasperforest ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >diff --git a/meta-jasperforest/recipes-kernel/linux/linux-
> >yocto_3.4.bbappend
> >> >b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 7c5a908..255f12a 100644
> >> >--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -5,5 +5,7 @@ COMPATIBLE_MACHINE_jasperforest = "jasperforest"
> >> > KMACHINE_jasperforest  = "jasperforest"
> >> > KBRANCH_jasperforest  = "standard/common-pc-64/jasperforest"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_jasperforest ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_jasperforest ?=
> >> >"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >> >+SRCREV_machine_pn-linux-yocto_jasperforest ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_jasperforest ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >+
> >> >+LINUX_VERSION = "3.4.11"
> >> >diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index 1cba38f..c54505e 100644
> >> >--- a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -5,5 +5,7 @@ COMPATIBLE_MACHINE_romley = "romley"
> >> > KMACHINE_romley  = "romley"
> >> > KBRANCH_romley  = "standard/default/common-pc-64/romley"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_romley ?=
> >> >"7d26ac083cb255888536b42b622b97fb438753ad"
> >> >-SRCREV_meta_pn-linux-yocto_romley ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_romley ?=
> >> >"34e3cd8b7a1d18594a63b7b299fce46e32a6c80c"
> >> >+SRCREV_meta_pn-linux-yocto_romley ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index a733ddc..fad7c06 100644
> >> >--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -5,7 +5,9 @@ COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> >> > KMACHINE_sugarbay  = "sugarbay"
> >> > KBRANCH_sugarbay  = "standard/default/common-pc-64/sugarbay"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_sugarbay ?=
> >> >"172df847dda93cb52af0c694200613a1c363c9a3"
> >> >-SRCREV_meta_pn-linux-yocto_sugarbay ?=
> >> >"5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
> >> >+SRCREV_machine_pn-linux-yocto_sugarbay ?=
> >> >"1b6466421bc314e7e07fe4dd48c5fc67cdc3fc40"
> >> >+SRCREV_meta_pn-linux-yocto_sugarbay ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >
> >> > KERNEL_FEATURES_append_sugarbay = " features/tmp/rc6"
> >> >diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >index 9224b63..0a481e2 100644
> >> >--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> >@@ -5,5 +5,7 @@ COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> >> > KMACHINE_sugarbay  = "sugarbay"
> >> > KBRANCH_sugarbay  = "standard/common-pc-64/sugarbay"
> >> >
> >> >-SRCREV_machine_pn-linux-yocto_sugarbay ?=
> >> >"449f7f520350700858f21a5554b81cc8ad23267d"
> >> >-SRCREV_meta_pn-linux-yocto_sugarbay ?=
> >> >"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >> >+SRCREV_machine_pn-linux-yocto_sugarbay ?=
> >> >"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> >> >+SRCREV_meta_pn-linux-yocto_sugarbay ?=
> >> >"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> >> >+
> >> >+LINUX_VERSION = "3.4.11"
> >> >diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >index 7449b4b..88f3bd8 100644
> >> >--- a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >+++ b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
> >> >@@ -4,11 +4,13 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >> > COMPATIBLE_MACHINE_sys940x = "sys940x"
> >> > KMACHINE_sys940x  = "sys940x"
> >> > #KBRANCH_sys940x = "standard/default/base"
> >> >-SRCREV_machine_pn-linux-yocto_sys940x ?=
> >> >"7cc31a952f78b8f8e8469eed93c23e9675a8eeb5"
> >> >-SRCREV_meta_pn-linux-yocto_sys940x ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_sys940x ?=
> >> >"06882fc16a4e965872e7faacb91da1497efd9ac3"
> >> >+SRCREV_meta_pn-linux-yocto_sys940x ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >
> >> > COMPATIBLE_MACHINE_sys940x-noemgd = "sys940x-noemgd"
> >> > KMACHINE_sys940x-noemgd  = "sys940x"
> >> > #KBRANCH_sys940x-noemgd = "standard/default/base"
> >> >-SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?=
> >> >"7cc31a952f78b8f8e8469eed93c23e9675a8eeb5"
> >> >-SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?=
> >> >"07ee09b520579b9f29bd15fefb01fd28b34c6064"
> >> >+SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?=
> >> >"06882fc16a4e965872e7faacb91da1497efd9ac3"
> >> >+SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?=
> >> >"486f7aec824b4127e91ef53228823e996b3696f0"
> >> >+
> >> >+LINUX_VERSION = "3.2.18"
> >> >--
> >> >1.7.11.4
> >>
> >
> 



