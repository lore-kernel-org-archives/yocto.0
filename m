Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web08.2377.1607392027121814370
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Dec 2020 17:47:07 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: jP5kY4d64xDA6qXuSzdYtzhfxnGWELmmDo/2uQCPJC7vKTuootF+S/KruhlotA+bS0enD8kljD
 +OJMQflruCOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="170302972"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; 
   d="scan'208";a="170302972"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Dec 2020 17:47:06 -0800
IronPort-SDR: t2xwCsOOd0vrzaXi1loOO0D8TRC7tY9IDz4xCqxcrWTn/QVfIMWr2CDVwpcr3VnRKXEgO2GY5O
 FCWAQvwATtHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; 
   d="scan'208";a="437185702"
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143])
  by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2020 17:47:04 -0800
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 kmsmsx603.gar.corp.intel.com (172.21.219.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 09:47:04 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.1713.004;
 Tue, 8 Dec 2020 09:47:04 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Wojciech Zmuda <zmuda.w@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "davide.ricci@huawei.com" <davide.ricci@huawei.com>,
	"zbigniew.bodek@huawei.com" <zbigniew.bodek@huawei.com>,
	"jaroslaw.marek@huawei.com" <jaroslaw.marek@huawei.com>,
	"robert.drab@huawei.com" <robert.drab@huawei.com>, Wojciech Zmuda
	<wojciech.zmuda@huawei.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: support for flashing via pyocd
Thread-Topic: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass:
 support for flashing via pyocd
Thread-Index: AQHWzAyZ3kja/PJ5N0y8abfUYccqJKnrh+iwgADnoJA=
Date: Tue, 8 Dec 2020 01:47:03 +0000
Message-ID: <7c9d12e428954c44964906065281af1e@intel.com>
References: <20201206201521.3377-1-wojciech.zmuda@huawei.com>
 <20201206201521.3377-6-wojciech.zmuda@huawei.com>
 <cffe226c642a412b90cd881122e5cfbd@intel.com>
In-Reply-To: <cffe226c642a412b90cd881122e5cfbd@intel.com>
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

You have missed few of my comments in v2 !

Regards,
Naveen

-----Original Message-----
From: Saini, Naveen Kumar=20
Sent: Monday, December 7, 2020 8:06 PM
To: 'Wojciech Zmuda' <zmuda.w@gmail.com>; yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com; zbigniew.bodek@huawei.com; jaroslaw.marek@huaw=
ei.com; robert.drab@huawei.com; Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: RE: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: s=
upport for flashing via pyocd

Thanks for the patches.  Please find my comments below.

-----Original Message-----
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Wojciech Zmuda
Sent: Monday, December 7, 2020 4:15 AM
To: yocto@lists.yoctoproject.org
Cc: davide.ricci@huawei.com; zbigniew.bodek@huawei.com; jaroslaw.marek@huaw=
ei.com; robert.drab@huawei.com; Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [yocto] [meta-zephyr][PATCH 5/5] zephyr-flash-pyocd.bbclass: suppo=
rt for flashing via pyocd

Flash boards supported via pyocd:

    MACHINE=3Dxxx bitbake yyy -c flash_usb

The only supported board for now is 96Boards Nitrogen. Modify its config ac=
cordingly.

Modify helloworld and philosopers samples with adidtional .hex output file =
deployment, as this format is required by pyocd.

Describe the feature in README.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 README.txt                                    | 23 +++++++++++++++++++
 classes/zephyr-flash-pyocd.bbclass            | 17 ++++++++++++++
 conf/machine/96b-nitrogen.conf                |  1 +
 .../zephyr-kernel/zephyr-helloworld.bb        |  1 +
 .../zephyr-kernel/zephyr-philosophers.bb      |  1 +
 5 files changed, 43 insertions(+)
 create mode 100644 classes/zephyr-flash-pyocd.bbclass

diff --git a/README.txt b/README.txt
index 6463339..4366764 100644
--- a/README.txt
+++ b/README.txt
@@ -43,6 +43,29 @@ The same sample, for Nios2 image:
     $ MACHINE=3Dqemu-nios2 bitbake zephyr-philosophers
     $ runqemu qemu-nios2
=20
+Flashing
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
+
+You can flash Zephyr samples to boards. Currently, the following=20
+MACHINEs are supported:
+ * DFU:
+  - arduino_101_sss
+  - arduino_101
+  - arduino_101_ble
+ * pyocd:
+  - 96b_nitrogen
+
+To flash the example you built with command e.g.
+
+    $ MACHINE=3D96b_nitrogen bitbake zephyr-philosophers
[Naveen Saini] Typo here, MACHINE=3D96b-nitrogen
+
+call similar command with explicit flash_usb command:
+
+    $ MACHINE=3D96b_nitrogen bitbake zephyr-philosophers -c flash_usb
[Naveen Saini]  Same as above

+
+dfu-util and/or pyocd need to be installed in your system. If you=20
+observe permission errors or the flashing process seem to hang, follow tho=
se instructions:
+https://github.com/pyocd/pyOCD/tree/master/udev
=20
 Building and Running Zephyr Tests
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
diff --git a/classes/zephyr-flash-pyocd.bbclass b/classes/zephyr-flash-pyoc=
d.bbclass
new file mode 100644
index 0000000..aafe9e7
--- /dev/null
+++ b/classes/zephyr-flash-pyocd.bbclass
@@ -0,0 +1,17 @@
+
+python do_flash_usb() {
+    from pyocd.core.helpers import ConnectHelper
+    from pyocd.flash.file_programmer import FileProgrammer
+
+    image =3D f"{d.getVar('DEPLOY_DIR_IMAGE')}/{d.getVar('PN')}.hex"
+    bb.plain(f"Attempting to flash {image} to board
+ {d.getVar('BOARD')}")
+
+    with ConnectHelper.session_with_chosen_probe() as session:
+        FileProgrammer(session).program(image)
+        session.board.target.reset()
+}
+
+addtask do_flash_usb
+
+do_flash_usb[nostamp] =3D "1"
+do_flash_usb[vardepsexclude] =3D "BB_ORIGENV"
diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.con=
f index d1905f2..998db4c 100644
--- a/conf/machine/96b-nitrogen.conf
+++ b/conf/machine/96b-nitrogen.conf
@@ -4,4 +4,5 @@
 #@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
=20
 require conf/machine/include/nrf52832.inc
+ZEPHYR_INHERIT_CLASSES +=3D "zephyr-flash-pyocd"
 ARCH_96b-nitrogen =3D "arm"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb b/recipes-ke=
rnel/zephyr-kernel/zephyr-helloworld.bb
index 1400e72..9b77975 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-helloworld.bb
@@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
=20
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${PN}.el=
f
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex
+ ${DEPLOYDIR}/${PN}.hex
 }
[Naveen Saini]  No *.hex file while building for MACHINE=3Dqemu-x86  Error =
log:  ...build/zephyr/zephyr.hex': No such file or directory


 addtask deploy after do_compile
diff --git a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb b/recipes-=
kernel/zephyr-kernel/zephyr-philosophers.bb
index 5f7fbcb..f720999 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
+++ b/recipes-kernel/zephyr-kernel/zephyr-philosophers.bb
@@ -8,6 +8,7 @@ OECMAKE_SOURCEPATH =3D "${ZEPHYR_SRC_DIR}"
=20
 do_deploy () {
     install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.elf ${DEPLOYDIR}/${PN}.el=
f
+    install -D ${B}/zephyr/${ZEPHYR_MAKE_OUTPUT}.hex
+ ${DEPLOYDIR}/${PN}.hex
 }
=20
[Naveen Saini]  No *.hex file while building for MACHINE=3Dqemu-x86  Error =
log:  ...build/zephyr/zephyr.hex': No such file or directory

Could you also try to build testcases !!
$ MACHINE=3D96b-nitrogen bitbake zephyr-kernel-test-all

Build breaks with error: ......build/zephyr/zephyr.elf.elf': No such file o=
r directory

 addtask deploy after do_compile
--
2.25.1

