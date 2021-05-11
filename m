Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1253.1620749450131518683
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=fITSdI3n;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 092D738C066A
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:50 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id y124-20020a1c32820000b029010c93864955so640071wmy.5
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G+CXYI911w0lyCgjqw9GHCWGM+XvG26CU/wJdwD2Asc=;
        b=fITSdI3n1o1saqa+kpFQmEbJufiwEMgLkiuWeq08VCZEwM1bYK7n/yOt53WrIIjzyV
         Nh9jfN4+VIRsiyye5OLny0ohQXP9Q5hSxjZUb0zJuCLe73K8eQvl5ifpW2z1L9eW7MyY
         z+bLGH4x/R0DRYt2iVOwBesPLeWtNzYt6VN6GusXggIxJDrmfdRYawh9NT4UWGZEjnm2
         iFHqcU+3GjJJsQTqfH3KlkZfZAe3F7d85cXtau4tf2bp3n/M4mt46BuU/Q1m06s+NGNP
         C3JGlZlKo7VoBfOFJGGFPEns7rnmY4o3guZaadXfskIKrS4tdSFW1LMk4cxffCkCpGJ9
         dm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G+CXYI911w0lyCgjqw9GHCWGM+XvG26CU/wJdwD2Asc=;
        b=IRAdBV9yrOtMldCCmAVE1PjSoTIW6QyR+AXbJLw9D883Qt9Prga58uAEgubWsJCPEz
         gZ7b8Cjst0mt/bt06ViCeyUGu2Aau0NZT1zyrlynywLgJwnv7+iLNe+FIsoso+96OjEL
         SPzanX9yQ//oU4KykxfP2mFFtOPNP+nYQByx8h32Fg94Ix7iXO7NBHTtM2dwQesw5Epe
         kn8fbJ2W5GjJzcgdWrpRY980ROAZOVM4RG5kUjz2oXz6LGGWwXl3sGb1DdEgPQPnr9kw
         eyg5kIv+DrIQOV9pGnWTog8dnzZYGFcH3ZeEB3j3Rp3HuU70IxRa2HtL8VTvozLb0mY0
         nxMg==
X-Gm-Message-State: AOAM530R25GvrzG3NTcXyTo5AaKpiFibPUQbe5hp8zUb8j09FJRCfqtV
	+/NNcTeiuXq2iBXyNYB2LD1yp84eGn3VlQ==
X-Google-Smtp-Source: ABdhPJwXAcTSFW8iHZfSgD0QAgJv+WgGGypqftR+wDgyuz/0vLX6VN0FFBw3JLeM6/PD2a3oohpa/Q==
X-Received: by 2002:a1c:5f0a:: with SMTP id t10mr6491951wmb.30.1620749448608;
        Tue, 11 May 2021 09:10:48 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:47 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 5/6] WIP Import rkwifibt-firmware from vendor's meta-rockchip
Date: Tue, 11 May 2021 18:10:17 +0200
Message-Id: <20210511161018.168172-6-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511161018.168172-1-yann@blade-group.com>
References: <20210511161018.168172-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

As far as the AP6356S in NanoPi-m4 is concerned, the included wifi firmwa=
re
is for Rockchip's kernel tree, but for Bluetooth firmware this seems to b=
e
the proper "upstream" package.

Changes from Rockchip's version:
- use /lib/firmware/brcm/, not /system/etc/firmware/
- include LICENSE.rockchip in package tree

The chip powers on:

 [    4.695193] Bluetooth: hci0: BCM: chip id 101
 [    4.696142] Bluetooth: hci0: BCM: features 0x2f
 [    4.697882] Bluetooth: hci0: BCM4354A2
 [    4.698345] Bluetooth: hci0: BCM4356A2 (001.003.015) build 0000
 [    4.701994] Bluetooth: hci0: BCM4356A2 'brcm/BCM4356A2.hcd' Patch
 [    5.464146] Bluetooth: hci0: BCM4356 37.4MHz AMPAK AP6356-0055
 [    5.464813] Bluetooth: hci0: BCM4356A2 (001.003.015) build 0266

It is able to pair with devices, but connect fails.
---
 .../rkwifibt-firmware/files/LICENSE.rockchip  |  41 +++++++
 .../rkwifibt-firmware/rkwifibt-firmware.bb    | 110 ++++++++++++++++++
 2 files changed, 151 insertions(+)
 create mode 100644 recipes-kernel/rkwifibt-firmware/files/LICENSE.rockch=
ip
 create mode 100644 recipes-kernel/rkwifibt-firmware/rkwifibt-firmware.bb

