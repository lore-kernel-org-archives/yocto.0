Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F974E71D4A
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 15:09:40 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.20115.1696000174260982286
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 08:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SlQqyXDK;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1c3d6d88231so107802225ad.0
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 08:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696000173; x=1696604973; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kIihUPYMmCYR/ez2+UOxBmJXAXZI/RYkaALiPI+iHP4=;
        b=SlQqyXDKZQ0CP4nGwEVcFWCYMZQOAjnuUy0sLjA3371tj8hptI4Qcz/HhhG7l6qQYO
         GXrHgUXOIThA5Lzk84R4MJvnVZjduEEESPgt35pP6fAEACbYnj83rv+I3vR78CUflr2Z
         3auf+uGV+jRB6uEvlRg2T4ksx7uOwUPBtWqX+uWNOSkA0A45gawGS81YtrslgS68vC3+
         d8fNDHgtxD6Ht6J/Fv+sHcJ+zSZ1Q/Dme+6BahDSgYX3qrX+0jG3SP4EOCe0O/0dkQsG
         Fb1QTTPdqH40r6KTuFvfnxTEse0ekob77oelMDjAi03Z81eA0CsMto1iWPAiqUPh4va3
         C1fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696000173; x=1696604973;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kIihUPYMmCYR/ez2+UOxBmJXAXZI/RYkaALiPI+iHP4=;
        b=AN4X/6cjcB964Vi7qdfCFmz2sr6YoKm+NYDuzgOQneGxhhvgYpmfoOQLbl1TNzybYx
         ticWV6+R0E4RMiri4wNt1w/mVjxcTnIKArxa1x7MU7HlEnDlJqtJ0F/BN4wgNGdMyNmU
         Uz7zbhBFq5jvWPM702vwqwAyPud6yd1hb07nRiuZN57oRbpKofZR/b38fRDoUIE1FfKu
         bUnuRCHeWmc5lzyDUrPkqWixg0HXYvArerIxXWjZvYkaawFQRn6sr/6Ne/U3joBz0I7o
         Wswkq4oNqjFfyO1r7jjhXGw2TZbOAJLwcjSiy3rlkThDGh4kcJGI+ThKw4eM0JgOHq0I
         S/7w==
X-Gm-Message-State: AOJu0YyofGDI5Yq3LXaVMMt4MMTIRoITceZ5sWTfVMKz/Vvo0QTQdlN0
	m+TWhcTg09j7+uCJz0P8jSADnq4s6rmlrw==
X-Google-Smtp-Source: AGHT+IHfikGZFD4Tqy0AqtaUOqrOzU0u88K7A/ML1a/pqc3Ifco5ODAgjYZnQfBYt8CMt6I2giymmg==
X-Received: by 2002:a17:903:2587:b0:1c3:f4fa:b1a2 with SMTP id jb7-20020a170903258700b001c3f4fab1a2mr3204574plb.8.1696000173274;
        Fri, 29 Sep 2023 08:09:33 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:1244:ff8c:57dc:4464])
        by smtp.gmail.com with ESMTPSA id g14-20020a1709029f8e00b001a5fccab02dsm1406016plq.177.2023.09.29.08.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 08:09:32 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web] layerindex/urls.py: fix submit/thanks/ url
Date: Fri, 29 Sep 2023 08:09:06 -0700
Message-Id: <20230929150906.1645388-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 15:09:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61168

The url returned by the reverse lookup ends in /submit/thanks/ but
the regex was improperly searching for a string without the terminating "/".

Thank you to Pawel Zalewski for reporting the 404 error.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/urls.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/urls.py b/layerindex/urls.py
index de15bb0..82af699 100644
--- a/layerindex/urls.py
+++ b/layerindex/urls.py
@@ -59,7 +59,7 @@ urlpatterns = [
     url(r'^classes/$',
         RedirectView.as_view(url=reverse_lazy('class_search', args=('master',)), permanent=False)),
     url(r'^submit/$', edit_layer_view, {'template_name': 'layerindex/submitlayer.html'}, name="submit_layer"),
-    url(r'^submit/thanks$',
+    url(r'^submit/thanks/$',
         TemplateView.as_view(
             template_name='layerindex/submitthanks.html'),
         name="submit_layer_thanks"),
-- 
2.34.1


