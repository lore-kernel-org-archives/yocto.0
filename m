Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.29311.1592145475831613130
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Jun 2020 07:37:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kKjFWXPn;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id x207so6659043pfc.5
        for <yocto@lists.yoctoproject.org>; Sun, 14 Jun 2020 07:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=2+fMUz0MZTa0LWdOSXLYrzYk+UZ1dwQZ9odjpYC5Ij4=;
        b=kKjFWXPnTM+o/84TAru2wyMIFeiF+m8swa96gA6zIDrV90LhgLLNfzKWOxH+j27LrN
         sFWoaEpKg62kU93NWNaKXMclSAtrEF2c2zoo8L6kv2JZ31iKCmq6NsIOcl7omyXva4DR
         iySj/EP9gXnCI7BwcOBAXtTVks3Qg05y5j4HSQAJiu4CnX/cvbjtwgZPMe8SeRRCU1PN
         gV35QUYMnxusQqM3PAu1sWj7j6aKyCGwBS2qnzckCYzrM7y2iNWTBWHIMU3zjATQIva3
         CtOHwGutXczNZrG362KqbSMxQft8jva/YLOwoIS0ZXNfw1HGTM+IhPlitvmNrsj0TFPa
         rcGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=2+fMUz0MZTa0LWdOSXLYrzYk+UZ1dwQZ9odjpYC5Ij4=;
        b=Thjb/K6i1aqzoY3ysqfD2tyFVRfAl0MjTI7t4hNaNSJvKC/wpyiUATVQdw52MnucVB
         wl5Dpc1Hwry2PiymGiSzowq8+8LVw+xpxtYNnzCKe/I8rurZSdKKmdMoGJIyjUatwjG0
         5e2rZL8I6rIAyDvrIb7dBmjvVdqK1le3kFVrGYknD4lLkBuUHjtvV2k8EhJADbyGVL5c
         MtsJwSuZympja8MwjCB0UDmgo+cjgIgKxYlLFa1r3AFWHg92AjU7ZoOn/0XRfHyQZW3k
         wH0PzVPqTYxwwJzvay9Ssb44kSAkJOekxBEaV/pihGVuoyFzfHhz7G5W3DgKf8iHUGVQ
         Ok9A==
X-Gm-Message-State: AOAM533ZtHU3LL9eyQk3JbAEKgiXWwnay/lv03UspO1zMTQkYF/jKVUf
	ezgcK/GoEvQ5mfQwA2QnRGfxG4uB
X-Google-Smtp-Source: ABdhPJxfBpwgw6ZoHoWlO8MjtGBvtXPLQNGtp7EDYPBGoJgVC9OO4lsLCXxRKQ/s5KJKysnM8HfPYA==
X-Received: by 2002:a62:cec6:: with SMTP id y189mr19412732pfg.114.1592145475014;
        Sun, 14 Jun 2020 07:37:55 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:91d2:e8a2:8739:ccee])
        by smtp.gmail.com with ESMTPSA id w77sm1476119pff.126.2020.06.14.07.37.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2020 07:37:54 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-tcti-uefi: drop patch no longer needed
Date: Sun, 14 Jun 2020 07:37:53 -0700
Message-Id: <20200614143753.16104-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

drop tpm2-get-caps-fixed.patch, tss update negated the need for this
change.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/tpm2-get-caps-fixed.patch           | 23 -------------------
 .../tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb    |  4 ++--
 2 files changed, 2 insertions(+), 25 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch
deleted file mode 100644
index bc70913..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/files/tpm2-get-caps-fixed.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-Fix defined to match tpm2-tools 4.1.1
-
-Upstream-Status: Submitted https://github.com/tpm2-software/tpm2-tcti-uefi/pull/81
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/example/tpm2-get-caps-fixed.c
-===================================================================
---- git.orig/example/tpm2-get-caps-fixed.c
-+++ git/example/tpm2-get-caps-fixed.c
-@@ -140,11 +140,11 @@ dump_tpm_properties_fixed (TPMS_TAGGED_P
-             Print (L"TPM2_PT_INPUT_BUFFER:\n"
-                     "  value: 0x%X\n", value);
-             break;
--        case TPM2_PT_HR_TRANSIENT_MIN:
-+        case TPM2_PT_TPM2_HR_TRANSIENT_MIN:
-             Print (L"TPM2_PT_TPM2_HR_TRANSIENT_MIN:\n"
-                     "  value: 0x%X\n", value);
-             break;
--        case TPM2_PT_HR_PERSISTENT_MIN:
-+        case TPM2_PT_TPM2_HR_PERSISTENT_MIN:
-             Print (L"TPM2_PT_TPM2_HR_PERSISTENT_MIN:\n"
-                     "  value: 0x%X\n", value);
-             break;
diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 67b36b7..a67e3c3 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -7,9 +7,9 @@ DEPENDS = "libtss2-dev libtss2-mu-dev gnu-efi-native gnu-efi pkgconfig autoconf-
 SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git \
            file://configure_oe_fixup.patch \
            file://0001-configure.ac-stop-inserting-host-directories-into-co.patch \
-           file://tpm2-get-caps-fixed.patch \
            file://fix_header_file.patch \
-          "
+"
+
 SRCREV = "0241b08f069f0fdb3612f5c1b938144dbe9be811"
 
 S = "${WORKDIR}/git"
-- 
2.17.1

