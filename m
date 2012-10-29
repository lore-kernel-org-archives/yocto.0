Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB6E9E0133F
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 17:07:46 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Oct 2012 17:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,675,1344236400"; d="scan'208";a="240035037"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 29 Oct 2012 16:57:42 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 29 Oct 2012 16:57:41 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.140]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.60]) with mapi id
	14.01.0355.002; Mon, 29 Oct 2012 16:57:42 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>, 
	"Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Saxena, Rahul"
	<rahul.saxena@intel.com>
Thread-Topic: [PATCH 1/2] meta-intel: update kernel SRCREVs and pin
	LINUX_VERSION
Thread-Index: AQHNtirRrLVW32URnEmJOGQvZSVN1ZfQ9bOA
Date: Mon, 29 Oct 2012 23:57:41 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE233E72903@ORSMSX105.amr.corp.intel.com>
References: <cover.1351551995.git.tom.zanussi@intel.com>
	<3898886e634523bc1bfbfae9f942959f6badfdb0.1351551995.git.tom.zanussi@intel.com>
In-Reply-To: <3898886e634523bc1bfbfae9f942959f6badfdb0.1351551995.git.tom.zanussi@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 30 Oct 2012 00:07:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Why are we not doing this LINUX_VERSION for the RT Kernel bbappend files?

Thanks
Kishore.

