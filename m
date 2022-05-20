Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A996C433FE
	for <webhook@archiver.kernel.org>; Fri, 20 May 2022 18:32:39 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web10.983.1653071549143034737
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 May 2022 11:32:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=LqjcIrJP;
 spf=pass (domain: mvista.com, ip: 209.85.210.176,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pf1-f176.google.com with SMTP id h13so2153382pfq.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 20 May 2022 11:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DCByqNeKQbUiGPK1i6HZY1d0VH0dLt+KYNAGd+OAsMM=;
        b=LqjcIrJP9f13SQJI7x8dzrP63gqXF262dBnVhENGtBrcz2pnXrNtUWRK33DkHP4jZp
         cV2EFmNO8hAn9QRQ69a+nFVfi11Qz/OAg6HNKaKdThdomKv3Jco8PX6cWmHt1dUoBAHX
         +rgGIx8+hkpJUFYLPbcByX1y38y3Uz31h800A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DCByqNeKQbUiGPK1i6HZY1d0VH0dLt+KYNAGd+OAsMM=;
        b=J+gQYVhRSnxB11KDzLYB19VHup6/xuZrahAhph+oj+tMeK0Ut4EaOXxYyd/aws/DMa
         lsGY8TzAPJx+05u5VxhHtkzr41CxTGKQ2oYC2vgtjqO7C9eSxDtv7xarnVu15CW0waNj
         sAPnh/CYn28h8ZS+VXYdGd74lME4jlIc5JoZRzV7dnKjcaKRi5Ej3eEYaDWtRHnAEUnj
         1TppIRDHT7YPbiVCI5LTpc2zxNy+CpDZTVs5+qL9NWctnvWqazfgMRSeGc6nSYrEGun9
         gq+8fH93l5qMn8vaqZwg63vOl+pzgEVc12+/ji01hBQ3OHbP3iC8i6YQC0HBUABCMamt
         H63w==
X-Gm-Message-State: AOAM530U2Y46kMB9DUe9CkMn4Kkb/9LWVgPQg+9gDuR2aHYpD8sISNRI
	7YTa6iODXJjc7pnDhvEXhopZLTQV4EFF/A==
X-Google-Smtp-Source: 
 ABdhPJxgucxi3SgCTTihG5st0b3WXjpYwyB9nmCqZ7nFEG8lo0r5nuTd/qRtMBQbwYBz9xBuwTn9zA==
X-Received: by 2002:a63:5:0:b0:3c6:dcb2:428 with SMTP id
 5-20020a630005000000b003c6dcb20428mr9544474pga.73.1653071548301;
        Fri, 20 May 2022 11:32:28 -0700 (PDT)
Received: from red (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 e16-20020a17090301d000b0015e8da1f9e8sm79868plh.77.2022.05.20.11.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 11:32:27 -0700 (PDT)
Received: by red (sSMTP sendmail emulation); Fri, 20 May 2022 14:32:25 -0400
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-security][kirkstone][PATCH] lib-perl: prefix man pages to avoid
 conflicting with base perl
Date: Fri, 20 May 2022 14:32:24 -0400
Message-Id: <20220520183224.2579404-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 May 2022 18:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57148

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


