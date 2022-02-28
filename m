Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B192BC433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 16:12:34 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.21475.1646064754037080869
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 08:12:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NIcw+Jms;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id m22so11609451pja.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 08:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZgwMgKIAUZD9GNlXmJDE3Z0sl0RF8jknqE/1gDAI9Lg=;
        b=NIcw+JmsgEjrClZoIKvfrXLkfsPOXRs6lySCQZESeBNpljNIY8scOe//C0wgQUx68E
         aVsQIanTPFLBRf9bHJSb5rLri1oiKbiHksYm5ltHZVgiC5hwc1C9jlygiH1mT+RnlC67
         XGZu3RGNXIrJ7AEp3juYqGpzKdWvMXhUWxI79yCpJYTkZQSVZH0IPSUBhmRpMLCg2jXP
         fYzRjhREHqSVzxvhmjLXsXADS/yKEK32OFhcTDN6zz9MR1ZCIYHplKAvUW+rFH2msEmc
         kJWj9SNw7T+SolHeY0fEt6rVqXjPQu/JxCtp1VSl0Y7Uz7mg9Xx9TCt4/AXArHdVLXjc
         BgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZgwMgKIAUZD9GNlXmJDE3Z0sl0RF8jknqE/1gDAI9Lg=;
        b=Rt2kdsdJUwz2NZGHxMXnudWYMaCBl4tPa+QTIpj/0YUaLHGVL09+Jk7Z8DDfyFXAVh
         qbn88fsruY6TGUCKjn3DyArRYTNMn8h4hnphng/Ie9qhVITHmkyb06mGhIeCiwBTzHJ6
         ijcFpTMePfNLUupVbjGdBlnxDZdsjBbaztefYw1eJXfTUUB2aRCrseXG9cruQ+9laHgB
         TTt2kd0yPrLKZklaIIzj5HCGx047bfCmnJD5vZgc4Ic/rtlSJLPaUZNCnehKvQL1nfq6
         ihuPTY9yVgvi+CCrIv6U1Qvtt21DQwfIJEh+EO0LOn9PS0s9lzJOLRwrFkxO0lpFrjbZ
         JMig==
X-Gm-Message-State: AOAM530uKoOwHmOGCNjuKTcHjATSfeg4IPJZErjx3kffDOy43qn/aztL
	spstgvmqf7elXs/kYCmKGibyqC9zNh4=
X-Google-Smtp-Source: 
 ABdhPJw6i2I2RM0PxjInImKvyMz4y8XgSNe7aHkZPSwORA10lHph3X4ebxNeVwzJuH14ZIk4LQnGZQ==
X-Received: by 2002:a17:902:6941:b0:14c:b815:6d45 with SMTP id
 k1-20020a170902694100b0014cb8156d45mr21589818plt.49.1646064753342;
        Mon, 28 Feb 2022 08:12:33 -0800 (PST)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:c5c4:1c30:ffdf:c956])
        by smtp.gmail.com with ESMTPSA id
 d14-20020a056a0024ce00b004f3c87df62bsm14511413pfv.81.2022.02.28.08.12.32
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 08:12:32 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] layer.conf: enable apparmor for qemu
 machine
Date: Mon, 28 Feb 2022 08:12:30 -0800
Message-Id: <20220228161231.2096596-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 16:12:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56321

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 1f83593..21f03d1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -16,3 +16,6 @@ LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer met
 # Sanity check for meta-security layer.
 # Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
 INHERIT += "sanity-meta-security"
+
+QB_KERNEL_CMDLINE_APPEND = " ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', 'apparmor=1 security=apparmor', '', d)}"
+
-- 
2.25.1


