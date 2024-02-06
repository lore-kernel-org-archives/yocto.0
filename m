Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 077D3C4829C
	for <webhook@archiver.kernel.org>; Tue,  6 Feb 2024 18:50:45 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.1100.1707245439194975714
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Feb 2024 10:50:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eD2We+oK;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1d8da50bffaso28341485ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 10:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707245438; x=1707850238; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v2aUUpqZZ/HziLJ1C23NtjQVYCdcJaUGGuSN52u1+Po=;
        b=eD2We+oKpmPERR7qnWus81W5iV42llaNuCMm1iK6+3vIvnLk17NNCN2RI5B8kgh9Vf
         w2kwR4KzJYMbHrrALCNMTIXdM0dVwyWnITxVA1rIC4rOAgj/rtVTcNuvOt4WW76tEk68
         Ni2Mgbl3RJhiIRaVsnvSgqZDaNNZ9TxKNo9EqOH05eh5QjfTf1FeDkmnUFhcT7ol0S/q
         x7cNMSSiGZzn66GYFIJUSnmdMD7s2g40W8eCBN5HZf33xenCHhAu0pX/OM8IXwQKq3h/
         UkvdicZQktX1QQpRKcaEX382MSKlfOp23jGcTsfUUK5wW5wk8c4mOod9+leUD7gJgX9K
         Awwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707245438; x=1707850238;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v2aUUpqZZ/HziLJ1C23NtjQVYCdcJaUGGuSN52u1+Po=;
        b=fgJQKSFT9xK/tax2OCk9E55wX2vzAdubFFVpzqKlnJk5MlkzjyjDIVUfpw4zg7hRPm
         R6jvXkEW7gbFl5fpDvfttsGFtv/aH04eCxpI/eK9GGRwLpjrw1sPNMtMFQW4e7ysuZS4
         m5eU4tsnKKFYFE7sOsLJmbyBriFNuFhBW29lQD+/rCch6vMgLQYafljvPYYM3PQfOyY2
         R0I5nUMizi+hRcixfWilNdLhDd1Erh3NZwKJiFXIDIEVG/cx87DIAk1Kzlv42DVgjge9
         KXw/DV8uqISaf5HZDpDOOCYHGbtQdtNAdj8/Mq46Zbdj/IHueLkctPWM/dZd54+s8z0+
         36Ew==
X-Gm-Message-State: AOJu0YzAQQ7Ks8Ok/S1T4FzX2BoFKG4/jPkNbMjyUqI8Ez/V8f7vD6GU
	xnLDuWw92w/Fhs1yjo7pAEIZo2j2qP08HplUbcs6SNeoJOC6dAyp/Njy1qza
X-Google-Smtp-Source: AGHT+IH9qQ2C14tjcwzrI7d4mgGogZt+tAT5PDIw3VkWzjDymyDKbjVO6+kKCrzkLQ1ewIkuk6lrVQ==
X-Received: by 2002:a17:902:e74b:b0:1d9:8ac8:d77b with SMTP id p11-20020a170902e74b00b001d98ac8d77bmr2732737plf.17.1707245438305;
        Tue, 06 Feb 2024 10:50:38 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:4086:e057:8a9c:4a65])
        by smtp.gmail.com with ESMTPSA id kj4-20020a17090306c400b001d8d04a4fa8sm2206893plb.300.2024.02.06.10.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 10:50:38 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH] layerindex: fix edit layer vcs_subdir max length
Date: Tue,  6 Feb 2024 10:50:28 -0800
Message-Id: <20240206185028.122325-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Feb 2024 18:50:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62411

EditLayerForm was missed in the previous commit.

[YOCTO #15374]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/forms.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/forms.py b/layerindex/forms.py
index 2cb9b52..10acb88 100644
--- a/layerindex/forms.py
+++ b/layerindex/forms.py
@@ -75,7 +75,7 @@ LayerMaintainerFormSet = inlineformset_factory(LayerBranch, LayerMaintainer, for
 
 class EditLayerForm(StyledModelForm):
     # Additional form fields
-    vcs_subdir = forms.CharField(label='Repository subdirectory', max_length=40, required=False, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
+    vcs_subdir = forms.CharField(label='Repository subdirectory', max_length=60, required=False, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
     actual_branch = forms.CharField(label='Actual branch', max_length=80, required=False, help_text='Name of the actual branch in the repository matching the core branch (e.g. the development branch is "master" by default)')
     deps = forms.ModelMultipleChoiceField(label='Other layers this layer depends upon', queryset=LayerItem.objects.filter(comparison=False), required=False)
     captcha = CaptchaField(label='Verification', help_text='Please enter the letters displayed for verification purposes', error_messages={'invalid':'Incorrect entry, please try again'})
-- 
2.34.1


