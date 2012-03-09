Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 498BEE013C9
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 11:05:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Mar 2012 11:05:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="119498374"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.67])
	by orsmga002.jf.intel.com with ESMTP; 09 Mar 2012 11:05:08 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri,  9 Mar 2012 11:03:56 -0800
Message-Id: <bb2796f28ceaa4b143213b92606a5bab4313add4.1331319522.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331319522.git.kishore.k.bodke@intel.com>
References: <cover.1331319522.git.kishore.k.bodke@intel.com>
Subject: [KERNEL] [PATCH 1/1] Add new pvr patches.
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
X-List-Received-Date: Fri, 09 Mar 2012 19:05:10 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Additional pvr patches related to hdmi and acpi.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 drivers/acpi/video.c       |    2 --
 sound/pci/hda/patch_hdmi.c |    2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/acpi/video.c b/drivers/acpi/video.c
index db39e9e..47a98ff 100644
--- a/drivers/acpi/video.c
+++ b/drivers/acpi/video.c
@@ -1732,7 +1732,6 @@ static int acpi_video_bus_remove(struct acpi_device *device, int type)
 
 static int __init intel_opregion_present(void)
 {
-#if defined(CONFIG_DRM_I915) || defined(CONFIG_DRM_I915_MODULE)
 	struct pci_dev *dev = NULL;
 	u32 address;
 
@@ -1746,7 +1745,6 @@ static int __init intel_opregion_present(void)
 			continue;
 		return 1;
 	}
-#endif
 	return 0;
 }
 
diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
index bd0ae69..1b05ed1 100644
--- a/sound/pci/hda/patch_hdmi.c
+++ b/sound/pci/hda/patch_hdmi.c
@@ -1671,6 +1671,7 @@ static const struct hda_codec_preset snd_hda_preset_hdmi[] = {
 { .id = 0x80862805, .name = "CougarPoint HDMI",	.patch = patch_generic_hdmi },
 { .id = 0x80862806, .name = "PantherPoint HDMI", .patch = patch_generic_hdmi },
 { .id = 0x808629fb, .name = "Crestline HDMI",	.patch = patch_generic_hdmi },
+{ .id = 0x80862880, .name = "CedarTrail HDMI", .patch = patch_generic_hdmi },
 {} /* terminator */
 };
 
@@ -1717,6 +1718,7 @@ MODULE_ALIAS("snd-hda-codec-id:80862804");
 MODULE_ALIAS("snd-hda-codec-id:80862805");
 MODULE_ALIAS("snd-hda-codec-id:80862806");
 MODULE_ALIAS("snd-hda-codec-id:808629fb");
+MODULE_ALIAS("snd-hda-codec-id:80862880");
 
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("HDMI HD-audio codec");
-- 
1.7.5.4


