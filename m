Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web09.40465.1629213003333288621
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:10:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Cyr/RuUk;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 99D0F61053;
	Tue, 17 Aug 2021 15:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629213002;
	bh=Xv8id98G21PYJm0JXuv1vPrZPoAL7tx51sl39doqUEA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Cyr/RuUkSNfezuE9SDpJfCAzUcVt/c1BYCz0M7oqa4doiPCuz45k0baXdU/NEe7mn
	 UXlXPcszmcIMkaAlnkzdm+ivzqIXe4tCR4i+IaGfh7+AxE6rfIlgajLS6nLEe/v94u
	 MNuqVuPI7v2uFS7GcH0vnqYHgc75YZfXtx1avf4xYfq2r8jVuG65QrbDbVKitBeZ/R
	 /xPg2fRrSXb1BHUL2ruvCNQ8Lz6Laz51blmRrWgNWZQ8v9ZoRK6jg8fv5S3fr60OxF
	 ruyKhf3pmweePqw9QNV8xwcWPa8bKJTY8CUq03FtOvbq96uyFCn8NxL94zhclOD4QM
	 WYVHCR2NMeA0Q==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v3 3/5] grpc: static link tools when generating SDK
Date: Tue, 17 Aug 2021 15:09:55 +0000
Message-Id: <20210817150957.18246-3-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210817150957.18246-1-okaya@kernel.org>
References: <20210817150957.18246-1-okaya@kernel.org>

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
index 0000000..4fcd8b9
--- /dev/null
+++ b/recipes-devtools/grpc/grpc_%.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OECMAKE:remove:sdkmingw32 = "-DBUILD_SHARED_LIBS=ON"
+EXTRA_OECMAKE:append:sdkmingw32 = " -DBUILD_SHARED_LIBS=OFF"
-- 
2.17.1

