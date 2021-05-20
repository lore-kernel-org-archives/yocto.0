Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web08.5287.1621497817744711368
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 01:03:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: Pos5p1KflGpVShAVw9HnGgRPO5+e6Vx8bIlpccrVnn5S6Kxed0G9Dc/As3+X2mcYKlQihVdQQE
 6INX4Vu+rv/g==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="286702194"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="286702194"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 01:03:35 -0700
IronPort-SDR: 5XqznzAxXdxx2i3TjFfATT9y5mUcLPh7RW4VLGqTTUoBs1f1eF+YvvZFx/o1/0/jy530xmaDuJ
 etBh8xGF1X6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="473889597"
Received: from kmsmsx602.gar.corp.intel.com ([172.21.219.142])
  by orsmga001.jf.intel.com with ESMTP; 20 May 2021 01:03:34 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 kmsmsx602.gar.corp.intel.com (172.21.219.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 20 May 2021 16:03:33 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.2242.008;
 Thu, 20 May 2021 16:03:33 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-zephyr][PATCH] qemuzephyrrunner.py: use existing qemu conf file
Thread-Topic: [yocto] [meta-zephyr][PATCH] qemuzephyrrunner.py: use existing
 qemu conf file
Thread-Index: AQHXS/fzbk6yTP1Jb0CtKG0JOot1narsBDow
Date: Thu, 20 May 2021 08:03:33 +0000
Message-ID: <fcf4541d511e4b839f6f95709fc69633@intel.com>
References: <20210518150944.25429-1-jon.mason@arm.com>
In-Reply-To: <20210518150944.25429-1-jon.mason@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jon,

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Jon Mason
> Sent: Tuesday, May 18, 2021 11:10 PM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] [meta-zephyr][PATCH] qemuzephyrrunner.py: use existing
> qemu conf file
>=20
> Read the generated QEMU conf file, instead of using hard coded values.
> This allows for machines not conforming to the hard coded values to work
> with testimage.
>=20
> Signed-off-by: Jon Mason <jon.mason@arm.com>
> ---
>  conf/machine/qemu-x86.conf         |  1 +
>  lib/oeqa/utils/qemuzephyrrunner.py | 89 +++++++++++++++++++++++++--
> ---
>  2 files changed, 77 insertions(+), 13 deletions(-)
>=20
> diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
> index d85c22215520..ce79b5b1f510 100644
> --- a/conf/machine/qemu-x86.conf
> +++ b/conf/machine/qemu-x86.conf
> @@ -9,6 +9,7 @@ ZEPHYR_INHERIT_CLASSES +=3D "zephyr-qemuboot"
>=20
>  # For runqemu
>  QB_SYSTEM_NAME =3D "qemu-system-i386"
> +QB_MACHINE =3D "-machine type=3Dpc-1.3"
[Naveen] ruqemu failed with qemu-x86 machine
runqemu - ERROR - Failed to run qemu: qemu-system-i386: -nographic: unsuppo=
rted machine type

I run in my host :
$  qemu-helper-native/1.0-r1/recipe-sysroot-native/usr/bin/qemu-system-i386=
 -machine help

Supported machines are:
microvm              microvm (i386)
pc                   Standard PC (i440FX + PIIX, 1996) (alias of pc-i440fx-=
6.0)
pc-i440fx-6.0        Standard PC (i440FX + PIIX, 1996) (default)
pc-i440fx-5.2        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-5.1        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-5.0        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-4.2        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-4.1        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-4.0        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-3.1        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-3.0        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.9        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.8        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.7        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.6        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.5        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.4        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.3        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.2        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.12       Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.11       Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.10       Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.1        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-2.0        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-1.7        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-1.6        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-1.5        Standard PC (i440FX + PIIX, 1996)
pc-i440fx-1.4        Standard PC (i440FX + PIIX, 1996)
q35                  Standard PC (Q35 + ICH9, 2009) (alias of pc-q35-6.0)
pc-q35-6.0           Standard PC (Q35 + ICH9, 2009)
pc-q35-5.2           Standard PC (Q35 + ICH9, 2009)
pc-q35-5.1           Standard PC (Q35 + ICH9, 2009)
pc-q35-5.0           Standard PC (Q35 + ICH9, 2009)
pc-q35-4.2           Standard PC (Q35 + ICH9, 2009)
pc-q35-4.1           Standard PC (Q35 + ICH9, 2009)
pc-q35-4.0.1         Standard PC (Q35 + ICH9, 2009)
pc-q35-4.0           Standard PC (Q35 + ICH9, 2009)
pc-q35-3.1           Standard PC (Q35 + ICH9, 2009)
pc-q35-3.0           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.9           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.8           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.7           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.6           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.5           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.4           Standard PC (Q35 + ICH9, 2009)
pc-q35-2.12          Standard PC (Q35 + ICH9, 2009)
pc-q35-2.11          Standard PC (Q35 + ICH9, 2009)
pc-q35-2.10          Standard PC (Q35 + ICH9, 2009)
isapc                ISA-only PC
none                 empty machine
x-remote             Experimental remote machine

 =20

