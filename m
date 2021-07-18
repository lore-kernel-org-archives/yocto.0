Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web12.20822.1626649686684785814
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Jul 2021 16:08:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eNiTxPn7;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id h1so8621315plf.6
        for <yocto@lists.yoctoproject.org>; Sun, 18 Jul 2021 16:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cTgIMUTa7fF1mfp7VCQHvmeQfEvXCRsUd1Vrf2C9d4E=;
        b=eNiTxPn76E/StRpTDMkktpM8Vw/tjR83bQKZHPy9FAofduovjjsAoK+dXRWpXuh1L9
         hDgP2HKU+J5uHBOy5vm0odyYNSIplaDdXlyKOQf8BwNtziNRI4loCFWw2HSbLoFLX4rV
         AFDE6LlO9g5F6N6Dv2EHsPEdBKGrXV5V9EK/CfYU6Ioe1G0jPtSy3B1lj9j3ZZpH1IgI
         a67GjT0U6aQG3cENZjsn51nDdCCqgt3kr7KVl7OF2mxQplEtC2TlGglBWSCyOsSdd7nD
         fpW11C3YgH/Zs6pmyy1lT+vkCSFKMyXL0fdXK/IfuHXJj6yHgPaYcHI0r37IPOsA5t4c
         otTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cTgIMUTa7fF1mfp7VCQHvmeQfEvXCRsUd1Vrf2C9d4E=;
        b=fQP6oagxh8pIJ58j5L3xu2mk76Ycsw5Uw6kexISiISTr79RI6h1wCjuFPMeHViy7bv
         AmEMa+A9OVtF98pWPA/6H4MEjY8L3D/YZQy3ICw9G0Zw7Y3/XYfOS+HBPDINNha+ftzL
         x16hMozqIzWCgOUVNaA+xzKtt0cxdEllpBQvYupc4b6607NJjLxhTR1LiWblhddRepTX
         n3wkHEgzpMQxKV5dmZPQC6SddCRJHhhVDufN8+v9y/3oIgmuxYX0/zXiUuDVLexrk9w/
         7Yfge6KfgXh//eDwdXivJkLoP1ph0+IAexaGk9csxGQv+8YHFe9mcGc85E/XxNqa0y44
         9o8g==
X-Gm-Message-State: AOAM533sDklXIWuFD5+TS0yqSNBewZ6tDSxv58UlNFd/ik/8RuVQWUE1
	Ytq0RkRibsZ3hcNGYdr7wuS2CSAlRXo5oA==
X-Google-Smtp-Source: ABdhPJxqL//IMOn4uZl8f/DwVdBpvYUfegJ1mV0kndpKK4iJH7r69IZ/jzrpI4TbnUo0eE4fuRY/gw==
X-Received: by 2002:a17:902:f282:b029:12b:2b93:fbdd with SMTP id k2-20020a170902f282b029012b2b93fbddmr17028326plc.35.1626649686010;
        Sun, 18 Jul 2021 16:08:06 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from sid.hsd1.or.comcast.net ([2601:1c0:6000:1830:7cf5:d4d2:8539:2774])
        by smtp.gmail.com with ESMTPSA id t2sm17440589pjq.0.2021.07.18.16.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 16:08:05 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <timothy.t.orling@intel.com>
To: yocto@lists.yoctoproject.org
Cc: mhalstead@linuxfoundation.org,
	Tim Orling <timothy.t.orling@intel.com>
Subject: [layerindex-web][PATCH 14/15] docker-compose: fix celery
Date: Sun, 18 Jul 2021 16:07:19 -0700
Message-Id: <24f8d86af5794b0d5df3b5b4c6e8a9d2de1e017f.1626647881.git.timothy.t.orling@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1626647881.git.timothy.t.orling@intel.com>
References: <cover.1626647881.git.timothy.t.orling@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In celery 5, the --workdir argument must come
before the 'worker' subcommand.

Without this, celery cannot load the layerindex
module and this causes the celery container to
continually restart.

Signed-off-by: Tim Orling <timothy.t.orling@intel.com>
---
 docker-compose.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/docker-compose.yml b/docker-compose.yml
index 3e16e95..2dfff41 100644
--- a/docker-compose.yml
+++ b/docker-compose.yml
@@ -80,7 +80,7 @@ services:
      #- "EMAIL_USE_TLS=<set this here if needed>"
      #- "DEBUG=1"
     restart: unless-stopped
-    command: /usr/local/bin/celery -A layerindex.tasks worker --loglevel=info --workdir=/opt/layerindex
+    command: /usr/local/bin/celery --workdir=/opt/layerindex --app layerindex.tasks worker --loglevel=INFO
   #layerscertbot:
   #  image: certbot/certbot
   #  volumes:
-- 
2.32.0

