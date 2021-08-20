Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.3444.1629492384765559709
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 13:46:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gkSnVBeE;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2AAF061156;
	Fri, 20 Aug 2021 20:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629492383;
	bh=MgKbW7rWoouIH1IZ0PYmlL6oORiy3G+kQ7aQaTUoUeo=;
	h=From:To:Cc:Subject:Date:From;
	b=gkSnVBeEPOVWSY8Nsd6HvYGuz7jfOBYYbkTaLLpe0K1JweIEXjGntW3clWv2RMP7+
	 ZnGOl0Z7ZtnhvYJ05GO7b8OsBPmiUfEYJrcJvb9T1S+75RuLihBvTWbpWmUQjINUpb
	 wu+pQMfZ/NB+uMwuWecyAaKsCR1Fws2T8sgZ5RJnhIh9LQG3ZBGFNiubGCdU9WnJeO
	 N58Td9VYUAQ6YHs76NjT4gaCz7xPb8D5vJ/hvkI54BwGBJUoLGmJeSsyTAmLFvJdVf
	 caN5XmbUSPeoy+7WfYxC/i85aI4piaUDwEOqO2kc4P7SULaEZAjpgXNtzsBq8ceW9i
	 Of1N1hymlx1zg==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH] grpc: remove nl2 requirement since it is optional
Date: Fri, 20 Aug 2021 20:46:20 +0000
Message-Id: <20210820204620.11236-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend  | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
index a72496d..dc0ea42 100644
--- a/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
+++ b/dynamic-layers/openembedded-layers/recipes-devtools/grpc/grpc_%.bbappend
@@ -1,2 +1,5 @@
+# doesn't build and not required
+DEPENDS:remove:mingw32 = "libnsl2"
+
 EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
 EXTRA_OECMAKE:append:mingw32 = " -DBUILD_SHARED_LIBS=OFF"
-- 
2.17.1

