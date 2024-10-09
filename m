Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33807CEE349
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 20:33:04 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.27588.1728505975452582065
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 13:32:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LaYu3bMS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-431160cdbd0so1015065e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 13:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1728505974; x=1729110774; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kfMYLP3fCnK1TwkSPC2PezJ+hApIgDA9lkJzSf/NRKU=;
        b=LaYu3bMSWZ2zH1eaC7AnzbedrKXHQCK9JsnhS4kJI/X944Ekj7bzbEBX1MzvlIs/3q
         wzRJhlzDtBdgop0cnWDamfPjGYHMC/XHtvnbWLwrFktKjjeMuTBjfR+yUhRxD47W269I
         w1P8tt9WRphLoOpL85xNoW+QG9dZQkn8jRxOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728505974; x=1729110774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kfMYLP3fCnK1TwkSPC2PezJ+hApIgDA9lkJzSf/NRKU=;
        b=A06Z3gdZLVyLCjY1y1QICFnLtZxSXsDtI0P22mRGsUAAg1R8R2gPyqPoz8qAb7k7b6
         1KebiKXxPPiECqJNgvA3p9dZ8LxsOEsizISCE4OxuvhKEKoNOarm6prxU+ncLX4nUCFM
         CVCTQNmWPaT44SbzLY3RR+UX+OW/Lz6MfHLiiMR/NG2Vnjy7441q1pisVZLY0ywMVlaV
         tAiNzCh2Fp1DqaC/9nxI7vU4SrLfgXt5+mBtFiZkeJjoCHSJgJ6j/5u//9SH8PC3C/16
         yVOi8GElh/R+cSA90i/npnTpM3j84ZBZIyNXubjv/u1Q5P4sHU3saJPWNaz1lX3fxU+N
         6zLw==
X-Gm-Message-State: AOJu0YzeprNx3wQKGEcf5gEmejZQ9+bEJ/r4BNkR0EzdPBYeP075y9ne
	y+hgLMsCqvPmEOoZjcMid0N0BUFycwd7n8/SL599v1ToScvgiTe0xDTf3GaJg2EKs+YW2cFnW0z
	n
X-Google-Smtp-Source: AGHT+IFcPI2Vzuq89AC+OAknye51LUG/08iC94d0K7DLr9fR2NZd/MMPo8N9qGOkrAMFmSUfEJ6Ylw==
X-Received: by 2002:a5d:61c2:0:b0:37c:ca20:52a with SMTP id ffacd0b85a97d-37d4816e1aemr784443f8f.8.1728505973587;
        Wed, 09 Oct 2024 13:32:53 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fb33:4e5d:4941:5018])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d454ec93fsm1536981f8f.97.2024.10.09.13.32.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 13:32:52 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH 2/4] scripts/run-docs-build: Use the 'cluster-downloads-cache' location for cache files
Date: Wed,  9 Oct 2024 21:32:49 +0100
Message-ID: <20241009203251.470776-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
References: <20241009203251.470776-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 20:33:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63990

The docs build uses some cached tarballs, use the standarised location for these.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-docs-build | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index 718467f..96ab992 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -7,7 +7,7 @@
 #             $3 as the path to bitbake
 #
 # Environment variables:
-#   - docs_buildtools as the path to buildtools script for the docs.
+#   - buildtools_url as the path to buildtools script for the docs.
 #                     Can be found here: https://autobuilder.yocto.io/pub/buildtools/
 #   - docbookarchive as the path to old (pre 3.1.5 and Sphinx migration) docs tarball
 #                     Can be found here: https://downloads.yoctoproject.org/mirror/docbook-mirror/docbook-archives-20201105.tar.xz
@@ -21,20 +21,33 @@ set -x
 builddir=$(realpath "$1")
 ypdocs=$(realpath "$2/documentation/")
 bbdocs=$(realpath "$3/doc/")
-docs_buildtools=${docs_buildtools:-/srv/autobuilder/autobuilder.yocto.io/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-4.1.2.sh}
 outputdir=$builddir/output
 scriptdir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
 PUBLISH=${PUBLISH:-1}
+sharedir=`jq '.["BASE_SHAREDDIR"]' < $HOME/config-local.json`
+buildtools_url=${buildtools_url:-https://downloads.yoctoproject.org/releases/yocto/yocto-4.1.2/buildtools/x86_64-buildtools-docs-nativesdk-standalone-4.1.2.sh}
+docbookarchive_url=${docbookarchive:-https://downloads.yoctoproject.org/mirror/docbook-mirror/docbook-archives-20201105.tar.xz}
 
+buildtools_name=`basename $buildtools_url`
+buildtools_localpath=${sharedir}/cluster-downloads-cache/${buildtools_name}
+
+if [ ! -e ${buildtools_localpath} ]; then
+    mkdir -p `dirname ${buildtools_localpath}`
+    wget ${buildtools_url} -O ${buildtools_localpath}
+fi
 
 cd $builddir
 mkdir buildtools
-$docs_buildtools -y -d $builddir/buildtools
+${buildtools_localpath} -y -d $builddir/buildtools
 . $builddir/buildtools/environment-setup*
 
 # Getting the old docbook built docs from an archive. Not rebuilding them.
-#wget https://downloads.yoctoproject.org/mirror/docbook-mirror/docbook-archives-20201105.tar.xz
-docbookarchive=${docbookarchive:-/srv/autobuilder/autobuilder.yocto.io/pub/docbook-mirror/docbook-archives-20201105.tar.xz}
+docbookarchive_localpath=${sharedir}/cluster-downloads-cache/`basename ${docbookarchive}`
+if [ ! -e ${docbookarchive_localpath} ]; then
+    mkdir -p `dirname ${docbookarchive_localpath}`
+    wget ${buildtools_url} -O ${docbookarchive_localpath}
+fi
+
 mkdir $outputdir
 cd $outputdir
 echo Extracing old content from archive

