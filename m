Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.33354.1629164171519558549
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 18:36:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jS3ajjqM;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E94160E90;
	Tue, 17 Aug 2021 01:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629164169;
	bh=tstg6p1olagALlU1teW0YgExF95tNN1bKbChCF5kyo4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jS3ajjqMg9QTrVF//W8BaMm6G98SFvutjSVMgUwBFBzzTWDYwm+pgn0QHrdrbH/9K
	 vZQms/KjbBrUR/+PuPJ0sXR8+MKFhwH0U40YS46usGeQ+cCj3GoGq6z59utJbUjwDR
	 QrlLOyu0nuftA5Wv+FMgpdKbmgHkcvemtg+XfN/ItEZSw1T8KQguTvjd/05KZ7Bx69
	 87I2g2JDGdzX0+vf+XR0g9lciMdL6X9gum3pxbpkvhMOb0NmYy/5c0/SQPPsygBpB1
	 8XYKKN1qNNzlls89FEO1wFMP7fT4qtWHWs46Gk+jbNDkYr23gCbAQL+ZDo1xORYTNn
	 E1skPtoNLFjOA==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH 2/3] protobuf-c: static link when generating sdk
Date: Tue, 17 Aug 2021 01:36:04 +0000
Message-Id: <20210817013605.5760-2-okaya@kernel.org>
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
 recipes-devtools/protobuf-c/protobuf-c_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/protobuf-c/protobuf-c_%.bbappend

diff --git a/recipes-devtools/protobuf-c/protobuf-c_%.bbappend b/recipes-devtools/protobuf-c/protobuf-c_%.bbappend
new file mode 100644
index 0000000..7e62ff6
--- /dev/null
+++ b/recipes-devtools/protobuf-c/protobuf-c_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF:append:class-nativesdk = " --disable-shared"
-- 
2.17.1

