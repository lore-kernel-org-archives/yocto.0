Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web08.3621.1627403099555806447
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 09:24:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=U4L5YBp7;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id mz5-20020a17090b3785b0290176ecf64922so5096280pjb.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 09:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+4gFRhKOXyszQKh4OQeuOpGA7km50P7DiMqm4yLjTTQ=;
        b=U4L5YBp7NV9feyFxkb4b4dSWh19IIRQDSThQPoP7ECCM9tXv+jEzUVWN8ObGwfuS4f
         1XOqHezKpVSua9302zk4ni0Gz0kMs+eyELvtL7Qy5+TLDqczZfDUSf600q8w0iGHA9Iz
         s1D9YUq7SIA7DQZwu7oNxg8yrRkpVm688fOw9mTweuEtb9sEpZeCd6Tx5JUrkCbp58zW
         p+taWcMSPx0J7VptBFc2yoDS5g1vy8OHkeV5xNskOogBdrH6M+Kfunh2lQj2/BtGbVDC
         jiDSXzJ4iS47XQTm+iiJ5VZr4LUHaAv2Uo6zxoEGY8lLfiwNf04fpfk85egfKkxPd2TJ
         K9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+4gFRhKOXyszQKh4OQeuOpGA7km50P7DiMqm4yLjTTQ=;
        b=W8IWgFi4CzyxmlTZ2ZlwuA5bI2Ku8qHX3PfEa5XUxlDTn7vdUpe0GRRb+xPE8QI34f
         ZC9i7px400R8KlUCdRno5/JmRcamyr1Ec2GpBLYcf27UJosWmmffZx9s/+5164oxzMBD
         Rb0NXO++riUcEkfPqSjFNKNeMNewqX9iadRmin4MsO77kabnuJx5XD+fFlz/NndonBWS
         Xftg53UDOqOX4fxbxSpsXyUElryyjvEkVFEFpFkVAFdPns7k8R7/yqLTUfYy/b7qvLry
         eEuzQAq6U+M7kHcN9ajZ7u4r/VG+sZE/GZ0q2boUTYl9yZ+wnwFk9G+HISsxSyP595k0
         y/eg==
X-Gm-Message-State: AOAM5320Tf+JOsnsVX7xnaLZZwXlfcdKEBrkdIrAwLpHWipGIa9mAxIT
	Q40bi5mly48LcNPIy0oH6+CNngzIX6yvmA==
X-Google-Smtp-Source: ABdhPJwaQfRZsYvMKV2BjZrJyein2HrZhuI9KYr7l5fwLYzVsw4vQStJQey67+i4dqNNF2JRHtlK6g==
X-Received: by 2002:a17:90a:b013:: with SMTP id x19mr23427804pjq.35.1627403098880;
        Tue, 27 Jul 2021 09:24:58 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:cbf5:d7b8:4de2:e344])
        by smtp.gmail.com with ESMTPSA id 201sm4581335pgd.37.2021.07.27.09.24.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 09:24:58 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] clamav: fix branch name and update
Date: Tue, 27 Jul 2021 09:24:55 -0700
Message-Id: <20210727162455.2497379-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210727162455.2497379-1-akuster808@gmail.com>
References: <20210727162455.2497379-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

They dropped the dev branch for rel. Update to tip.
Refresh patches

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb              | 6 +++---
 recipes-scanners/clamav/files/fix_systemd_socket.patch | 4 ++--
 recipes-scanners/clamav/files/headers_fixup.patch      | 8 ++++----
 recipes-scanners/clamav/files/oe_cmake_fixup.patch     | 2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index 4f20309..5759ddd 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -8,10 +8,10 @@ DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c li
  
 LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b273d5902896f7bbe17"
 
-# May 15th
-SRCREV = "fe96de86bb90c489aa509ee9135f776b7a2a7eb4"
+# July 27th
+SRCREV = "c389dfa4c3af92b006ada4f7595bbc3e6df3f356"
 
-SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=dev/0.104 \
+SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.104 \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
diff --git a/recipes-scanners/clamav/files/fix_systemd_socket.patch b/recipes-scanners/clamav/files/fix_systemd_socket.patch
index 3e9abe2..3347770 100644
--- a/recipes-scanners/clamav/files/fix_systemd_socket.patch
+++ b/recipes-scanners/clamav/files/fix_systemd_socket.patch
@@ -12,9 +12,9 @@ Index: git/clamd/CMakeLists.txt
 ===================================================================
 --- git.orig/clamd/CMakeLists.txt
 +++ git/clamd/CMakeLists.txt
