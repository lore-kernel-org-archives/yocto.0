Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web10.16904.1606472213184674303
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Nov 2020 02:16:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H/Udqlca;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id d17so4311041ion.4
        for <yocto@lists.yoctoproject.org>; Fri, 27 Nov 2020 02:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NpQqUJbF8Jj6LFwckNicVFvVMfk9H1JCDY9wAl2j3DE=;
        b=H/UdqlcaNpwIFvCHGu1pwWZj0oXzqvkiRMT2pXtv+AycZVcvNAjhCtabQFFHe7u+Tu
         c5MaCBp1trZGVWTyUsSb00kb0S4ur7biXmqiw8wCFboo4lNRHZ7BnIQ+mBGfhdnG4rui
         /9CLULFfh3CxKJkJ0G0c/qlBLNMrV007L+A64QW+fgNnpcS9ueloq+1VsyewHcXI/o3i
         xyd/5FM9cjUMwKnL1d92KCskGgCDzf3iJnWrDA1ijT7w7HPtXH/Wbk2a3GQfw3LoPYae
         uoc1KpDwjQHm0BbD6S9Ms2cxcV0KMKKPdEOKo8yJrQBJA6QBJJX3YvhGGi2qj6+BTO1p
         juUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NpQqUJbF8Jj6LFwckNicVFvVMfk9H1JCDY9wAl2j3DE=;
        b=FHBe4O2k1UNGqE6I9tqrSZqiGhYl7laALYxssj4/3PgIaZ3HaSsRUBOHXcX0wG615o
         Jiay7r2Mnpbdw4A8W1G3rRd/5HZg+T3isuBRepM2idfN9EEi12Vvo7MRJ8t4M1xfw6xs
         JOeLZgsGf3ENFtMIJh/9RNzVep6WiDA6ItGtok6Af5vxx7P5gOvfolGGEaR18Jlu0D29
         VTQmOk8fcxII94Fb21Qwim7Go2LQULtKj8iWKVXTJTPlHA19f1zE59xtCMXsX7qqnqu7
         yoToGkebb/fqgNIu+ipugX3EKmebPaZjr8iHhILWF8wNDe6XuLgdRXoyzNODnfnpL+tA
         E+IA==
X-Gm-Message-State: AOAM531kK3ZoNpyr8m8NIJ8/WGZO8WQRDOkOLfFTlYoS3805Bi7sj0GT
	BRYPj3oGv3EKZs1yGvv0bpGoseqH2Eo=
X-Google-Smtp-Source: ABdhPJzieX2/6YdDUWUbVSPTB2+e8Lkm/wMRYOzXGZ7A2yDKMreTRIILSdHQSXHieY1EPg9DNJqjFw==
X-Received: by 2002:a6b:6c01:: with SMTP id a1mr5573514ioh.31.1606472212202;
        Fri, 27 Nov 2020 02:16:52 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3.suse ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id o195sm4975066ila.38.2020.11.27.02.16.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Nov 2020 02:16:51 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi][PATCH] userland: add knob for ALL_APPS
Date: Fri, 27 Nov 2020 05:16:37 -0500
Message-Id: <20201127101637.25274-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.28.0.497.g54e85e7af1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The userland sources include a bunch of sample applications. Add an "allapps"
PACKAGECONFIG to allow the user to build the additional optional applications.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ...cations-remove-non-existent-projects.patch | 30 +++++++++++++++++++
 ...ptionally-build-wayland-specific-app.patch | 28 +++++++++++++++++
 recipes-graphics/userland/userland_git.bb     |  4 +++
 3 files changed, 62 insertions(+)
 create mode 100644 recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch
 create mode 100644 recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch

diff --git a/recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch b/recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch
new file mode 100644
index 0000000..595eefb
--- /dev/null
+++ b/recipes-graphics/userland/files/0022-all-host_applications-remove-non-existent-projects.patch
@@ -0,0 +1,30 @@
+From 451e8458e45926e4e1c0433864ac4cf8b05d792b Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Fri, 27 Nov 2020 03:12:26 -0500
+Subject: [PATCH] all host_applications: remove non-existent projects
+
+The ALL_APPS symbol will optionally build an additional set of projects,
+however, several of them don't exist anymore. Remove them from the list of
+ALL_APPS.
+
+Upstream-status: submitted [https://github.com/raspberrypi/userland/pull/661]
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ host_applications/linux/CMakeLists.txt | 4 ----
+ 1 file changed, 4 deletions(-)
+
+diff --git a/host_applications/linux/CMakeLists.txt b/host_applications/linux/CMakeLists.txt
+index 928b637..554ae46 100644
+--- a/host_applications/linux/CMakeLists.txt
++++ b/host_applications/linux/CMakeLists.txt
+@@ -14,10 +14,6 @@ add_subdirectory(apps/dtoverlay)
+ add_subdirectory(apps/dtmerge)
+ 
+ if(ALL_APPS)
+- add_subdirectory(apps/vcdbg)
+- add_subdirectory(libs/elftoolchain)
+- # add_subdirectory(apps/smct)
+- add_subdirectory(apps/edid_parser)
+  add_subdirectory(apps/hello_pi)
+ endif()
+ 
diff --git a/recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch b/recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch
new file mode 100644
index 0000000..642ee86
--- /dev/null
+++ b/recipes-graphics/userland/files/0023-hello_pi-optionally-build-wayland-specific-app.patch
@@ -0,0 +1,28 @@
+From 5f4324a0008c2e8e1f511432f98bf85c9fffd35c Mon Sep 17 00:00:00 2001
+From: Trevor Woerner <twoerner@gmail.com>
+Date: Fri, 27 Nov 2020 03:18:50 -0500
+Subject: [PATCH] hello_pi: optionally build wayland-specific app
+
+Only build the wayland-specific hello_pi app when building for wayland.
+
+Upstream-status: inappropriate [the wayland example is not part of upstream]
+Signed-off-by: Trevor Woerner <twoerner@gmail.com>
+---
+ host_applications/linux/apps/hello_pi/CMakeLists.txt | 4 +++-
+ 1 file changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/host_applications/linux/apps/hello_pi/CMakeLists.txt b/host_applications/linux/apps/hello_pi/CMakeLists.txt
+index 2849fad..7de3265 100644
+--- a/host_applications/linux/apps/hello_pi/CMakeLists.txt
++++ b/host_applications/linux/apps/hello_pi/CMakeLists.txt
+@@ -25,7 +25,9 @@ add_subdirectory(hello_encode)
+ add_subdirectory(hello_jpeg)
+ add_subdirectory(hello_videocube)
+ add_subdirectory(hello_teapot)
+-add_subdirectory(hello_wayland)
++if (BUILD_WAYLAND)
++    add_subdirectory(hello_wayland)
++endif()
+ 
+ if(BUILD_FONT)
+ set(VGFONT_SRCS libs/vgfont/font.c libs/vgfont/vgft.c libs/vgfont/graphics.c)
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 1d9dc1e..32aa4a5 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -42,6 +42,8 @@ SRC_URI = "\
     file://0019-libfdt-Undefine-__wordsize-if-already-defined.patch \
     file://0020-openmaxil-add-pkg-config-file.patch \
     file://0021-cmake-Disable-format-overflow-warning-as-error.patch \
+    file://0022-all-host_applications-remove-non-existent-projects.patch \
+    file://0023-hello_pi-optionally-build-wayland-specific-app.patch \
 "
 
 SRC_URI_remove_toolchain-clang = "file://0021-cmake-Disable-format-overflow-warning-as-error.patch"
@@ -52,8 +54,10 @@ inherit cmake pkgconfig
 
 ASNEEDED = ""
 
+ALLAPPS = "${@bb.utils.contains('PACKAGECONFIG', 'allapps', '-DALL_APPS=true', '', d)}"
 EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
                  -DVMCS_INSTALL_PREFIX=${exec_prefix} \
+                 ${ALLAPPS} \
 "
 
 EXTRA_OECMAKE_append_aarch64 = " -DARM64=ON "
-- 
2.28.0.497.g54e85e7af1

