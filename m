Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web08.902.1621545464416219370
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 14:17:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=CkJY56pv;
 spf=pass (domain: foundries.io, ip: 209.85.222.171, mailfrom: ricardo@foundries.io)
Received: by mail-qk1-f171.google.com with SMTP id c20so17758184qkm.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 14:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C6duTNCbuC84Qtik9/dEm+m4aoWVNo1lTTuhZYO8hYk=;
        b=CkJY56pvRTR5HK1AHR45EbVCrrb/A+AeZbEobQ+3XVbtuG1Zhs8nJg2Qq4uDTuTo/a
         GwYEmawkovvD/eWjhGWdwyc8fbgR+3qsl38AF/IgSw0sHVPZNd5/Ry4HsxFBRQCretX7
         vKlFt4Q3BtrwqSF4AeXOKPP842FNlhSylpSUUpg9c0jQf1L9b3Jkv4TP/qYdcvM86oKF
         MkSFwt2JB3nF+uLW4kARWpPPtJyTJRylt858PIfEs+ZQQqFQWuZqaJMd95I6uFDAgp2D
         8AnRouLer+KuCC7bkVufzCKVFsTDC9yNeYfkD72aecx3s8vvBeevhyltSBGjMJBZcFDE
         Ny3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=C6duTNCbuC84Qtik9/dEm+m4aoWVNo1lTTuhZYO8hYk=;
        b=qYyZUbhvkO9sN2gUh1/JIH3hjJSS1z+e8GH3X7WUSw5OGLFhEoIM+As5OugqkSzXYK
         GELyPQz3qh3AEFhXBJqJuTdYfnVWuAyDAfgF9m/1acO81vi4x6cQxK3DnCFVJMf4aLZs
         QCoqBy7BgzBWQ7rJ9Xt0uzaD4+jDDodWZjHiCMtgW/p3h6lO+vemB0eoJngxvrU4Mz5Z
         1XCYplx4z+Fbb6//Ob1e9WJRYLUhkkA6Qc6V6sny07nKHqxrmajHqB4uKvrN9IOFQDzY
         KnImrOCTP1wLi/N4odwG9jqP5rSX29lKqcqz36FBvxxW6ujCdehTBqdOIuFEy0vIUWLB
         h/Ow==
X-Gm-Message-State: AOAM531DbOXXCz17s+HZM8zaIyM+qVwA+Sfpx1TYqOkhsjDDxhJwypLI
	laT8/hfk4RROdfKZMjzamXHZ9F72J8G/
X-Google-Smtp-Source: ABdhPJxmYdhNa5bvLG+AYowdmGPfQvL4aGlgEFShQjlYSJ2dlasZ1S3sLF+k5FVL7OJZJiZZQMsXFw==
X-Received: by 2002:a37:9a47:: with SMTP id c68mr6182319qke.376.1621545463195;
        Thu, 20 May 2021 14:17:43 -0700 (PDT)
Return-Path: <ricardo@foundries.io>
Received: from localhost.localdomain ([2804:7f5:f480:e360:4a68:f82b:26aa:8c22])
        by smtp.gmail.com with ESMTPSA id t128sm2965941qkh.50.2021.05.20.14.17.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 14:17:42 -0700 (PDT)
From: "Ricardo Salveti" <ricardo@foundries.io>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-tss: fix usrmerge udev install path
Date: Thu, 20 May 2021 18:17:27 -0300
Message-Id: <20210520211727.3013079-1-ricardo@foundries.io>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update ${base_prefix}/lib to ${nonarch_base_libdir} to fix a package QA
issue when usrmerge is enabled in DISTRO_FEATURES.

QA Issue: tpm2-tss package is not obeying usrmerge distro feature. /lib
should be relocated to /usr. [usrmerge]

Signed-off-by: Ricardo Salveti <ricardo@foundries.io>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
index b2486e5..cc4f191 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.0.3.bb
@@ -17,7 +17,7 @@ PACKAGECONFIG ??= ""
 PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
 PACKAGECONFIG[fapi] = "--enable-fapi,--disable-fapi,json-c "
 
-EXTRA_OECONF += "--enable-static --with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"
+EXTRA_OECONF += "--enable-static --with-udevrulesdir=${nonarch_base_libdir}/udev/rules.d/"
 EXTRA_OECONF_remove = " --disable-static"
 
 
@@ -73,6 +73,6 @@ FILES_libtss2-dev = " \
     ${libdir}/libtss2*so"
 FILES_libtss2-staticdev = "${libdir}/libtss*a"
 
-FILES_${PN} = "${libdir}/udev ${base_prefix}/lib/udev"
+FILES_${PN} = "${libdir}/udev ${nonarch_base_libdir}/udev"
 
 RDEPENDS_libtss2 = "libgcrypt"
-- 
2.31.1

