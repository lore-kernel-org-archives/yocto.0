Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6753.1574699984748195397
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 08:39:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kq4TII8y;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: kergoth@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9972CE00D4F; Mon, 25 Nov 2019 08:39:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E2A6E00D4F
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:39:42 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id t2so18940096wrr.1
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 08:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=z8eOHA2iwkqbfuNgrawJcCsV2ZySrFg0xF4YM8m/aPE=;
        b=Kq4TII8yvqn30W9E+f5VG2d+AEsHa74HtvIuHMf9O5mOmzZoQVXKYcOZTibHKUSGxO
         iSzQYOwrFou83lQVZzdSZCBJdZPKEQAEDkbpMJ62PFW5o0LyQqqquV9LcK+m/zUJo513
         AFoD+hktbL59HbQfJDGCOZPqMC9liUkGkxjrc2021jgvio1QQsgyX/MrafLvMeroMHm8
         faSNdF1RT56r6aslY6C81E8dWVGkc0Qu3MYEyJceSbyykXZT6kaPnqkFZ102ibvJ9wwg
         oCty1pMyyo0bZK7SN0laqwkBka9cfKACpF5sLwc15J00BFN3evdpddsnOTClZYXGgRz9
         Ky6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=z8eOHA2iwkqbfuNgrawJcCsV2ZySrFg0xF4YM8m/aPE=;
        b=efNZqTcWxeLaUe3u+0nbQUlqOsdh5hE6C76vNRoRe3L08XeJgM7RET60BIlqQR/Xh0
         sDi5iVHTnCRp6HyTNoRwUO+7nAhUVPSygvx05hyHzq0PgMd8sCFiYRr89X1jdkeeMpJT
         2Z64C0oKPrql3LobWogyTDS47/Ior62A2qLpyWBar/kyLaLv1uDhih0lP+C6shNdtF8I
         iUlypCpdAqzdibvrXKw5vgTFC+5OZyL1KTznIt7yujBk6Pxm+kDMU5HOTQTTC2PM8Gql
         e89JYOqPf8votFy3Y0iTjy+WC/EhzKJeAUCQiLBZzjE6HWSrrVEadpsAPa9IQ+69l72y
         XRpA==
X-Gm-Message-State: APjAAAVNqTzSb1QVIjY1YR7CiNuR8KfMRWPWQ3CuEp16Jv0gFnMpCMEr
	WgMzowQEqYziVWPu640pl7G10y3dAOU=
X-Google-Smtp-Source: APXvYqzTGhYqvTH09WkCmvEnNLNShguvhr/0nO0m9MRe8bSUzGmu0vaasy3qXLSV7nXp9mcmnENuYw==
X-Received: by 2002:adf:e301:: with SMTP id b1mr32060957wrj.280.1574699981005;
        Mon, 25 Nov 2019 08:39:41 -0800 (PST)
Received: from svr-pkl-eng-07.mgc.mentorg.com ([110.93.212.98])
        by smtp.gmail.com with ESMTPSA id m15sm11016123wrq.97.2019.11.25.08.39.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 25 Nov 2019 08:39:40 -0800 (PST)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-security][PATCH 2/3] clamav: add tmpfiles.d config
Date: Mon, 25 Nov 2019 21:41:11 +0500
Message-Id: <20191125164112.7063-2-kergoth@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20191125164112.7063-1-kergoth@gmail.com>
References: <20191125164112.7063-1-kergoth@gmail.com>

From: Christopher Larson <chris_larson@mentor.com>

This is needed to ensure freshclam's /var/log directory and file are
created when using systemd.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 recipes-security/clamav/clamav_0.99.4.bb      | 8 +++++++-
 recipes-security/clamav/files/tmpfiles.clamav | 3 +++
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/clamav/files/tmpfiles.clamav

diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
index 7f043377..a340b485 100644
--- a/recipes-security/clamav/clamav_0.99.4.bb
+++ b/recipes-security/clamav/clamav_0.99.4.bb
@@ -15,6 +15,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.99 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
+    file://tmpfiles.clamav \
     file://${BPN}.service \
     file://freshclam-native.conf \
     "
@@ -104,11 +105,15 @@ do_install_append_class-target () {
     install -m 666 ${S}/clamav_db/* ${D}/${localstatedir}/lib/clamav/.
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
         install -D -m 0644 ${WORKDIR}/clamav.service ${D}${systemd_unitdir}/system/clamav.service
+        install -d ${D}${sysconfdir}/tmpfiles.d
+        install -m 0644 ${WORKDIR}/tmpfiles.clamav ${D}${sysconfdir}/tmpfiles.d/clamav.conf
     fi
 }
 
 pkg_postinst_ontarget_${PN} () {
-    if [ -e /etc/init.d/populate-volatile.sh ] ; then
+    if command -v systemd-tmpfiles >/dev/null; then
+        systemd-tmpfiles --create ${sysconfdir}/tmpfiles.d/clamav.conf
+    elif [ -e ${sysconfdir}/init.d/populate-volatile.sh ]; then
         ${sysconfdir}/init.d/populate-volatile.sh update
     fi
     mkdir -p ${localstatedir}/lib/clamav
@@ -140,6 +145,7 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
 FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${sysconfdir}/freshclam.conf*  \
                         ${sysconfdir}/clamav ${sysconfdir}/default/volatiles \
+                        ${sysconfdir}/tmpfiles.d/*.conf \
                         ${localstatedir}/lib/clamav \
                         ${docdir}/${PN}-freshclam ${mandir}/man1/freshclam.* \
                         ${mandir}/man5/freshclam.conf.* \
diff --git a/recipes-security/clamav/files/tmpfiles.clamav b/recipes-security/clamav/files/tmpfiles.clamav
new file mode 100644
index 00000000..fd5adfee
--- /dev/null
+++ b/recipes-security/clamav/files/tmpfiles.clamav
@@ -0,0 +1,3 @@
+#Type Path        Mode UID  GID  Age Argument
+d /var/log/clamav 0755 clamav clamav -
+f /var/log/clamav/freshclam.log 0644 clamav clamav -
-- 
2.11.1

