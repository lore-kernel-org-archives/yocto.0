Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 655B5E00D2C; Sat, 30 Mar 2019 14:15:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F6DE00CED
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 14:15:54 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id g37so2613722plb.5
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 14:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Bkx7P8cRMwnb/fDwqNbM12idPmzW2t11QM5c94C1SOs=;
	b=VngAOqsOoPA1XF1q57bMfmHMCbzG2MipO/NtgGpp3a4Joi2CZWchjNmTqcde/ORBtq
	l4uikO6qQTz9vql+4F/zCcA0N5lFVBOydoFa/atrMpudlAShvsVwKP5ZNfZ5NkVjTQst
	2zYuUIcEN0VhIWJ6K360uYMuI2BpqjGqXW7dPE/p2DPT9E0hdJzwyaQ1jhh5rekVB3QD
	/TsqDesfOk1tFyZv5VBiAi3gud85uk03HEfYNMyLAaMdIeuDtySM0wT2knuaVD979tk9
	4YbwOcvKiR9+zb/HyJpivUL51yRNoem17DiiXqFWpPcP7FvGJmYTWYGtIbIy0TgCbQ0i
	tXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Bkx7P8cRMwnb/fDwqNbM12idPmzW2t11QM5c94C1SOs=;
	b=dfyr2Udh1WHp9itS2OLB7ZcKdgh0qsUrZJTg1K15AOosSY+bOhXDCnuP85VSOOgM16
	AYqHaPHgN+JRelbuAtK+QhaSq/3mT0yILkWXfjA2rvreA/MjIGdnjyIKKMEI0D0A458Y
	TMbY5G2ER7JvBDB5cc6Mgr18IoMO1FzlPRo7nJ+gokBexjg5P5vknP4e+vJo8TZluL+V
	qAwEfH28dnWiZtQIigywdjexwrCAloztkn6WZ1V+ClykAREtAJTvokVEYdoEeO28LyHX
	y/S66G6+T7H2/84xzqA2Hi5C0xyyhKR4aksQlBcLSq0ZBupHfmbfU9Ktt0vtqsa+VHig
	jU/w==
X-Gm-Message-State: APjAAAV0+zi+Nc4rRqf8KDk0nODbL6j8BlTdDOewk4CrysGZYY3wkAHt
	BLIT41g4ejr1na0KWChGEHDljEmU
X-Google-Smtp-Source: APXvYqxzYWOIIogvReOWB/VOxTVbn81xh6ppocn5IWMzJovjmKTqYtbnHqCHPFx+8SZLAZuvCrumhw==
X-Received: by 2002:a17:902:9688:: with SMTP id
	n8mr56747030plp.133.1553980554403; 
	Sat, 30 Mar 2019 14:15:54 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u17sm7819729pfn.19.2019.03.30.14.15.53 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Mar 2019 14:15:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Mar 2019 14:15:51 -0700
