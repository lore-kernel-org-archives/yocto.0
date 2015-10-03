Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CCD1E00B4F; Sat,  3 Oct 2015 14:59:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64179E00B4F
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 14:59:34 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so138435116pad.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 14:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=w16sTNygabTZvTOG/6bK+pL7SHlDmwoORiFESDCZdPE=;
	b=N7bVIKIX/IQt2Nz1PfZNpiROce3uDMwhwZ7pKAJGT0rw7zokvPUr+XK+zPJbD/+Mvx
	FP8BSB1crJWZUHz/oWjEWJdxLXaiDsox12M3uhdFmdW9+ZGWpcBOBLXaa6VeJ0shjGRs
	z8fC+URTK0U7hhA+Sp13mZd/4Dt/+M/FnHrRC2/kElSLTba5WIOf6xroQkIl0QDqYyGE
	+ltd51/OYZ5V5aFZGfVNmDfC6b5mNJB0xQXYwTqD1M+EfEtBCzAbVXlksrIoBxXznTJA
	uOJh73QVH0a/8veYhoBkk/5GOs0wy+1feucxnjLT8f1HUBvW2SBb4dLnD+bssjgoCbYg
	T4Aw==
X-Received: by 10.66.66.167 with SMTP id g7mr28780102pat.152.1443909574449;
	Sat, 03 Oct 2015 14:59:34 -0700 (PDT)
Received: from Pahoa2.mvista.com ([216.9.110.13])
	by smtp.gmail.com with ESMTPSA id
	zn9sm19300346pac.48.2015.10.03.14.59.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 03 Oct 2015 14:59:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  3 Oct 2015 14:59:28 -0700
Message-Id: <1443909569-836-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1443909569-836-1-git-send-email-akuster808@gmail.com>
References: <1443909569-836-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/3] libhtp: update to version 0.5.18
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
X-List-Received-Date: Sat, 03 Oct 2015 21:59:38 -0000

Changes

This is a minor bug-fix release:

- Fixed [#120] Trigger request line parsing on
incomplete request [Victor Julien]

- Fixed [#119] Fix uninitialized htp_tx_t::is_last value
in in htp_tx_res_process_body_data_ex() [Fedor Sakharov]

- Fixed [#118] Coverity-identified missing break in switch [Sam Baskinger]

- Fixed [#117] Coverity-identified issue of not checking
malloc() return value [Sam Baskinger]

- Fixed [#116] Fix coverity-identified leaked file descriptors
in unit test [Sam Baskinger]

- Fixed [#113] fix pkgconfig include dir [Eric Leblond]

- Fixed [#111] Connect plain http [Victor Julien]

- Fixed [#105] Do not invoke callbacks in htp_req_run_hook_body_data()
when there is no tx running. [Sam Baskinger]

- Fixed [#104] Modifiying HTTP methods to be rfc3253 compliant [Andreas Moe]

- Fixed [#103] Fixes [Victor Julien]

- Fixed [#101] Make including the autoconf config header safer [Brian Rectanus]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/{libhtp_0.5.17.bb => libhtp_0.5.18.bb} | 2 +-
 recipes-security/suricata/suricata.inc                           | 9 +++++----
 2 files changed, 6 insertions(+), 5 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.17.bb => libhtp_0.5.18.bb} (89%)

diff --git a/recipes-security/suricata/libhtp_0.5.17.bb b/recipes-security/suricata/libhtp_0.5.18.bb
similarity index 89%
rename from recipes-security/suricata/libhtp_0.5.17.bb
rename to recipes-security/suricata/libhtp_0.5.18.bb
index baa5221..734b341 100644
--- a/recipes-security/suricata/libhtp_0.5.17.bb
+++ b/recipes-security/suricata/libhtp_0.5.18.bb
@@ -10,6 +10,6 @@ inherit autotools pkgconfig
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
-S = "${WORKDIR}/suricata-2.0.8/${BPN}"
+S = "${WORKDIR}/suricata-${VER}/${BPN}"
 
 RDEPENDS_${PN} += "zlib"
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index b7d0181..6618739 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,9 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-PV = "2.0.8"
-SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
+VER = "2.0.9"
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
+
+SRC_URI[md5sum] = "cc0c32071c6b6733b13380ef276c5af5"
+SRC_URI[sha256sum] = "4a19214d7673f9c0eba2e4e5ac78152309464186d16df48944b8f5644faa802d"
 
-SRC_URI[md5sum] = "a9553ccf942c0c4aa1e1a188ec1f7d93"
-SRC_URI[sha256sum] = "7af6394cb81e464f5c1ac88a1444030e30940caab6e53688a6d9eb652226d1be"
-- 
2.3.5


