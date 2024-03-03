Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AACEC48BF6
	for <webhook@archiver.kernel.org>; Sun,  3 Mar 2024 23:10:45 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.85572.1709507444562362310
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Mar 2024 15:10:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=p7kMrrwh;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-412a9e9c776so28661075e9.0
        for <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 15:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1709507442; x=1710112242; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A4/Rq25mFNxVJdVdYCisI0zUK3SAmtXH/iFjtdFO+3I=;
        b=p7kMrrwh0sMkVIXsUntsZIQiyCPo+TpET1ZEnk8pIPncXePALGosbX31yDrUO0iKBp
         tmHuiupv6kXWaraJtsXfqDouhFH104qBor6r6vI1WYQj0+s8zRJnRv4MGqwybSJVkhoo
         wRWW42Gztco9Qt5UCd2iTax/5PKPKUs1WJIZfNvoxYmELcoaLnBg7Rd0ad2QM0ct7XRV
         em1zUHztb23JPPnfGhfjd72xwBLz9gHD7yzi3iTv011AljFmP9EKxYQ+5Fip85/tnWJc
         KYDZapvwGHVG88mqy7372AUgBre3gY7JbLrLn5yJErr7cbqA02wDGEYNsZRBbwv+w3Fv
         CCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709507442; x=1710112242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4/Rq25mFNxVJdVdYCisI0zUK3SAmtXH/iFjtdFO+3I=;
        b=C1yotI8J025sf3T3dDxNI98+l9ghH9UjlXPWy548WHp9AEoFqdkKbhL1PvnrfYUf2E
         3zrgYT4VocHU8lgM/sURZ5TB05Jw5jD/fw9tHbtbeIOIRUE1q0p9GQzCgTPs5xTJNxdz
         bVr66oCKAqVbyab3Fe9QrAzD6CfJllRzfucGVl48AjgiJ6KmlylM5laftzH4rgl5sDNJ
         0atDXGDffMGMXDjcu3bHxHld9XGAjr7/e5JIBkogGvB57fTw7x0aU6/AbcVyRwYvuSjj
         glMVyG5LJY5lkiRwY2iD371oUc2JBKfYNzjgAtn70YgasRG3cW/xQhtNbZCvNWmh0yYn
         mEEA==
X-Gm-Message-State: AOJu0YzTkDywihyvBvtqeDQBk0q0TWfYeE30TXQd1ZQAMWGrzoHZjYl3
	Zb3IIr2cVH+Jkxq0/zAdNHS3Y3Ls22G8Px4RDiWXNuCiulS1MQmykOJD7pe4fOtHmUlMIcs2TuJ
	ihH8qWQ==
X-Google-Smtp-Source: AGHT+IHmGtqaYoJplP8S9lrGURzFMUiWSWZxE8cd0Fk6/Misd6HHUMxIBG3lM586paf+gKqBUjFJeA==
X-Received: by 2002:a05:600c:1e10:b0:412:e520:fba3 with SMTP id ay16-20020a05600c1e1000b00412e520fba3mr192978wmb.14.1709507441797;
        Sun, 03 Mar 2024 15:10:41 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.numericable.fr ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b0040fd1629443sm13000496wmq.18.2024.03.03.15.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Mar 2024 15:10:41 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v2 1/2] config.json: meta-oe-repro: exclude packages that failed previously
Date: Mon,  4 Mar 2024 00:10:32 +0100
Message-Id: <20240303231033.733840-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Mar 2024 23:10:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62653

Those are the non-reproducible packages from:
https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/13
https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/14

Only somewhat innocuous non-repro are added to
OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES (compile date in package, TMPDIR
path, ...).
Actual non-repros were not excluded :
* drbd-utils: a udev rule is either enabled or disabled
* apache2: a index.html is present or not in the package
* toybox-inittab: a getty is started or not on serial ports

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>

---
v1->v2:
* Added non-reproducible packages from https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/14
---
 config.json | 33 ++++++++++++++++++++++++++++-----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/config.json b/config.json
