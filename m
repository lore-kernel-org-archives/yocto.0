Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D711BE0076F; Wed,  4 Mar 2015 06:49:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B707AE0076F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 06:49:19 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 04 Mar 2015 06:44:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,687,1418112000"; d="scan'208";a="686780817"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by fmsmga002.fm.intel.com with ESMTP; 04 Mar 2015 06:49:17 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.105]) with mapi id
	14.03.0195.001; Wed, 4 Mar 2015 06:49:17 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation: KERNEL_FEATURES should refer to
	.scc	files.
Thread-Index: AQHQVlPmgjnQYJQK+UO0uKtkzYHX450MaBBw
Date: Wed, 4 Mar 2015 14:49:17 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1695@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1503040315560.26324@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503040315560.26324@Device-040570>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: KERNEL_FEATURES should refer to .scc	files.
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
X-List-Received-Date: Wed, 04 Mar 2015 14:49:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied - thanks.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, March 04, 2015 12:18 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Documentation: KERNEL_FEATURES should refer to
>.scc files.
>
>
>Tweak a number of doc lines so that the KERNEL_FEATURES variable refers
>directly to .scc files, and doesn't take advantage of potentially confusin=
g
>shortcuts.
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-
>guide/bsp.xml index abab3f4..06b6f22 100644
>--- a/documentation/bsp-guide/bsp.xml
>+++ b/documentation/bsp-guide/bsp.xml
>@@ -589,7 +589,7 @@
>      COMPATIBLE_MACHINE_emenlow-noemgd =3D "emenlow-noemgd"
>      KMACHINE_emenlow-noemgd =3D "emenlow"
>      KBRANCH_emenlow-noemgd =3D "standard/base"
>-     KERNEL_FEATURES_append_emenlow-noemgd =3D " features/drm-
>gma500/drm-gma500"
>+     KERNEL_FEATURES_append_emenlow-noemgd =3D " features/drm-
>gma500/drm-gma500.scc"
>
>      LINUX_VERSION_emenlow-noemgd =3D "3.14.19"
>      SRCREV_machine_emenlow-noemgd =3D
>"902f34d36102a4b2008b776ecae686f80d307e12"
>diff --git a/documentation/kernel-dev/kernel-dev-advanced.xml
>b/documentation/kernel-dev/kernel-dev-advanced.xml
>index c0d8ca6..8af926c 100644
>--- a/documentation/kernel-dev/kernel-dev-advanced.xml
>+++ b/documentation/kernel-dev/kernel-dev-advanced.xml
>@@ -136,12 +136,12 @@
>         For example, to include a feature specified as "features/netfilte=
r.scc",
>         specify:
>         <literallayout class=3D'monospaced'>
>-     KERNEL_FEATURES +=3D "features/netfilter.scc"
>+     KERNEL_FEATURES +=3D "features/netfilter/netfilter.scc"
>         </literallayout>
>         To include a feature called "cfg/sound.scc" just for the
>         <filename>qemux86</filename> machine, specify:
>         <literallayout class=3D'monospaced'>
>-     KERNEL_FEATURES_append_qemux86 =3D "cfg/sound.scc"
>+     KERNEL_FEATURES_append_qemux86 =3D " cfg/sound.scc"
>         </literallayout>
>         The value of the entries in <filename>KERNEL_FEATURES</filename>
>         are dependent on their location within the kernel Metadata itself=
.
>diff --git a/documentation/ref-manual/ref-variables.xml
>b/documentation/ref-manual/ref-variables.xml
>index 7122b47..1135728 100644
>--- a/documentation/ref-manual/ref-variables.xml
>+++ b/documentation/ref-manual/ref-variables.xml
>@@ -5792,7 +5792,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D
>"${INC_PR}.3"
>      COMPATIBLE_MACHINE_emenlow-noemgd =3D "emenlow-noemgd"
>      KMACHINE_emenlow-noemgd =3D "emenlow"
>      KBRANCH_emenlow-noemgd =3D "standard/base"
>-     KERNEL_FEATURES_append_emenlow-noemgd =3D " features/drm-
>gma500/drm-gma500"
>+     KERNEL_FEATURES_append_emenlow-noemgd =3D " features/drm-
>gma500/drm-gma500.scc"
>                     </literallayout>
>                         The <filename>KBRANCH</filename> statement identi=
fies
>                         the kernel branch to use when building for the Em=
enlow @@ -
>5846,10 +5846,10 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =3D
>"${INC_PR}.3"
>                     machine:
>                     <literallayout class=3D'monospaced'>
>      # Add netfilter to all linux-yocto kernels
>-     KERNEL_FEATURES=3D"features/netfilter"
>+     KERNEL_FEATURES=3D"features/netfilter/netfilter.scc"
>
>      # Add sound support to the qemux86 machine
>-     KERNEL_FEATURES_append_qemux86=3D" cfg/sound"
>+     KERNEL_FEATURES_append_qemux86=3D" cfg/sound.scc"
>                     </literallayout></para>
>             </glossdef>
>         </glossentry>
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

