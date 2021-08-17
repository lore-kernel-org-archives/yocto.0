Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web12.39769.1629209268210316110
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:07:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Apzdrrc7;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8736060F14;
	Tue, 17 Aug 2021 14:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629209267;
	bh=Xv8id98G21PYJm0JXuv1vPrZPoAL7tx51sl39doqUEA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Apzdrrc7rw55L8EYlGjrMIudwrQlMivKFNZ9Z0FuCKqnPiSz8W6NS+c1dUVNtWjV2
	 EbfntXCZrZnsDEloP/f6VM+WNoZE5MJpExa+KvoeBtWRDIo1AwlJxGlN3FAY+GyAn6
	 GL0nlaEuN5NmSEeTKeKAQslyqx10/HNY+IDuddWIfdSBoCrq2jU2FQhfTRlafNyX1/
	 EL611ElcBgMbOF+npcVTwN/DoSC7juD6/u4wqzkjL4J0RJuumiCpTNGMZy1+h6VinE
	 VjEu1cBM7EA61yC/3bQlpiZsWTVKEj+wX6zat07sxhuakp7rTsV4qeymaMFVzfvs4H
	 mwyuSkDXHlJ6w==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v2 3/3] grpc: static link tools when generating SDK
Date: Tue, 17 Aug 2021 14:07:42 +0000
Message-Id: <20210817140742.3110-3-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210817140742.3110-1-okaya@kernel.org>
References: <20210817140742.3110-1-okaya@kernel.org>

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

