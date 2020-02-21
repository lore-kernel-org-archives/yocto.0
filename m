Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web10.12212.1582307682916301526
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 09:54:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BLwIALrn;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id 134so503476qkl.6
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 09:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8yn0WgQdFvKiyC0QLR7cXQBWdtxYv9KP24W02oJfeE0=;
        b=BLwIALrnDUc+WA9224t665odSCiv9bmx4iVWKefDJIfIxKF/8wJ+YNFEQP/iGW2jl0
         O0pH3RwMQoD6m/IEIxLRx/axWtR2K0QwaobpSHxI3WmNslseub+MEy2f3rCalO18qZEc
         k9DlsaMql9GBfQIZW03vfH0uKr9pPlq59rJUFHEw8D6/3Ced5KFnbHO3IvfC15+rTnrp
         NTTCtiJ0rau8NiGWTCc5k7oai25pppXYr2h8YuS/RJqOGhPxeWcPiBDVGthp+UwTzpaJ
         MGp1kPwtNeI1aghguMIiJSZWZ3ccvuc5Yzo+aNdb7gdQnhzITIDFQGQ3gO6EnIwTtK5p
         0wew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8yn0WgQdFvKiyC0QLR7cXQBWdtxYv9KP24W02oJfeE0=;
        b=V7K9UPHN2yxJeoD52bmzhlryzov37c79CmkOT3mlWTw3h91YuEsOgsLnKPQDyLK0gd
         GcZnox4KlXSkoFdXnWDNsg05+A97JzIB++aeSE24j/ycvhODyVbUSRpxDlsBOnWyxWrr
         vJ7u13JvMiazx79bHgDwOBiO8n1arMB2NABnAmLp9t88LbH321ualEOE/sA0O4+F7yVM
         XoV++21BzVpmG4OvL3IgAgbVEGOqYCe15mtZvFvMo8VpgOUITNxop6udkSYwAWJYJ8JC
         DFlexgYCJjIqpnz2fxQToCe0Vc6aqQTN+8G96Yw5VLruqLWVn56OKbfyhnC9VBgm8/Dg
         3YKw==
X-Gm-Message-State: APjAAAUxfcEEiDXbanQHLDMwU4T0JUFJwAQN3TXfS2o16XpgwdSDBF2j
	/Lj2NjYuv3rR3RjbnW96mj8=
X-Google-Smtp-Source: APXvYqwNG5oxbfXKmZFzwJ31MHfqigkG80j1T+HdIDGlUbkj9i3d8ZzUlkK3vYf8LwxUHUS6aXrXtw==
X-Received: by 2002:a05:620a:1435:: with SMTP id k21mr176358qkj.299.1582307682073;
        Fri, 21 Feb 2020 09:54:42 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com. [174.113.11.95])
        by smtp.gmail.com with ESMTPSA id c17sm1769770qko.134.2020.02.21.09.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 09:54:41 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 3/3] yocto-bsp: drop 4.19 bbappend
Date: Fri, 21 Feb 2020 12:54:37 -0500
Message-Id: <3a2f74758e3c60b3816b4e0bf3130565e1ea9dbd.1582307331.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1582307331.git.bruce.ashfield@gmail.com>
References: <cover.1582307331.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.4 is the new LTS kernel, so we drop the 4.19 bbappens as the 4.19
kernel will be removed.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_4.19.bbappend           | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
deleted file mode 100644
index 7b4bd2c4ee..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH_genericx86  = "v4.19/standard/base"
-KBRANCH_genericx86-64  = "v4.19/standard/base"
-KBRANCH_edgerouter = "v4.19/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v4.19/standard/beaglebone"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KMACHINE_beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine_genericx86    ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
-SRCREV_machine_genericx86-64 ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
-SRCREV_machine_edgerouter ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
-SRCREV_machine_beaglebone-yocto ?= "5664dc14399edcaad210bbeb6343d84561fb3ea8"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION_genericx86 = "4.19.34"
-LINUX_VERSION_genericx86-64 = "4.19.34"
-LINUX_VERSION_edgerouter = "4.19.34"
-LINUX_VERSION_beaglebone-yocto = "4.19.34"
-- 
2.19.1

