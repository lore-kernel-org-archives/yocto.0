Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web09.2968.1579207520765430887
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jan 2020 12:45:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=qKbGodna;
 spf=pass (domain: konsulko.com, ip: 209.85.128.54, mailfrom: pbarker@konsulko.com)
Received: by mail-wm1-f54.google.com with SMTP id f129so5265851wmf.2
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jan 2020 12:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YIpeQVZG3WCcvgswqv+7r2C0MhirQlF6o+D0/rwG1DM=;
        b=qKbGodnabDNNs31Ct7U1VqND7Mo8TYAQH9dzCHdPpW+uAF680RlfcXWr9TJuGTDmaf
         78ls9Qc0HjuO4wm+QQzArIEdpy0HQEE3jyU3TtnAlYlcFz9RJpNeTyWqPb0eYUxHMZxd
         mUY7ugUvvsxRoOn2m5INCZyI8SFPlRLwIq+SM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YIpeQVZG3WCcvgswqv+7r2C0MhirQlF6o+D0/rwG1DM=;
        b=B70qPmcw061UHBugxMBQ92z+P5P1NqtwsofJSMRQtC1mDuKJyomkS/Bb43GNuib/YX
         XNu+mZ+WRmGrU6euf74qG3TXDf8iAa9Fb/uW7lIfZnWpGArsyF+9MsczlN2NTmi+WDKH
         FnqNN8aQE/IQMb2sh5jsrwQtkeCIMsYZ8nJdnPLV3dskQsYqIAstOOf1BDgNQTzOTgt3
         qFSRXvX1Y8KMu6dIW41L9tNdhUNF0yMd4ysLA0KbQ2u4WiAFBwHJMDrc+RIehyXcS9kW
         UP+lx9+b/GqBWHevCYXHl5uC+pIaftMQul7EiONlwUYwAllqDbHjPYdfp/MowQrgmcZF
         FXSQ==
X-Gm-Message-State: APjAAAVqoKWXFQ4q1lrcx560jh1O4edy2FIEE21f6esCdz30F2rFWcUy
	aAGtjHOvdtEilUkZjODYU5LZ2IQRs11HgWsE
X-Google-Smtp-Source: APXvYqzeOK1VAlTafhm18sy16ch1M2TWUktpIW2B9XBRFg9/n2gzt7dtZOOHvAu1giQWcWPMlouE3Q==
X-Received: by 2002:a05:600c:2301:: with SMTP id 1mr861179wmo.147.1579207518879;
        Thu, 16 Jan 2020 12:45:18 -0800 (PST)
Return-Path: <pbarker@konsulko.com>
Received: from arch0.home.b5net.uk ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id q11sm31101771wrp.24.2020.01.16.12.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2020 12:45:18 -0800 (PST)
From: "Paul Barker" <pbarker@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Paul Barker <pbarker@konsulko.com>
Subject: [patchtest][PATCH 2/2] README: Update links and other references
Date: Thu, 16 Jan 2020 20:45:08 +0000
Message-Id: <20200116204508.5489-2-pbarker@konsulko.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200116204508.5489-1-pbarker@konsulko.com>
References: <20200116204508.5489-1-pbarker@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

* Refer to usage.adoc instead of a non-existant docs directory.

* Switch http links to https.

* Update the yocto mailing list address after the move to groups.io.

* Minor style fixes.

Signed-off-by: Paul Barker <pbarker@konsulko.com>
---
 README | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/README b/README
index 0a429f8..8e0ae71 100644
--- a/README
+++ b/README
@@ -9,15 +9,16 @@ unittest python module. As input, it needs tree elements to work propertly:
 a patch in mbox format (either created with `git format-patch` or fetched
 from 'patchwork'), a test suite and a target repository.
 
-The first test suite intended to be used with patchtest is called patchtest-oe [1],
-targeted for patches that get into the openembedded-core mailing list [2] correponding
-to [3] repository.
+The first test suite intended to be used with patchtest is called patchtest-oe
+[1], targeted for patches that get into the openembedded-core mailing list [2]
+and corresponding repository [3].
 
-Patchtest can either run on a host or a guest machine, depending on which environment
-the execution needs to be done. If you plan to test your own patches (a good practice before
-these are sent to the mailing list), the easiest way is to install and execute on your local
-host; in the other hand, if automatic testing is intended, the guest method
-is strongly recommended. Both methods are fully explained in doc folder.
+Patchtest can either run on a host or a guest machine, depending on which
+environment the execution needs to be done. If you plan to test your own patches
+(a good practice before these are sent to the mailing list), the easiest way is
+to install and execute on your local host; in the other hand, if automatic
+testing is intended, the guest method is strongly recommended. Both methods are
+fully explained in usage.adoc.
 
 Installation and Usage
 ----------------------
@@ -27,14 +28,16 @@ Refer to the file 'usage.adoc' in this directory.
 Contributing
 ------------
 
-The yocto mailing list (yocto@yoctoproject.org) is used for questions, comments and patch review.
-It is subscriber only, so please register before posting.
+The yocto mailing list (yocto@lists.yoctoproject.org) is used for questions,
+comments and patch review.  It is subscriber only, so please register before
+posting.
 
-Send pull requests to yocto@yoctoproject.org with '[patchtest]' in the subject.
+Send pull requests to yocto@lists.yoctoproject.org with '[patchtest]' in the
+subject.
 
 When sending single patches, please use something like:
 
-    'git send-email -M -1 --to=yocto@yoctoproject.org  --subject-prefix=patchtest][PATCH'
+    git send-email -M -1 --to=yocto@lists.yoctoproject.org  --subject-prefix=patchtest][PATCH
 
 Maintenance
 -----------
@@ -44,6 +47,6 @@ Maintainers:
 
 Links
 -----
-[1] http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/
+[1] https://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/
 [2] https://www.yoctoproject.org/tools-resources/community/mailing-lists
-[3] http://git.openembedded.org/openembedded-core/
+[3] https://git.openembedded.org/openembedded-core/
-- 
2.25.0

