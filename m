Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 195A2C00140
	for <webhook@archiver.kernel.org>; Sun, 31 Jul 2022 05:49:49 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.10540.1659246586169844950
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=d9ysj+11;
 spf=pass (domain: gmail.com, ip: 209.85.214.177,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id y15so7824502plp.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5liFDrxM+N649QKbqwAkgliNUpXVIeFXf19v4pwEtEI=;
        b=d9ysj+116szpsmx29R/KaBNLS6GJFxRd7WeeEFpLguV1FZthsj5JORy+r7UjxEWf5W
         mcOuE/ay2lUZEtVCEj2OByGzD/By+qHmB2hLgOAyeAmFyIehOmaGTXbY7CebH1sZh3EI
         YSScO3Ud57rEEiXabMQOTxN9VvbH3PPjbcKtoW269WgKBGbO+5SVMnNFNhDZuvyDoIdE
         0fgaQmiI/uijdSwA+UoIHjTo8hirkMt5dgPnapwpHTVPKUSAod4ob8SHZQXWD9fnJxc8
         2iPvp9oadVgwFqAQ7L2gz51OpcaBk6zmyelrTmuKyFJ0r2l1/Hm9cBIYyTkzt17F/TG3
         7Lmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5liFDrxM+N649QKbqwAkgliNUpXVIeFXf19v4pwEtEI=;
        b=YmxuMAYltpW3NQlqkpHYPAF9smaJtmHddY70I5/QG1n6yJHLCI9fONzX04t4Tb0sDh
         ViYuOiZVLDDAhXk9nq/+58Gzhch/IQu5xRPjv3s1yr4XNLZjcsnSx7ppvo4KXCJq20Ff
         yZCm/h9vHqHghoNLpbz2E+Gw3Otsr7sdxz/WVSZeXepn0cW+bsJcHaEwF+6KS4swzj4y
         PdZ5NdP/63C0DFHRd6IQiKHt43Qnnfz+K0sCxPslkZC5wTaEY0wghRnJx3jU3UkLICjB
         UOJxo0O5FBiTT5swP0NVSsXAbx0bTj/5Gw41+GX03lIYV/uZlvt+cMAGmCFA+PBG7ApJ
         wtmw==
X-Gm-Message-State: ACgBeo3+B3YgisOvUuRBTLJTZUvj11gqYBJFMGb5OzvQixVzwLpG9NjM
	YITIR/RdSylVHowvXBE0t6OBMFsw0ug=
X-Google-Smtp-Source: 
 AA6agR4Hbm0kGLKR36F0r7RrOfivpZeVmDhNXezNPwFu0+Sfe4mDoA53bZyGQjMfyYkFQn3/iFAqKQ==
X-Received: by 2002:a17:90b:4f91:b0:1cd:3a73:3a5d with SMTP id
 qe17-20020a17090b4f9100b001cd3a733a5dmr12325271pjb.98.1659246585153;
        Sat, 30 Jul 2022 22:49:45 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 az13-20020a17090b028d00b001f30b5bb378sm6039202pjb.15.2022.07.30.22.49.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 22:49:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] swtpm: update to 0.7.3
Date: Sat, 30 Jul 2022 22:47:39 -0700
Message-Id: <20220731054739.2199164-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731054739.2199164-1-akuster808@gmail.com>
References: <20220731054739.2199164-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Jul 2022 05:49:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57706

drop musl patch.Fix another way

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/swtpm/files/ioctl_h.patch     | 22 -------------------
 .../swtpm/{swtpm_0.7.1.bb => swtpm_0.7.3.bb}  |  3 +--
 2 files changed, 1 insertion(+), 24 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/swtpm/files/ioctl_h.patch
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.7.1.bb => swtpm_0.7.3.bb} (95%)

diff --git a/meta-tpm/recipes-tpm/swtpm/files/ioctl_h.patch b/meta-tpm/recipes-tpm/swtpm/files/ioctl_h.patch
deleted file mode 100644
index d736bc6..0000000
--- a/meta-tpm/recipes-tpm/swtpm/files/ioctl_h.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-tpm_ioctl: fix musl for missing ioctl
-
-tpm_ioctl.c: In function 'ioctl_to_cmd':
-tpm_ioctl.c:86:26: error: '_IOC_NRSHIFT' undeclared (first use in this function)
-     return ((ioctlnum >> _IOC_NRSHIFT) & _IOC_NRMASK) + 1;
-
-
-Upstream-status:
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-Index: git/src/swtpm_ioctl/tpm_ioctl.c
-===================================================================
---- git.orig/src/swtpm_ioctl/tpm_ioctl.c
-+++ git/src/swtpm_ioctl/tpm_ioctl.c
-@@ -58,6 +58,7 @@
- #include <fcntl.h>
- #include <unistd.h>
- #include <sys/ioctl.h>
-+#include <asm/ioctl.h>
- #include <getopt.h>
- #include <sys/un.h>
- #include <sys/types.h>
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
similarity index 95%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
index 03899d8..55d83f9 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.3.bb
@@ -6,9 +6,8 @@ SECTION = "apps"
 # expect-native, socat-native, coreutils-native and net-tools-native are reportedly only required for the tests
 DEPENDS = "libtasn1 coreutils-native expect-native socat-native glib-2.0 net-tools-native libtpm json-glib"
 
-SRCREV = "92a7035f45d9b08aa7c6b8bd6fa4c6916ef07a9e"
+SRCREV = "f2268eebb0d1adf89bad83fa4cf91e37b4e3fa53"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.7-next;protocol=https \
-           file://ioctl_h.patch \
            "
 PE = "1"
 
-- 
2.25.1


