Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.3348.1629492046065704323
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 13:40:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=is9JT/Ef;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E26F06113B;
	Fri, 20 Aug 2021 20:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629492045;
	bh=cdn7+Bo7yz1Lp/v94UhXyQvfTqhMhjawb8TUpQEYeZ0=;
	h=From:To:Cc:Subject:Date:From;
	b=is9JT/EfXeL1e0IYmxC6bhsr3pHW1YXNIlUMaHJII1YozRdhQ7YroLkOWdlZ5AOEo
	 vLe3UPX7SK+c+iAb5RIiVb6s2fUD5OmxkcB6mo1kqygzTqcXlZXKC96MycAyOOREHV
	 4jOXibbkwycsAprxsD8bG7ei8It3NagVqQcbtli/d11nVfGtxUjwoulE8LsmVAQ5x6
	 80+Mkx1oFRumLNdW3Oo3BXpwTJDyKqWVClA61SBQdbV0p5dMmKQSURdlCHOAQw2QUK
	 efD8cHWNBt2kT3bgllxA0KuUyYhKuNxd9usHBfGogamQCBxTSg/128PzAzq/FeMCtJ
	 iDOjYKmB7dz/Q==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH 1/2] re2: disable shared build as it is broken
Date: Fri, 20 Aug 2021 20:40:39 +0000
Message-Id: <20210820204040.10849-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../openembedded-layers/recipes-support/re2/re2_%.bbappend      | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 dynamic-layers/openembedded-layers/recipes-support/re2/re2_%.bbappend

diff --git a/dynamic-layers/openembedded-layers/recipes-support/re2/re2_%.bbappend b/dynamic-layers/openembedded-layers/recipes-support/re2/re2_%.bbappend
new file mode 100644
index 0000000..16bb5a0
--- /dev/null
+++ b/dynamic-layers/openembedded-layers/recipes-support/re2/re2_%.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
+EXTRA_OECMAKE:append:mingw32 = "-DBUILD_SHARED_LIBS=OFF"
-- 
2.17.1

