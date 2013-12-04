Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6190E00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 10:01:39 -0800 (PST)
Received: by mail-ee0-f43.google.com with SMTP id c13so2620560eek.30
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 10:01:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=KcVPWMvYLZcWXG570G/Y3aoEPsIG+kGd6udUQDbxf+g=;
	b=cqt28XX6Z/Hd4bN2GeA9G5cXtMyy2a729upaFJG977utVnV1MVxt7j5ivvHj2IZ+3q
	qpuTxXQZdczbPkbfRxQrZSabfn+SixWaOGvaj6pH4QbSaia6vfp2xtc3rBmh5GTXz4mz
	osbhfbPlTQbhSUv1qgLtPGDlZMnmsIHXlGjaISagBlQRc4yKajaYu0bDOl+MeMexSeWb
	JK0i+KMknIEjO7FUK4ePN7XN3BfOwvmI9fRMrtrtEkhf187I+6xUs37nR/lRooGjOapC
	NVIxtOHzXk/jP0pOteeEfPlCd872IK7TKR3kWAWx8jR9T8yucsELC/PEZEDsKFvKB9s9
	GObA==
X-Gm-Message-State: ALoCoQl4km3+XoB8QvH9GG0tWezIMy8RJQ1WDSwpsZZATJzeCn73q8dMkV4COopU3V+gM4Ad+KfM
X-Received: by 10.14.182.199 with SMTP id o47mr76785208eem.7.1386180098537;
	Wed, 04 Dec 2013 10:01:38 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id e43sm85965913eep.7.2013.12.04.10.01.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Dec 2013 10:01:37 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  4 Dec 2013 20:01:27 +0200
Message-Id: <1386180088-27454-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH 1/2] libav: Add v9.10
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
X-List-Received-Date: Wed, 04 Dec 2013 18:01:41 -0000

This version includes libavresample needed for packages like xbmc.
To use this version add:
PREFERRED_VERSION_libav = "9.10".

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 meta/recipes-multimedia/libav/libav_9.10.bb | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 meta/recipes-multimedia/libav/libav_9.10.bb

diff --git a/meta/recipes-multimedia/libav/libav_9.10.bb b/meta/recipes-multimedia/libav/libav_9.10.bb
new file mode 100644
index 0000000..a76cc9c
--- /dev/null
+++ b/meta/recipes-multimedia/libav/libav_9.10.bb
@@ -0,0 +1,13 @@
+require libav.inc
+
+SRC_URI = "http://libav.org/releases/libav-9.10.tar.xz"
+
+SRC_URI[md5sum] = "4b49d1d8734815ca095bb0600d41c5cb"
+SRC_URI[sha256sum] = "83dbe640779da1c1e8d8836c99575f57f749d18407494ebca451578afee9300d"
+
+DEFAULT_PREFERENCE = "-1"
+
+LIC_FILES_CHKSUM = "file://COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://COPYING.LGPLv2.1;md5=bd7a443320af8c812e4c18d1b79df004 \
+                    file://COPYING.LGPLv3;md5=e6a600fd5e1d9cbde2d983680233ad02"
-- 
1.8.1.4


