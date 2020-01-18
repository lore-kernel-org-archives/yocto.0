Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web10.5575.1579367165029136681
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jan 2020 09:06:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=V+Svd5Cz;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f65.google.com with SMTP id q10so25536383wrm.11
        for <yocto@lists.yoctoproject.org>; Sat, 18 Jan 2020 09:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CArKWjM4RVFph2rX8gbr2YQckWCcV3jCkEVQ6u4MO4c=;
        b=V+Svd5CztAytF8OGSJcZ+8Z0LfgSVCfkLUCCRF+6eKDsgJkNCG6YXl7/7SkDw4QaXs
         3pq3x5219YWcg0xU1tkJ1NTQu9nBTVbzeNj282KI9FH1iLIW6zGDmf/2xBqz75It2YYw
         qMzHc4+P6Pkmsc5GAlWtXIP3ZHkmoEn1OSA8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CArKWjM4RVFph2rX8gbr2YQckWCcV3jCkEVQ6u4MO4c=;
        b=JcfONbSY1UAF4oSmgIs0hs/YHELKEvCjNvxJPRRhPALinnxCB06VgCXukc8gpL4f8q
         S7GycMZIfOIHmhyJxqb8juo4/Gg0mAjp3EDjkRsRmpQNFyVtsHueOuP8z6g5e1vXayYZ
         +kxD6SN/IgY6IKI6yB1sHiFcPpb1Vtl9ZjokK+NRLz8YV5XsEnTn7bsr6UxbgmNCsYpa
         y0xLO0TW5fADXrO48bbG1O1CuXwgztpoXq1EN4iT7jN4/ImtNHK65SynRrzpUfv6RWUb
         atzMe4uXXBdFkgSwTHd++T6UmKN/+RashAi9b569o8Kz/sLeWJk5MfQxx8udhJ2ZlPd+
         x3YQ==
X-Gm-Message-State: APjAAAXPyMIRpHLNRS8gCHyNXMHXAuPItLqq6akqAIcZpV1Zt0CGPs/B
	IHxadm08pusfXwi3uVVdtn5LdfhJs9E=
X-Google-Smtp-Source: APXvYqylPZ2tT1yh1sMS/GuwTVOGrZIBlvXZltF3lNBZ2NyNk7XOeWRjeLc5p+lv4QBTtqtHERiJBQ==
X-Received: by 2002:adf:9144:: with SMTP id j62mr9498230wrj.168.1579367162795;
        Sat, 18 Jan 2020 09:06:02 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id p26sm14220698wmc.24.2020.01.18.09.06.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2020 09:06:02 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] mc: Drop python2 scripts
Date: Sat, 18 Jan 2020 17:06:00 +0000
Message-Id: <20200118170601.26254-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

python2 is now EOL. To keep this old version of mc going, delete the python2
scripts to avoid the dependency.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-extended/mc/mc_4.7.5.2.bb | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
index e26bfd9..5f56641 100644
--- a/recipes-extended/mc/mc_4.7.5.2.bb
+++ b/recipes-extended/mc/mc_4.7.5.2.bb
@@ -23,10 +23,12 @@ EXTRA_OECONF = "--with-screen=ncurses --without-gpm-mouse --without-x --without-
 
 do_install_append () {
 	sed -i -e '1s,#!.*perl,#!${bindir}/env perl,' ${D}${libexecdir}/mc/extfs.d/*
-	sed -i -e '1s,#!.*python,#!${bindir}/env python,' ${D}${libexecdir}/mc/extfs.d/*
+	# These use python2 which is no longer supported
+	rm ${D}${libexecdir}/mc/extfs.d/s3+
+	rm ${D}${libexecdir}/mc/extfs.d/uc1541
 }
 
-PACKAGES =+ "${BPN}-helpers-perl ${BPN}-helpers-python ${BPN}-helpers ${BPN}-fish"
+PACKAGES =+ "${BPN}-helpers-perl ${BPN}-helpers ${BPN}-fish"
 
 SUMMARY_${BPN}-helpers-perl = "Midnight Commander Perl-based helper scripts"
 FILES_${BPN}-helpers-perl = "${libexecdir}/mc/extfs.d/a+ ${libexecdir}/mc/extfs.d/apt+ \
@@ -37,10 +39,6 @@ FILES_${BPN}-helpers-perl = "${libexecdir}/mc/extfs.d/a+ ${libexecdir}/mc/extfs.
                              ${libexecdir}/mc/extfs.d/uzip"
 RDEPENDS_${BPN}-helpers-perl = "perl"
 
-SUMMARY_${BPN}-helpers-python = "Midnight Commander Python-based helper scripts"
-FILES_${BPN}-helpers-python = "${libexecdir}/mc/extfs.d/s3+ ${libexecdir}/mc/extfs.d/uc1541"
-RDEPENDS_${BPN}-helpers-python = "python"
-
 SUMMARY_${BPN}-helpers = "Midnight Commander shell helper scripts"
 FILES_${BPN}-helpers = "${libexecdir}/mc/extfs.d/* ${libexecdir}/mc/ext.d/*"
 
-- 
2.17.1

