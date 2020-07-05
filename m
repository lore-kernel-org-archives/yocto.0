Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.42468.1593974457283857810
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 11:40:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uBKHqSw6;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id ch3so885596pjb.5
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 11:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=8sa0rlrhWVEJPF4wybCX6MB25pKmmWTbfSISEVv+GGA=;
        b=uBKHqSw6cNC89olfYrAJQfsRrxPNW8OgZBa/9jTPrWUbaqwL4Y6B9iyVlmZQjbggqe
         IZDKRFa6lrzq9Nszx43wa/wNzhTZzPW0hnx1Ybfb+swIOM5LxFvZFHm140qJnSMxbJPi
         JvXZuVPtaB8+mSoLqGbbJsAxHpHzoMIERmRz8xcHOFRERePBmuQXwnChv/twOBfo5ZLH
         44XfviQpIHa+gd3L3rolQjjtekJLr9H/Kn0juMuq5gvNqQeI/RcJoYTe0sqnmllz7Qys
         oAlhrnGwbWQXzvtJ47Q87JQ9pJ4QOlMH4XF7xJQsayzxY8aP3ybx3HNG0ic0bo9Ky2Hb
         zEwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=8sa0rlrhWVEJPF4wybCX6MB25pKmmWTbfSISEVv+GGA=;
        b=YkYBTRubI/3zT6dQ2C3oefZCAyO1jf7ymn2gF7MpvFmEM+OK43AbUtBcmUhFDE7jz8
         F5UC1ZXWoA7YhxIRMzFi5xzYLGMRjdDS/UBu8wI97a7i+8O5rW3lsZulTdmSDeZCXca9
         WJ0j5TqmHmyYKNmW5zg5N//ZEEWP1ewaMFsQYQpPfNJyV8DxJCydW5dKzVzuAtwHiKpH
         PC8jV5NFADIfvMqvk3PjACpczfE8WbEXcOXs756oXgqnOywAUo8K8lGBPSVlWss+2zhN
         UnUvp7y5CYVqGixeNQGRumqHzp6UPM2mW9xMfzurOIQThayAqD3dg+Jf4AEm0aJIXOw5
         gEyQ==
X-Gm-Message-State: AOAM531Pv3nG3jSRW6r9n+WaG2+LyGqmPnAk6y4CssNgoF/2iPrQBaTn
	anuJsO48K9B0WHmv4HjNhI6KTgijfek=
X-Google-Smtp-Source: ABdhPJyx3GIkztfa+TX9hkMgFKtXX6DkARtC7eSJVgXlmLnnuR8sopd4skZMggRfxYGkcU4ajjrzJQ==
X-Received: by 2002:a17:902:8c92:: with SMTP id t18mr38023258plo.196.1593974456447;
        Sun, 05 Jul 2020 11:40:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 125sm16388505pff.130.2020.07.05.11.40.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 11:40:56 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-core-security-ptest: update fail2ban ptest pkg name
Date: Sun,  5 Jul 2020 18:40:55 +0000
Message-Id: <20200705184055.20727-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security-ptest.bb            | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
index 83a9ed8..cf34ded 100644
--- a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
@@ -22,7 +22,7 @@ RDEPENDS_${PN} = " \
     python3-scapy-ptest \
     suricata-ptest \
     tripwire-ptest \
-    python-fail2ban-ptest \
+    python3-fail2ban-ptest \
     ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", "apparmor-ptest", "",d)} \
     ${@bb.utils.contains("DISTRO_FEATURES", "smack", "smack-ptest", "",d)} \
     "
-- 
2.17.1

