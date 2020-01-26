Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.120.1580077961536516077
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2020 14:32:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CAmlRfsD;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id y17so8764073wrh.5
        for <yocto@lists.yoctoproject.org>; Sun, 26 Jan 2020 14:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=DcE+bcDYamiZ7EcTUJqcwCXvzODAYVHufxSuPtX1wHE=;
        b=CAmlRfsDezr/8c+7TLrVTmV298m5ixspumvDaMKHc15BPauYEsljEqO5oeCeF/Y+DD
         OgN45Tj1WngPGdhPEs4NvwHoYK5L3fHtMLQUpJSgg0RY2kAf7l8UDjZpvFbVVwBH6azx
         Mp+Oi9ZRIZJhZF+quPeAWtKwhovRDGALkS9b8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DcE+bcDYamiZ7EcTUJqcwCXvzODAYVHufxSuPtX1wHE=;
        b=Lz9Zph5HiVv1gbnCya7NrdF0cwv5LXaFd48frJo/UcDRIii6Kl1Dv6+52kUMOTizOY
         A44u6Ou7bsmokbt9mHER1uoJRIt6IaxU7+Kdd4SUglzXyyVSBD8YLFoysn1Rbz59QClQ
         9OuNee9kwW8+zNDz8F7N2pZTT4z+ZOoIM1wEsVppeCT1mG75JaAFSWInVW4dj9F2SNvV
         YjKNAmQn/mP75FJh/x5UzJYqQ2Jjch/8OLmk4RBZ0R/4asv7M6O4p953KqcB8o+f/dZZ
         dTSzD3/GbIQ1/gXpF8+H+CK7MleSyaMy1YOlPIHOp7PCXDfxhxL81l/WKbYRzYN64Ngl
         CbGQ==
X-Gm-Message-State: APjAAAVivShDXgyqdVafStxbDTHJY0v46TLxK/viWewcZyxV972zHxES
	p8PQ1MPuAU3MJWxEu7przft1RxZKji4=
X-Google-Smtp-Source: APXvYqxwZcYBTVHPHsny+E/wWAVS8gc9ARkbFVuU0w/KJT+NcaSGrD+TV1mC9h3pz4oi2xQqWCJMUw==
X-Received: by 2002:a05:6000:1241:: with SMTP id j1mr17229959wrx.26.1580077959936;
        Sun, 26 Jan 2020 14:32:39 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id h8sm19910939wrx.63.2020.01.26.14.32.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2020 14:32:39 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] l3afpad: Add missing mime-xdg inherit
Date: Sun, 26 Jan 2020 22:32:34 +0000
Message-Id: <20200126223234.21589-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200126223234.21589-1-richard.purdie@linuxfoundation.org>
References: <20200126223234.21589-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes:
WARNING: l3afpad-0.8.18.1.11+gitAUTOINC+3cdccdc950-r0 do_package_qa: QA Issue:
package contains desktop file with key 'MimeType' but does not inhert mime-xdg:
l3afpad path 'XXX/packages-split/l3afpad/usr/share/applications/l3afpad.desktop' [mime-xdg]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-sato/l3afpad/l3afpad_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-sato/l3afpad/l3afpad_git.bb b/meta/recipes-sato/l3afpad/l3afpad_git.bb
index 8906c748eda..6fdcc3e392c 100644
--- a/meta/recipes-sato/l3afpad/l3afpad_git.bb
+++ b/meta/recipes-sato/l3afpad/l3afpad_git.bb
@@ -17,7 +17,7 @@ SRCREV ="3cdccdc9505643e50f8208171d9eee5de11a42ff"
 
 S = "${WORKDIR}/git"
 
-inherit autotools pkgconfig features_check
+inherit autotools pkgconfig features_check mime-xdg
 
 ANY_OF_DISTRO_FEATURES = "${GTK3DISTROFEATURES}"
 
-- 
2.20.1

