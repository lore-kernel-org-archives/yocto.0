Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.33643.1629164170410241106
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 18:36:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s38I+t9u;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF13E60EFF;
	Tue, 17 Aug 2021 01:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629164170;
	bh=Q+j7GyEZ6O9WNq/tDa4DtwnDpoz9kzyfh2i5yhmH5Rc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=s38I+t9uTgIphEcSvMGczChp8ynKyruOJ431HfhORd0UyMSWVIUIjd+fCVD0kx3t8
	 lduRJxnnuAnCTWr6Yz8XYsqA7DkbdC3pUMOn2TDEq2mxZfy/fbVHgMraxVfSBlo7A3
	 +ET/u1+qyZI+X+nz4JW07mW1f6tbq3Ny2yl0q9NBlp8IN8TsY+DcYOvvcL0EKNW396
	 IOx5N159sgivQ08iuOt5vuqOLK+rIWGPDWPWLNPDAwpngThPGSNBDD73tqGypJyvt1
	 LK0xR+NxcoT6aYyoYP8dY9xCcHkrJJNuOFe0hPIqrjefmvc3KEYbqHheRzgVIMOlKQ
	 BgjM9fyfw2Lew==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH 3/3] grpc: static link tools when generating SDK
Date: Tue, 17 Aug 2021 01:36:05 +0000
Message-Id: <20210817013605.5760-3-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210817013605.5760-1-okaya@kernel.org>
References: <20210817013605.5760-1-okaya@kernel.org>

[libprotobuf ERROR google/protobuf/descriptor_database.cc:641]
File already exists in database: google/protobuf/descriptor.proto
[libprotobuf FATAL google/protobuf/descriptor.cc:1371] CHECK failed:
GeneratedDatabase()->Add(encoded_file_descriptor, size):

Switch to static linkage per upstream recommendation.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 recipes-devtools/grpc/grpc_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 recipes-devtools/grpc/grpc_%.bbappend

diff --git a/recipes-devtools/grpc/grpc_%.bbappend b/recipes-devtools/grpc/grpc_%.bbappend
new file mode 100644
index 0000000..cbccf74
--- /dev/null
+++ b/recipes-devtools/grpc/grpc_%.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OECMAKE:remove:class-nativesdk = "-DBUILD_SHARED_LIBS=ON"
+EXTRA_OECMAKE:append:class-nativesdk = " -DBUILD_SHARED_LIBS=OFF"
-- 
2.17.1