>-----Original Message-----
>From: Zanussi, Tom
>Sent: Monday, October 29, 2012 4:12 PM
>To: yocto@yoctoproject.org; dvhart@linux.intel.com; Kamble, Nitin A; Bodke=
,
>Kishore K; Saxena, Rahul
>Cc: Zanussi, Tom
>Subject: [PATCH 1/2] meta-intel: update kernel SRCREVs and pin
>LINUX_VERSION
>
>From: Tom Zanussi <tom.zanussi@intel.com>
>
>Update all the linux-yocto .bbappends with the latest kernel SRCREVs
>and add explicit LINUX_VERSIONs for the 1.3 release, to prevent a
>mismatch between the kernel version actually used in the machine
>branch vs the version the recipe uses for the kernel image, which can
>change with stable updates.
>
>Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>---
> meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend  |  2 ++
> meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend  |  6 ++++-=
-
> meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend    | 10
>++++++----
> meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend    | 10
>++++++----
> .../recipes-kernel/linux/linux-yocto_3.4.bbappend              | 10 +++++=
+----
> meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend     |  6 ++++-=
-
> meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend     |  6 ++++-=
-
> meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend        | 10 +++++=
+----
> meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend        |  2 ++
> .../recipes-kernel/linux/linux-yocto_3.2.bbappend              |  2 ++
> .../recipes-kernel/linux/linux-yocto_3.4.bbappend              |  6 ++++-=
-
> meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend      |  6 ++++-=
-
> meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend    |  6 ++++-=
-
> meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend    |  6 ++++-=
-
> meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend     | 10
>++++++----
> 15 files changed, 64 insertions(+), 34 deletions(-)
>
>diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
>b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index d4e2ee6..3b07968 100644
>--- a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -8,3 +8,5 @@ KERNEL_FEATURES_append_chiefriver =3D "
>features/amt/mei"
>
> SRCREV_machine_pn-linux-yocto_chiefriver ?=3D
>"56d1c9ec36287350d154a3abef339598ef4028c2"
> SRCREV_meta_pn-linux-yocto_chiefriver ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>diff --git a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
>b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 413dc74..f023a54 100644
>--- a/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-chiefriver/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -6,5 +6,7 @@ KBRANCH_chiefriver  =3D "standard/common-pc-
>64/chiefriver"
>
> KERNEL_FEATURES_append_chiefriver =3D " features/amt/mei"
>
>-SRCREV_machine_pn-linux-yocto_chiefriver ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_chiefriver ?=3D
>"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>+SRCREV_machine_pn-linux-yocto_chiefriver ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_chiefriver ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>+
>+LINUX_VERSION =3D "3.4.11"
>diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index fbe13a8..6478c6b 100644
>--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -8,8 +8,10 @@ COMPATIBLE_MACHINE_crownbay-noemgd =3D
>"crownbay-noemgd"
> KMACHINE_crownbay-noemgd  =3D "crownbay"
> KBRANCH_crownbay-noemgd  =3D "standard/default/crownbay"
>
>-SRCREV_machine_pn-linux-yocto_crownbay ?=3D
>"ddcccbf870485c835f9b4b94823ca0c4186d78df"
>-SRCREV_meta_pn-linux-yocto_crownbay ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_crownbay ?=3D
>"f5a22aa0b14bb998d88ad4732f85b66c347631f8"
>+SRCREV_meta_pn-linux-yocto_crownbay ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>
>-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D
>"ddcccbf870485c835f9b4b94823ca0c4186d78df"
>-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D
>"f5a22aa0b14bb998d88ad4732f85b66c347631f8"
>+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 8a9ef9d..e8c90f9 100644
>--- a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -8,13 +8,15 @@ COMPATIBLE_MACHINE_crownbay-noemgd =3D
>"crownbay-noemgd"
> KMACHINE_crownbay-noemgd  =3D "crownbay"
> KBRANCH_crownbay-noemgd  =3D "standard/crownbay"
>
>-SRCREV_machine_pn-linux-yocto_crownbay ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_crownbay ?=3D
>"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>+SRCREV_machine_pn-linux-yocto_crownbay ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_crownbay ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
> SRCREV_emgd_pn-linux-yocto_crownbay ?=3D
>"86643bdd8cbad616a161ab91f51108cf0da827bc"
>
>-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D
>"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>
> KSRC_linux_yocto_3_4 ?=3D "git.yoctoproject.org/linux-yocto-3.4.git"
> SRC_URI_crownbay =3D "git://git.yoctoproject.org/linux-yocto-
>3.4.git;protocol=3Dgit;nocheckout=3D1;branch=3D${KBRANCH},meta,emgd-
>1.14;name=3Dmachine,meta,emgd"
> SRC_URI_crownbay-noemgd =3D "git://git.yoctoproject.org/linux-yocto-
>3.4.git;protocol=3Dgit;nocheckout=3D1;branch=3D${KBRANCH},meta;name=3Dmach=
ine,
>meta"
>+
>+LINUX_VERSION =3D "3.4.11"
>diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbapp=
end
>b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 8418307..15ff21a 100644
>--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -4,14 +4,16 @@ COMPATIBLE_MACHINE_crystalforest-gladden =3D
>"crystalforest-gladden"
> KMACHINE_crystalforest-gladden  =3D "crystalforest"
> KBRANCH_crystalforest-gladden  =3D "standard/common-pc-64/crystalforest"
>
>-SRCREV_machine_pn-linux-yocto_crystalforest-gladden ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_crystalforest-gladden ?=3D
>"2ec32d511b62d44b63e8560a9b1d6895a5dac695"
>+SRCREV_machine_pn-linux-yocto_crystalforest-gladden ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_crystalforest-gladden ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>
> COMPATIBLE_MACHINE_crystalforest-server =3D "crystalforest-server"
> KMACHINE_crystalforest-server  =3D "crystalforest"
> KBRANCH_crystalforest-server  =3D "standard/common-pc-64/crystalforest"
>
>-SRCREV_machine_pn-linux-yocto_crystalforest-server ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_crystalforest-server ?=3D
>"2ec32d511b62d44b63e8560a9b1d6895a5dac695"
>+SRCREV_machine_pn-linux-yocto_crystalforest-server ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_crystalforest-server ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>+
>+LINUX_VERSION =3D "3.4.11"
>
> module_autoload_uio =3D "uio"
>diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
>b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index 3e8aa9b..41dfe9a 100644
>--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -4,5 +4,7 @@ COMPATIBLE_MACHINE_emenlow =3D "emenlow"
> KMACHINE_emenlow  =3D "emenlow"
> KBRANCH_emenlow  =3D "standard/default/emenlow"
>
>-SRCREV_machine_pn-linux-yocto_emenlow ?=3D
>"33fea086cb668a39765dfc7a01fd715f3ef8f6b8"
>-SRCREV_meta_pn-linux-yocto_emenlow ?=3D
>"5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
>+SRCREV_machine_pn-linux-yocto_emenlow ?=3D
>"9432e99fb8ca08b0d713fc4001f0b4a11138d20e"
>+SRCREV_meta_pn-linux-yocto_emenlow ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
>b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 4fac478..7b2185f 100644
>--- a/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -4,5 +4,7 @@ COMPATIBLE_MACHINE_emenlow =3D "emenlow"
> KMACHINE_emenlow  =3D "emenlow"
> KBRANCH_emenlow  =3D "standard/emenlow"
>
>-SRCREV_machine_pn-linux-yocto_emenlow ?=3D
>"ace4e2276ac0592e3602b9b6a95348e56e7cf246"
>-SRCREV_meta_pn-linux-yocto_emenlow ?=3D
>"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>+SRCREV_machine_pn-linux-yocto_emenlow ?=3D
>"d8178545bc69adf262620fcfa40dd8f8ef64ba14"
>+SRCREV_meta_pn-linux-yocto_emenlow ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>+
>+LINUX_VERSION =3D "3.4.11"
>diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend b/met=
a-
>fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index 35d0b3a..8459a35 100644
>--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -3,13 +3,15 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> COMPATIBLE_MACHINE_fri2 =3D "fri2"
> KMACHINE_fri2  =3D "fri2"
> KBRANCH_fri2 =3D "standard/default/fri2"
>-SRCREV_machine_pn-linux-yocto_fri2 ?=3D
>"046bef8ea4dbb9c279e49ad9faf240b86fc80fdc"
>-SRCREV_meta_pn-linux-yocto_fri2 ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_fri2 ?=3D
>"e0b29aa980673a1a5abde5ffdf356ca21b00f3ec"
>+SRCREV_meta_pn-linux-yocto_fri2 ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>
> COMPATIBLE_MACHINE_fri2-noemgd =3D "fri2-noemgd"
> KMACHINE_fri2-noemgd  =3D "fri2"
> KBRANCH_fri2-noemgd =3D "standard/default/fri2"
>-SRCREV_machine_pn-linux-yocto_fri2-noemgd ?=3D
>"046bef8ea4dbb9c279e49ad9faf240b86fc80fdc"
>-SRCREV_meta_pn-linux-yocto_fri2-noemgd ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_fri2-noemgd ?=3D
>"e0b29aa980673a1a5abde5ffdf356ca21b00f3ec"
>+SRCREV_meta_pn-linux-yocto_fri2-noemgd ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>
> module_autoload_iwlwifi =3D "iwlwifi"
>diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend b/met=
a-
>fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 522c703..dff9456 100644
>--- a/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -12,4 +12,6 @@ KBRANCH_fri2-noemgd =3D "standard/fri2"
> SRCREV_machine_pn-linux-yocto_fri2-noemgd ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
> SRCREV_meta_pn-linux-yocto_fri2-noemgd ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>
>+LINUX_VERSION =3D "3.4.11"
>+
> module_autoload_iwlwifi =3D "iwlwifi"
>diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappe=
nd
>b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index 2c3dd86..537a90c 100644
>--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -7,3 +7,5 @@ KBRANCH_jasperforest  =3D "standard/default/common-pc-
>64/jasperforest"
>
> SRCREV_machine_pn-linux-yocto_jasperforest ?=3D
>"3303a0ec2cde4766fd0ee9dd059e9b4dd7bd7e79"
> SRCREV_meta_pn-linux-yocto_jasperforest ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappe=
nd
>b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 7c5a908..255f12a 100644
>--- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -5,5 +5,7 @@ COMPATIBLE_MACHINE_jasperforest =3D "jasperforest"
> KMACHINE_jasperforest  =3D "jasperforest"
> KBRANCH_jasperforest  =3D "standard/common-pc-64/jasperforest"
>
>-SRCREV_machine_pn-linux-yocto_jasperforest ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_jasperforest ?=3D
>"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>+SRCREV_machine_pn-linux-yocto_jasperforest ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_jasperforest ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>+
>+LINUX_VERSION =3D "3.4.11"
>diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index 1cba38f..c54505e 100644
>--- a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -5,5 +5,7 @@ COMPATIBLE_MACHINE_romley =3D "romley"
> KMACHINE_romley  =3D "romley"
> KBRANCH_romley  =3D "standard/default/common-pc-64/romley"
>
>-SRCREV_machine_pn-linux-yocto_romley ?=3D
>"7d26ac083cb255888536b42b622b97fb438753ad"
>-SRCREV_meta_pn-linux-yocto_romley ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_romley ?=3D
>"34e3cd8b7a1d18594a63b7b299fce46e32a6c80c"
>+SRCREV_meta_pn-linux-yocto_romley ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index a733ddc..fad7c06 100644
>--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -5,7 +5,9 @@ COMPATIBLE_MACHINE_sugarbay =3D "sugarbay"
> KMACHINE_sugarbay  =3D "sugarbay"
> KBRANCH_sugarbay  =3D "standard/default/common-pc-64/sugarbay"
>
>-SRCREV_machine_pn-linux-yocto_sugarbay ?=3D
>"172df847dda93cb52af0c694200613a1c363c9a3"
>-SRCREV_meta_pn-linux-yocto_sugarbay ?=3D
>"5b4c9dc78b5ae607173cc3ddab9bce1b5f78129b"
>+SRCREV_machine_pn-linux-yocto_sugarbay ?=3D
>"1b6466421bc314e7e07fe4dd48c5fc67cdc3fc40"
>+SRCREV_meta_pn-linux-yocto_sugarbay ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>
> KERNEL_FEATURES_append_sugarbay =3D " features/tmp/rc6"
>diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>index 9224b63..0a481e2 100644
>--- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>@@ -5,5 +5,7 @@ COMPATIBLE_MACHINE_sugarbay =3D "sugarbay"
> KMACHINE_sugarbay  =3D "sugarbay"
> KBRANCH_sugarbay  =3D "standard/common-pc-64/sugarbay"
>
>-SRCREV_machine_pn-linux-yocto_sugarbay ?=3D
>"449f7f520350700858f21a5554b81cc8ad23267d"
>-SRCREV_meta_pn-linux-yocto_sugarbay ?=3D
>"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>+SRCREV_machine_pn-linux-yocto_sugarbay ?=3D
>"218bd8d2022b9852c60d32f0d770931e3cf343e2"
>+SRCREV_meta_pn-linux-yocto_sugarbay ?=3D
>"68a635bf8dfb64b02263c1ac80c948647cc76d5f"
>+
>+LINUX_VERSION =3D "3.4.11"
>diff --git a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
>b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
>index 7449b4b..88f3bd8 100644
>--- a/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
>+++ b/meta-sys940x/recipes-kernel/linux/linux-yocto_3.2.bbappend
>@@ -4,11 +4,13 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> COMPATIBLE_MACHINE_sys940x =3D "sys940x"
> KMACHINE_sys940x  =3D "sys940x"
> #KBRANCH_sys940x =3D "standard/default/base"
>-SRCREV_machine_pn-linux-yocto_sys940x ?=3D
>"7cc31a952f78b8f8e8469eed93c23e9675a8eeb5"
>-SRCREV_meta_pn-linux-yocto_sys940x ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_sys940x ?=3D
>"06882fc16a4e965872e7faacb91da1497efd9ac3"
>+SRCREV_meta_pn-linux-yocto_sys940x ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>
> COMPATIBLE_MACHINE_sys940x-noemgd =3D "sys940x-noemgd"
> KMACHINE_sys940x-noemgd  =3D "sys940x"
> #KBRANCH_sys940x-noemgd =3D "standard/default/base"
>-SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?=3D
>"7cc31a952f78b8f8e8469eed93c23e9675a8eeb5"
>-SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?=3D
>"07ee09b520579b9f29bd15fefb01fd28b34c6064"
>+SRCREV_machine_pn-linux-yocto_sys940x-noemgd ?=3D
>"06882fc16a4e965872e7faacb91da1497efd9ac3"
>+SRCREV_meta_pn-linux-yocto_sys940x-noemgd ?=3D
>"486f7aec824b4127e91ef53228823e996b3696f0"
>+
>+LINUX_VERSION =3D "3.2.18"
>--
>1.7.11.4


