Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web11.39585.1629210574322142528
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 07:29:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QNYpNQCj;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1705760F14;
	Tue, 17 Aug 2021 14:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629210573;
	bh=Pz2xQQ4FIq0aqIG/7iNg6cwW9JFD6DKgQ3AxSRnv1J4=;
	h=From:To:Cc:Subject:Date:From;
	b=QNYpNQCjvWg3iFUWfsFgrnwuWmqxzSWBK9Q1O+bwi/5CzKjEDzrIImUobapuMt01P
	 DSInMA953UbWqw9ggGK6ISGaXF6Rqaxru44d7HtYt4N+rrGASGo/2J8cqyFcZw8uNo
	 0ux6yQ08FM7xkPNBWBKDtL8NhB6xwNe+hfOEPIqGBR901I5nWxXIIkGiDX0mhPcOg6
	 hWMQf20YSp93Im8f3Uyng0Z0oKDSngC1krvkNsAxPDVoKhU8JQIkP4XorKvIN7PBiJ
	 crES6MBF6F7X0eSzTxw+yON/9PemG+h/UwUxTymP9OVhbcNqU4+a0MufHfF/f6jf3U
	 LOOrbr9c6dz9g==
From: "Sinan Kaya" <okaya@kernel.org>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Sinan Kaya <okaya@kernel.org>
Subject: [meta-mingw] [PATCH] abseil-cpp: disable shared build as it is broken
Date: Tue, 17 Aug 2021 14:29:28 +0000
Message-Id: <20210817142928.3435-1-okaya@kernel.org>
X-Mailer: git-send-email 2.17.1

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

