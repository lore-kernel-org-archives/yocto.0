Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web09.2065.1626860810136318912
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:46:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=QfMq0r/F;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 804B982991;
	Wed, 21 Jul 2021 11:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626860808;
	bh=kQffT2P7RSvFtWfU/assMs6KTiCj/kEv6V7RGtL77Zc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QfMq0r/FQ6M3dWbwTi5DKmCKDLuBi8AM+Ca391vYwybFTKLOPjJeSE8UxBRHh1glc
	 4TbcmjdH3IstYtvEogkshF4I0klz+0kxBVOEeGTjTPm9xtHRZzajqIXs/TeSgAGzra
	 VChB48CEVvMmQcI6/qaOsn58hff55vnBEJnSCEL9/e8ychs/kqPDHYZ927b1hwBxnM
	 o3KKpJ9+6v6oLU7i/84wJGg/QLU7p64ZP0+7N+pM1o5D653eB4W0VIXerR1rl6rd9r
	 tAzs06UqOlL3R6w/D5gxJ0WZusW9FnNLcIRbEQ8yVsBBpVQWEotYr2GSFAmKodv9aR
	 3vidAfJJ2jNLQ==
From: "?ukasz Majewski" <lukma@denx.de>
To: yocto@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [ptest-runner 1/5] git: Extend the gitignore
Date: Wed, 21 Jul 2021 11:46:23 +0200
Message-Id: <20210721094627.29833-2-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210721094627.29833-1-lukma@denx.de>
References: <20210721094627.29833-1-lukma@denx.de>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

From: Adrian Freihofer <adrian.freihofer@siemens.com>

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 .gitignore | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..ef07e6a
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,3 @@
+*.o
+ptest-runner
+ptest-runner-test
--=20
2.20.1

