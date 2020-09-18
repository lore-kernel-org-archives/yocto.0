Received: from MTA-07-4.privateemail.com (MTA-07-4.privateemail.com [68.65.122.27])
 by mx.groups.io with SMTP id smtpd.web11.10386.1600427820210845816
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Sep 2020 04:17:00 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: whitetree.xyz, ip: 68.65.122.27, mailfrom: charles.davies@whitetree.xyz)
Received: from MTA-07.privateemail.com (localhost [127.0.0.1])
	by MTA-07.privateemail.com (Postfix) with ESMTP id 3CF6D6004F;
	Fri, 18 Sep 2020 07:16:59 -0400 (EDT)
Received: from localhost.localdomain (unknown [10.20.151.215])
	by MTA-07.privateemail.com (Postfix) with ESMTPA id 333E460043;
	Fri, 18 Sep 2020 11:16:57 +0000 (UTC)
From: "Charlie Davies" <charles.davies@whitetree.xyz>
To: yocto@lists.yoctoproject.org
Cc: Charlie Davies <charles.davies@whitetree.xyz>
Subject: [meta-security][zeus][PATCH 0/1] Clamav db creation skip bug
Date: Fri, 18 Sep 2020 12:14:45 +0100
Message-Id: <20200918111446.17613-1-charles.davies@whitetree.xyz>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Content-Transfer-Encoding: quoted-printable

Hi Armin,

With the dunfell patch accepted I removed my local fix which has
now shown that the same issue exists on the zeus branch (I run
my builds against zeus and dunfell).

This patch fixes the bug.

Cheers,

Charlie

Charlie Davies (1):
  clamav: add INSTALL_CLAMAV_CVD flag to do_install

 recipes-security/clamav/clamav_0.99.4.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

--=20
2.28.0

