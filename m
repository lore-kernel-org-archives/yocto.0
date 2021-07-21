Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web12.2005.1626860809982385495
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jul 2021 02:46:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@denx.de header.s=phobos-20191101 header.b=NGSmAYj2;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 4903A82956;
	Wed, 21 Jul 2021 11:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1626860808;
	bh=oZM8nhVW6u3XfX1G0V+Mubvh4a0KX1yZiMv0yfQLWiE=;
	h=From:To:Cc:Subject:Date:From;
	b=NGSmAYj2zl6nftihTFEdfGbr7dZKSkgGUK04dhoY6MHpcKO8FDmMhIxglnupkGGZ1
	 4Cy0rw2DTYUZkxfMPLBVuYw+OragIK+Pwxg8nyphwqEHqp0zLRxIT5Lpm4VSVdSCDM
	 KHVt2pZ0RZAmEq7DkgZkxBI+FKVxhpiluzMGTn+Qc16sz90LCwn/cmHgLDIhaKBv9v
	 BPXudKCjYa+D3epKc5wXGerpg3WcLWnf95qeAuoEDyFB4IZo5qxW+XX/L+SIFFyd0h
	 g1t5ynjc77JSj0P4EyeDOHLrN3J33mMwf9geJyhcNPUehmDtMBgqYg6inTfYNzRPPK
	 5pxg9Y8yMJHbg==
From: "?ukasz Majewski" <lukma@denx.de>
To: yocto@lists.yoctoproject.org
Cc: Lukasz Majewski <lukma@denx.de>
Subject: [ptest-runner 0/5] ptest: Various memory fixes and enhancements
Date: Wed, 21 Jul 2021 11:46:22 +0200
Message-Id: <20210721094627.29833-1-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Content-Transfer-Encoding: quoted-printable

This patch series provides some memory management fixes and corrected
return code handling for ptest-runner2.

Adrian Freihofer (4):
  git: Extend the gitignore
  mem: Fix memleak for ptest_opts
  mem: Simplify memory management
  mem: Refactor ptest_list cleanup

Lukasz Majewski (1):
  main: Do not return number of failed tests when calling ptest-runner

 .gitignore         |  3 +++
 main.c             | 33 ++++++++++++++++++++++++++++-----
 ptest_list.c       | 13 ++++---------
 ptest_list.h       |  8 +-------
 tests/ptest_list.c | 13 +++++++------
 tests/utils.c      | 22 +++++++++++-----------
 utils.c            | 11 ++++-------
 7 files changed, 58 insertions(+), 45 deletions(-)
 create mode 100644 .gitignore

--=20
2.20.1

