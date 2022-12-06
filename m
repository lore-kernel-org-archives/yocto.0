Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B354CC3A5A7
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 17:27:43 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web10.54310.1670347661472300656
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 09:27:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KriXgoBA;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id r11so11992342oie.13
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 09:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBCS1lHzcccGaPMcUBLIWycGVOh0aVqg6zUKg1l+R8E=;
        b=KriXgoBAXfVxjEqsIO2ziR1+vr0S2InCBLwgcgppRsTbIZU6u3RvILXDCNk3YLR0qq
         p7Y2hVkPlZzwAYbYAdu0GtTeCH2G6SuNHTkEJcb3mDrpY3drN8kTCeTUO9Vt980d10//
         xnSAVyg6iJfVrh7Z5yCcbidRWcb+x/HugDKU5NNdyMhDuyJg9luyVagmsAIqt6xl3y59
         LgfxrA/qEpzasO2eD855hBd/HLHPZ9+iN8atImeOBDnnG7EiVE7WPwgKRj5kjxsdAteo
         +Z+PSUZH276XNh5chb8ZohHJrys+si7wj/b7Kg9MPKg6pltrAqJU2p1kfLkv9ApcBGn3
         SEqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZBCS1lHzcccGaPMcUBLIWycGVOh0aVqg6zUKg1l+R8E=;
        b=SRZ4XKM626gZ1e2dNnZNbbo3a96YDgyghen3jd/BG5ImeHhtANF9SYGMZg3LhxDsuc
         tpgonjAc6WC8k9Nc+srZQjpZzYFK6vxi6QRrjXqFr7xV6Ewb+FuVXxmXF3845sZE2MJ5
         UvlqRNVhJO6AEi107FWS8tIixiKqEfP5dq/SkyWQtbZiy7OXpbuxZQXsNUX/2DRNL2EU
         TZOFexgkwzq7sj6EiZQDWnyt/ziXITnHO12p6f489EsmAiRIqCm7QpAdDzDfxI48mQLh
         5VhEtKL4DL80x8AxyEXpnOmb1RqOigQqUpXvIB5IiRiXAzzmfiSPDYaZ5gW0jYKzi9ws
         wFQg==
X-Gm-Message-State: ANoB5pl3solB31DO4Lvszlu/Iwqf3JC5Fexjlzq0MdNXhUluo6INE9wm
	63qHR0kXfIQjdPFdCHKX4GcLCTxAgVI=
X-Google-Smtp-Source: AA0mqf4GsbChSb1tunKpP/f+d6Q7NyPsHuk7/xi5HtAzTqslLELCQWkbC7CTytqbDoYBOs7Qru+/Rw==
X-Received: by 2002:a05:6808:14cd:b0:35b:ea4f:7141 with SMTP id f13-20020a05680814cd00b0035bea4f7141mr11206605oiw.266.1670347660144;
        Tue, 06 Dec 2022 09:27:40 -0800 (PST)
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id p11-20020a9d744b000000b00661b46cc26bsm9229495otk.9.2022.12.06.09.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 09:27:39 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v2] config.json: Use buildtools for Ubuntu 18.04
Date: Tue,  6 Dec 2022 11:27:31 -0600
Message-Id: <20221206172731.1793338-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20221206145115.4065771-1-JPEWhacker@gmail.com>
References: <20221206145115.4065771-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 17:27:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58739

Bitbake is going to upgrade the minimum python to 3.8, so Ubuntu 18.04
needs to use buildtools tarball to remain compatible

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 config.json | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 713afe5..1149c98 100644
--- a/config.json
+++ b/config.json
@@ -11,6 +11,7 @@
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
     "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-3.4/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.4.sh",
+    "BUILDTOOLS_ARM_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-3.4/buildtools/aarch64-buildtools-extended-nativesdk-standalone-3.4.sh",
     "BUILDTOOLS_MAKE_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20220413-28/buildtools/x86_64-buildtools-make-nativesdk-standalone-4.0.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
@@ -1287,6 +1288,8 @@
         "debian9*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
         "ubuntu1604*" : "${BUILDTOOLS_URL}",
+        "ubuntu1804-ty-*" : "${BUILDTOOLS_URL}",
+        "ubuntu1804-arm-*" : "${BUILDTOOLS_ARM_URL}",
         "alma8*"       : "${BUILDTOOLS_MAKE_URL}",
         "centos8*"     : "${BUILDTOOLS_MAKE_URL}",
         "stream8*"     : "${BUILDTOOLS_MAKE_URL}",
@@ -1294,6 +1297,8 @@
         "opensuse154*" : "${BUILDTOOLS_MAKE_URL}",
         "perf-alma8*"  : "${BUILDTOOLS_MAKE_URL}",
         "perf-centos7*" : "${BUILDTOOLS_URL}",
-        "perf-ubuntu1604*" : "${BUILDTOOLS_URL}"
+        "perf-ubuntu1604*" : "${BUILDTOOLS_URL}",
+        "perf-ubuntu1804-ty-*" : "${BUILDTOOLS_URL}",
+        "perf-ubuntu1804-arm-*" : "${BUILDTOOLS_ARM_URL}"
     }
 }
-- 
2.33.0


