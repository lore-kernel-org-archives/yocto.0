Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.14594.1613867647064852578
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Feb 2021 16:34:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=XHd3SwNy;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: ryanbarnett3@gmail.com)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BDDA338C0601
	for <yocto@yoctoproject.org>; Sun, 21 Feb 2021 00:34:06 +0000 (UTC)
Received: by mail-il1-f174.google.com with SMTP id a16so7818231ilq.5
        for <yocto@yoctoproject.org>; Sat, 20 Feb 2021 16:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6qBQo4osCLwETONDsJY2+rHnmE/jBNhKQVNqMNK6mOk=;
        b=XHd3SwNy62rR5/eGKX5M6Km4rpOsTmasmyW153dYWUyMi8qurvKbHU2DGDlDvdZTQC
         6FhmMeIC2dhkr3+2GUdgEPV33X1CRLGMAEaxveNtsxLtPlSwCkJ/pC5V/zx4zcl+ehZU
         Qn0V+Z/r86uTboGn/cRLLMdNWDPKsxpeK/Gz2rsZQkzbYHBXcaeX6EmZ2pU7TJuARDeN
         ij7mtCAHdFcOHp+IvvZBD9PSTbApCfKupBSBjfnA8tpA/ydOQRDBpGGdCLwWC4dOHnlp
         cC0ZjwgRdAKcnyhjAUWgilDb+0eQ8B1ATcCpV72J8xNCCaevKWPrt+VX30PRJMLUJ85S
         sCeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6qBQo4osCLwETONDsJY2+rHnmE/jBNhKQVNqMNK6mOk=;
        b=mjS2yPvF6gYuS1XpPVfVOc8hmmMFFlrW9bc8dODdlIA5bahaMseI4F26pIPxvpqBCO
         c16XDHCRxpFR4eYP4bzLfq+6TK9m4OOBkjWeVwbWohEyejT6Fe2flkYNr54HD3XjSPLV
         k9KgJPv7rKSbF0lJrhV00yawp0olGu775QR4+QSTlq1dL/tpYz8BA+8dLkSmvo4Px84o
         CxVG9QXORJ3biVl8u2uy0r3EJx2PjkDjHeG/Crt8k1bxgR8So+6gOpQmGt1pCgQmqi02
         sqcyYoCMkR8Jk0af4nZDMGC7DeCtZhO1Fo78H2rkqyVPy3WcDkJaShxxujGmSXPWSCpM
         4maQ==
X-Gm-Message-State: AOAM532V9geZ0CtjOijBxxo3Q10VrrtUfr1QEdqU2Khx6tf7eUfSej47
	VhHX3qit0SbYbK7am7HhGJo=
X-Google-Smtp-Source: ABdhPJxBwxYHlBbv1mmepE8PfVyxZ83iTM7lCkEUlMvImgqY8FyvFuExB2aod2uAfzgOeDuq83h0TA==
X-Received: by 2002:a92:cc41:: with SMTP id t1mr9111859ilq.27.1613867646117;
        Sat, 20 Feb 2021 16:34:06 -0800 (PST)
Received: from ryan-pc.birdiebarn.net (50-82-176-206.client.mchsi.com. [50.82.176.206])
        by smtp.gmail.com with ESMTPSA id l14sm8986552ilc.33.2021.02.20.16.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Feb 2021 16:34:05 -0800 (PST)
From: "Ryan Barnett" <ryanbarnett3@gmail.com>
To: opkg-devel@googlegroups.com,
	yocto@yoctoproject.org
Cc: Ryan Barnett <ryanbarnett3@gmail.com>
Subject: [opkg-utils PATCH] Makefile: seperate manpages and utils install
Date: Sat, 20 Feb 2021 18:33:57 -0600
Message-Id: <20210221003357.22083-1-ryanbarnett3@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

The installation of opkg-build man page introduces a host dependency
on perl for the pod2man package to generate the man page.

To allow the opkg-utils scripts to be installed separately from the
manpages, break apart the install step into two install steps:
install-utils and install-docs

Signed-off-by: Ryan Barnett <ryanbarnett3@gmail.com>
---
 Makefile | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 4049654..7b7b8d5 100644
--- a/Makefile
+++ b/Makefile
@@ -25,11 +25,13 @@ mandir ?=3D $(PREFIX)/man
 %.1: %
 	pod2man -r "" -c "opkg-utils Documentation" $< $@
=20
-all: $(UTILS) $(MANPAGES)
+all: install
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

