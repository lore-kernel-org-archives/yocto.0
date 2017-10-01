Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F0A1E00CC0; Sun,  1 Oct 2017 09:43:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54C24E00B87
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:44 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id i195so1899374pgd.9
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=OwnbsLuVegBYHytkYAgZH98a317eXYrrt67qNvNAnxw=;
	b=ibPZTvU3uptsdqiyWvmc4xJFCGQpv4B+LVslc6d4ejozfJTll2vKJGcSUt4/aNju7S
	PjYoOtAA5Dju8G23fNIhBzxPdtNY18cAqRxA+g3oyUZ8cfZhd2ZBk6cG2bh9HnGflBgE
	ZCXakDbga6AoNznwc+nh4y1OV5y/sSX2+9VQ6VzncIfjwZyt4RUUKMnJbDWJ9HjLYrAk
	gyWpgpN542Ud5QrZIanljBHOhcwROSiAvf5HCUzZLnJoz1YR1L0NkNzpY0Rm12nxROIZ
	2JW4oxdVXglUrozDhHeO0iyz+MNB9u9rtgIUpXzkI2AsAtA9azBRVBR2ZpLmsNqNx28P
	70fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=OwnbsLuVegBYHytkYAgZH98a317eXYrrt67qNvNAnxw=;
	b=PkvKf2G/cpzIZULVfe+2+RmMq0uriJbvn8vaog0ZjNLmBJBt+p/NDsylxXG2NcdV/H
	wMHU3J/KtkYWwHlXmOZJ4hSHg336oKc4/aCS0tBhE/LBTi8S8IWn0Wj+O0NiYsylivN2
	9eu09aQm5wbwOIDQZv3UDQ8eHzqjJSKpJt/1P8rlK+ODddRo+VZppDfutQVWApAX+lMg
	HANZLVM+x0Frvn67j9Wi1Ha5ejedrT5Z/TZABT2c+A/kkMsy3JZE0jDr1Mpd+tD64uR+
	LVhnD2Y/vcDzxdUaNOmlOiiKrrwXJ7a8vrXfIgWY0JHKs9BUO6OU1BIZZ35ozzzoS7hV
	4hEA==
X-Gm-Message-State: AMCzsaUlJU3IzkVokEMpkQ30JaAv8L4oAbQKJSbKWmMXqv5Sf+MVawx/
	VQUmk179oIVb/Wp3RNBLm4Rcog==
X-Google-Smtp-Source: AOwi7QC5UAVzNGXbZlrT3KbeTzcbEgDyb7+OLiaBfkVc5utb6K6njb3UfnLmRtYC/XHyVY0EQYt75g==
X-Received: by 10.84.198.67 with SMTP id o61mr4996406pld.388.1506876224656;
	Sun, 01 Oct 2017 09:43:44 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:34 -0700
Message-Id: <1506876220-22710-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/10] checksecurity: fix recipe style
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 01 Oct 2017 16:43:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/checksecurity/checksecurity_2.0.15.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/checksecurity/checksecurity_2.0.15.bb b/recipes-security/checksecurity/checksecurity_2.0.15.bb
index ddf63fd..a961691 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.15.bb
@@ -3,7 +3,6 @@ DESCRIPTION = "checksecurity is a simple package which will scan your system for
 SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob util-linux findutils coreutils"
 
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
            file://setuid-log-folder.patch"
@@ -17,3 +16,5 @@ do_compile() {
 do_install() {
     oe_runmake PREFIX=${D}
 }
+
+RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob util-linux findutils coreutils"
-- 
2.7.4


