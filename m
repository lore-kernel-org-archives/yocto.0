Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33ADBC433EF
	for <webhook@archiver.kernel.org>; Fri, 20 May 2022 18:30:19 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.953.1653071413928261949
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 May 2022 11:30:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=LHWwiWQQ;
 spf=pass (domain: mvista.com, ip: 209.85.215.179,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pg1-f179.google.com with SMTP id h9so229772pgl.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 20 May 2022 11:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DCByqNeKQbUiGPK1i6HZY1d0VH0dLt+KYNAGd+OAsMM=;
        b=LHWwiWQQnjhpgvrA07hDhkjYIO3u38njQFeUXtkis25QfgQeaQmAJZhogSfjzBBye+
         3cYjahEjruyjciFVONCKKxe1EqNbVP/FvN0o/WjBmViT8fqGCJva6KgVRns5hxi7i9e7
         rgNuHjnb8NsoBqXKw/5CmOd0xnsmlvqpKjop4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DCByqNeKQbUiGPK1i6HZY1d0VH0dLt+KYNAGd+OAsMM=;
        b=Rz1RGhbCwG8oFStQw8n3214R7lmr3zOMHWQ5scLGd/k8wubg/EKhr7/yUA3NDRS12k
         lK/FRBqC9GtJ9vhCkSot2oBzAfMKF38Xag01ti6wxikGw10THqN4H54yLFsOM5NXXE7C
         Y43JM43WH5di9jkhnSkdpM9ilhlIcvnDtbaYWbGlGqGmLxgBi5rSb9W7UtddoCkmaYQJ
         nO9dsyLVQofQhsr1pTO73pDgUr+qOq22xNICes4eD8TnAm47BvQ9CecYPsWzsKgWURdz
         aPGvOdDj15IMK0XKGIzb9SjneyPSfRcQT4rQ8Gt0tpt7lFPkt4hYYOvP25iWn0AHFEq9
         /3og==
X-Gm-Message-State: AOAM532AYtdvCIIflTMbZjqWLPzkT1rX3bTsTCs3wuadP8xOXfeVDwii
	/glK6LPz/1JsTn6SVaGzAJEyzdHKZUVKMA==
X-Google-Smtp-Source: 
 ABdhPJy7R5xP0j2kIy8rvrMeBjgOVG69JPxDggVEv8kJIHLAqVlBPkOH0F3v4VUmr5rsfTqK+llzrg==
X-Received: by 2002:a63:4086:0:b0:3f6:22f9:b9c9 with SMTP id
 n128-20020a634086000000b003f622f9b9c9mr9413253pga.398.1653071412634;
        Fri, 20 May 2022 11:30:12 -0700 (PDT)
Received: from red (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 b24-20020a056a0002d800b0050dc76281besm2093506pft.152.2022.05.20.11.30.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 11:30:11 -0700 (PDT)
Received: by red (sSMTP sendmail emulation); Fri, 20 May 2022 14:30:09 -0400
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][PATCH] lib-perl: prefix man pages to avoid
 conflicting with base perl
Date: Fri, 20 May 2022 14:30:07 -0400
Message-Id: <20220520183007.2574658-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 May 2022 18:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57147

The following occurs when pkgs-docs added to image features.

Error: Transaction test error:
  file /usr/share/man/man3/lib.3 conflicts between attempted installs of lib-perl-doc-0.63-r0.corei7_64 and perl-doc-5.34.1-r0.corei7_64

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 recipes-perl/perl/lib-perl_0.63.bb | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/recipes-perl/perl/lib-perl_0.63.bb b/recipes-perl/perl/lib-perl_0.63.bb
index 4c964d5..25d0890 100644
--- a/recipes-perl/perl/lib-perl_0.63.bb
+++ b/recipes-perl/perl/lib-perl_0.63.bb
@@ -26,3 +26,10 @@ do_compile() {
 	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
 	cpan_do_compile
 }
+
+do_install:append() {
+   # Man pages here conflict wtih the main perl documentation
+   for page in ${D}${mandir}/man*/*; do
+        mv $page $(dirname $page)/${BPN}-$(basename $page)
+    done
+}
-- 
2.35.3


