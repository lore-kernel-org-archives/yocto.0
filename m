Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80DDDCDB465
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 01:00:24 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.197699.1697504421080494576
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 18:00:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iQOSFx8+;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1c9daca2b85so37924375ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 18:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697504420; x=1698109220; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bmSeX90YfeJMJ5Fw75B8PD2dCRj9WBL1GwOyOhuB4Cc=;
        b=iQOSFx8+uBYhfSKo7m3cBsUbjTuw+HobOVCgnYA4vfosPQtNpF1FyOKUx2a85l+Cpw
         MhDMzwwzPHMgBqhzvTdhQcZ0NHRYBttiAcGBzlCpYaiJHUp+xnmRtXHSpGi+PuacCXVW
         wMgzsLnCgH5L0ylkpaiwZnyMg0FxGZoj6CW4ByqcstVZzf6yjCQYHmTdSNVWKJsapeHZ
         PF60olP5yrZdGGeCm8hEzg3EtS+IW28/fVvv3OZTXTXOhbNFdQtV3EE7ohj8JqE1caiu
         /IQ1hHl3y2GtBdCiO7qET9NCM/iCC0qwG5O8zGTd4TiIXjtR7ixoqoHwZWvH2OzpcWEb
         214Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697504420; x=1698109220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bmSeX90YfeJMJ5Fw75B8PD2dCRj9WBL1GwOyOhuB4Cc=;
        b=AnlgMY5lXdttejzHwT4cgISCAu7oud8uqHxemCi7Mz5+9lbEcb3XU3EZKp2fERGo+v
         nXFEtO99y4eD+tFyM9+yg6ZVpliaEF2Os4B9mh28DaA3YIW7Hn16qOzPxrzBQUB/CQda
         axVzT2C+rPF0RTwRdHAHdSWTi23hwkLECZMRZO7zzQkfdDibw8rOcP7z28cYlqWdp5S5
         BmYlghXyKoa+E8B2O7j7Z4u0kHV5v150KJHL5kbbaJuokc6HS/bg4/PK1z+CiMQDUeiX
         QXpnYrO+/wI2tiA5J2BCkNaDgMp1Szesb63yjFKOhDoBAGDcc3ODwkEU73CxtM9a8MQI
         4MwQ==
X-Gm-Message-State: AOJu0Yw9b2vdgjmxWQDqdvdShPaXaUQ/ynox3313njgT6Ao7A1cLAYu7
	AXjjugRFHkmdhYT7CMQRY4345dF5Wc1Mog==
X-Google-Smtp-Source: AGHT+IGDIAJ/IG0xUdHdAHj0QkDix7nEeQqXA+VRUGIK9xb9xP4cdx4CqPtk6sN3+WboyN4exycWUQ==
X-Received: by 2002:a17:902:d4c4:b0:1c9:f6df:8a88 with SMTP id o4-20020a170902d4c400b001c9f6df8a88mr594315plg.26.1697504420180;
        Mon, 16 Oct 2023 18:00:20 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:ab5b:2a7b:aba2:aa8c])
        by smtp.gmail.com with ESMTPSA id f6-20020a170902e98600b001c60a548331sm210879plb.304.2023.10.16.18.00.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 18:00:19 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 2/4] bootstrap: add version to filenames
Date: Mon, 16 Oct 2023 17:59:22 -0700
Message-Id: <20231017005921.2618459-3-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017005921.2618459-1-tim.orling@konsulko.com>
References: <20231017005921.2618459-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 01:00:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61360

To make it easier to quickly see what version we are using, add
the version to the filenames.

Also, use minified flavor in templates/base.html

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 .../static/js/{bootstrap.min.js => boostrap-3.4.1.min.js}       | 0
 layerindex/static/js/{bootstrap.js => bootstrap-3.4.1.js}       | 0
 templates/base.html                                             | 2 +-
 3 files changed, 1 insertion(+), 1 deletion(-)
 rename layerindex/static/js/{bootstrap.min.js => boostrap-3.4.1.min.js} (100%)
 rename layerindex/static/js/{bootstrap.js => bootstrap-3.4.1.js} (100%)

diff --git a/layerindex/static/js/bootstrap.min.js b/layerindex/static/js/boostrap-3.4.1.min.js
similarity index 100%
rename from layerindex/static/js/bootstrap.min.js
rename to layerindex/static/js/boostrap-3.4.1.min.js
diff --git a/layerindex/static/js/bootstrap.js b/layerindex/static/js/bootstrap-3.4.1.js
similarity index 100%
rename from layerindex/static/js/bootstrap.js
rename to layerindex/static/js/bootstrap-3.4.1.js
diff --git a/templates/base.html b/templates/base.html
index e2bafdd..a421c5f 100644
--- a/templates/base.html
+++ b/templates/base.html
@@ -135,7 +135,7 @@
     </div>
 
     <script src="{% static "js/jquery-3.7.1.min.js" %}"></script>
-    <script src="{% static "js/bootstrap.js" %}"></script>
+    <script src="{% static "js/bootstrap-3.4.1.min.js" %}"></script>
 {% block scripts %}
 {% endblock %}
 
-- 
2.34.1


