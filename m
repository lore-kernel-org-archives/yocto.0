Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.34163.1613999390085984631
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 05:09:50 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=T3tg2eys;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: ryanbarnett3@gmail.com)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 96F4C38C04B3
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 13:09:48 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id u20so13090615iot.9
        for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 05:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MleHtcrTVOrb1J3V9SyY4NZ3FYdvuQsjNrg05CHV7SE=;
        b=T3tg2eysp0wxJIx34ahAv7DIESti8m8EFtkJKOXeMf/la8W9kfIbr+iDIwIYzEFP1/
         N/7ezuW9sY5dVO9dYyceuUFB5yaojNt6Nyn5NmMoxg5ifeuDjcFkQU0I8JJ2QD5YlleK
         R3AfgSYNqszhe9yLQqFqpdpN0DXNhMfDG3LsIltPFIQDpIHz2pDwizwLQO3jGRoB7Gpd
         UPYtr6Yg9sDzAEsATuTv8B3Fdr+WWPmEQQpcwkSq9fcAXMEfTI37/1kZ1pz4kl8kajOj
         sWHcSEKsYpb2mKocAX6Gdw6NefQSoZcmj/Hlmx8Sv22DDXSVrqQMtts3OLUYE9sXbGLn
         YpiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MleHtcrTVOrb1J3V9SyY4NZ3FYdvuQsjNrg05CHV7SE=;
        b=t+K/PBh5lLqJmfB3v32ZYwtXRtORjj9SdqtP50WNCl/F6HuYAnm1bkdoAn3Q+GabND
         VupaFRCfZxlluFDfsfle6ROXmEd++53kTNqxY+pxuIRyeSSddDx3FiSOfhxvg1Lbd4Rc
         jnIhKz88gSUzECrkmDGIxKvqMbLrK9tuqI5Yas1ERFdfHBamp49pJNxOF7vwQo4QeBR5
         Zq2u4fD6B7exQ2yyudjmgcmqCv6H/ATlHudz+qc7/LAf1Xgz/iL2UlD2jYx4wZZdaNvg
         ZF8w6F2oBfSToiCsVsgOpZ2u/8XXQ3kN4nJjddcJEGgd443YKQrZLGmIAkmyksnA+yzV
         J7OA==
X-Gm-Message-State: AOAM530GwqKRPYwcWrFbs2Bkfbn/2Nm3nhyu4c9AKU4tUzcEuB8DAYBi
	O+5klXCl7L9SbQ7znNwzbxA=
X-Google-Smtp-Source: ABdhPJzVn9ve+i2d3zyd2c0ICv/84mAvZGo1WoxyMuLIjhbqvtJHxEkWt7r0aZZfLUadfNcuzUlGpQ==
X-Received: by 2002:a05:6602:26c6:: with SMTP id g6mr15192749ioo.150.1613999387729;
        Mon, 22 Feb 2021 05:09:47 -0800 (PST)
Received: from ryan-pc.birdiebarn.net (50-82-176-206.client.mchsi.com. [50.82.176.206])
        by smtp.gmail.com with ESMTPSA id o17sm9236615ilo.73.2021.02.22.05.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 05:09:47 -0800 (PST)
From: "Ryan Barnett" <ryanbarnett3@gmail.com>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Cc: Ryan Barnett <ryanbarnett3@gmail.com>,
	Christian Hermann <mail@hermannch.dev>
Subject: [opkg-utils PATCH v2] Makefile: separate manpages and utils install
Date: Mon, 22 Feb 2021 07:09:34 -0600
Message-Id: <20210222130934.9213-1-ryanbarnett3@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The installation of opkg-build man page introduces a host dependency
on perl for the pod2man package to generate the man page.

To allow the opkg-utils scripts to be installed separately from the
manpages, break apart the install step into two install steps:
install-utils and install-docs

CC: Christian Hermann <mail@hermannch.dev>
Signed-off-by: Ryan Barnett <ryanbarnett3@gmail.com>
---
v1 -> v2:
  - Leave all target behavior unchanged (suggested by Christian)
---
 Makefile | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 4049654..fe96d5a 100644
--- a/Makefile
+++ b/Makefile
@@ -27,9 +27,11 @@ mandir ?=3D $(PREFIX)/man
=20
 all: $(UTILS) $(MANPAGES)
=20
-install: all
+install-utils: $(UTILS)
 	install -d $(DESTDIR)$(bindir)
 	install -m 755 $(UTILS) $(DESTDIR)$(bindir)
+
+install-docs: $(MANPAGES)
 	install -d $(DESTDIR)$(mandir)
 	for m in $(MANPAGES); \
 	do \
@@ -37,4 +39,6 @@ install: all
 		install -m 644 "$$m" $(DESTDIR)$(mandir)/man$${m##*.}; \
 	done
=20
-.PHONY: install all
+install: install-utils install-docs
+
+.PHONY: install install-utils install-docs all
--=20
2.25.1

