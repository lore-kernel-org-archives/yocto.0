Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E95EDC47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 22:38:48 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.11081.1709159922363482870
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 14:38:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=mFU0DUDY;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-412bcb76703so11285e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 14:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1709159920; x=1709764720; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LeFyWLQTGjR+rJJz6Fny/V0OM0Vh8mVHCVHATCCvi7Q=;
        b=mFU0DUDY+Im5C4dwDaskii7yYKFx3flvKZHGUQOHbYeq8aijDCk2qNJETaYskkVo8O
         bvX5soG3g2ge7y1UVPXQdDRcpCtM5isJsA8nqEnlj03Pu82+s1pidBK2XFegJjHOdigK
         fziToAub8oqRSQvZXc6RhmwJrRcc39vRcB2kSmoDlkHLQcpQZ+GQoFP0QOeUKlR0omzL
         Y9qXNH7HRe+ymzisuHRWSZEfUDPZ0QXdlTUo4LF/0bLKWTGdvpNci0g9YUuhbQKAMuEh
         zcBzPRxoJQyfUYMpkgoA/wpc5+k1ku65vNiYMy3B84IEcDYUMFdioAO09m6ADSA80va0
         A8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709159920; x=1709764720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LeFyWLQTGjR+rJJz6Fny/V0OM0Vh8mVHCVHATCCvi7Q=;
        b=IKX1KLKhDdqNsm5jIbDwqyCstQVrGWllX9qiVDL9YJ+z18ZVYzmwmk1GFvCK4HEQRD
         R8BcNaH61C3v+iGUww2DS+y2MWl0iiLkpvWw8RqFWG7qLGFJM/pED927/O1zemIRYmDL
         ra7kwcE6+0JPAlYevHB4yWN+aXptZBybQWtNVQDtA7cMxp3N2kbjlFsydg0jBeaxJW4o
         v1Few0XenNz7DNl5UMrXNV+tJvHZcjoeXk9vgyrSOvyu8n5j0zi/Nsr3dTGsrFrX2yGU
         I1ZFnRCqcE5YjExpOm8EljH+SmVtvgULTYULWT+Cc4mbb+VLK6XP2LCuEts6LcjYqDOr
         u4sQ==
X-Gm-Message-State: AOJu0Yz2J1BODpvHKLPVnewn6AdhMqtPCvzl0vLDHd0t51sQBlHYyTQR
	T+OX4Euhv4XL0EnMUxhZdpBdtqMUzpXbtQY0ejls7ERrAwTCmseEILjs+cRGlMP+Hnoxu9SI1Q/
	KS14=
X-Google-Smtp-Source: AGHT+IGsoAqBQvTQlvlQD2qXhJywDBupXTgip4jLm8sIxrBZ/uWuhiLoP0foDYW5Uz4MnIwNmwHKVA==
X-Received: by 2002:a05:600c:1c15:b0:412:a470:7dba with SMTP id j21-20020a05600c1c1500b00412a4707dbamr437781wms.27.1709159919891;
        Wed, 28 Feb 2024 14:38:39 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id ay21-20020a5d6f15000000b0033cf095b9a2sm16606647wrb.78.2024.02.28.14.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 14:38:39 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: meta-oe-repro: exclude packages that failed previously
Date: Wed, 28 Feb 2024 23:38:17 +0100
Message-Id: <20240228223817.649287-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 22:38:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62644

Those are the non-reproducible packages from:
https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/13

Only somewhat innocuous non-repro are added to
OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES (compile date in package, TMPDIR
path, ...).
Actual non-repros were not excluded :
* drbd-utils: a udev rule is either enabled or disabled
* apache2: a index.html is present or not in the package
* toybox-inittab: a getty is started or not on serial ports

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 29 ++++++++++++++++++++++++++---
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index f9c67cb..01f82fc 100644
--- a/config.json
+++ b/config.json
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


