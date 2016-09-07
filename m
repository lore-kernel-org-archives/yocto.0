Return-Path: <zeenix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B600BE00EAE; Wed,  7 Sep 2016 07:54:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zeenix[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 661E0E00A4B
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 07:54:12 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id j136so1639027wmj.0
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2016 07:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=/hinqNDhqHR5ljDYpS6VeuTUEsRYG/UnscNmiF7v3Rs=;
	b=zTtPKUW/OpPzaD+7/lbaxOl5tZvOnGaXjuCgzzBTL9xrB0R/oRUKxWLv3AT6eMAVFL
	WN5QtLxfjxMsPiF/IJCkDwdGmfVOCGsjcr1FQC235XVlRiByMtIfGbpyAIvX1LVSkvCM
	6DK2jY2LCMSz3EpWDV1xYhQYVprYUKS2BJm3xpoJ6OS1mdJ0UtBhes7AV2RkFWDaLlhe
	cSi33/814JLgWP1A7nAqsE9WwNaDIXLk/cDiVvgA6mbep5FO4wPTL4Ap6TxXfwjwtque
	rxYJgHEe7assKxOFhCguCNoqEPcT+88u7sajNGTmX2sbFF848tfBMUttBzRJ++EzEXct
	r7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=/hinqNDhqHR5ljDYpS6VeuTUEsRYG/UnscNmiF7v3Rs=;
	b=HlQwPfct9/OtWbDnhQkT+1jSYzrTZtXLUn0bmo9DmGbgEAFEUdk9Dag3QUMeEfFDG/
	6BxyFIjlkMlGCnzad1MP+BtnK3L9qoYGZdobDLSPa7P8b+iRgfvx0yXV4nX8ESZc6yLL
	B9tXxxQ9TtudLcuqias/WxnVIdMUVDYk8e8X6AkzJ9T57ZocvZm351E5vZdts6ciRG7x
	EVG5t6hPSv98X2IeAhSD3D8gQjaHsDHb4JcUpCfHKB9js1mVm+ZZAxxo4ZX2wjDA84C3
	NVAtaGpq77EQuzr11jVLuZwuSuRJjOPfH4PHgSzF3VULDuigDeUuTsDqYW1zYYz4C/t9
	SWlQ==
X-Gm-Message-State: AE9vXwMICyuKBCIC2+A3PzzBsDO1jx1/OEfWEIeIbaN6PEcUGau3n5b3+W2+mnzWD64j2w==
X-Received: by 10.28.215.81 with SMTP id o78mr4198217wmg.42.1473260050818;
	Wed, 07 Sep 2016 07:54:10 -0700 (PDT)
Received: from zeelaptop.office.pelagicore.net ([83.218.80.242])
	by smtp.gmail.com with ESMTPSA id
	ce6sm39305004wjc.27.2016.09.07.07.54.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Sep 2016 07:54:10 -0700 (PDT)
From: Zeeshan Ali <zeenix@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Sep 2016 16:54:07 +0200
Message-Id: <1473260047-22303-1-git-send-email-zeenix@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] Update Geoclue2
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
X-List-Received-Date: Wed, 07 Sep 2016 14:54:17 -0000

From: Zeeshan Ali <zeeshan.ali@pelagicore.com>

Also drop redundant and now unusable patch.
---
 .../geoclue/files/soup-session-fix.patch           | 30 --------------
 .../recipes-navigation/geoclue/geoclue_2.0.0.bb    | 33 ---------------
 .../recipes-navigation/geoclue/geoclue_2.4.4.bb    | 47 ++++++++++++++++++++++
 3 files changed, 47 insertions(+), 63 deletions(-)
 delete mode 100644 meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch
 delete mode 100644 meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb
 create mode 100644 meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb

