Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.39702.1629209268393546833
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:07:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NylEloAO;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id F00BF60E09;
	Tue, 17 Aug 2021 14:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629209267;
	bh=QjxVZS72rrToGGNREmqGm66wvDKoWyQ1uiL4dXI40CI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NylEloAOe08FAtRGihW2kO1gtGkHlqbTG+GPLweVBvR5z7Ij8IYVVFeiKDHivL4ei
	 nqKszszCvRu7EiFZmkgBhBM4li1Csp68EdqYyMEUKBDCyjZnsglINi45/YX3L/UvjG
	 6rVQhG7L7DYDHo25qSfh12QGtXSckLCrxiiOqhxBRuxAh9udeMScdoYJeM6NOwwABe
	 2mnBCsIscpKVJLpgY5MNtLkp+77chHX8RHLDQS+lKwLWuKAjUFil2uFuFzpz4f/csh
	 x/TFANP24j/n1+5PFH83gZrNkJOnrR5HABptq73OGtUnPQr1nVlJN1O/bvV+T7+mOO
	 Wc3Ow2WHWfuEQ==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v2 2/3] protobuf-c: static link when generating sdk
Date: Tue, 17 Aug 2021 14:07:41 +0000
Message-Id: <20210817140742.3110-2-okaya@kernel.org>
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
 recipes-devtools/protobuf-c/protobuf-c_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/protobuf-c/protobuf-c_%.bbappend

diff --git a/recipes-devtools/protobuf-c/protobuf-c_%.bbappend b/recipes-devtools/protobuf-c/protobuf-c_%.bbappend
new file mode 100644
index 0000000..b53b22d
--- /dev/null
+++ b/recipes-devtools/protobuf-c/protobuf-c_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"
-- 
2.17.1

