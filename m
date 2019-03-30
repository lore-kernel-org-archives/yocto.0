Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E60E7E00D2B; Sat, 30 Mar 2019 14:15:54 -0700 (PDT)
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
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F076E00CED
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 14:15:54 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id g12so2607638pll.11
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 14:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=hDhRnhZAwZuJobSEAW9qIO10sRyzrGmu4BBCxQD7ZIY=;
	b=OQN1EPmadvmzdj4pkyJtduDjCa2nN6Fo6xtrThqZIvT5F/UQnoLJnN/VI2AztqKBWN
	3IR1BuWJ2IfPKPcpeZBIXdLQYUFbSfrCy04wJRnXL5/hqm/jVP283ox7R70C6nfDpIOb
	uUPS/X8tudzZ4qnO5ZDPv8+0jn5hkQGtpfezI5CR7yRsVtAHRa6yiOqRd53z58lJ0k18
	SKHp/Ce2qxwprcr2vNWeh2CVTO4TktmH8CGNdSdSc7qWiR6nK14oBHQgGAcIF4c3u0oO
	ANc1YwI5fMwMAoI8c1NhggrzE0qaY7YXuOgZbp8oS/cVRDVO2pYgBUGWmtDAKcFqhd1d
	M1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=hDhRnhZAwZuJobSEAW9qIO10sRyzrGmu4BBCxQD7ZIY=;
	b=iA7IMuufNOjk3QCMXud5pAoWIHXRvCU1lig6lSA3i4Qcc4dci+A7ALMnVnz8VsCXFY
	HvuJ+oX0WCrtv2Tg9EmnGj9iKm0gynO99WIUAHn4owRXC4BOv4EIynYPvT14TcaRg49p
	YGa0PBKlBXTypbo6a+osMccoQB4gvTHevHt7i6Vfart6MIfGHQUHNwzvWRV07l54Kkc0
	6lw1VlxTofLfcc910mvilGDOAN7Sfk4xku6VMFGHsnhEEJnoDzSnDdtasAaFqCYK9m94
	E9PowJKb5KHRAaXue8TIwTMIw1imEQIMCLuylGiEOKfQRF/tstxROyhPqHPHsah7aMnB
	Aq8Q==
X-Gm-Message-State: APjAAAVl4IL4XTLTDikOjdqjsajKfpk5CMHyfZ8KYdFj0iFdvXjy8Guf
	crJd2eJ5lHdeYwZ0Hn17N904b/25
X-Google-Smtp-Source: APXvYqy4nA7zVLsu/JcdPxri3/KU92tMlVvt7orU2z8dNAlrrWv75Ev1ePH9ZTv5fYI+REU1u/O8OQ==
X-Received: by 2002:a17:902:788d:: with SMTP id
	q13mr57528554pll.154.1553980553347; 
	Sat, 30 Mar 2019 14:15:53 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u17sm7819729pfn.19.2019.03.30.14.15.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Mar 2019 14:15:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Mar 2019 14:15:50 -0700