diff --git a/meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch b/meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch
deleted file mode 100644
index 70fe3f5..0000000
--- a/meta-oe/recipes-navigation/geoclue/files/soup-session-fix.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-Upstream-Status: Upstream-Status: Inappropriate [poky 9.0 has older libsoup]
-
-Signed-off-by: Felipe F. Tonello <eu@felipetonello.com>
-
-diff --git a/src/gclue-ipclient.c b/src/gclue-ipclient.c
-index 09add30..1771d5c 100644
---- a/src/gclue-ipclient.c
-+++ b/src/gclue-ipclient.c
-@@ -83,7 +83,7 @@ gclue_ipclient_init (GClueIpclient *ipclient)
- {
-         ipclient->priv = G_TYPE_INSTANCE_GET_PRIVATE ((ipclient), GCLUE_TYPE_IPCLIENT, GClueIpclientPrivate);
- 
--        ipclient->priv->soup_session = soup_session_new ();
-+        ipclient->priv->soup_session = soup_session_sync_new ();
- }
- 
- /**
-diff --git a/src/geoip-server/geoip-update.c b/src/geoip-server/geoip-update.c
-index 6cce7b2..ef672ba 100644
---- a/src/geoip-server/geoip-update.c
-+++ b/src/geoip-server/geoip-update.c
-@@ -214,7 +214,7 @@ main (int argc, char **argv)
-                         path = GEOIP_DATABASE_PATH;
-         }
- 
--        session = soup_session_new ();
-+        session = soup_session_sync_new ();
- 
-         for (i = 0; i < G_N_ELEMENTS (db_info_map); i++) {
-                 SoupMessage *msg = NULL;
diff --git a/meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb b/meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb
deleted file mode 100644
index 90e8533..0000000
--- a/meta-oe/recipes-navigation/geoclue/geoclue_2.0.0.bb
+++ /dev/null
@@ -1,33 +0,0 @@
-SUMMARY = "The Geolocation Service"
-DESCRIPTION = "Geoclue is a D-Bus service that provides location information. \
-The primary goal of the Geoclue project is to make creating location-aware applications \
-as simple as possible, while the secondary goal is to ensure that no application \
-can access location information without explicit permission from user."
-LICENSE = "GPLv2.0+"
-SECTION = "console/network"
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=8114b83a0435d8136b47bd70111ce5cd"
-
-DEPENDS = "glib-2.0 dbus dbus-glib json-glib libsoup-2.4 intltool-native"
-
-inherit autotools pkgconfig gtk-doc
-
-SRC_URI = " \
-    http://www.freedesktop.org/software/geoclue/releases/2.0/geoclue-${PV}.tar.xz \
-    file://soup-session-fix.patch \
-"
-
-SRC_URI[md5sum] = "401ff99d530b177c62afacef0a33efd9"
-SRC_URI[sha256sum] = "4a82f184e55a163d86e0ad69bbe1bba9960bb5094220fe1f01350bceda8c67a1"
-
-PACKAGECONFIG[geoip] = "--enable-geoip-server,--disable-geoip-server,geoip"
-
-EXTRA_OECONF += " \
-    --with-dbus-service-user=root \
-    --with-dbus-sys-dir=${sysconfdir}/dbus-1/system.d \
-"
-
-FILES_${PN} += " \
-    ${datadir}/dbus-1/system-services/org.freedesktop.GeoClue2.service \
-    ${datadir}/geoclue-2.0/geoclue-interface.xml \
-"
diff --git a/meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb b/meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb
new file mode 100644
index 0000000..64f0546
--- /dev/null
+++ b/meta-oe/recipes-navigation/geoclue/geoclue_2.4.4.bb
@@ -0,0 +1,47 @@
+SUMMARY = "The Geolocation Service"
+DESCRIPTION = "Geoclue is a D-Bus service that provides location information. \
+The primary goal of the Geoclue project is to make creating location-aware applications \
+as simple as possible, while the secondary goal is to ensure that no application \
+can access location information without explicit permission from user."
+LICENSE = "GPLv2.0+"
+SECTION = "console/network"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=8114b83a0435d8136b47bd70111ce5cd"
+
+DEPENDS = "glib-2.0 dbus json-glib libsoup-2.4 intltool-native"
+
+inherit autotools pkgconfig gtk-doc
+
+SRC_URI = " \
+	http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-${PV}.tar.xz \
+"
+
+SRC_URI[md5sum] = "d2a5b05f4bad032673fe23afbce27926"
+SRC_URI[sha256sum] = "9c43fb9d0c12067ea64400500abb0640194947d4c2c55e38545afe5d9c5c315c"
+
+export BUILD_SYS
+export HOST_SYS
+export STAGING_INCDIR
+export STAGING_LIBDIR
+
+# Without this line, package is delcared a library and named libgeoclue*
+AUTO_LIBNAME_PKGS = ""
+
+PACKAGECONFIG ??= "3g modem-gps cdma nmea lib"
+PACKAGECONFIG[3g] = "--enable-3g-source,--disable-3g-source,modemmanager"
+PACKAGECONFIG[modem-gps] = "--enable-modem-gps-source,--disable-modem-gps-source,modemmanager"
+PACKAGECONFIG[cdma] = "--enable-cdma-source,--disable-cdma-source,modemmanager"
+PACKAGECONFIG[nmea] = "--enable-nmea-source,--disable-nmea-source,avahi"
+PACKAGECONFIG[lib] = "--enable-libgeoclue,--disable-libgeoclue,gobject-introspection"
+
+EXTRA_OECONF += " \
+    --with-dbus-service-user=root \
+    --with-dbus-sys-dir=${sysconfdir}/dbus-1/system.d \
+    --enable-demo-agent=no \
+"
+
+FILES_${PN} += " \
+    ${datadir}/dbus-1/system-services/org.freedesktop.GeoClue2.service \
+    ${datadir}/dbus-1/interfaces/org.freedesktop.GeoClue2.xml \
+    ${prefix}/libexec \
+"
-- 
2.7.4


