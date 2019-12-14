Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com [209.85.215.196])
 by mx.groups.io with SMTP id smtpd.web12.10266.1576351431714751826
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Dec 2019 11:23:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDgFQ31F;
 spf=pass (domain: gmail.com, ip: 209.85.215.196, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f196.google.com with SMTP id b137so1260163pga.6
        for <yocto@lists.yoctoproject.org>; Sat, 14 Dec 2019 11:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=I+Wol+VJiWrM5hyNiRaxAtJsU3HO1KRzHZxBkzTBSJA=;
        b=TDgFQ31FvZ3aJs4xEJhaxvC7fk8zvFDmEOiFf/Q1Xz2QKw47Lzu0DoSJ3r71pDMMaV
         nG0eHOvIyfHwpzGaptC26eJ0UoY1L00+DXz9cZTLv1P6a9xGSWfjrNtxxXzhzxH31COl
         IqYvyKqjcufjN4E/w/nlFRYtHpPkQKact0GoCPSVhYf+ZURYixvEuTuA9VMMvW6kqqBn
         wFRTDQnoYKovXnEpbot+FxRuXQNckEJ6cRQV7/NR85BeG23sA8idX9H6LbjUA79ztpgq
         OdsgmrMZX9wmq8JQEvpQ8M/A+F3zjid0LpuiyDGOYv6wL2e98Trx9aV6voyWWtI0rdsg
         mrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=I+Wol+VJiWrM5hyNiRaxAtJsU3HO1KRzHZxBkzTBSJA=;
        b=lJMCPFP6+tXWTF4PRTPYpc+EBXRBDPfJM3GLmdluvnNEPDsf4Bg6FindZjF7PTYwJS
         E954UydT2K6/bzxv9LnVzNNrImJ1r38Bajp+cO+WYz5PBUS2LlyXdJh4Y4aeAi/TSKkZ
         r7fz0treK2vW4iFGCJ9/yugZhbUvpcpRzopvw9mNajXOQfm4tDoD+t+vI+zKjOvs8QXw
         w1eu31BGd01PhoEuOzlKVrrTFeWIvThQ7ri7dqif6x66XK1J4AOYjsmdo6FzxO8fdGEc
         4tp89D8rL1DJq96HxU4KZEYLXAtsT/BK9RBEqsnv9RF5cgMVCG+0OFKEP8Y4eKndohJL
         0p/w==
X-Gm-Message-State: APjAAAUUKGLF7QdApxCRMi3SmQ3qYE8We8AqsM+lCBmJDp9xDeO/KaOC
	wj1njz+lTGPYUhg3a+9qcONMn+angHc=
X-Google-Smtp-Source: APXvYqwwcwe04J0PTvwF7BEJeYWD0uqNPXG7Tny62h8T1Jux63+Zf0tq5O5Jr4lhmmz05NJldDHjlw==
X-Received: by 2002:aa7:8007:: with SMTP id j7mr6821800pfi.73.1576351430725;
        Sat, 14 Dec 2019 11:23:50 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:dd29:b8d2:59d6:df97])
        by smtp.gmail.com with ESMTPSA id u18sm15595370pgi.44.2019.12.14.11.23.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 14 Dec 2019 11:23:50 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [RFC][yocto-autobuilder-helper][PATCH] config.json: Add mete-security option
Date: Sat, 14 Dec 2019 11:23:48 -0800
Message-Id: <1576351428-15445-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 config.json | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/config.json b/config.json
index 5730f85..2a6aa9b 100644
--- a/config.json
+++ b/config.json
@@ -748,6 +748,21 @@
                 "DISTRO_FEATURES_append = ' virtualization'"
             ]
         },
+        "meta-security" : {
+            "NEEDREPOS" : ["poky", "meta-openembedded", "meta-security"],
+            "MACHINE" : "qemux86-64",
+            "BBTARGETS" : "world -k",
+            "ADDLAYER" : [
+                "${BUILDDIR}/../meta-openembedded/meta-oe",
+                "${BUILDDIR}/../meta-openembedded/meta-python",
+                "${BUILDDIR}/../meta-openembedded/meta-perl",
+                "${BUILDDIR}/../meta-openembedded/meta-networking",
+                "${BUILDDIR}/../meta-security"
+            ],
+            "extravars" : [
+                "DISTRO_FEATURES_append = ' systemd'"
+            ]
+        },
         "qa-extras" : {
             "MACHINE" : "qemux86-64",
             "step1" : {
-- 
2.7.4

