Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36C11E00723
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 16:28:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2012 16:28:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="129239439"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2012 16:28:30 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Apr 2012 16:28:30 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.154]) with mapi id
	14.01.0355.002; Thu, 5 Apr 2012 16:28:30 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [yocto] [PATCH 1/1] [meta-intel] Romley: Add new bbappend file
	for 3.2 kernel
Thread-Index: AQHNErLBBRmCXur0uEG99gEbOwZNeJaNVWmA//+LKxA=
Date: Thu, 5 Apr 2012 23:28:30 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE203608700@ORSMSX105.amr.corp.intel.com>
References: <cover.1333578511.git.kishore.k.bodke@intel.com>
	<c5801db1ea89ecbfaa883023a5e37c37c6f4f976.1333578511.git.kishore.k.bodke@intel.com>
	<4F7E28CF.8000604@intel.com>
In-Reply-To: <4F7E28CF.8000604@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] [meta-intel] Romley: Add new bbappend file for 3.2 kernel
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
X-List-Received-Date: Thu, 05 Apr 2012 23:28:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

Answers embedded.

-----Original Message-----
From: Hart, Darren=20
Sent: Thursday, April 05, 2012 4:21 PM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org; Zanussi, Tom
Subject: Re: [yocto] [PATCH 1/1] [meta-intel] Romley: Add new bbappend file=
 for 3.2 kernel

On 04/04/2012 03:33 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
>=20
> Switching Romley to 3.2 kernel.
>=20

Hi Kishore,

A couple questions for you.

1) This is boot tested I presume?
	[KISHORE]:  Yes. Booted, and ran basic test cases as well.
2) Do you intend to leave the 3.0 recipes in place?
   It's fine if you do, I just wanted to know.
	[KISHORE]: I would like to follow with other meta-intel BSPs.

3) Do you have any patches in the common-pc-64/romley branch?
   If so, these are not being used when building -rt.
[KISHORE]: No patches.

Thanks
Kishore.
--
Darren

> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  meta-romley/conf/machine/romley.conf               |    3 +++
>  .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
>  3 files changed, 20 insertions(+), 0 deletions(-)
>  create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.b=
bappend
>  create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbap=
pend
>=20
> diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/mach=
ine/romley.conf
> index aa334c0..e6a755b 100644
> --- a/meta-romley/conf/machine/romley.conf
> +++ b/meta-romley/conf/machine/romley.conf
> @@ -4,6 +4,9 @@
>  #@DESCRIPTION: Machine configuration for Romley systems
>  # i.e. Sandy Bridge + Patsburg Chipset
> =20
> +
> +PREFERRED_VERSION_linux-yocto ?=3D "3.2%"
> +
>  require conf/machine/include/tune-x86_64.inc
>  require conf/machine/include/ia32-base.inc
> =20
> diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend=
 b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> new file mode 100644
> index 0000000..7a61749
> --- /dev/null
> +++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE_romley =3D "romley"
> +KMACHINE_romley  =3D "romley"
> +
> +# Update the following to use a different BSP branch or meta SRCREV
> +#KBRANCH_romley  =3D "standard/preempt-rt/base"
> +#SRCREV_machine_pn-linux-yocto-rt_romley ?=3D XXXX
> +#SRCREV_meta_pn-linux-yocto-rt_romley ?=3D XXXX
> diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend b/=
meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..803e772
> --- /dev/null
> +++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,9 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +
> +COMPATIBLE_MACHINE_romley =3D "romley"
> +
> +KMACHINE_romley  =3D "romley"
> +KBRANCH_romley  =3D "standard/default/common-pc-64/romley"
> +
> +SRCREV_machine_pn-linux-yocto_romley ?=3D "5c7f1c53b5b367858ae6a86c1d4de=
36d8c71bedb"
> +SRCREV_meta_pn-linux-yocto_romley ?=3D "59f350ec3794e19fa806c1b73749d851=
f8ebf364"


--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