index 0ef4d54..ece5422 100644
--- a/config.json
+++ b/config.json
@@ -324,7 +324,7 @@
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
-                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'xfsprogs-doc zfs zfs-dbg zfs-dev'"
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'e2tools-ptest xfsprogs-doc zfs zfs-dbg zfs-dev'"
                 ]
             },
             "step2" : {
@@ -345,7 +345,7 @@
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
-                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'geary geary-dbg gegl-dev gimp gimp-dbg gnome-terminal-src grilo-src gtk-vnc-src'"
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'geary geary-dbg gegl-dev gimp gimp-dbg gnome-terminal-src grilo-src gtk-vnc-src ibus'"
                 ]
             },
             "step3" : {
@@ -392,7 +392,15 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'blueman blueman-dbg blueman-src civetweb-dev dhcp-relay-staticdev ettercap-src fetchmail fetchmail-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'freediameter freediameter-src freeradius htpdate-doc keepalived keepalived-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'kernel-module-mdio-netlink-6.6.17-yocto-standard libbearssl-staticdev libfko3 libfko-client libfko-daemon'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'libfko-dbg libmosquitto1 libowfat-staticdev libruli-staticdev libsamba-util0 mdio-netlink-dbg mosquitto'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'mosquitto-dbg ncftp ncftp-dbg ncftp-src ndisc6-dbg ndisc6-misc ndisc6-ndisc6 ndisc6-rdisc6 ndisc6-rdnssd'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'ndisc6-rltraceroute6 netsniff-ng-doc ntpsec-src openl2tp openl2tp-dbg ot-br-posix ot-br-posix-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'postfix-cfg proftpd proftpd-dbg proftpd-dev rdist rdist-dbg samba-dbg tayga tayga-dbg wolfssl wolfssl-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'znc znc-doc'"
                 ]
             },
             "step6" : {
@@ -403,7 +411,21 @@
                 ],
                 "extravars" : [
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
-                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'"
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'boinc-client-dev cjson-ptest cpuid-doc crash crash-dbg crash-src dhrystone dhrystone-dbg dhrystone-dev'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'dhrystone-src directfb directfb-dbg doxygen-src editorconfig-core-c-dev etcd-cpp-apiv3-dev fbgrab-doc'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'fluentbit-src fvwm-dbg fvwm-doc fvwm-extra gcab-src gosu gosu-dbg gosu-dev gosu-staticdev gphoto2'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'gphoto2-dbg hddtemp-locale-de hdf5 hdf5-dbg hdf5-src hdf5-staticdev hplip hplip-dbg jpnevulator-doc'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'jsonrpc-dev kpatch-build kpatch-doc ldns libbotan-3-bin libbotan-3-dbg libbotan-3-dev libck-doc'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'libdbus-cxx-dev libforms libiio-src libjcat-dbg libjcat-ptest libthrift-c-glib-zlib-src libvncserver-dev'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'libwebsockets-testapps libwmf libyui-ncurses-dbg libyui-ncurses-dev lmbench-staticdev log4cpp lprng'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'lprng-dbg lshw lshw-locale-fr mariadb-dbg mariadb-server mariadb-src mce-test mime-support-doc minifi-cpp'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'minifi-cpp-dbg minifi-cpp-src mozjs-115-src mpv mpv-dbg nana nbench-byte nbench-byte-dbg nbench-byte-src'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'nspr-staticdev openocd openocd-dbg pcp pcp-dev pcp-doc pcp-src perfetto perfetto-dbg php-phar pidgin'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'pidgin-dbg pim435-staticdev postgresql-server-dev qcbor-staticdev sharutils sharutils-dbg smemstat-doc'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'soci-dev thin-provisioning-tools-dev vulkan-cts vulkan-cts-dbg waylandpp-dev yasm-src zlog-staticdev'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'zsh zsh-dbg zsh-src'"
+
                 ]
             },
             "step7" : {
@@ -435,7 +457,8 @@
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
                     "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'python3-frozenlist python3-frozenlist-dbg python3-kivy-src python3-pycocotools-src python3-pydantic-core'",
                     "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pyproj python3-pyproj-dbg python3-pyproj-src python3-pyzmq python3-yarl python3-yarl-dbg'",
-                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pandas-dbg python3-pandas-src python3-pandas'"
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pandas-dbg python3-pandas-src python3-pandas'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-evdev-src python3-pynacl-dbg python3-pynacl-src python3-pynacl'"
                 ]
             },
             "step9" : {
-- 
2.39.2


