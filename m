Received: from mga18.intel.com (mga18.intel.com [])
 by mx.groups.io with SMTP id smtpd.web10.5541.1601606747129063661
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 19:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: q/bvvxqETHo2BJhCFDJHN9uKFcJ0UB4VUjZDSqoBogBYRZkVJVRjGdB67hTpnaJypgs1xl0ZiC
 nxbnfdFxK6RQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="150693156"
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="150693156"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 19:45:46 -0700
IronPort-SDR: FxdMVpcw4i3QvGADkGODCWCrE/WdjnsXoORjZseetoq0buplPZ8/B1Jz4oVtdKoFI9YZ5X0mgI
 ZM9vgWcUgSFQ==
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; 
   d="scan'208";a="351410816"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2020 19:45:45 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] wic: add wks.in for intel dm-verity
Date: Fri,  2 Oct 2020 10:53:51 +0800
Message-Id: <20201002025352.18830-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002025352.18830-1-naveen.kumar.saini@intel.com>
References: <20201002025352.18830-1-naveen.kumar.saini@intel.com>

Based on systemd-bootdisk-microcode.wks.in, this adds
the dm-verity image similar to the beaglebone wks
already in meta-security.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 wic/systemd-bootdisk-dmverity.wks.in | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 wic/systemd-bootdisk-dmverity.wks.in

diff --git a/wic/systemd-bootdisk-dmverity.wks.in b/wic/systemd-bootdisk-dmverity.wks.in
new file mode 100644
index 0000000..ef114ca
--- /dev/null
+++ b/wic/systemd-bootdisk-dmverity.wks.in
@@ -0,0 +1,15 @@
+# A dm-verity variant of the regular wks for IA machines. We need to fetch
+# the partition images from the IMGDEPLOYDIR as the rootfs source plugin will
+# not recreate the exact block device corresponding with the hash tree. We must
+# not alter the label or any other setting on the image.
+# Based on OE-core's systemd-bootdisk.wks and meta-security's beaglebone-yocto-verity.wks.in file
+#
+# This .wks only works with the dm-verity-img class.
+
+part /boot --source bootimg-efi --sourceparams="loader=systemd-boot,initrd=microcode.cpio" --ondisk sda --label msdos --active --align 1024 --use-uuid
+
+part / --source rawcopy --ondisk sda  --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity" --use-uuid
+
+part swap --ondisk sda --size 44 --label swap1 --fstype=swap --use-uuid
+
+bootloader --ptable gpt --timeout=5 --append=" "
-- 
2.17.1

