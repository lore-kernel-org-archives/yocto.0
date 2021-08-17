Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.39587.1629209268182628973
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:07:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yxgf+OyV;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5E96460EE4;
	Tue, 17 Aug 2021 14:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629209266;
	bh=bUhB5KTNrh2hp6Ve3I+1K7AgpyNHS/Qt20jO1Zd2tNs=;
	h=From:To:Cc:Subject:Date:From;
	b=Yxgf+OyV9bbAfDClOjVA41gwIuQwJSNGwj0ndCTw7LrpqX6eVPgKDH8+673b9Cr9y
	 4KliZrlIWKWto2HJpsCTre7y6BOi0+mnLH9nQd+SRaKXiYiMoDxlL3c7Fo0mU3vcl+
	 U98AicbZ03y9+61+SbTlptbqAgjpKKuoB9FSHprKw8eVyewpvzp3m8IVSfBxthKFv2
	 5rTRFfP1kQGTgTmskD3INm17qFW7A4YjfKNCTa2eQ96ZBnggkTYfABbpZ3DJPl47OJ
	 q7M+GJk4oUsU+SuIJZwPZ0E9I6Q88RvP7LkuVKxYUTsv9MTvDGquFs1NVV6g1mI5+v
	 WBio+iFxIbXrw==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v2 1/3] protobuf: static link tools when generating sdk
Date: Tue, 17 Aug 2021 14:07:40 +0000
Message-Id: <20210817140742.3110-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

Dynamically linked protoc.exe is failing as follows:

[libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
File already exists in database: google/protobuf/descriptor.proto
[libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
GeneratedDatabase()->Add(encoded_file_descriptor, size):

Switch to static linkage per upstream recommendation.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 recipes-devtools/protobuf/protobuf_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/protobuf/protobuf_%.bbappend

diff --git a/recipes-devtools/protobuf/protobuf_%.bbappend b/recipes-devtools/protobuf/protobuf_%.bbappend
new file mode 100644
index 0000000..b53b22d
--- /dev/null
+++ b/recipes-devtools/protobuf/protobuf_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"
-- 
2.17.1

