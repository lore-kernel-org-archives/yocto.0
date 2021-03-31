Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.2015.1617162688036052958
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 20:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uQXrfR84;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id x126so13552218pfc.13
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 20:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vnx1FEtJTpwqM2dQSB4rTikc6XV4YHiUB+6+mBNgJTc=;
        b=uQXrfR84FCZccdX0BSHpQn/YgXFFkdZmwiNlA5fjKuB0YrnFnAxWjW+n7XzVeLTD82
         8F1aG5gHvyyZyyiqKN8BAx45WL615t2Gbc1rw4oIy3XOXTZTbNxCmnF7MPqdf+DQOvP1
         cdwTLdFXo+Y1kQL3AvvLSowertasuZER8P1GVnTtqgxxkULkEB6fFoJPCSxB+HzUgac+
         hP8cmVBrrQdiI1HzxSFWwNY+GXN3Bczu+X553UGA2ibe762ZnZdrBAnKR4kFWVYAN2tA
         mhwM1dtwbAVa6zNCx6aV3MhSPEx17wV/I587XwQMghofwdV31NRLF0rveDRThaIr6GRO
         //qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=vnx1FEtJTpwqM2dQSB4rTikc6XV4YHiUB+6+mBNgJTc=;
        b=qw4xMJ968G05V+1uJLO4XxmBhZngRqJmLqylNyR+Pb7IW3mIBhJfZMyEsdrBUtYjIZ
         hKbrqJ3s9w73yNm4OLCDn5enEliV0HAzoLJvymwJIhUHNsq1CAvXtN8Zt9cToF0FsPSm
         DARBvUIueBfXm3geCHtnfNg1ovd1uFnJq/82cVI9KhzHNMArhYusOJN6u11EsI46hna0
         txysDUT7wP4OjuZqcwPox0NPvCAqCfdfbVLRX8VH/++/rdSMou7uPl5RD7WXPmIGM2Jt
         Ye7o7/0F5RFrjozyDBd7vExDb7MlMFlMA3ovbPfsbRZ+IgS5OJziRzhGor2DWQ2pm//H
         jPXw==
X-Gm-Message-State: AOAM5300+0wDqCDDXew6HfQCtThdJDRviM2B1i+ZwBtTnGILl1eQlcO5
	LHY2gr95rtG0HM1W8OQ9lIfPjGf57JY=
X-Google-Smtp-Source: ABdhPJyI7Jw0C5OkEdkism6oRPH16Y/QvH0ZIrUJDG1KjaTGTnmevZGsEdY6r7xQnq/intlyFXWDjg==
X-Received: by 2002:aa7:8d8a:0:b029:1f8:aa27:7203 with SMTP id i10-20020aa78d8a0000b02901f8aa277203mr1066097pfr.64.1617162687288;
        Tue, 30 Mar 2021 20:51:27 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20e0:2ff7:e997:1a04])
        by smtp.gmail.com with ESMTPSA id s8sm500713pjg.29.2021.03.30.20.51.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 20:51:26 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] swtpm: now need python-cryptography, pull in layer
Date: Tue, 30 Mar 2021 20:51:22 -0700
Message-Id: <20210331035123.15205-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210331035123.15205-1-akuster808@gmail.com>
References: <20210331035123.15205-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 65788eb..1b766cb 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -13,6 +13,7 @@ LAYERSERIES_COMPAT_tpm-layer = "hardknott"
 LAYERDEPENDS_tpm-layer = " \
     core \
     openembedded-layer \
+    meta-python \
 "
 BBLAYERS_LAYERINDEX_NAME_tpm-layer = "meta-tpm"
 
-- 
2.17.1