>  QB_OPT_APPEND =3D "-nographic -no-acpi"
>  QB_CPU_x86 =3D "-cpu qemu32,+nx,+pae"
>  QB_CPU_KVM_x86 =3D "-cpu kvm32"
> diff --git a/lib/oeqa/utils/qemuzephyrrunner.py
> b/lib/oeqa/utils/qemuzephyrrunner.py
> index e8a1bd4544cf..a1ed30be1ca8 100644
> --- a/lib/oeqa/utils/qemuzephyrrunner.py
> +++ b/lib/oeqa/utils/qemuzephyrrunner.py
> @@ -14,6 +14,7 @@ import select
>  import bb
>  import tempfile
>  import sys
> +import configparser
>  from oeqa.utils.qemurunner import QemuRunner
>=20
>  class QemuZephyrRunner(QemuRunner):
> @@ -42,6 +43,72 @@ class QemuZephyrRunner(QemuRunner):
>          # 5 minutes timeout...
>          self.endtime =3D time.time() + 60*5
>=20
> +        self.qemuboot =3D False
> +        self.d =3D {'QB_KERNEL_ROOT': '/dev/vda'}
> +
> +    def get(self, key):
> +        if key in self.d:
> +            return self.d.get(key)
> +        elif os.getenv(key):
> +            return os.getenv(key)
> +        else:
> +            return ''
> +
> +    def set(self, key, value):
> +        self.d[key] =3D value
> +
> +    def read_qemuboot(self):
> +        if not self.qemuboot:
> +            if self.get('DEPLOY_DIR_IMAGE'):
> +                deploy_dir_image =3D self.get('DEPLOY_DIR_IMAGE')
> +            else:
> +                bb.warning("Can't find qemuboot conf file, DEPLOY_DIR_IM=
AGE is
> NULL!")
> +                return
> +
> +            if self.rootfs and not os.path.exists(self.rootfs):
> +                # Lazy rootfs
> +                machine =3D self.get('MACHINE')
> +                if not machine:
> +                    machine =3D os.path.basename(deploy_dir_image)
> +                self.qemuboot =3D "%s/%s-%s.qemuboot.conf" %
> (deploy_dir_image,
> +                        self.rootfs, machine)
> +            else:
> +                cmd =3D 'ls -t %s/*.qemuboot.conf' %  deploy_dir_image
> +                try:
> +                    qbs =3D subprocess.check_output(cmd, shell=3DTrue).d=
ecode('utf-8')
> +                except subprocess.CalledProcessError as err:
> +                    raise RunQemuError(err)
> +                if qbs:
> +                    for qb in qbs.split():
> +                        # Don't use initramfs when other choices unless =
fstype is ramfs
> +                        if '-initramfs-' in os.path.basename(qb) and sel=
f.fstype !=3D
> 'cpio.gz':
> +                                continue
> +                        self.qemuboot =3D qb
> +                        break
> +                    if not self.qemuboot:
> +                        # Use the first one when no choice
> +                        self.qemuboot =3D qbs.split()[0]
> +                    self.qbconfload =3D True
> +
> +        if not self.qemuboot:
> +            # If we haven't found a .qemuboot.conf at this point it prob=
ably
> +            # doesn't exist, continue without
> +            return
> +
> +        if not os.path.exists(self.qemuboot):
> +            raise RunQemuError("Failed to find %s (wrong image name or
> + BSP does not support running under qemu?)." % self.qemuboot)
> +
> +        cf =3D configparser.ConfigParser()
> +        cf.read(self.qemuboot)
> +        for k, v in cf.items('config_bsp'):
> +            k_upper =3D k.upper()
> +            if v.startswith("../"):
> +                v =3D os.path.abspath(os.path.dirname(self.qemuboot) + "=
/" + v)
> +            elif v =3D=3D ".":
> +                v =3D os.path.dirname(self.qemuboot)
> +            self.set(k_upper, v)
> +
> +
>      def create_socket(self):
>          bb.note("waiting at most %s seconds for qemu pid" %
> self.runqemutime)
>          tries =3D self.runqemutime
> @@ -66,7 +133,6 @@ class QemuZephyrRunner(QemuRunner):
>=20
>          if not os.path.exists(self.tmpdir):
>              bb.error("Invalid TMPDIR path %s" % self.tmpdir)
> -            #logger.error("Invalid TMPDIR path %s" % self.tmpdir)
>              return False
>          else:
>              os.environ["OE_TMPDIR"] =3D self.tmpdir @@ -82,21 +148,18 @@=
 class
> QemuZephyrRunner(QemuRunner):
>              bb.error("Invalid kernel path: %s" % self.kernel)
>              return False
>=20
> -        self.qemuparams =3D '-nographic -serial unix:%s,server' %
> (self.socketname)
> -        qemu_binary =3D ""
> -        if 'arm' in self.machine or 'cortex' in self.machine:
> -            qemu_binary =3D 'qemu-system-arm'
> -            qemu_machine_args =3D '-machine lm3s6965evb'
> -        elif 'x86' in self.machine:
> -            qemu_binary =3D 'qemu-system-i386'
> -            qemu_machine_args =3D '-machine type=3Dpc-1.3 -no-acpi -nogr=
aphic -
> cpu qemu32,+nx,+pae'
> -        elif 'nios2' in self.machine:
> -            qemu_binary =3D 'qemu-system-nios2'
> -            qemu_machine_args =3D '-machine altera_10m50_zephyr'
> -        else:
> +        self.qemuparams =3D '-serial unix:%s,server' % (self.socketname)
> +
> +        self.read_qemuboot()
> +        qemu_binary =3D self.get('QB_SYSTEM_NAME')
> +        qemu_machine_args =3D self.get('QB_MACHINE')
> +        if qemu_binary =3D=3D "" or qemu_machine_args =3D=3D "":
>              bb.error("Unsupported QEMU: %s" % self.machine)
>              return False
>=20
> +        self.qemuparams +=3D " %s " %self.get('QB_OPT_APPEND')
> +        self.qemuparams +=3D " %s " %self.get('QB_CPU')
> +
>          self.origchldhandler =3D signal.getsignal(signal.SIGCHLD)
>          signal.signal(signal.SIGCHLD, self.handleSIGCHLD)
>=20
> --
> 2.20.1

