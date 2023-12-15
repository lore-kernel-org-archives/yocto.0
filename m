Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501CEC3DA6E
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:35:14 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web10.49765.1702604112164450820
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:35:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KXJ/+y6s;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-d9caf5cc948so113187276.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702604111; x=1703208911; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ht6FNWl4l6mdSNaV/N+QXO7soN4QzkWp2NYC3Ov6Los=;
        b=KXJ/+y6saFSPcmP+j0VC+v8jPSHdqY/YqbpOSRFXxyQVlp0kbkvne8DVpmYl14JFtY
         +ZXuHjImExpbp/f4favW5gyTcWIT5zigWe+jTJFMTtYUuuhFYHB15f2RcRK3pplurGgt
         1L4fdhskI2/dScu85QV6x9RlEPbu1v/pmbQ6+1ZYSbIpuwTciSoXx3EBKq2mZn1padPN
         oeI7gDe/pSK7p+JVx8j4FSMziIUKSkyhljB1fApnz7gcJ5qTtF3GKdTR1Puyk5uEUzF8
         Ho/DizbAx7fDhqTsr2tqZ8uXNmNfsfdLGMLRIOtNumQtX/ty0ZWj9oKdtZcPZ5SdS0ar
         IZvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702604111; x=1703208911;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ht6FNWl4l6mdSNaV/N+QXO7soN4QzkWp2NYC3Ov6Los=;
        b=MdodwykR0NShazpODXN5s4e5jdPUQDDijENKtnDGfXjwJ+nLVCHuaW2uLjSNFor5MN
         ngDK1UmieM3c2T29rHiRmZuwfEIb3Cz0ZTr/HpRardgJ+6toXgvDzpT0O+rxIQt+pfKW
         g/iC+hh0ERaoYXO+CUOsmh03xGu1W2W0ewwDD6I38xiWTj4tUOcvuCjHia7ky/FKUcnr
         VxcQbRp86RYRcN+fUwFtU0kRGvqRjx2XKhLduQAGL8Fm7sECbGRM4WZJjheQr55qfCEi
         SmXR0P1HrRr4tfyWAk9cLyGutQ3Z9SmlnphCxxQYvNRQXOha0YYvIi464Ugj1x9t/zgd
         s4Nw==
X-Gm-Message-State: AOJu0YwWEHPTBwyVRCrVyaB/1BpWRelnEOxnm+umh2dvJfm+VCv3Y7Xi
	7FS2mWGSFRv9+dLedS6by9kxi2uWJ4/3Iw==
X-Google-Smtp-Source: AGHT+IEYEyr0eqP4+5fwnToewmO3aMcb1sFhU6cHhxaG3pXsEYCEv5GqZp8U56e48oWNlrfUOpSaxw==
X-Received: by 2002:a0d:f486:0:b0:5d7:1940:7d85 with SMTP id d128-20020a0df486000000b005d719407d85mr8502053ywf.92.1702604111100;
        Thu, 14 Dec 2023 17:35:11 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:9770:3d29:ab6:9b6b])
        by smtp.gmail.com with ESMTPSA id m9-20020a81d249000000b005d72c7c1241sm5895879ywl.112.2023.12.14.17.35.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 17:35:10 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] python3-privacyidea: Update to 3.9.1
Date: Thu, 14 Dec 2023 20:35:07 -0500
Message-Id: <20231215013508.4166843-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231215013508.4166843-1-akuster808@gmail.com>
References: <20231215013508.4166843-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:35:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61899

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...{python3-privacyidea_3.9.bb => python3-privacyidea_3.9.1.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename dynamic-layers/meta-python/recipes-security/mfa/{python3-privacyidea_3.9.bb => python3-privacyidea_3.9.1.bb} (96%)

diff --git a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.bb b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.1.bb
similarity index 96%
rename from dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.bb
rename to dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.1.bb
index 2f0ac3a..8268345 100644
--- a/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.bb
+++ b/dynamic-layers/meta-python/recipes-security/mfa/python3-privacyidea_3.9.1.bb
@@ -6,7 +6,7 @@ LICENSE = "AGPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=c0acfa7a8a03b718abee9135bc1a1c55"
 
 PYPI_PACKAGE = "privacyIDEA"
-SRC_URI[sha256sum] = "1dce02789ee0a639c5518ab95e254823ca1b47aeb1aae754ec11c70d4248f38e"
+SRC_URI[sha256sum] = "7c70feb44980a3fd7501457777a1ec30e73541e54d3b31f2b9b5ab6cd73cff4f"
 
 inherit pypi setuptools3
 
-- 
2.34.1