Message-Id: <20190330211551.7022-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] reorg: move mac recipes to recipes-mac
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
X-List-Received-Date: Sat, 30 Mar 2019 21:15:55 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 {recipes-security => recipes-mac}/AppArmor/apparmor_2.12.bb       | 0
 {recipes-security => recipes-mac}/AppArmor/files/apparmor         | 0
 {recipes-security => recipes-mac}/AppArmor/files/apparmor.rc      | 0
 {recipes-security => recipes-mac}/AppArmor/files/apparmor.service | 0
 .../AppArmor/files/crosscompile_perl_bindings.patch               | 0
 .../AppArmor/files/disable_pdf.patch                              | 0
 .../AppArmor/files/disable_perl_h_check.patch                     | 0
 {recipes-security => recipes-mac}/AppArmor/files/functions        | 0
 {recipes-security => recipes-mac}/AppArmor/files/run-ptest        | 0
 {recipes-security => recipes-mac}/AppArmor/files/tool-paths.patch | 0
 {recipes-security => recipes-mac}/smack/files/run-ptest           | 0
 .../smack/files/smack_generator_make_fixup.patch                  | 0
 {recipes-security => recipes-mac}/smack/smack_1.3.1.bb            | 0
 13 files changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-security => recipes-mac}/AppArmor/apparmor_2.12.bb (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/apparmor (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/apparmor.rc (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/apparmor.service (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/crosscompile_perl_bindings.patch (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/disable_pdf.patch (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/disable_perl_h_check.patch (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/functions (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/run-ptest (100%)
 rename {recipes-security => recipes-mac}/AppArmor/files/tool-paths.patch (100%)
 rename {recipes-security => recipes-mac}/smack/files/run-ptest (100%)
 rename {recipes-security => recipes-mac}/smack/files/smack_generator_make_fixup.patch (100%)
 rename {recipes-security => recipes-mac}/smack/smack_1.3.1.bb (100%)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-mac/AppArmor/apparmor_2.12.bb
similarity index 100%
rename from recipes-security/AppArmor/apparmor_2.12.bb
rename to recipes-mac/AppArmor/apparmor_2.12.bb
diff --git a/recipes-security/AppArmor/files/apparmor b/recipes-mac/AppArmor/files/apparmor
similarity index 100%
rename from recipes-security/AppArmor/files/apparmor
rename to recipes-mac/AppArmor/files/apparmor
diff --git a/recipes-security/AppArmor/files/apparmor.rc b/recipes-mac/AppArmor/files/apparmor.rc
similarity index 100%
rename from recipes-security/AppArmor/files/apparmor.rc
rename to recipes-mac/AppArmor/files/apparmor.rc
diff --git a/recipes-security/AppArmor/files/apparmor.service b/recipes-mac/AppArmor/files/apparmor.service
similarity index 100%
rename from recipes-security/AppArmor/files/apparmor.service
rename to recipes-mac/AppArmor/files/apparmor.service
diff --git a/recipes-security/AppArmor/files/crosscompile_perl_bindings.patch b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
similarity index 100%
rename from recipes-security/AppArmor/files/crosscompile_perl_bindings.patch
rename to recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
diff --git a/recipes-security/AppArmor/files/disable_pdf.patch b/recipes-mac/AppArmor/files/disable_pdf.patch
similarity index 100%
rename from recipes-security/AppArmor/files/disable_pdf.patch
rename to recipes-mac/AppArmor/files/disable_pdf.patch
diff --git a/recipes-security/AppArmor/files/disable_perl_h_check.patch b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
similarity index 100%
rename from recipes-security/AppArmor/files/disable_perl_h_check.patch
rename to recipes-mac/AppArmor/files/disable_perl_h_check.patch
diff --git a/recipes-security/AppArmor/files/functions b/recipes-mac/AppArmor/files/functions
similarity index 100%
rename from recipes-security/AppArmor/files/functions
rename to recipes-mac/AppArmor/files/functions
diff --git a/recipes-security/AppArmor/files/run-ptest b/recipes-mac/AppArmor/files/run-ptest
similarity index 100%
rename from recipes-security/AppArmor/files/run-ptest
rename to recipes-mac/AppArmor/files/run-ptest
diff --git a/recipes-security/AppArmor/files/tool-paths.patch b/recipes-mac/AppArmor/files/tool-paths.patch
similarity index 100%
rename from recipes-security/AppArmor/files/tool-paths.patch
rename to recipes-mac/AppArmor/files/tool-paths.patch
diff --git a/recipes-security/smack/files/run-ptest b/recipes-mac/smack/files/run-ptest
similarity index 100%
rename from recipes-security/smack/files/run-ptest
rename to recipes-mac/smack/files/run-ptest
diff --git a/recipes-security/smack/files/smack_generator_make_fixup.patch b/recipes-mac/smack/files/smack_generator_make_fixup.patch
similarity index 100%
rename from recipes-security/smack/files/smack_generator_make_fixup.patch
rename to recipes-mac/smack/files/smack_generator_make_fixup.patch
diff --git a/recipes-security/smack/smack_1.3.1.bb b/recipes-mac/smack/smack_1.3.1.bb
similarity index 100%
rename from recipes-security/smack/smack_1.3.1.bb
rename to recipes-mac/smack/smack_1.3.1.bb
-- 
2.17.1