-@@ -54,4 +54,10 @@ if(SYSTEMD_FOUND)
+@@ -60,4 +60,10 @@ if(SYSTEMD_FOUND)
      install(
-         FILES ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.service
+         FILES ${CMAKE_CURRENT_BINARY_DIR}/clamav-daemon.socket
          DESTINATION ${SYSTEMD_UNIT_DIR})
 +    configure_file(
 +        ${CMAKE_CURRENT_SOURCE_DIR}/clamav-daemon.socket.in
diff --git a/recipes-scanners/clamav/files/headers_fixup.patch b/recipes-scanners/clamav/files/headers_fixup.patch
index 9de0a26..369aa58 100644
--- a/recipes-scanners/clamav/files/headers_fixup.patch
+++ b/recipes-scanners/clamav/files/headers_fixup.patch
@@ -7,7 +7,7 @@ Index: git/CMakeLists.txt
 ===================================================================
 --- git.orig/CMakeLists.txt
 +++ git/CMakeLists.txt
-@@ -374,8 +373,6 @@ check_include_file("stdlib.h"
+@@ -443,8 +443,6 @@ check_include_file("stdlib.h"
  check_include_file("string.h"           HAVE_STRING_H)
  check_include_file("strings.h"          HAVE_STRINGS_H)
  check_include_file("sys/cdefs.h"        HAVE_SYS_CDEFS_H)
@@ -16,7 +16,7 @@ Index: git/CMakeLists.txt
  check_include_file("sys/mman.h"         HAVE_SYS_MMAN_H)
  check_include_file("sys/param.h"        HAVE_SYS_PARAM_H)
  check_include_file("sys/queue.h"        HAVE_SYS_QUEUE_H)
-@@ -410,8 +407,6 @@ endif()
+@@ -479,8 +477,6 @@ endif()
  
  # int-types variants
  check_include_file("inttypes.h"         HAVE_INTTYPES_H)
@@ -25,7 +25,7 @@ Index: git/CMakeLists.txt
  check_include_file("stdint.h"           HAVE_STDINT_H)
  
  # this hack required to silence warnings on systems with inttypes.h
-@@ -539,17 +528,11 @@ check_type_size("time_t"  SIZEOF_TIME_T)
+@@ -608,17 +604,11 @@ check_type_size("time_t"  SIZEOF_TIME_T)
  # Checks for library functions.
  include(CheckSymbolExists)
  check_symbol_exists(_Exit           "stdlib.h"      HAVE__EXIT)
@@ -44,7 +44,7 @@ Index: git/CMakeLists.txt
  check_symbol_exists(timegm          "time.h"        HAVE_TIMEGM)
  check_symbol_exists(vsnprintf       "stdio.h"       HAVE_VSNPRINTF)
  
-@@ -563,10 +546,9 @@ else()
+@@ -632,10 +622,9 @@ else()
      check_symbol_exists(fseeko          "stdio.h"       HAVE_FSEEKO)
      check_symbol_exists(getaddrinfo     "netdb.h"       HAVE_GETADDRINFO)
      check_symbol_exists(getpagesize     "unistd.h"      HAVE_GETPAGESIZE)
diff --git a/recipes-scanners/clamav/files/oe_cmake_fixup.patch b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
index b284915..c9c88b9 100644
--- a/recipes-scanners/clamav/files/oe_cmake_fixup.patch
+++ b/recipes-scanners/clamav/files/oe_cmake_fixup.patch
@@ -22,7 +22,7 @@ Index: git/CMakeLists.txt
  if(C_LINUX)
      if(CMAKE_COMPILER_IS_GNUCXX)
          # Set _GNU_SOURCE for O_LARGEFILE, O_CLOEXEC, O_DIRECTORY, O_NOFOLLOW, etc flags on older systems
-@@ -512,14 +506,8 @@ include(TestInline)
+@@ -581,14 +575,8 @@ include(TestInline)
  include(CheckFileOffsetBits)
  # Determine how to pack structs on this platform.
  include(CheckStructPacking)
-- 
2.25.1

