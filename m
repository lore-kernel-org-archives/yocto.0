Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id A881A4C80186
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 03:05:58 -0500 (CDT)
Received: by wwf4 with SMTP id 4so407282wwf.11
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 01:05:57 -0700 (PDT)
Received: by 10.216.231.198 with SMTP id l48mr3205201weq.54.1308384357302;
	Sat, 18 Jun 2011 01:05:57 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r20sm1775214wec.31.2011.06.18.01.05.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 18 Jun 2011 01:05:56 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <f66f8d260f0d9ca587e6dc55cba45a6e0ce224a6.1308357152.git.dvhart@linux.intel.com>
Date: Sat, 18 Jun 2011 10:05:54 +0200
Message-Id: <824516E3-FB4B-47E5-9172-E685149CAD49@dominion.thruhere.net>
References: <cover.1308357152.git.dvhart@linux.intel.com>
	<f66f8d260f0d9ca587e6dc55cba45a6e0ce224a6.1308357152.git.dvhart@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] beagleboard: xserver-kdrive xorg.conf installation
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
X-List-Received-Date: Sat, 18 Jun 2011 08:05:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 18 jun 2011, om 02:35 heeft Darren Hart het volgende geschreven:

> Append xserver-kdrive to allow for BSP specific xorg.conf files. This =
also
> appears to drag in a runtime dependency on libhal, so add that to the
> bbappend's RDEPENDS_${PN} as well.

Since when does kdrive use xorg.conf?

> Ultimately we probably want an xserver independent xorgconf recipe =
that
> enables installing BSP specific xorg.conf files for all the xservers. =
This
> works for now.

Like xserver-xorg-conf in meta-oe?


>=20
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
> .../xserver-kdrive/beagleboard/xorg.conf           |   34 =
++++++++++++++++++++
> .../xorg-xserver/xserver-kdrive_1.7.99.2.bbappend  |   10 ++++++
> 2 files changed, 44 insertions(+), 0 deletions(-)
> create mode 100644 =
meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.c=
onf
> create mode 100644 =
meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend
>=20
> diff --git =
a/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg=
.conf =
b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg=
.conf
> new file mode 100644
> index 0000000..0335e6a
> --- /dev/null
> +++ =
b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg=
.conf
> @@ -0,0 +1,34 @@
> +Section "Module"
> +	Load	"extmod"
> +	Load	"dbe"
> +	Load	"glx"
> +	Load	"freetype"
> +	Load	"type1"
> +	Load	"record"
> +	Load	"dri"
> +EndSection
> +
> +Section "Monitor"
> +	Identifier	"Builtin Default Monitor"
> +EndSection
> +
> +Section "Device"
> +	Identifier	"Builtin Default fbdev Device 0"
> +	Driver		"omapfb"
> +EndSection
> +
> +Section "Screen"
> +	Identifier	"Builtin Default fbdev Screen 0"
> +	Device		"Builtin Default fbdev Device 0"
> +	Monitor		"Builtin Default Monitor"
> +EndSection
> +
> +Section "ServerLayout"
> +	Identifier	"Builtin Default Layout"
> +	Screen		"Builtin Default fbdev Screen 0"
> +EndSection
> +
> +Section "ServerFlags"
> +	Option		"DontZap"  "0"
> +        Option		"AutoAddDevices" "False"
> +EndSection
> diff --git =
a/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappen=
d =
b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappen=
d
> new file mode 100644
> index 0000000..cfa6c4f
> --- /dev/null
> +++ =
b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappen=
d
> @@ -0,0 +1,10 @@
> +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> +RDEPENDS_${PN} +=3D "libhal"
> +SRC_URI +=3D "file://xorg.conf"
> +
> +do_install_append() {
> +	install -d ${D}/${sysconfdir}/X11
> +	install -m 0644 ${WORKDIR}/xorg.conf ${D}/${sysconfdir}/X11/
> +}
> +
> +
> --=20
> 1.7.1
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


