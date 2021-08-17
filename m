Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.33819.1629164170063991096
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 18:36:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mSM/JAW1;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9128F60EAF;
	Tue, 17 Aug 2021 01:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629164168;
	bh=BlESuTBGwLJbRgNZWfp2b+CyBlmFNogBX0wbYTR4Y6s=;
	h=From:To:Cc:Subject:Date:From;
	b=mSM/JAW107NJShwrqoPi7JW7Vt/6DBMULR/vAJYvngOaHdD3OeBusEQUdvgKXKWvc
	 n7Jd+BlkJhnNTv1Q9MsyRkPb+wS7kOkyViVZFuHqB2+uCS9s0dxF3kRGG0Hbk38JS2
	 xZtHXrCIzyOpNnEUuAITWiDC33iaWNzuWIAEVyDsoCgEIhk9W1YkKozhNcSPqx+5fU
	 7DUOvrLH9eHsuoIGhEAVQoDU/6ACwFPXppIG388DocefFGE0OItIcga8jIF9c84uRI
	 hzMGBxLJiAlLMjWzl5OEDa9LU++Fm7hS0NRQ+d1iVnT64ZeMla63+DbGSLDLz6R8lF
	 NaUGILSD1b4tw==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH 1/3] protobuf: static link tools when generating sdk
Date: Tue, 17 Aug 2021 01:36:03 +0000
Message-Id: <20210817013605.5760-1-okaya@kernel.org>
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
index 0000000..7e62ff6
--- /dev/null
+++ b/recipes-devtools/protobuf/protobuf_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF:append:class-nativesdk = " --disable-shared"
-- 
2.17.1

