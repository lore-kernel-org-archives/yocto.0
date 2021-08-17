Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web09.40466.1629213004392585837
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:10:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=t2uIRsQh;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BEC3B6108B;
	Tue, 17 Aug 2021 15:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629213004;
	bh=GKwFxfzKbqbxGKAjg09ZX2Dc8TT3m5mE0QhpGtA5sxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=t2uIRsQhgfQkAQUo7lECsoefKvCjXhc6pQm/meluFvjk3KCG/PFyFpLGCNdy3yrVa
	 4eccgX8GGhKXLtiLvF/KkgBGQXXUrd+FBnarGCVAocFmOXOcq71T624u0+weBJxoUw
	 4XyM1/s4HPzvJRT5hRQX/Och3hE1naAXomGtaesMvsE/3SrhDC80MUu/xIXn8LJUaq
	 dzDiGMsN5CjkOkmtFOxLHGoqSnjeFhZEoPTxhvvT9s7OPJ8tnOvty1PoGrBv2TN8ov
	 whp+F0dVstDcaH/hTvQkQJOMShJcftmQjkycwqxp9UybGITMLCeK0uC4lVQa3F08Xs
	 mPz1h76ZgB8Jg==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v3 5/5] conf/layer.conf: use BBFILES_DYNAMIC for dynamic layers
Date: Tue, 17 Aug 2021 15:09:57 +0000
Message-Id: <20210817150957.18246-5-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210817150957.18246-1-okaya@kernel.org>
References: <20210817150957.18246-1-okaya@kernel.org>

Add a dynamic BBFILES pattern so that patches for openembedded-layer
are conditionally applied only if meta-oe is present.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 conf/layer.conf | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 5fefa73..d4823fc 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -3,6 +3,12 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 
 # We have a packages directory, add to BBFILES
 BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
+BBFILES_DYNAMIC += "\
+openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/recipes-*/*/*.bb
+\
+openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/recipes-*/*/*.bbappend
+\
+ "
 
 BBFILE_COLLECTIONS += "meta-mingw"
 BBFILE_PATTERN_meta-mingw := "^${LAYERDIR}/"
@@ -10,4 +16,5 @@ BBFILE_PRIORITY_meta-mingw = "8"
 
 LAYERDEPENDS_meta-mingw = "core"
 
-LAYERSERIES_COMPAT_meta-mingw = "honister"
\ No newline at end of file
+LAYERSERIES_COMPAT_meta-mingw = "honister"
+
-- 
2.17.1

