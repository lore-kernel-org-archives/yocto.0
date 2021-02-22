Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.36051.1614006868445189727
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 07:14:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pIKcVgeT;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id d13so7934869plg.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 07:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=h8bDzl7Z8k6Wevca2TeKaUIomFYwQ8gYl8W3aJBNV+Q=;
        b=pIKcVgeTmYDh9JdFJDV3fSjtUBVneaW9gV0zlqXYfJCpApojzSodfDK4XStk4hTtzJ
         Jw7AgZSIfoJsfapN4gZzMBdW6ZoQ8Rx5+DCX5dKdkzfEqbJr/QVq4ubwKOSI/UuHJUj+
         8XVQ1zliW532moCoCNnUnfj2DGNAqHUpFWv16V7VZoF8FCJ0+R+mSXExNrctMIp7iD94
         ZY7nmA+K1RhVbhYKuutysJP6vBBb3LYXB1TbLn1nBczPwpJEo5TkxWKSaRXDKMUl3tXo
         5OFuzpM2Dio2XrC//I9s6YDccwzJnGzpxrdZhXBDowswfulx4P24lraUxKxXi1yY58H7
         LZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=h8bDzl7Z8k6Wevca2TeKaUIomFYwQ8gYl8W3aJBNV+Q=;
        b=WZHwtbdlEBoHalrYB/jP3U9TSKRIauFFCeQ5tv0QKbqOvPbMBSIov6cwW/lsEP+dRE
         Py88lCQpHveWi5dd2F5j0y/weHbwozA24libaMGgxh44f9G8pHAKOvPvC3OdKG3Vbyhl
         NwNqnTuoXoH6elwd2nHQbRAYpd68wD5pUGtdi9LXQpp1ku/+DYYXSUCJTA95My6kdCuK
         BWGvRtY4Z2F0G1X/VxUpcwiCm2IAj0vUlF7EDhHDvzwndZV+bUkY9HIt5IHDTTYRiIuI
         GT1NtmPF5jgPWom/d1VGkyw0aomn4JUGd5Vk+Ljf68GE+4h/aKd5TFN9g4Oral7LsOZl
         Rt8w==
X-Gm-Message-State: AOAM532WqPkvZOvybNzS8aBejYSgzo0BVgSXz4OMKM8dU5Nql4PqvJ2r
	vM7TYbQCNH8uxrKVEdz/X9p76/WftZ3/4Q==
X-Google-Smtp-Source: ABdhPJwtkKqHTmz9JQCFVYFIfB4B1tccH57bybVXo9YKsrlKjs/md/WhIJrte7e4MSom8G9Nh5Rczg==
X-Received: by 2002:a17:902:f20c:b029:e3:cfa7:e2ff with SMTP id m12-20020a170902f20cb02900e3cfa7e2ffmr13707336plc.78.1614006867883;
        Mon, 22 Feb 2021 07:14:27 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e1:8c0f:8c00:9696])
        by smtp.gmail.com with ESMTPSA id 134sm20069288pfc.113.2021.02.22.07.14.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 07:14:27 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] python3-suricata-update: Inherit python3targetconfig
Date: Mon, 22 Feb 2021 07:14:22 -0800
Message-Id: <20210222151425.13534-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222151425.13534-1-akuster808@gmail.com>
References: <20210222151425.13534-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/python3-suricata-update_1.1.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/suricata/python3-suricata-update_1.1.1.bb b/recipes-ids/suricata/python3-suricata-update_1.1.1.bb
index 0070b5b..732ca9a 100644
--- a/recipes-ids/suricata/python3-suricata-update_1.1.1.bb
+++ b/recipes-ids/suricata/python3-suricata-update_1.1.1.bb
@@ -10,6 +10,6 @@ SRC_URI = "git://github.com/OISF/suricata-update;branch='master-1.1.x'"
 
 S = "${WORKDIR}/git"
 
-inherit python3native setuptools3
+inherit python3native python3targetconfig setuptools3
 
 RDEPENDS_${PN} = "python3-pyyaml"
-- 
2.17.1

