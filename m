Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7F0E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 20:37:00 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jan 2012 20:37:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="105809831"
Received: from unknown (HELO [10.255.13.234]) ([10.255.13.234])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jan 2012 20:36:59 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 10 Jan 2012 22:36:46 -0600
Message-ID: <1326256606.2413.88.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-emenlow: fix ptr->int and Werror=address compile errors
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
X-List-Received-Date: Wed, 11 Jan 2012 04:37:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A couple of things that had previously been warnings are now errors,
so they need to be fixed up.

The first problem is the same problem encountered by xserver-kdrive,
and has the same fix, namely create a new version of REGION_INIT and
have all calls that pass in a pointer to a static struct use it
instead.  A different fix for this is upstream, which includes an API
change; we don't need all that to fix this problem.

The second problem is a cast from pointer to integer in fbdevhw.c.
This also is fixed upstream by removing the whole section of code
which is bogus anyway, which is also done here.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../xorg-xserver/files/ptr-to-int-cast-fix.patch   |   92 ++++
 .../xorg-xserver/files/werror-address-fix.patch    |  515 ++++++++++++++++++++
 .../xorg-xserver/xserver-psb-1.7.99.2.inc          |    6 +-
 3 files changed, 611 insertions(+), 2 deletions(-)
 create mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/ptr-to-int-cast-fix.patch
 create mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/werror-address-fix.patch

diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/ptr-to-int-cast-fix.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/ptr-to-int-cast-fix.patch
new file mode 100644
index 0000000..19574d0
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/files/ptr-to-int-cast-fix.patch
@@ -0,0 +1,92 @@
+Upstream-Status: Inappropriate [already upstream]
+
+It's broken for devices with BARs above 4G, and the sysfs method should         
+work everywhere anyway.  As a pleasant side effect, this fixes some             
+warnings:                                                                       
+                                                                                
+fbdevhw.c: In function 'fbdev_open_pci':                                        
+fbdevhw.c:333:4: warning: cast from pointer to integer of different size        
+fbdevhw.c:334:4: warning: cast from pointer to integer of different size        
+fbdevhw.c:336:4: warning: cast from pointer to integer of different size        
+fbdevhw.c:337:4: warning: cast from pointer to integer of different size        
+                                                                                
+Signed-off-by: Adam Jackson <ajax (a] redhat.com>                                   
+Integrated-by: Tom Zanussi <tom.zanussi (a] intel.com>
+
+Index: xorg-server-1.7.99.2/hw/xfree86/fbdevhw/fbdevhw.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/fbdevhw/fbdevhw.c	2012-01-10 22:08:26.466693355 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/fbdevhw/fbdevhw.c	2012-01-10 22:11:36.386936978 -0600
+@@ -291,14 +291,7 @@
+ {
+     struct	fb_fix_screeninfo fix;
+     char	filename[256];
+-    int	fd,i,j;
+-
+-
+-    /* There are two ways to that we can determine which fb device is
+-     * associated with this PCI device.  The more modern way is to look in
+-     * the sysfs directory for the PCI device for a file named
+-     * "graphics/fb*"
+-     */
++    int	fd, i;
+ 
+     for (i = 0; i < 8; i++) {
+ 	sprintf(filename, 
+@@ -331,55 +324,10 @@
+ 	}
+     }
+ 
+-
+-    /* The other way is to examine the resources associated with each fb
+-     * device and see if there is a match with the PCI device.  This technique
+-     * has some problems on certain mixed 64-bit / 32-bit architectures.
+-     * There is a flaw in the fb_fix_screeninfo structure in that it only
+-     * returns the low 32-bits of the address of the resources associated with
+-     * a device.  However, on a mixed architecture the base addresses of PCI
+-     * devices, even for 32-bit applications, may be higher than 0x0f0000000.
+-     */
+-
+-    for (i = 0; i < 8; i++) {
+-	sprintf(filename,"/dev/fb%d",i);
+-	if (-1 == (fd = open(filename,O_RDWR,0))) {
+-	    xf86DrvMsg(-1, X_WARNING,
+-		       "open %s: %s\n", filename, strerror(errno));
+-	    continue;
+-	}
+-	if (-1 == ioctl(fd,FBIOGET_FSCREENINFO,(void*)&fix)) {
+-	    close(fd);
+-	    continue;
+-	}
+-	for (j = 0; j < 6; j++) {
+-	    const pciaddr_t res_start = pPci->regions[j].base_addr;
+-	    const pciaddr_t res_end = res_start + pPci->regions[j].size;
+-
+-	    if ((0 != fix.smem_len &&
+-		 (pciaddr_t) fix.smem_start >= res_start &&
+-		 (pciaddr_t) fix.smem_start < res_end) ||
+-		(0 != fix.mmio_len &&
+-		 (pciaddr_t) fix.mmio_start >= res_start &&
+-		 (pciaddr_t) fix.mmio_start < res_end))
+-	      break;
+-	}
+-	if (j == 6) {
+-	    close(fd);
+-	    continue;
+-	}
+-	if (namep) {
+-	    *namep = xnfalloc(16);
+-	    strncpy(*namep,fix.id,16);
+-	}
+-	return fd;
+-    }
+-
+     if (namep)
+       *namep = NULL;
+ 
+-    xf86DrvMsg(-1, X_ERROR,
+-	       "Unable to find a valid framebuffer device\n");
++    xf86DrvMsg(-1, X_ERROR, "Unable to find a valid framebuffer device\n");
+     return -1;
+ }
+ 
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/werror-address-fix.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/werror-address-fix.patch
new file mode 100644
index 0000000..9a56a4f
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/files/werror-address-fix.patch
@@ -0,0 +1,515 @@
+Upstream-Status: Inappropriate [yocto-specific]
+
+Signed-off-by: Tom Zanussi <tom.zanussi (a] intel.com>
+
+Index: xorg-server-1.7.99.2/Xext/xace.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/Xext/xace.c	2012-01-10 19:18:03.696703936 -0600
++++ xorg-server-1.7.99.2/Xext/xace.c	2012-01-10 19:18:17.196730688 -0600
+@@ -255,7 +255,7 @@
+     imageBox.y1 = y;
+     imageBox.x2 = x + w;
+     imageBox.y2 = y + h;
+-    REGION_INIT(pScreen, &imageRegion, &imageBox, 1);
++    REGION_INIT2(pScreen, &imageRegion, &imageBox, 1);
+     REGION_NULL(pScreen, &censorRegion);
+ 
+     /* censorRegion = imageRegion - visibleRegion */
+Index: xorg-server-1.7.99.2/dix/window.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/dix/window.c	2012-01-10 17:55:40.997816709 -0600
++++ xorg-server-1.7.99.2/dix/window.c	2012-01-10 19:03:09.166733166 -0600
+@@ -418,10 +418,10 @@
+     box.y1 = 0;
+     box.x2 = pScreen->width;
+     box.y2 = pScreen->height;
+-    REGION_INIT(pScreen, &pWin->clipList, &box, 1);
+-    REGION_INIT(pScreen, &pWin->winSize, &box, 1);
+-    REGION_INIT(pScreen, &pWin->borderSize, &box, 1);
+-    REGION_INIT(pScreen, &pWin->borderClip, &box, 1);
++    REGION_INIT2(pScreen, &pWin->clipList, &box, 1);
++    REGION_INIT2(pScreen, &pWin->winSize, &box, 1);
++    REGION_INIT2(pScreen, &pWin->borderSize, &box, 1);
++    REGION_INIT2(pScreen, &pWin->borderClip, &box, 1);
+ 
+     pWin->drawable.class = InputOutput;
+     pWin->optional->visual = pScreen->rootVisual;
+Index: xorg-server-1.7.99.2/exa/exa.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/exa/exa.c	2012-01-10 19:25:33.417588200 -0600
++++ xorg-server-1.7.99.2/exa/exa.c	2012-01-10 19:25:40.426941145 -0600
+@@ -161,7 +161,7 @@
+     if (box.x1 >= box.x2 || box.y1 >= box.y2)
+ 	return;
+ 
+-    REGION_INIT(pScreen, &region, &box, 1);
++    REGION_INIT2(pScreen, &region, &box, 1);
+     DamageRegionAppend(&pPix->drawable, &region);
+     DamageRegionProcessPending(&pPix->drawable);
+     REGION_UNINIT(pScreen, &region);
+Index: xorg-server-1.7.99.2/exa/exa_accel.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/exa/exa_accel.c	2012-01-10 19:24:57.457521222 -0600
++++ xorg-server-1.7.99.2/exa/exa_accel.c	2012-01-10 19:26:21.976736053 -0600
+@@ -1275,7 +1275,7 @@
+ 	Box.x2 = Box.x1 + w;
+ 	Box.y2 = Box.y1 + h;
+ 
+-	REGION_INIT(pScreen, &Reg, &Box, 1);
++	REGION_INIT2(pScreen, &Reg, &Box, 1);
+ 
+ 	pixmaps[0].as_dst = FALSE;
+ 	pixmaps[0].as_src = TRUE;
+Index: xorg-server-1.7.99.2/exa/exa_classic.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/exa/exa_classic.c	2012-01-10 19:24:48.047527363 -0600
++++ xorg-server-1.7.99.2/exa/exa_classic.c	2012-01-10 19:25:29.056935821 -0600
+@@ -131,8 +131,8 @@
+     box.y1 = 0;
+     box.x2 = w;
+     box.y2 = h;
+-    REGION_INIT(pScreen, &pExaPixmap->validSys, &box, 0);
+-    REGION_INIT(pScreen, &pExaPixmap->validFB, &box, 0);
++    REGION_INIT2(pScreen, &pExaPixmap->validSys, &box, 0);
++    REGION_INIT2(pScreen, &pExaPixmap->validFB, &box, 0);
+ 
+     exaSetAccelBlock(pExaScr, pExaPixmap,
+                      w, h, bpp);
+Index: xorg-server-1.7.99.2/exa/exa_migration_classic.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/exa/exa_migration_classic.c	2012-01-10 19:26:48.177818546 -0600
++++ xorg-server-1.7.99.2/exa/exa_migration_classic.c	2012-01-10 19:26:58.277521329 -0600
+@@ -177,7 +177,7 @@
+ 		box.x2 = max(pValidExt->x2, pDamageExt->x2);
+ 		box.y2 = max(pValidExt->y2, pDamageExt->y2);
+ 
+-		REGION_INIT(pScreen, &closure, &box, 0);
++		REGION_INIT2(pScreen, &closure, &box, 0);
+ 		REGION_INTERSECT(pScreen, &CopyReg, &CopyReg, &closure);
+ 	    } else
+ 		REGION_INTERSECT(pScreen, &CopyReg, &CopyReg, pending_damage);
+Index: xorg-server-1.7.99.2/exa/exa_render.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/exa/exa_render.c	2012-01-10 19:27:48.157788532 -0600
++++ xorg-server-1.7.99.2/exa/exa_render.c	2012-01-10 19:28:02.006706610 -0600
+@@ -576,7 +576,7 @@
+ 	 * (see use of DamagePendingRegion in exaCopyDirty)
+ 	 */
+ 
+-	REGION_INIT(pScreen, &region, &box, 1);
++	REGION_INIT2(pScreen, &region, &box, 1);
+     
+ 	DamageRegionAppend(pDst->pDrawable, &region);
+ 
+Index: xorg-server-1.7.99.2/exa/exa_unaccel.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/exa/exa_unaccel.c	2012-01-10 19:27:53.367612350 -0600
++++ xorg-server-1.7.99.2/exa/exa_unaccel.c	2012-01-10 19:28:09.296923679 -0600
+@@ -344,7 +344,7 @@
+ 	Box.x2 = Box.x1 + w;
+ 	Box.y2 = Box.y1 + h;
+ 
+-	REGION_INIT(pScreen, &Reg, &Box, 1);
++	REGION_INIT2(pScreen, &Reg, &Box, 1);
+ 
+ 	pExaScr->prepare_access_reg(pPix, EXA_PREPARE_SRC, &Reg);
+     } else
+Index: xorg-server-1.7.99.2/fb/fboverlay.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/fb/fboverlay.c	2012-01-10 19:11:34.557708404 -0600
++++ xorg-server-1.7.99.2/fb/fboverlay.c	2012-01-10 19:12:00.927730397 -0600
+@@ -147,7 +147,7 @@
+ 					    pbits))
+ 	    return FALSE;
+ 	pScrPriv->layer[i].u.run.pixmap = pPixmap;
+-	REGION_INIT(pScreen, &pScrPriv->layer[i].u.run.region, &box, 0);
++	REGION_INIT2(pScreen, &pScrPriv->layer[i].u.run.region, &box, 0);
+     }
+     pScreen->devPrivate = pScrPriv->layer[0].u.run.pixmap;
+     return TRUE;
+Index: xorg-server-1.7.99.2/glx/glxdri2.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/glx/glxdri2.c	2012-01-10 19:22:49.027529676 -0600
++++ xorg-server-1.7.99.2/glx/glxdri2.c	2012-01-10 19:23:32.686731325 -0600
+@@ -126,7 +126,7 @@
+     box.y1 = private->height - y - h;
+     box.x2 = x + w;
+     box.y2 = private->height - y;
+-    REGION_INIT(drawable->pDraw->pScreen, &region, &box, 0);
++    REGION_INIT2(drawable->pDraw->pScreen, &region, &box, 0);
+ 
+     DRI2CopyRegion(drawable->pDraw, &region,
+ 		   DRI2BufferFrontLeft, DRI2BufferBackLeft);
+@@ -154,7 +154,7 @@
+     box.y1 = 0;
+     box.x2 = private->width;
+     box.y2 = private->height;
+-    REGION_INIT(drawable->pDraw->pScreen, &region, &box, 0);
++    REGION_INIT2(drawable->pDraw->pScreen, &region, &box, 0);
+ 
+     DRI2CopyRegion(drawable->pDraw, &region,
+ 		   DRI2BufferFakeFrontLeft, DRI2BufferFrontLeft);
+@@ -171,7 +171,7 @@
+     box.y1 = 0;
+     box.x2 = private->width;
+     box.y2 = private->height;
+-    REGION_INIT(drawable->pDraw->pScreen, &region, &box, 0);
++    REGION_INIT2(drawable->pDraw->pScreen, &region, &box, 0);
+ 
+     DRI2CopyRegion(drawable->pDraw, &region,
+ 		   DRI2BufferFrontLeft, DRI2BufferFakeFrontLeft);
+Index: xorg-server-1.7.99.2/hw/xfree86/common/xf86Helper.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/common/xf86Helper.c	2012-01-10 19:30:12.336705520 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/common/xf86Helper.c	2012-01-10 19:32:03.116939624 -0600
+@@ -1107,8 +1107,8 @@
+ 	box.y1 = 0;
+ 	box.x2 = pScreen->width;
+ 	box.y2 = pScreen->height;
+-	REGION_INIT (pScreen, &pWin->winSize, &box, 1);
+-	REGION_INIT (pScreen, &pWin->borderSize, &box, 1);
++	REGION_INIT2 (pScreen, &pWin->winSize, &box, 1);
++	REGION_INIT2 (pScreen, &pWin->borderSize, &box, 1);
+ 	if (WasViewable)
+ 	    REGION_RESET(pScreen, &pWin->borderClip, &box);
+ 	pWin->drawable.width = pScreen->width;
+Index: xorg-server-1.7.99.2/hw/xfree86/common/xf86fbman.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/common/xf86fbman.c	2012-01-10 19:29:29.268021709 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/common/xf86fbman.c	2012-01-10 19:31:36.426770740 -0600
+@@ -536,7 +536,7 @@
+ 	   (resize->box.x2 == OrigArea.x2))
+ 		return TRUE;
+ 
+-	REGION_INIT(pScreen, &FreedReg, &OrigArea, 1); 
++	REGION_INIT2(pScreen, &FreedReg, &OrigArea, 1); 
+ 	REGION_INIT(pScreen, &NewReg, &(resize->box), 1); 
+ 	REGION_SUBTRACT(pScreen, &FreedReg, &FreedReg, &NewReg);
+ 	REGION_UNION(pScreen, offman->FreeBoxes, offman->FreeBoxes, &FreedReg);
+@@ -551,7 +551,7 @@
+ 
+    /* otherwise we remove the old region */
+ 
+-   REGION_INIT(pScreen, &FreedReg, &OrigArea, 1); 
++   REGION_INIT2(pScreen, &FreedReg, &OrigArea, 1); 
+    REGION_UNION(pScreen, offman->FreeBoxes, offman->FreeBoxes, &FreedReg);
+   
+    /* remove the old link */
+@@ -1206,7 +1206,7 @@
+    if (FullBox->y2 < FullBox->y1) return FALSE;
+    if (FullBox->x2 < FullBox->x1) return FALSE;
+ 
+-   REGION_INIT(pScreen, &ScreenRegion, &ScreenBox, 1); 
++   REGION_INIT2(pScreen, &ScreenRegion, &ScreenBox, 1); 
+    REGION_INIT(pScreen, &FullRegion, FullBox, 1); 
+ 
+    REGION_SUBTRACT(pScreen, &FullRegion, &FullRegion, &ScreenRegion);
+Index: xorg-server-1.7.99.2/hw/xfree86/common/xf86xv.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/common/xf86xv.c	2012-01-10 19:32:53.867575211 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/common/xf86xv.c	2012-01-10 19:34:41.106734114 -0600
+@@ -711,7 +711,7 @@
+   WinBox.y2 = WinBox.y1 + portPriv->drw_h;
+ 
+   /* clip to the window composite clip */
+-  REGION_INIT(pScreen, &WinRegion, &WinBox, 1);
++  REGION_INIT2(pScreen, &WinRegion, &WinBox, 1);
+   REGION_NULL(pScreen, &ClipRegion);
+   REGION_INTERSECT(pScreen, &ClipRegion, &WinRegion, portPriv->pCompositeClip);
+ 
+@@ -776,7 +776,7 @@
+   WinBox.y2 = WinBox.y1 + portPriv->drw_h;
+ 
+   /* clip to the window composite clip */
+-  REGION_INIT(pScreen, &WinRegion, &WinBox, 1);
++  REGION_INIT2(pScreen, &WinRegion, &WinBox, 1);
+   REGION_NULL(pScreen, &ClipRegion);
+   REGION_INTERSECT(pScreen, &ClipRegion, &WinRegion, portPriv->pCompositeClip);
+ 
+@@ -790,7 +790,7 @@
+      VPBox.x2 = portPriv->pScrn->frameX1 + 1;
+      VPBox.y2 = portPriv->pScrn->frameY1 + 1;
+ 
+-     REGION_INIT(pScreen, &VPReg, &VPBox, 1);
++     REGION_INIT2(pScreen, &VPReg, &VPBox, 1);
+      REGION_INTERSECT(pScreen, &ClipRegion, &ClipRegion, &VPReg);
+      REGION_UNINIT(pScreen, &VPReg);
+   }
+@@ -866,7 +866,7 @@
+   WinBox.y2 = WinBox.y1 + portPriv->drw_h;
+ 
+   /* clip to the window composite clip */
+-  REGION_INIT(pScreen, &WinRegion, &WinBox, 1);
++  REGION_INIT2(pScreen, &WinRegion, &WinBox, 1);
+   REGION_NULL(pScreen, &ClipRegion);
+   REGION_INTERSECT(pScreen, &ClipRegion, &WinRegion, portPriv->pCompositeClip);
+ 
+@@ -880,7 +880,7 @@
+      VPBox.x2 = portPriv->pScrn->frameX1 + 1;
+      VPBox.y2 = portPriv->pScrn->frameY1 + 1;
+ 
+-     REGION_INIT(pScreen, &VPReg, &VPBox, 1);
++     REGION_INIT2(pScreen, &VPReg, &VPBox, 1);
+      REGION_INTERSECT(pScreen, &ClipRegion, &ClipRegion, &VPReg);
+      REGION_UNINIT(pScreen, &VPReg);
+   }
+@@ -1423,7 +1423,7 @@
+   WinBox.x2 = WinBox.x1 + drw_w;
+   WinBox.y2 = WinBox.y1 + drw_h;
+ 
+-  REGION_INIT(pScreen, &WinRegion, &WinBox, 1);
++  REGION_INIT2(pScreen, &WinRegion, &WinBox, 1);
+   REGION_NULL(pScreen, &ClipRegion);
+   REGION_INTERSECT(pScreen, &ClipRegion, &WinRegion, pGC->pCompositeClip);
+ 
+@@ -1436,7 +1436,7 @@
+      VPBox.x2 = portPriv->pScrn->frameX1 + 1;
+      VPBox.y2 = portPriv->pScrn->frameY1 + 1;
+ 
+-     REGION_INIT(pScreen, &VPReg, &VPBox, 1);
++     REGION_INIT2(pScreen, &VPReg, &VPBox, 1);
+      REGION_INTERSECT(pScreen, &ClipRegion, &ClipRegion, &VPReg);
+      REGION_UNINIT(pScreen, &VPReg);
+   }
+@@ -1575,7 +1575,7 @@
+   WinBox.x2 = WinBox.x1 + drw_w;
+   WinBox.y2 = WinBox.y1 + drw_h;
+ 
+-  REGION_INIT(pScreen, &WinRegion, &WinBox, 1);
++  REGION_INIT2(pScreen, &WinRegion, &WinBox, 1);
+   REGION_NULL(pScreen, &ClipRegion);
+   REGION_INTERSECT(pScreen, &ClipRegion, &WinRegion, pGC->pCompositeClip);
+ 
+@@ -1723,7 +1723,7 @@
+   WinBox.x2 = WinBox.x1 + drw_w;
+   WinBox.y2 = WinBox.y1 + drw_h;
+ 
+-  REGION_INIT(pScreen, &WinRegion, &WinBox, 1);
++  REGION_INIT2(pScreen, &WinRegion, &WinBox, 1);
+   REGION_NULL(pScreen, &ClipRegion);
+   REGION_INTERSECT(pScreen, &ClipRegion, &WinRegion, pGC->pCompositeClip);
+ 
+@@ -1736,7 +1736,7 @@
+      VPBox.x2 = portPriv->pScrn->frameX1 + 1;
+      VPBox.y2 = portPriv->pScrn->frameY1 + 1;
+ 
+-     REGION_INIT(pScreen, &VPReg, &VPBox, 1);
++     REGION_INIT2(pScreen, &VPReg, &VPBox, 1);
+      REGION_INTERSECT(pScreen, &ClipRegion, &ClipRegion, &VPReg);
+      REGION_UNINIT(pScreen, &VPReg);
+   }
+Index: xorg-server-1.7.99.2/hw/xfree86/dri2/dri2.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/dri2/dri2.c	2012-01-10 21:16:09.657521437 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/dri2/dri2.c	2012-01-10 21:16:20.876960691 -0600
+@@ -283,7 +283,7 @@
+ 	box.y1 = 0;
+ 	box.x2 = pPriv->width;
+ 	box.y2 = pPriv->height;
+-	REGION_INIT(pDraw->pScreen, &region, &box, 0);
++	REGION_INIT2(pDraw->pScreen, &region, &box, 0);
+ 
+ 	DRI2CopyRegion(pDraw, &region, DRI2BufferFakeFrontLeft,
+ 		       DRI2BufferFrontLeft);
+Index: xorg-server-1.7.99.2/hw/xfree86/modes/xf86Crtc.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/modes/xf86Crtc.c	2012-01-10 20:06:07.747729534 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/modes/xf86Crtc.c	2012-01-10 20:06:25.306735060 -0600
+@@ -3123,7 +3123,7 @@
+ 						  &crtc_box);
+ 
+ 	if (crtc) {
+-	    REGION_INIT (pScreen, &crtc_region_local, &crtc_box, 1);
++	    REGION_INIT2 (pScreen, &crtc_region_local, &crtc_box, 1);
+ 	    crtc_region = &crtc_region_local;
+ 	    REGION_INTERSECT (pScreen, crtc_region, crtc_region, reg);
+ 	}
+Index: xorg-server-1.7.99.2/hw/xfree86/modes/xf86Rotate.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/modes/xf86Rotate.c	2012-01-10 20:06:52.906706867 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/modes/xf86Rotate.c	2012-01-10 20:07:09.076733051 -0600
+@@ -167,7 +167,7 @@
+     if (damage_box.y1 < 0) damage_box.y1 = 0;
+     if (damage_box.x2 > pScreen->width) damage_box.x2 = pScreen->width;
+     if (damage_box.y2 > pScreen->height) damage_box.y2 = pScreen->height;
+-    REGION_INIT (pScreen, &damage_region, &damage_box, 1);
++    REGION_INIT2 (pScreen, &damage_region, &damage_box, 1);
+     DamageRegionAppend (&(*pScreen->GetScreenPixmap)(pScreen)->drawable,
+ 			&damage_region);
+     REGION_UNINIT (pScreen, &damage_region);
+Index: xorg-server-1.7.99.2/hw/xfree86/xaa/xaaBitBlt.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/hw/xfree86/xaa/xaaBitBlt.c	2012-01-10 20:04:11.086727146 -0600
++++ xorg-server-1.7.99.2/hw/xfree86/xaa/xaaBitBlt.c	2012-01-10 20:05:00.747564540 -0600
+@@ -118,7 +118,7 @@
+ 	    fastExpose = 0;
+ 	}
+     } else {
+-	REGION_INIT(pGC->pScreen, &rgnDst, &fastBox, 1);
++	REGION_INIT2(pGC->pScreen, &rgnDst, &fastBox, 1);
+ 	REGION_INTERSECT(pGC->pScreen, &rgnDst, &rgnDst, prgnSrcClip);
+     }
+ 
+@@ -165,14 +165,14 @@
+ 	    if (fastBox.x1 >= fastBox.x2 || fastBox.y1 >= fastBox.y2) {
+ 		REGION_NULL(pGC->pScreen, &rgnDst);
+ 	    } else {
+-		REGION_INIT(pGC->pScreen, &rgnDst, &fastBox, 1);
++		REGION_INIT2(pGC->pScreen, &rgnDst, &fastBox, 1);
+ 	    }
+ 	} else {
+ 	    /* We must turn off fastClip now, since we must create
+ 	       a full blown region.  It is intersected with the
+ 	       composite clip below. */
+ 	    fastClip = 0;
+-	    REGION_INIT(pGC->pScreen, &rgnDst, &fastBox,1);
++	    REGION_INIT2(pGC->pScreen, &rgnDst, &fastBox,1);
+ 	}
+     } else {
+         REGION_TRANSLATE(pGC->pScreen, &rgnDst, -dx, -dy);
+Index: xorg-server-1.7.99.2/include/regionstr.h
+===================================================================
+--- xorg-server-1.7.99.2.orig/include/regionstr.h	2012-01-10 19:02:29.548029362 -0600
++++ xorg-server-1.7.99.2/include/regionstr.h	2012-01-10 19:02:38.466732886 -0600
+@@ -152,6 +152,11 @@
+     } \
+  }
+ 
++#define REGION_INIT2(_pScreen, _pReg, _rect, _size) \
++{ \
++    (_pReg)->extents = *(_rect); \
++    (_pReg)->data = (RegDataPtr)NULL; \
++}
+ 
+ #define REGION_UNINIT(_pScreen, _pReg) \
+ { \
+Index: xorg-server-1.7.99.2/mi/mibank.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/mi/mibank.c	2012-01-10 19:13:24.187649642 -0600
++++ xorg-server-1.7.99.2/mi/mibank.c	2012-01-10 19:13:52.156941273 -0600
+@@ -772,7 +772,7 @@
+         }
+         else
+         {
+-            REGION_INIT(pScreen, &rgnDst, &fastBox, 1);
++            REGION_INIT2(pScreen, &rgnDst, &fastBox, 1);
+             REGION_INTERSECT(pScreen, &rgnDst, &rgnDst, prgnSrcClip);
+             pBox = REGION_RECTS(&rgnDst);
+             nBox = REGION_NUM_RECTS(&rgnDst);
+Index: xorg-server-1.7.99.2/mi/micopy.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/mi/micopy.c	2012-01-10 19:12:55.427823858 -0600
++++ xorg-server-1.7.99.2/mi/micopy.c	2012-01-10 19:13:43.617564166 -0600
+@@ -315,7 +315,7 @@
+ 	box.y1 = box_y1;
+ 	box.x2 = box_x2;
+ 	box.y2 = box_y2;
+-	REGION_INIT(pGC->pScreen, &rgnDst, &box, 1);
++	REGION_INIT2(pGC->pScreen, &rgnDst, &box, 1);
+     }
+     
+     /* Clip against complex source if needed */
+Index: xorg-server-1.7.99.2/mi/miexpose.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/mi/miexpose.c	2012-01-10 19:14:32.367860019 -0600
++++ xorg-server-1.7.99.2/mi/miexpose.c	2012-01-10 19:15:04.996733972 -0600
+@@ -206,7 +206,7 @@
+ 	box.x2 = pSrcDrawable->width;
+ 	box.y2 = pSrcDrawable->height;
+ 	prgnSrcClip = &rgnSrcRec;
+-	REGION_INIT(pscr, prgnSrcClip, &box, 1);
++	REGION_INIT2(pscr, prgnSrcClip, &box, 1);
+ 	pSrcWin = NULL;
+     }
+ 
+@@ -239,11 +239,11 @@
+ 	box.x2 = pDstDrawable->width;
+ 	box.y2 = pDstDrawable->height;
+ 	prgnDstClip = &rgnDstRec;
+-	REGION_INIT(pscr, prgnDstClip, &box, 1);
++	REGION_INIT2(pscr, prgnDstClip, &box, 1);
+     }
+ 
+     /* drawable-relative source region */
+-    REGION_INIT(pscr, &rgnExposed, &srcBox, 1);
++    REGION_INIT2(pscr, &rgnExposed, &srcBox, 1);
+ 
+     /* now get the hidden parts of the source box*/
+     REGION_SUBTRACT(pscr, &rgnExposed, &rgnExposed, prgnSrcClip);
+@@ -491,7 +491,7 @@
+ 	    box = *REGION_EXTENTS( pWin->drawable.pScreen, exposures);
+ 	    if (exposures == prgn) {
+ 		exposures = &expRec;
+-		REGION_INIT( pWin->drawable.pScreen, exposures, &box, 1);
++		REGION_INIT2( pWin->drawable.pScreen, exposures, &box, 1);
+ 		REGION_RESET( pWin->drawable.pScreen, prgn, &box);
+ 	    } else {
+ 		REGION_RESET( pWin->drawable.pScreen, exposures, &box);
+Index: xorg-server-1.7.99.2/mi/mioverlay.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/mi/mioverlay.c	2012-01-10 19:16:09.686730991 -0600
++++ xorg-server-1.7.99.2/mi/mioverlay.c	2012-01-10 19:16:32.496733671 -0600
+@@ -209,8 +209,8 @@
+ 		fullBox.y1 = 0;
+ 		fullBox.x2 = pScreen->width;
+ 		fullBox.y2 = pScreen->height;
+-		REGION_INIT(pScreen, &(pTree->borderClip), &fullBox, 1);
+-		REGION_INIT(pScreen, &(pTree->clipList), &fullBox, 1);
++		REGION_INIT2(pScreen, &(pTree->borderClip), &fullBox, 1);
++		REGION_INIT2(pScreen, &(pTree->clipList), &fullBox, 1);
+ 	    }
+ 	} else xfree(pTree);
+     }
+@@ -1027,7 +1027,7 @@
+ 	    box = *REGION_EXTENTS(pScreen, exposures);
+ 	    if (exposures == prgn) {
+ 		exposures = &expRec;
+-		REGION_INIT(pScreen, exposures, &box, 1);
++		REGION_INIT2(pScreen, exposures, &box, 1);
+ 		REGION_RESET(pScreen, prgn, &box);
+ 	    } else {
+ 		REGION_RESET(pScreen, exposures, &box);
+@@ -1672,7 +1672,7 @@
+     box.x1 = x1; box.x2 = x2;
+     box.y1 = y1; box.y2 = y2;
+ 
+-    REGION_INIT(pScreen, &reg, &box, 1);
++    REGION_INIT2(pScreen, &reg, &box, 1);
+ 
+     REGION_INTERSECT(pScreen, &reg, &reg, clipList);
+     if (generateExposures)
+Index: xorg-server-1.7.99.2/mi/miwindow.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/mi/miwindow.c	2012-01-10 19:17:07.617526248 -0600
++++ xorg-server-1.7.99.2/mi/miwindow.c	2012-01-10 19:17:17.267563248 -0600
+@@ -111,7 +111,7 @@
+     box.y2 = y2;
+ 
+     pScreen = pWin->drawable.pScreen;
+-    REGION_INIT(pScreen, &reg, &box, 1);
++    REGION_INIT2(pScreen, &reg, &box, 1);
+ 
+     REGION_INTERSECT(pScreen, &reg, &reg, &pWin->clipList);
+     if (generateExposures)
+Index: xorg-server-1.7.99.2/miext/damage/damage.c
+===================================================================
+--- xorg-server-1.7.99.2.orig/miext/damage/damage.c	2012-01-10 19:19:39.626736500 -0600
++++ xorg-server-1.7.99.2/miext/damage/damage.c	2012-01-10 19:21:06.396941292 -0600
+@@ -324,7 +324,7 @@
+ 		box.y1 = draw_y;
+ 		box.x2 = draw_x + pDamage->pDrawable->width;
+ 		box.y2 = draw_y + pDamage->pDrawable->height;
+-		REGION_INIT(pScreen, &pixClip, &box, 1);
++		REGION_INIT2(pScreen, &pixClip, &box, 1);
+ 		REGION_INTERSECT (pScreen, pDamageRegion, pRegion, &pixClip);
+ 		REGION_UNINIT(pScreen, &pixClip);
+ 	    }
+@@ -2085,7 +2085,7 @@
+ 	    box.y1 = pDrawable->y;
+ 	    box.x2 = pDrawable->x + pDrawable->width;
+ 	    box.y2 = pDrawable->y + pDrawable->height;
+-	    REGION_INIT (pDrawable->pScreen, &pixmapClip, &box, 1);
++	    REGION_INIT2 (pDrawable->pScreen, &pixmapClip, &box, 1);
+ 	    pClip = &pixmapClip;
+ 	}
+ 	REGION_TRANSLATE (pDrawable->pScreen, &pDamage->damage, pDrawable->x, pDrawable->y);
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
index 0faee5e..9ee9c97 100644
--- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
@@ -1,4 +1,4 @@
-PR = "r4"
+PR = "r5"
 
 PROTO_DEPS += "xf86driproto dri2proto"
 
@@ -6,7 +6,9 @@ DEPENDS += "font-util"
 
 SRC_URI += "file://nodolt.patch \
             file://crosscompile.patch \
-	    file://libdrm-poulsbo.patch"
+	    file://libdrm-poulsbo.patch \
+	    file://werror-address-fix.patch \
+	    file://ptr-to-int-cast-fix.patch"
 
 # Misc build failure for master HEAD
 SRC_URI += "file://fix_open_max_preprocessor_error.patch"
-- 
1.7.0.4




