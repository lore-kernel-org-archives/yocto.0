Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.40153.1629213003894051995
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:10:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=OabxIal3;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D63E61075;
	Tue, 17 Aug 2021 15:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629213003;
	bh=Pz2xQQ4FIq0aqIG/7iNg6cwW9JFD6DKgQ3AxSRnv1J4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OabxIal30X5dppzVDL/H/SZTWbnEj0CN6dnMFacpReR5OkHaChNUlleUD5tZJMoUE
	 dYlpM5Y9ao/96DTUB8MiVnx7pTzlIrck8DD3YLd4E2UH6g5KgY+Z4eUvECq+ZOhopj
	 jcS6EB7JUm2vykX0kY55MB1/fufA6i/mmzjnHeHSqFv3NiuVAqRrzuKECs3hMPc0pB
	 PZrU4nwL4BD0JAwTHxkDzL2JeapPmFhrFpSrzlGrJHoC3LmoqaHomPtXZyLfj/EyAK
	 oFh9yICU5LgECCoFk75eHv95W0/73xwsRQCQTNz9ufUrbOc92hr68RTdbxo+f/Twwq
	 Okt4kP9PsK/yg==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH v3 4/5] abseil-cpp: disable shared build as it is broken
Date: Tue, 17 Aug 2021 15:09:56 +0000
Message-Id: <20210817150957.18246-4-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210817150957.18246-1-okaya@kernel.org>
References: <20210817150957.18246-1-okaya@kernel.org>

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 recipes-devtools/abseil-cpp/abseil-cpp_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-devtools/abseil-cpp/abseil-cpp_%.bbappend

diff --git a/recipes-devtools/abseil-cpp/abseil-cpp_%.bbappend b/recipes-devtools/abseil-cpp/abseil-cpp_%.bbappend
new file mode 100644
index 0000000..b73a8ea
--- /dev/null
+++ b/recipes-devtools/abseil-cpp/abseil-cpp_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
-- 
2.17.1

