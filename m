Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
 by mx.groups.io with SMTP id smtpd.web12.4192.1578266314180774863
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ho3aNzqt;
 spf=pass (domain: gmail.com, ip: 209.85.210.196, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f196.google.com with SMTP id z16so26107536pfk.0
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ALsb6whyhcWZjBUVSCYh3qf6rNESAm2UG7LgVynFHqA=;
        b=Ho3aNzqt9jiXpmzoHFQU/DOgID2M+wX/cmUvjGvSvU8eBDptHRa5LFHBx5E5nVg57W
         /+9WhIRXHUGMXge50oQcudZh7HV2Vg2zmt0k2w3poegKB/I+TZrelD7JDpo04l81RZUf
         JjeWy6AgbGeIhL/C3MMLhpbAAVFK80JGumrwmHkmtF29mg7ZXiwN9k0p/uxJOJjt0D4q
         4RTM7rUrTF5V/LXemr2YX4ILoc84f1rQDTVdYcVFMxKa1ToraSV+TA33KWemWhmozkHK
         g0LuJZihbPlxM8tqUn+ZKQK7Pi8og3yT+ZU0lhdBJEZ7W8RGzdoZYBfN35SlwQKLGCEF
         kwWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ALsb6whyhcWZjBUVSCYh3qf6rNESAm2UG7LgVynFHqA=;
        b=HGrcmFBwyrJDwNBjhTlZ3k/WPkJk5iImofQkpqy+JQvW1VfIq8K15kEoi1bkWcY+Ez
         WTiXY/7QPyHhcrXrdleLWbaSymxH6Qz/ZqCehfVUiiAzfJa6J0bBhXuOZ5M9lbv0evid
         kiQFwrYRa27NjfZ4dD5brym5nSe7wBMbsawvxkP3VbY0SyUPWm8nbTKBK5uc70SYYDVF
         Sfb+khHkCdSXAns3paMmeF0yxkRKEZnObwOfLyRkMOV4xFksWuD47qpze+U7h6WF9tMs
         /DTNwc5E8PtcuCLp6m+O+MTxlWiz8p71N1jQ6zz4KX+nK0uY3BV0wzsvIgOlGas1qQiT
         /rXg==
X-Gm-Message-State: APjAAAXFV4RYX5oLSXtswzUzMutSXmP3JvR7wt0W6x8rDO+SdPrkViWn
	4GoAmNInz4VhDVVGSrSG0hOCUrSj
X-Google-Smtp-Source: APXvYqx7tv9iB745wOveaLxjSsWTy7rcUK/UEHmxMrkCJ9xaGPvCxr9sL7I7+yuGqnyADqdaFQ72Sg==
X-Received: by 2002:a62:197:: with SMTP id 145mr105373309pfb.188.1578266313341;
        Sun, 05 Jan 2020 15:18:33 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:32 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Norbert Kaminski <norbert.kaminski@3mdeb.com>
Subject: [meta-security][zeus][PATCH 2/9] meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb: add new udev dir to FILES and append EXTRA_OECONF
Date: Sun,  5 Jan 2020 15:18:23 -0800
Message-Id: <20200105231830.5281-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

From: Norbert Kaminski <norbert.kaminski@3mdeb.com>

The tpm2 tool freezes in a XEN distro. It stores the udev rules in
/lib/udev directory,
thus these changes append the FILES and EXTRA_OECONF to make tpm2 work
properly.

Signed-off-by: Norbert Kaminski <norbert.kaminski@3mdeb.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
index 3e77f71..dfdf734 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
@@ -17,6 +17,8 @@ S = "${WORKDIR}/git"
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
 
+EXTRA_OECONF += "--with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"
+
 do_configure_prepend () {
        ./bootstrap
 }
@@ -74,6 +76,6 @@ FILES_libtss2-dev = " \
     ${libdir}/libtss2*so"
 FILES_libtss2-staticdev = "${libdir}/libtss*a"
 
-FILES_${PN} = "${libdir}/udev"
+FILES_${PN} = "${libdir}/udev ${base_prefix}/lib/udev"
 
 RDEPENDS_libtss2 = "libgcrypt"
-- 
2.17.1