diff --git a/recipes-kernel/rkwifibt-firmware/files/LICENSE.rockchip b/re=
cipes-kernel/rkwifibt-firmware/files/LICENSE.rockchip
new file mode 100644
index 0000000..69b445b
--- /dev/null
+++ b/recipes-kernel/rkwifibt-firmware/files/LICENSE.rockchip
@@ -0,0 +1,41 @@
+Copyright (c) 2020, Rockchip Electronics Co.Ltd
+All rights reserved.
+
+Redistribution.  Redistribution and use in binary form, without
+modification, are permitted provided that the following conditions are
+met:
+
+* Redistributions must reproduce the above copyright notice and the
+  following disclaimer in the documentation and/or other materials
+  provided with the distribution.
+
+* Neither the name of Rockchip Electronics Co.Ltd, its products
+  nor the names of its suppliers may be used to endorse or promote produ=
cts
+  derived from this Software without specific prior written permission.
+
+* No reverse engineering, decompilation, or disassembly of this software
+  is permitted.
+
+Limited patent license. Rockchip Electronics Co.Ltd grants a world-wide,
+royalty-free, non-exclusive license under patents it now or hereafter
+owns or controls to make, have made, use, import, offer to sell and
+sell ("Utilize") this software, but solely to the extent that any
+such patent is necessary to Utilize the software alone, or in
+combination with an operating system licensed under an approved Open
+Source license as listed by the Open Source Initiative at
+http://opensource.org/licenses.  The patent license shall not apply to
+any other combinations which include this software.  No hardware per
+se is licensed hereunder.
+
+DISCLAIMER.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
+CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
+BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
+FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
+COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
+BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
+OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
+TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
+USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
+DAMAGE.
diff --git a/recipes-kernel/rkwifibt-firmware/rkwifibt-firmware.bb b/reci=
pes-kernel/rkwifibt-firmware/rkwifibt-firmware.bb
new file mode 100644
index 0000000..870177b
--- /dev/null
+++ b/recipes-kernel/rkwifibt-firmware/rkwifibt-firmware.bb
@@ -0,0 +1,110 @@
+# Copyright (C) 2019, Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SUMMARY =3D "Rockchip WIFI/BT firmware files"
+SECTION =3D "kernel"
+
+LICENSE =3D "LICENSE.rockchip"
+LIC_FILES_CHKSUM =3D "file://LICENSE.rockchip;md5=3Dd63890e209bf038f44e7=
08bbb13e4ed9"
+
+PV_append =3D "+git${SRCPV}"
+
+SRCREV =3D "af2cf8772078b0246ac805e7ed78a62cf8f21993"
+SRC_URI =3D " \
+  git://github.com/rockchip-linux/rkwifibt.git \
+  file://LICENSE.rockchip;subdir=3Dgit \
+"
+#SRC_URI =3D "git://github.com/JeffyCN/mirrors.git;branch=3Drkwifibt;"
+
+S =3D "${WORKDIR}/git"
+
+inherit allarch deploy
+
+do_install() {
+	install -d ${D}/lib/firmware/brcm/
+	install -m 0644 ${S}/firmware/broadcom/all/*/* \
+		-t ${D}/lib/firmware/brcm/
+	install -d ${D}/lib/firmware/rtlbt/
+	install -m 0644 ${S}/realtek/RTL*/* -t ${D}/lib/firmware/rtlbt/
+}
+
+PACKAGES =3D+ " \
+	${PN}-ap6181-wifi \
+	${PN}-ap6212a1-wifi \
+	${PN}-ap6212a1-bt \
+	${PN}-ap6236-wifi \
+	${PN}-ap6236-bt \
+	${PN}-ap6255-wifi \
+	${PN}-ap6255-bt \
+	${PN}-ap6354-wifi \
+	${PN}-ap6354-bt \
+	${PN}-ap6356-wifi \
+	${PN}-ap6356-bt \
+	${PN}-rtl8723ds-bt \
+"
+
+FILES_${PN}-ap6181-wifi =3D " \
+	lib/firmware/brcm/fw_bcm40181a2_apsta.bin \
+	lib/firmware/brcm/fw_bcm40181a2.bin \
+	lib/firmware/brcm/nvram_ap6181.txt \
+"
+
+FILES_${PN}-ap6212a1-wifi =3D " \
+	lib/firmware/brcm/fw_bcm43438a1_apsta.bin \
+	lib/firmware/brcm/fw_bcm43438a1.bin \
+	lib/firmware/brcm/nvram_ap6212a.txt \
+"
+FILES_${PN}-ap6212a1-bt =3D " \
+	lib/firmware/brcm/bcm43438a1.hcd \
+"
+
+FILES_${PN}-ap6236-wifi =3D " \
+	lib/firmware/brcm/fw_bcm43436b0_apsta.bin \
+	lib/firmware/brcm/fw_bcm43436b0.bin \
+	lib/firmware/brcm/nvram_ap6236.txt \
+"
+FILES_${PN}-ap6236-bt =3D " \
+	lib/firmware/brcm/BCM4343B0.hcd \
+"
+
+FILES_${PN}-ap6255-wifi =3D " \
+	lib/firmware/brcm/fw_bcm43455c0_ag.bin \
+	lib/firmware/brcm/nvram_ap6255.txt \
+"
+FILES_${PN}-ap6255-bt =3D " \
+	lib/firmware/brcm/BCM4345C0_ap.hcd \
+	lib/firmware/brcm/BCM4345C0.hcd \
+"
+
+FILES_${PN}-ap6354-wifi =3D " \
+	lib/firmware/brcm/fw_bcm4354a1_ag.bin \
+	lib/firmware/brcm/nvram_ap6354.txt \
+"
+FILES_${PN}-ap6354-bt =3D " \
+	lib/firmware/brcm/bcm4354a1.hcd \
+"
+
+FILES_${PN}-ap6356-wifi =3D " \
+	lib/firmware/brcm/fw_bcm4356a2_ag.bin \
+	lib/firmware/brcm/nvram_ap6356.txt \
+	lib/firmware/brcm/nvram_ap6356s.txt \
+"
+FILES_${PN}-ap6356-bt =3D " \
+	lib/firmware/brcm/BCM4356A2.hcd \
+"
+
+FILES_${PN}-rtl8723ds-bt =3D " \
+	lib/firmware/rtlbt/rtl8723d_config \
+	lib/firmware/rtlbt/rtl8723d_fw \
+"
+
+FILES_${PN} =3D "*"
+
+# Make it depend on all of the split-out packages.
+python () {
+    pn =3D d.getVar('PN')
+    firmware_pkgs =3D oe.utils.packages_filter_out_system(d)
+    d.appendVar('RDEPENDS_' + pn, ' ' + ' '.join(firmware_pkgs))
+}
+
+INSANE_SKIP_${PN} +=3D "arch"
--=20
2.30.2

