Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web09.4783.1610644694215477088
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 09:18:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4DGrcM4d1cz5tlF;
	Thu, 14 Jan 2021 18:18:10 +0100 (CET)
Date: Thu, 14 Jan 2021 18:18:09 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: steven.monsees@baesystems.com
Cc: Khem Raj <raj.khem@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Message-ID: <20210114171809.joferqzcexsonuik@qschulz>
References: <MADEUP.165A27CAEC471216.8149@lists.yoctoproject.org>
 <MADEUP.165A2873BA1B1546.31957@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <MADEUP.165A2873BA1B1546.31957@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Steve,

On Thu, Jan 14, 2021 at 05:11:29PM +0000, Monsees, Steven C (US) via lists.=
yoctoproject.org wrote:
>=20
> Khem:
>=20
> Should have waited for build to complete... this just delays where the er=
ror occurs.
>=20
> Now rather than upfront, it fails on packaging with the following error:
>=20
> ERROR: aiox-defaultfs-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/disk0/scratch/smonsees/yocto/workspace_3/meta-bae/meta-limws/builds/ai=
ox-default/tmp/work/aiox_default-poky-linux/aiox-defaultfs/1.0-r0/recipe-sy=
sroot-native/usr/bin/opkg --volatile-cache -f /disk0/scratch/smonsees/yocto=
/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-=
poky-linux/aiox-defaultfs/1.0-r0/opkg.conf -t /disk0/scratch/smonsees/yocto=
/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_default-=
poky-linux/aiox-defaultfs/1.0-r0/temp/ipktemp/ -o /disk0/scratch/smonsees/y=
octo/workspace_3/meta-bae/meta-limws/builds/aiox-default/tmp/work/aiox_defa=
ult-poky-linux/aiox-defaultfs/1.0-r0/rootfs  --force_postinstall --prefer-a=
rch-to-version   install base-files bash bc binutils bridge-utils coreutils=
 crush cs-hdlc dhcp-server dhcp-server-config e2fsprogs ethtool haveged hdp=
arm i2c-tools inetutils inetutils-rsh iperf3 iproute2 iptables iputils iput=
ils-ping kernel-modules key-helper kmod libpci3 module-init-tools mtd-utils=
 mtd-utils-ubifs nano ncurses ncurses-dev net-tools netcat nfs-utils nfs-ut=
ils-stats ntfs-3g ntfsprogs openssh openssh-sftp-server packagegroup-base-v=
fat packagegroup-core-boot pciutils pciutils-ids peekpoke perl plx8000 plx8=
000nt plxsvc pub-key python python-stringold python-subprocess rsync run-po=
stinsts sg3-utils swig tar tcpdump tftp-hpa tftp-hpa-server traceroute usbu=
tils util-linux wolfssl xinetd' returned 255:
> Collected errors:
>  * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'inetu=
tils-rsh'.
>=20
> What has changed in the build process ?, under rocko I do not see an issu=
e adding inetutils-rsh...
>=20

http://cgit.openembedded.org/openembedded-core/commit/meta/recipes-connecti=
vity/inetutils?h=3Dzeus&id=3D9e13dad6ea76dd036098ef62427804e4138bf83b

It's disabled by default now.

You can probably re-enable it by appending --enable-rsh again I guess?

Quentin
