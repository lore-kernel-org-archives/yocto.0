Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EC86E00E47; Sun,  1 Oct 2017 09:43:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 381C4E00B87
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:46 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id u136so3568475pgc.0
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=/5p2RkRHSbfm+ofTjAs62RwtBerpp7H8zh4yVID6OW4=;
	b=m6IohI8uFo8vSOJs8vIzPDQwXOY4mhl4yUrVzdkbZlM8SgRUCgJ63weqa7W4aAfNg6
	sLANnw5PbF7cA4ESg4uf+MD6G5080AY4a8kJ9fmwh8GknoG9BGRha+agXPU9ZsdrOw97
	V2q0MbB+HPVOjDJ1n0o5SVGnmt7aMiGJM8zQOUqJY81sjh7QyACtSfkR5mz9BnOs/z3I
	GuFIAJP5SmtlTbPUmf7z05tDSLti/Zs9fPvNgDCBp6ceaK8hrzlXxrYlxWv5WSrE2O4i
	KlpNLJf0fD6kLtKj4XboNJ+4AwrEvR9tLltWvlRP16IBHiN95iwMYLy5lsonEYGqQD6D
	h0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=/5p2RkRHSbfm+ofTjAs62RwtBerpp7H8zh4yVID6OW4=;
	b=iBd/m7JzE7LuGpjhs1UbDQnbpBaxVom5DIs+sfAlTAXhNF1A6EmzXwtk49qY2YaO3G
	8WOTD77tBzXI0VS+pF4o2OiJyst7d2jmNnGvIUK4t1jaGMU+n0TYu/Mm+v/5uSldFics
	3pb4+ZbXwbdJ2KsL1Wjqxb94bYOXlWyaukHFR1/CbVLJdYQuZ6l4V0OCV5PIrV5yKzEE
	nBUnMxBmihrB+PBbXhYKrN53AHjdIQy1zxCkQvXeZ9ZCtCyLQuZKgP9+8fOp484e+OD4
	y/8AeR+ChItoqm9L8CXuKyE7jDNUsw5IWHbGlgOKfF7Oj/YwCTd6g5CXCB8nxKlT70FG
	5Oeg==
X-Gm-Message-State: AMCzsaVLmvZdS6wCjLo8WrquY4vL8HI5CHnP+m80ajqc11QGE6lQ+eyW
	Ptx0j7YMLpcr4wUZ9M4UbUs=
X-Google-Smtp-Source: AOwi7QDql1jF96NYjRSBJmDBzFdH+W1h/S+KOfu0xXjnAQyUjEEOOc08K2yuG3mURC6MZCYY+Sg+QQ==
X-Received: by 10.84.234.199 with SMTP id i7mr5837132plt.66.1506876226500;
	Sun, 01 Oct 2017 09:43:46 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:36 -0700
Message-Id: <1506876220-22710-6-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/10] suricata: update to 4.0.0
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:48 -0000

libhtp updated in // as suricata contains the sources

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/{libhtp_0.5.23.bb => libhtp_0.5.25.bb}   | 0
 recipes-security/suricata/suricata.inc                             | 6 +++---
 recipes-security/suricata/{suricata_3.2.1.bb => suricata_4.0.0.bb} | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.23.bb => libhtp_0.5.25.bb} (100%)
 rename recipes-security/suricata/{suricata_3.2.1.bb => suricata_4.0.0.bb} (94%)

diff --git a/recipes-security/suricata/libhtp_0.5.23.bb b/recipes-security/suricata/libhtp_0.5.25.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.23.bb
rename to recipes-security/suricata/libhtp_0.5.25.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 3ce7aad..a2d36eb 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "3.2.1"
+VER = "4.0.0"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "61b5cbb70591ea8ff4b26a0b00214a54"
-SRC_URI[sha256sum] = "0e0b0cf49016804bb2fb1fc4327341617e76a67902f4e03e0ef6d16c1d7d3994"
+SRC_URI[md5sum] = "41fb91b4cbc6705b353e4bdd02c3df4b"
+SRC_URI[sha256sum] = "6b8b183a8409829ca92c71854cc1abed45f04ccfb7f14c08211f4edf571fa577"
diff --git a/recipes-security/suricata/suricata_3.2.1.bb b/recipes-security/suricata/suricata_4.0.0.bb
similarity index 94%
rename from recipes-security/suricata/suricata_3.2.1.bb
rename to recipes-security/suricata/suricata_4.0.0.bb
index fe42fc1..82d134b 100644
--- a/recipes-security/suricata/suricata_3.2.1.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -9,7 +9,7 @@ SRC_URI += " \
            file://suricata.yaml \
            "
 
-inherit autotools-brokensep pkgconfig python-dir
+inherit autotools-brokensep pkgconfig python-dir 
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
@@ -33,7 +33,7 @@ PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-li
 PACKAGECONFIG[file] = ",,file, file"
 PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss," 
 PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr," 
-PACKAGECONFIG[python] = "--with-python, --without-python, python, python" 
+PACKAGECONFIG[python] = "--enable-python, --disable-python, python, python" 
 
 export logdir = "${localstatedir}/log"
 
@@ -57,4 +57,4 @@ PACKAGES += "${PN}-python"
 FILES_${PN} = "${bindir}/suricata ${sysconfdir}/default ${sysconfdir}/suricata ${logdir}/suricata"
 FILES_${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
-RDEPENDS_${PN}-python += "python"
+RDEPENDS_${PN}-python = "python"
-- 
2.7.4


