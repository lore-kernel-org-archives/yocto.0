Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.40566.1629213002545006258
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:10:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OjsDBuxy;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C18E61073;
	Tue, 17 Aug 2021 15:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629213001;
	bh=bUhB5KTNrh2hp6Ve3I+1K7AgpyNHS/Qt20jO1Zd2tNs=;
	h=From:To:Cc:Subject:Date:From;
	b=OjsDBuxymLo//LSwwxZQFnaV/0qlXauB7FZlKnJkeMGAuhQnpo6wlbOTdA0OOzbY7
	 jeCV18u3DOnGdAJ4Q3jxQUMVyDc54bgzb/KCsMcSEeNicDAbzJAzwP4Haq6cd9AtoT
	 T1+I9IJLxcCOCb79Gr5dzChJZUGPlKfeY9U0OULcsl82rWfmRt+3Okv/WiY/JBV8KJ
	 ok4bMbfu71u+/DK4XTnQUg/6qKBB5sbXwVMSCuxL81d1nYPqkSd79/7s33unnWwqy5
	 t4ypKUYEafiJUfeNBMbWJqupOSoaAOJNoTt5Trz+cisquUPc8xAmnAQd5WNkAySA2e
	 wTv3+SoWmgODA==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v3 1/5] protobuf: static link tools when generating sdk
Date: Tue, 17 Aug 2021 15:09:53 +0000
Message-Id: <20210817150957.18246-1-okaya@kernel.org>
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

