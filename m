Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.9952.1585918376521209642
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 05:52:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TkAilzuh;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: joe.macdonald@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id c23so3476487pgj.3
        for <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2020 05:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=p+nwrSjhOxWIsIk0cWW/frgM7vnA+/eM3v06IX+qqkM=;
        b=TkAilzuhzH1YzsG7T7H85bRNnfn18x1NbephYEbSX5TNPektU9CBCvjTE4hox3OA0G
         xFI8kEq/NO4XImF288DLapvmS3h3mF5D7M0mSAMFP5WFf9KZB4R+Gyjfyw6oe8TBj2A+
         5P/v4xXrqCKCdlI8IbvB4oTZX+3BZLDpJ4dZ9AWQKiSM2+B7T4nl6bM6g490PrDkCFpe
         Dp9JVR+O2LOCO2MuF5HErZXGaEiv/7e/cxjv7jwjWwz+LTVUOyIarCkL3sm/jti1B3Bg
         HsIO0zbKZhgnzBe+jWMh6d+IIFzYuFc0nqh1Zz9gg8PXKRJOBft3rhbKaRwXtURimFo7
         ebLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=p+nwrSjhOxWIsIk0cWW/frgM7vnA+/eM3v06IX+qqkM=;
        b=FtnqEkUJf3ezB9oOxWnOYOBygWu41YmKrIbdBw3wB4tMcTK5QsXNcMd+vDAn9rz1r7
         084ZhPlAwTota5IlkEdS84n/8JjvNsGU7GUUNpCuwMtQM1PsFvOuak6JEgwjZHzdkZOP
         Adm4buzrbK1KmU/mchkydJYNCIJll5iyxLDZ2YbZtIIVfpPEdNR8pYZ+2MHxaTC6bAtj
         PX3T4K/W44XxeQ8TIo4dnzTBlOOG6qHmytK1aoGqCTLyMAaLWifapGtblRYIp89ZNGBG
         t7oZ4r6fMkBQI+pJdb6xckm6koiAicppxd+EqEsrqNtpgP/LUwuI/9YCnmIq7Y6ZpUoB
         uiBQ==
X-Gm-Message-State: AGi0PuZ0KAB5eUgzR1VCoJgC0evqRZq58ier78UZX7rBYGAMTRo83J65
	DIPKILxwpBzNYrkofaEMKjNSNeK+Sxo=
X-Google-Smtp-Source: APiQypKE/07EFewdJNrn0Pd8XiXU6fUL6LQwj2XqeBOMLOdVRSUDIe8YKg/w7QyYjloDE1idUQdHkg==
X-Received: by 2002:a63:6f88:: with SMTP id k130mr7769271pgc.194.1585918375381;
        Fri, 03 Apr 2020 05:52:55 -0700 (PDT)
Return-Path: <joe.macdonald@gmail.com>
Received: from nightwinge.world.mentorg.com (nat-wv.mentorg.com. [192.94.38.34])
        by smtp.gmail.com with ESMTPSA id s61sm6007724pjd.33.2020.04.03.05.52.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 05:52:54 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: "Joe MacDonald" <joe_macdonald@mentor.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-selinux][PATCH] clean up getVar() usage
Date: Fri,  3 Apr 2020 08:52:51 -0400
Message-Id: <20200403125251.35877-1-joe_macdonald@mentor.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

83eac4de updated the usage of getVar() in classes/selinux.bbclass to
leave out the default expand parameter. This is consistent with the
usage in the core layers.

Bring all other calls to getVar() in the layer into alignment with this
approach.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 recipes-core/busybox/busybox_selinux.inc        | 8 ++++----
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 recipes-security/selinux/libselinux-python.inc  | 2 +-
 recipes-security/selinux/libselinux.inc         | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
index cc83b01..6e491ce 100644
--- a/recipes-core/busybox/busybox_selinux.inc
+++ b/recipes-core/busybox/busybox_selinux.inc
@@ -8,9 +8,9 @@ python create_sh_wrapper_reset_alternative_vars () {
     # We need to load the full set of busybox provides from the /etc/busybox.links
     # Use this to see the update-alternatives with the right information
 
-    dvar = d.getVar('D', True)
-    pn = d.getVar('PN', True)
-    base_bindir = d.getVar('base_bindir', True)
+    dvar = d.getVar('D')
+    pn = d.getVar('PN')
+    base_bindir = d.getVar('base_bindir')
 
     def create_sh_alternative_vars(links, target, mode):
         import shutil
@@ -20,7 +20,7 @@ python create_sh_wrapper_reset_alternative_vars () {
         os.fchmod(fwp.fileno(), mode)
         fwp.close()
         # Install the sh wrappers and alternatives reset to link to them
-        wpdir = os.path.join(d.getVar('libdir', True), pn)
+        wpdir = os.path.join(d.getVar('libdir'), pn)
         wpdir_dest = '%s%s' % (dvar, wpdir)
         if not os.path.exists(wpdir_dest):
             os.makedirs(wpdir_dest)
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 2083a37..1d9ca93 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -117,7 +117,7 @@ python __anonymous () {
 
     # make sure DEFAULT_ENFORCING is something sane
     if not re.match('^(enforcing|permissive|disabled)$',
-                    d.getVar('DEFAULT_ENFORCING', True),
+                    d.getVar('DEFAULT_ENFORCING'),
                     flags=0):
         d.setVar('DEFAULT_ENFORCING', 'permissive')
 }
diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-security/selinux/libselinux-python.inc
index 24407e8..6a64473 100644
--- a/recipes-security/selinux/libselinux-python.inc
+++ b/recipes-security/selinux/libselinux-python.inc
@@ -14,7 +14,7 @@ RDEPENDS_${PN} += "libselinux python3-core python3-shell"
 
 def get_policyconfigarch(d):
     import re
-    target = d.getVar('TARGET_ARCH', True)
+    target = d.getVar('TARGET_ARCH')
     p = re.compile('i.86')
     target = p.sub('i386',target)
     return "ARCH=%s" % (target)
diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 8d381de..fe8c087 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -12,7 +12,7 @@ DEPENDS_append_libc-musl = " fts"
 
 def get_policyconfigarch(d):
     import re
-    target = d.getVar('TARGET_ARCH', True)
+    target = d.getVar('TARGET_ARCH')
     p = re.compile('i.86')
     target = p.sub('i386',target)
     return "ARCH=%s" % (target)
-- 
2.20.1

