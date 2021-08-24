Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.1347.1629823736015990381
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Aug 2021 09:48:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Df9+rJY1;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BACE61357;
	Tue, 24 Aug 2021 16:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629823735;
	bh=a1jlqxz+QQRsFj3/iXV6qh228SYozsX4YvI5VYnn1sI=;
	h=From:To:Cc:Subject:Date:From;
	b=Df9+rJY1URHrqMunpjghS5r9cheUgek4Sxhx6q1i/Y5Heg73TK0uJjCdCeYjyHflM
	 7KBkjVm7iUNhp9i09t6htF8BBuv/VhK+w/aL8N4a9UlO88tgNZDSudABjZl8ejLKPn
	 9/Li4Ew3MyzJH95roJwE4zksG8POfNkkojruCf58aVe+UjLhz1TVoG2W0oPUncouKB
	 WrCjlvK+Hbf3Otcmqu1unADMRIpi1m6D2h7xuS3X7IdJCN46uILfpNaGK4znxVAnwS
	 L2gwyoX5BUfDItS8yPORSypQePJLlFYxdaYNAMIeXwFvlpb6IOEPUcR5YfMkMesn1K
	 nPt8FvmOxoLZg==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH] grpc: use the new PACKAGECONFIG to disable shared
Date: Tue, 24 Aug 2021 16:48:49 +0000
Message-Id: <20210824164849.12717-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

There is a new PACKAGECONFIG for grpc to allows us
to selectively enable/disable shared builds.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend  | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
index dc0ea42..4cbd1a4 100644
--- a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
+++ b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
@@ -1,5 +1,4 @@
 # doesn't build and not required
 DEPENDS:remove:mingw32 = "libnsl2"
 
-EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
-EXTRA_OECMAKE:append:mingw32 = " -DBUILD_SHARED_LIBS=OFF"
+PACKAGECONFIG:remove:mingw32 = "shared"
-- 
2.17.1

