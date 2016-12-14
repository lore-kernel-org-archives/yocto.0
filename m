Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F181EE00D12; Tue, 13 Dec 2016 16:22:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B1B4E00D07;
	Tue, 13 Dec 2016 16:22:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2016 16:22:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,343,1477983600"; d="scan'208";a="1098798683"
Received: from jzhang80-mac02.jf.intel.com ([10.24.8.225])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2016 16:22:52 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <20161213225649.80589-1-todor.minchev@linux.intel.com>
Date: Tue, 13 Dec 2016 16:22:52 -0800
Message-Id: <D283043F-7FBE-41F9-A02E-EB716EF421FB@linux.intel.com>
References: <20161213225649.80589-1-todor.minchev@linux.intel.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
X-Mailer: Apple Mail (2.3251)
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-inte][rmc][PATCH v2 1/1] rmc: add support for alternative EFI bootloaders
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
X-List-Received-Date: Wed, 14 Dec 2016 00:22:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Dec 13, 2016, at 2:56 PM, Todor Minchev =
<todor.minchev@linux.intel.com> wrote:
>=20
> RMC was previously configured to work only with the systemd-boot EFI
> bootloader. With this commit we can specify alternative bootloaders by
> setting the RMC_BOOTLOADER variable in local.conf. If RMC_BOOTLOADER =
is
> not set systemd-boot will be used by default.
>=20
> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> ---
> Remove references to grub-efi and gummiboot from V1.
>=20
> classes/{rmc-systemd-boot.bbclass =3D> rmc-boot.bbclass} |  5 +++--
> conf/machine/include/meta-intel.inc                    |  2 +-
> documentation/rmc/README                               | 16 =
+++++++++++++---
> 3 files changed, 17 insertions(+), 6 deletions(-)
> rename classes/{rmc-systemd-boot.bbclass =3D> rmc-boot.bbclass} (73%)
>=20
> diff --git a/classes/rmc-systemd-boot.bbclass =
b/classes/rmc-boot.bbclass
> similarity index 73%
> rename from classes/rmc-systemd-boot.bbclass
> rename to classes/rmc-boot.bbclass
> index ad2cf10..a1f2093 100644
> --- a/classes/rmc-systemd-boot.bbclass
> +++ b/classes/rmc-boot.bbclass
> @@ -1,9 +1,10 @@
> -# rmc-systemd-boot bbclass
> +# rmc-boot bbclass
> # Deploy central RMC database file to ESP
>=20
> IMAGE_INSTALL_append =3D " rmc"
> +RMC_BOOTLOADER ?=3D "systemd-boot=E2=80=9D
Maybe this is what we could have now without bothering OE. It is better =
than the corrent code at the cost of another variable to user. I hope in =
the future we could get rid of  the dependency to EFI_PROVIDER (e.g. =
bz10084).

Also refer to my comment for the document change at the below.
>=20
> -inherit systemd-boot
> +inherit ${RMC_BOOTLOADER}
>=20
> do_bootimg[depends] +=3D "${MLPREFIX}rmc-db:do_deploy"
>=20
> diff --git a/conf/machine/include/meta-intel.inc =
b/conf/machine/include/meta-intel.inc
> index c7555ce..fd0a792 100644
> --- a/conf/machine/include/meta-intel.inc
> +++ b/conf/machine/include/meta-intel.inc
> @@ -32,7 +32,7 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS_append =3D =
"${@bb.utils.contains('MACHINE_FEATURE
> # merge the microcode data in the final initrd image.
> INITRD_LIVE_prepend =3D "${@bb.utils.contains('MACHINE_FEATURES', =
'intel-ucode', '${DEPLOY_DIR_IMAGE}/microcode.cpio ', '', d)}"
>=20
> -EFI_PROVIDER ?=3D "rmc-systemd-boot"
> +EFI_PROVIDER ?=3D "rmc-boot"
>=20
> # Add general MACHINEOVERRIDE for meta-intel
> MACHINEOVERRIDES =3D. "intel-x86-common:"
> diff --git a/documentation/rmc/README b/documentation/rmc/README
> index 2427ffd..dbee6b6 100644
> --- a/documentation/rmc/README
> +++ b/documentation/rmc/README
> @@ -165,14 +165,24 @@ steps still can override results from this hook =
for boot entries and KBOOTPARAM.
>=20
> Enable RMC Feature
> =
--------------------------------------------------------------------------=
------
> -To Enable RMC feature in build, add the below lines in a conf file:
> +To enable the RMC feature please add the following variables to your =
local.conf.
> +
> DISTRO_FEATURES_append =3D " rmc"
> -EFI_PROVIDER =3D "rmc-systemd-boot"
> +EFI_PROVIDER =3D "rmc-boot"
> +
> +The default EFI bootloader used with RMC is systemd-boot. To change =
the default
> +bootloader please overwrite the RMC_BOOTLOADER variable in your =
local.conf
>=20
> Note:
> Image could be still bootable if you only have either of two lines, =
but RMC
> feature won't be fully functional.
>=20
> +To install only the RMC client with the systemd-boot bootloader =
without
> +including a default RMC database file, add the following lines to =
your
> +local.conf:
> +
> +EFI_PROVIDER =3D "systemd-boot"
> +IMAGE_INSTALL_append =3D " rmc=E2=80=9D
I think this use case could confuse for user without much benefit. And =
actually they still can set EFI_PROVIDER to any available efi =
bootloaders to get this effect as long as it is not =E2=80=9Crmc-boot=E2=80=
=9D, right?
Maybe we should just say =E2=80=9Cyou won=E2=80=99t get rmc database =
deployed if you set EFI_PROVIDER to any values not rmc-boot."
>=20
>=20
>=20
> Examples
> @@ -190,7 +200,7 @@ EXAMPLE 1: Support a new board type:
> (1) enable the feature and do a build to get a live-boot image by =
adding these
>     lines in conf/local.conf:
>     DISTRO_FEATURES_append =3D " rmc"
> -    EFI_PROVIDER =3D "rmc-systemd-boot"
> +    EFI_PROVIDER =3D "rmc-boot"
>=20
> (2) flash the image to a USB stick and boot it on your board
>=20
> --=20
> 2.11.0
>=20


