Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web09.8802.1630074432682149786
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 07:27:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nlki3Vhr;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id 18so5816387pfh.9
        for <yocto@lists.yoctoproject.org>; Fri, 27 Aug 2021 07:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=2fpJUGVgaZfnoyk76AMQ6Y6AJZ7FATGcLazGHAHssLM=;
        b=Nlki3Vhr+ShxL+sy7HFGcjeChibUeEyCRtFRmmGKhlUQwJxOKcXJnd1xP97VFRegtf
         ncrsTGIWGj38BLYJNGK35PZnHd0izFg4Vl5QRlHhRrBcWLDylkpJShPoow9mF8PxWdCY
         MOMPAQb+FROifAylevNxAV6+aBe2AJyzD8Q3IDjWbiSwSUc1E0JXKKfMRBzt6zMvdBx8
         peytS2zXiNIoRqja/6wF9EU+Tm8DXKxgHsQ6s3zDicz2oxscxlCUiDUaN4eGa6qzNwZ0
         +lvvV3JP3Vpla2/Z3qNFml90CzB7uySa1zwHhOzSw+OvkucB5my3EjWwv4LEy1qjjjby
         xNRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2fpJUGVgaZfnoyk76AMQ6Y6AJZ7FATGcLazGHAHssLM=;
        b=GsIcuK+Z1yi7CQ7WvAHkPKjU37zlHlj+HNKvwIHWecHhaN7EU0g8NxxLseZ2M7pSfJ
         HeE3gMWz7FS2OENMkYqNxEb9t+AiT6F0WbZnX+XS2X07PH48+lMYdFK1cZJKqlUe2Uvj
         csZ1oGfcbGbQ1h0BaEkrtmUu/tzOXQjbxzhwIhfn1PNe5OtGO1+9v5Vd78kubVahSWwD
         IbtB+t4CQIr44Mb5Rzok9tlLf7t2fUPXHOigFAwB5yrkGcEnnqcRmvpYwq8R9nc7MNZy
         RPefXVq27916d36TI4P8OgfvbLnW/B934oBc+TLtlk7Ltx8NOvgnz+pLBXy3f6m5g8Ui
         WBFg==
X-Gm-Message-State: AOAM533crgYaBLFHomh4R7F0BCdfNHHfI5kX17/Nl03+/75ZogF6Snvx
	ee6ddcA7p5BuZjLyfReLa5p1bh2OoKc=
X-Google-Smtp-Source: ABdhPJzf+TrzLw99LiNpY+0CynFYam+ODl4nHHTXA/BKkUGCSTDLm3aRpdt4flb+z+wx0pILTtiu9A==
X-Received: by 2002:a62:6143:0:b029:3c9:3117:c620 with SMTP id v64-20020a6261430000b02903c93117c620mr9482650pfb.30.1630074432060;
        Fri, 27 Aug 2021 07:27:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.caveonetworks.com ([2601:202:4180:a5c0:6d42:ed7e:4699:884f])
        by smtp.gmail.com with ESMTPSA id u17sm6512064pfh.184.2021.08.27.07.27.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 07:27:11 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] layer.conf: drop meta-rust
Date: Fri, 27 Aug 2021 07:27:06 -0700
Message-Id: <20210827142707.3710584-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210827142707.3710584-1-akuster808@gmail.com>
References: <20210827142707.3710584-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 86d41b2..2eeb71b 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -10,5 +10,5 @@ BBFILE_PRIORITY_parsec-layer = "5"
 
 LAYERSERIES_COMPAT_parsec-layer = "honister"
 
-LAYERDEPENDS_parsec-layer = "core rust-layer clang-layer tpm-layer"
+LAYERDEPENDS_parsec-layer = "core clang-layer tpm-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
-- 
2.25.1

