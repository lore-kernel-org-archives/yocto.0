Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web09.3430.1629492046134280913
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 13:40:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LNdTtwyl;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8280F61004;
	Fri, 20 Aug 2021 20:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629492045;
	bh=TgO2/9bCeMErohk9RK1Um+HnDC55jhnnAH6mG16kqeg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LNdTtwylrgtpyjGfbIJd7LKF9aKjjuIP/mlv/G/G1NsFhBt8BP0XEmNVw/MxJbIrZ
	 VC/qQwYx/BagAC2cPv5eTCtCd5YeW1nClcK5r4+wLVacOzCYDEDo7ON8qkh4HVsoCs
	 v+ETzmyQBdJhErOzCIeOFvqcTL5JjW7/MpL2Ampw3FZ3qvPCmv70Sx7DVtt5ij71vj
	 kHaSDwjPBsQEPrbqRDam0Tv2FmTiKkSe8tagv+nia8nAgtbDua8M8zlUoFmR3gWU8s
	 ilkaxfyRPMfSbH58deZHm+0YLAS529E8KxHlDb+JT4wqNBnDr3Es6UNzSdtDggbiuV
	 s4WjAtYhSwWZQ==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH 2/2] c-ares: disable shared build as it is broken
Date: Fri, 20 Aug 2021 20:40:40 +0000
Message-Id: <20210820204040.10849-2-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210820204040.10849-1-okaya@kernel.org>
References: <20210820204040.10849-1-okaya@kernel.org>

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../recipes-support/c-ares/c-ares_%.bbappend                    | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 dynamic-layers/openembedded-layers/recipes-support/c-ares/c-ares_%.bbappend

diff --git a/dynamic-layers/openembedded-layers/recipes-support/c-ares/c-ares_%.bbappend b/dynamic-layers/openembedded-layers/recipes-support/c-ares/c-ares_%.bbappend
new file mode 100644
index 0000000..8ef58f9
--- /dev/null
+++ b/dynamic-layers/openembedded-layers/recipes-support/c-ares/c-ares_%.bbappend
@@ -0,0 +1,2 @@
+EXTRA_OECMAKE:append:mingw32 = "-DCARES_SHARED=OFF"
+EXTRA_OECMAKE:append:mingw32 = "-DCARES_STATIC=ON"
-- 
2.17.1