Message-Id: <20190330211551.7022-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190330211551.7022-1-akuster808@gmail.com>
References: <20190330211551.7022-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] reorg ids: move ids recipes to recipes-ids
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
X-List-Received-Date: Sat, 30 Mar 2019 21:15:56 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/files/run-ptest                         |   0
 ...in-add-LDFLAGS-variable-for-samhain_setpwd.patch |   0
 ...amhain-avoid-searching-host-for-postgresql.patch |   0
 .../samhain/files/samhain-client.default            |   0
 .../samhain/files/samhain-client.init               |   0
 .../files/samhain-configure-add-option-for-ps.patch |   0
 .../samhain/files/samhain-cross-compile.patch       |   0
 .../samhain-mips64-aarch64-dnmalloc-hash-fix.patch  |   0
 .../files/samhain-not-run-ptest-on-host.patch       |   0
 .../samhain/files/samhain-pid-path.patch            |   0
 .../samhain-samhainrc-fix-files-dirs-path.patch     |   0
 .../samhain/files/samhain-samhainrc.patch           |   0
 .../samhain/files/samhain-server-volatiles          |   0
 .../samhain/files/samhain-server.default            |   0
 .../samhain/files/samhain-server.init               |   0
 .../samhain/files/samhain-sha256-big-endian.patch   |   0
 .../samhain/files/samhain-standalone.default        |   0
 .../samhain/files/samhain-standalone.init           |   0
 .../samhain/files/samhain.service                   |   0
 .../samhain/samhain-client_4.3.2.bb                 |   0
 .../samhain/samhain-server_4.3.2.bb                 |   0
 .../samhain/samhain-standalone_4.3.2.bb             |   0
 .../samhain/samhain.inc                             |   0
 .../suricata/files/emerging.rules.tar.gz            | Bin
 .../suricata/files/no_libhtp_build.patch            |   0
 .../suricata/files/run-ptest                        |   0
 .../suricata/files/suricata.service                 |   0
 .../suricata/files/suricata.yaml                    |   0
 .../suricata/files/volatiles.03_suricata            |   0
 .../suricata/libhtp_0.5.29.bb                       |   0
 .../suricata/suricata.inc                           |   0
 .../suricata/suricata_4.1.3.bb                      |   0
 .../tripwire/files/add_armeb_arch.patch             |   0
 .../tripwire/files/run-ptest                        |   0
 .../tripwire/files/tripwire.cron                    |   0
 .../tripwire/files/tripwire.sh                      |   0
 .../tripwire/files/tripwire.txt                     |   0
 .../tripwire/files/twcfg.txt                        |   0
 .../tripwire/files/twinstall.sh                     |   0
 .../tripwire/files/twpol-yocto.txt                  |   0
 .../tripwire/tripwire_2.4.3.7.bb                    |   0
 41 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-ids}/samhain/files/run-ptest (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-avoid-searching-host-for-postgresql.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-client.default (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-client.init (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-configure-add-option-for-ps.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-cross-compile.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-not-run-ptest-on-host.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-pid-path.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-samhainrc.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-server-volatiles (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-server.default (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-server.init (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-sha256-big-endian.patch (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-standalone.default (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain-standalone.init (100%)
 rename {recipes-security => recipes-ids}/samhain/files/samhain.service (100%)
 rename {recipes-security => recipes-ids}/samhain/samhain-client_4.3.2.bb (100%)
 rename {recipes-security => recipes-ids}/samhain/samhain-server_4.3.2.bb (100%)
 rename {recipes-security => recipes-ids}/samhain/samhain-standalone_4.3.2.bb (100%)
 rename {recipes-security => recipes-ids}/samhain/samhain.inc (100%)
 rename {recipes-security => recipes-ids}/suricata/files/emerging.rules.tar.gz (100%)
 rename {recipes-security => recipes-ids}/suricata/files/no_libhtp_build.patch (100%)
 rename {recipes-security => recipes-ids}/suricata/files/run-ptest (100%)
 rename {recipes-security => recipes-ids}/suricata/files/suricata.service (100%)
 rename {recipes-security => recipes-ids}/suricata/files/suricata.yaml (100%)
 rename {recipes-security => recipes-ids}/suricata/files/volatiles.03_suricata (100%)
 rename {recipes-security => recipes-ids}/suricata/libhtp_0.5.29.bb (100%)
 rename {recipes-security => recipes-ids}/suricata/suricata.inc (100%)
 rename {recipes-security => recipes-ids}/suricata/suricata_4.1.3.bb (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/add_armeb_arch.patch (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/run-ptest (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/tripwire.cron (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/tripwire.sh (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/tripwire.txt (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/twcfg.txt (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/twinstall.sh (100%)
 rename {recipes-security => recipes-ids}/tripwire/files/twpol-yocto.txt (100%)
 rename {recipes-security => recipes-ids}/tripwire/tripwire_2.4.3.7.bb (100%)

diff --git a/recipes-security/samhain/files/run-ptest b/recipes-ids/samhain/files/run-ptest
similarity index 100%
rename from recipes-security/samhain/files/run-ptest
rename to recipes-ids/samhain/files/run-ptest
diff --git a/recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch b/recipes-ids/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
rename to recipes-ids/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
diff --git a/recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch b/recipes-ids/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
rename to recipes-ids/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
diff --git a/recipes-security/samhain/files/samhain-client.default b/recipes-ids/samhain/files/samhain-client.default
similarity index 100%
rename from recipes-security/samhain/files/samhain-client.default
rename to recipes-ids/samhain/files/samhain-client.default
diff --git a/recipes-security/samhain/files/samhain-client.init b/recipes-ids/samhain/files/samhain-client.init
similarity index 100%
rename from recipes-security/samhain/files/samhain-client.init
rename to recipes-ids/samhain/files/samhain-client.init
diff --git a/recipes-security/samhain/files/samhain-configure-add-option-for-ps.patch b/recipes-ids/samhain/files/samhain-configure-add-option-for-ps.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-configure-add-option-for-ps.patch
rename to recipes-ids/samhain/files/samhain-configure-add-option-for-ps.patch
diff --git a/recipes-security/samhain/files/samhain-cross-compile.patch b/recipes-ids/samhain/files/samhain-cross-compile.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-cross-compile.patch
rename to recipes-ids/samhain/files/samhain-cross-compile.patch
diff --git a/recipes-security/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch b/recipes-ids/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch
rename to recipes-ids/samhain/files/samhain-mips64-aarch64-dnmalloc-hash-fix.patch
diff --git a/recipes-security/samhain/files/samhain-not-run-ptest-on-host.patch b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-not-run-ptest-on-host.patch
rename to recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
diff --git a/recipes-security/samhain/files/samhain-pid-path.patch b/recipes-ids/samhain/files/samhain-pid-path.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-pid-path.patch
rename to recipes-ids/samhain/files/samhain-pid-path.patch
diff --git a/recipes-security/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch b/recipes-ids/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch
rename to recipes-ids/samhain/files/samhain-samhainrc-fix-files-dirs-path.patch
diff --git a/recipes-security/samhain/files/samhain-samhainrc.patch b/recipes-ids/samhain/files/samhain-samhainrc.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-samhainrc.patch
rename to recipes-ids/samhain/files/samhain-samhainrc.patch
diff --git a/recipes-security/samhain/files/samhain-server-volatiles b/recipes-ids/samhain/files/samhain-server-volatiles
similarity index 100%
rename from recipes-security/samhain/files/samhain-server-volatiles
rename to recipes-ids/samhain/files/samhain-server-volatiles
diff --git a/recipes-security/samhain/files/samhain-server.default b/recipes-ids/samhain/files/samhain-server.default
similarity index 100%
rename from recipes-security/samhain/files/samhain-server.default
rename to recipes-ids/samhain/files/samhain-server.default
diff --git a/recipes-security/samhain/files/samhain-server.init b/recipes-ids/samhain/files/samhain-server.init
similarity index 100%
rename from recipes-security/samhain/files/samhain-server.init
rename to recipes-ids/samhain/files/samhain-server.init
diff --git a/recipes-security/samhain/files/samhain-sha256-big-endian.patch b/recipes-ids/samhain/files/samhain-sha256-big-endian.patch
similarity index 100%
rename from recipes-security/samhain/files/samhain-sha256-big-endian.patch
rename to recipes-ids/samhain/files/samhain-sha256-big-endian.patch
diff --git a/recipes-security/samhain/files/samhain-standalone.default b/recipes-ids/samhain/files/samhain-standalone.default
similarity index 100%
rename from recipes-security/samhain/files/samhain-standalone.default
rename to recipes-ids/samhain/files/samhain-standalone.default
diff --git a/recipes-security/samhain/files/samhain-standalone.init b/recipes-ids/samhain/files/samhain-standalone.init
similarity index 100%
rename from recipes-security/samhain/files/samhain-standalone.init
rename to recipes-ids/samhain/files/samhain-standalone.init
diff --git a/recipes-security/samhain/files/samhain.service b/recipes-ids/samhain/files/samhain.service
similarity index 100%
rename from recipes-security/samhain/files/samhain.service
rename to recipes-ids/samhain/files/samhain.service
diff --git a/recipes-security/samhain/samhain-client_4.3.2.bb b/recipes-ids/samhain/samhain-client_4.3.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.3.2.bb
rename to recipes-ids/samhain/samhain-client_4.3.2.bb
diff --git a/recipes-security/samhain/samhain-server_4.3.2.bb b/recipes-ids/samhain/samhain-server_4.3.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.3.2.bb
rename to recipes-ids/samhain/samhain-server_4.3.2.bb
diff --git a/recipes-security/samhain/samhain-standalone_4.3.2.bb b/recipes-ids/samhain/samhain-standalone_4.3.2.bb
similarity index 100%
rename from recipes-security/samhain/samhain-standalone_4.3.2.bb
rename to recipes-ids/samhain/samhain-standalone_4.3.2.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
similarity index 100%
rename from recipes-security/samhain/samhain.inc
rename to recipes-ids/samhain/samhain.inc
diff --git a/recipes-security/suricata/files/emerging.rules.tar.gz b/recipes-ids/suricata/files/emerging.rules.tar.gz
similarity index 100%
rename from recipes-security/suricata/files/emerging.rules.tar.gz
rename to recipes-ids/suricata/files/emerging.rules.tar.gz
diff --git a/recipes-security/suricata/files/no_libhtp_build.patch b/recipes-ids/suricata/files/no_libhtp_build.patch
similarity index 100%
rename from recipes-security/suricata/files/no_libhtp_build.patch
rename to recipes-ids/suricata/files/no_libhtp_build.patch
diff --git a/recipes-security/suricata/files/run-ptest b/recipes-ids/suricata/files/run-ptest
similarity index 100%
rename from recipes-security/suricata/files/run-ptest
rename to recipes-ids/suricata/files/run-ptest
diff --git a/recipes-security/suricata/files/suricata.service b/recipes-ids/suricata/files/suricata.service
similarity index 100%
rename from recipes-security/suricata/files/suricata.service
rename to recipes-ids/suricata/files/suricata.service
diff --git a/recipes-security/suricata/files/suricata.yaml b/recipes-ids/suricata/files/suricata.yaml
similarity index 100%
rename from recipes-security/suricata/files/suricata.yaml
rename to recipes-ids/suricata/files/suricata.yaml
diff --git a/recipes-security/suricata/files/volatiles.03_suricata b/recipes-ids/suricata/files/volatiles.03_suricata
similarity index 100%
rename from recipes-security/suricata/files/volatiles.03_suricata
rename to recipes-ids/suricata/files/volatiles.03_suricata
diff --git a/recipes-security/suricata/libhtp_0.5.29.bb b/recipes-ids/suricata/libhtp_0.5.29.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.29.bb
rename to recipes-ids/suricata/libhtp_0.5.29.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
similarity index 100%
rename from recipes-security/suricata/suricata.inc
rename to recipes-ids/suricata/suricata.inc
diff --git a/recipes-security/suricata/suricata_4.1.3.bb b/recipes-ids/suricata/suricata_4.1.3.bb
similarity index 100%
rename from recipes-security/suricata/suricata_4.1.3.bb
rename to recipes-ids/suricata/suricata_4.1.3.bb
diff --git a/recipes-security/tripwire/files/add_armeb_arch.patch b/recipes-ids/tripwire/files/add_armeb_arch.patch
similarity index 100%
rename from recipes-security/tripwire/files/add_armeb_arch.patch
rename to recipes-ids/tripwire/files/add_armeb_arch.patch
diff --git a/recipes-security/tripwire/files/run-ptest b/recipes-ids/tripwire/files/run-ptest
similarity index 100%
rename from recipes-security/tripwire/files/run-ptest
rename to recipes-ids/tripwire/files/run-ptest
diff --git a/recipes-security/tripwire/files/tripwire.cron b/recipes-ids/tripwire/files/tripwire.cron
similarity index 100%
rename from recipes-security/tripwire/files/tripwire.cron
rename to recipes-ids/tripwire/files/tripwire.cron
diff --git a/recipes-security/tripwire/files/tripwire.sh b/recipes-ids/tripwire/files/tripwire.sh
similarity index 100%
rename from recipes-security/tripwire/files/tripwire.sh
rename to recipes-ids/tripwire/files/tripwire.sh
diff --git a/recipes-security/tripwire/files/tripwire.txt b/recipes-ids/tripwire/files/tripwire.txt
similarity index 100%
rename from recipes-security/tripwire/files/tripwire.txt
rename to recipes-ids/tripwire/files/tripwire.txt
diff --git a/recipes-security/tripwire/files/twcfg.txt b/recipes-ids/tripwire/files/twcfg.txt
similarity index 100%
rename from recipes-security/tripwire/files/twcfg.txt
rename to recipes-ids/tripwire/files/twcfg.txt
diff --git a/recipes-security/tripwire/files/twinstall.sh b/recipes-ids/tripwire/files/twinstall.sh
similarity index 100%
rename from recipes-security/tripwire/files/twinstall.sh
rename to recipes-ids/tripwire/files/twinstall.sh
diff --git a/recipes-security/tripwire/files/twpol-yocto.txt b/recipes-ids/tripwire/files/twpol-yocto.txt
similarity index 100%
rename from recipes-security/tripwire/files/twpol-yocto.txt
rename to recipes-ids/tripwire/files/twpol-yocto.txt
diff --git a/recipes-security/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
similarity index 100%
rename from recipes-security/tripwire/tripwire_2.4.3.7.bb
rename to recipes-ids/tripwire/tripwire_2.4.3.7.bb
-- 
2.17.1


