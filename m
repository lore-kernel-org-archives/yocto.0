Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2E28E00C45; Sat, 16 Mar 2019 18:47:02 -0700 (PDT)
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
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 939B7E00AB0
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 18:47:02 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id h8so8973430pgp.6
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 18:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=t3U4FRA+PJtetZGbNTtIcQpkEKag0ghpPiudUC0a6L4=;
	b=VJUWmWWGhZClAg/uTsm0w5T8kZd/+v5n5w3oQVY89+PCUK/RZ0SSa0dRod6JtM2zxp
	HP32e/JH89oZt+xvP7UYFFqnNlbahu/10NgCuvV8uG8XSYSCq4fCvmMET59FX/IbAJa/
	GWYlDSAked6efltR33mL+/QxhWTHauk1Mjf7JlDZ7rrafSyjnjTUc8EjHVqkb8qLK/Hp
	bt5jfMzg8hGjmLHl8zLl477EAdS+Dnw8NNQv6mysT4yHxX3GI1XNqWgVlBp6QGIh5qmJ
	LE7pJrac5rTfYLiJnWnMx/xmaoWnCnsTQ0tX6XTcLBNUmHnRUt6x/4yk1UJpfRwO30jt
	lyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=t3U4FRA+PJtetZGbNTtIcQpkEKag0ghpPiudUC0a6L4=;
	b=FSoeWva66p0IAbWScS3aonV5x9j2jdDnw4zvCvD9cCa56wrdGTqVfZSsnF2/XxpYvw
	WtanCqoaFYsTvKMjkVEbVd/DLR/dJP7aKVhMzq7QgidZBOU40cexirxTTTnZm6k1KXGu
	nHCtKBwFAwBtoQDzRBG8w9V3IHiHRHDJx3ux2Zl5OYyBHQim2fXNjoTJ3otj9S4/kt7M
	A6qt9lmkSF2oUBhtMH43UQKND01IHezHS47RGcS4VXCgFv+RAmvDbi0EiGgiPzo1mlnM
	Uaatjum+J7U0VVb5eC+o0ieiUJp8DPL+5mSPpWomYlfZ4U0a7JodDCfbTS9UNdzpZlaR
	PNaA==
X-Gm-Message-State: APjAAAWkHiOD++oTjemEW8t1+uOi9dAKf2v+vc1N4569ShSA+xFk02ke
	GAakKnoggYGD1je7doqgHeeGf24u
X-Google-Smtp-Source: APXvYqwFCKKy/eBLPdY8QPM6IPpJOT7eEn3JOgjt3pQvHUj9GE+mg11b9jSDdIniYax1JF42jwFWAQ==
X-Received: by 2002:aa7:8589:: with SMTP id w9mr381105pfn.97.1552787221591;
	Sat, 16 Mar 2019 18:47:01 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	i25sm5940351pfd.52.2019.03.16.18.47.00 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 Mar 2019 18:47:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Mar 2019 18:46:59 -0700
Message-Id: <20190317014659.5439-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] cryptsetup-tpm-incubator: add new package
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
X-List-Received-Date: Sun, 17 Mar 2019 01:47:03 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptsetup-tpm-incubator_0.9.9.bb         | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
new file mode 100644
index 0000000..8b50445
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -0,0 +1,41 @@
+SUMMARY = "An extension to cryptsetup/LUKS that enables use of the TPM 2.0 via tpm2-tss"
+DESCRIPTION = "Cryptsetup is utility used to conveniently setup disk encryption based on DMCrypt kernel module."
+
+SECTION = "security/tpm"
+LICENSE = "LGPL-2.1 | GPL-2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=32107dd283b1dfeb66c9b3e6be312326 \
+                    file://COPYING.LGPL;md5=1960515788100ce5f9c98ea78a65dc52 \
+                    "
+
+DEPENDS = "autoconf-archive pkgconfig gettext libtss2-dev libdevmapper popt libgcrypt json-c"
+
+SRC_URI = "git://github.com/AndreasFuchsSIT/cryptsetup-tpm-incubator.git;branch=luks2tpm \
+           file://configure_fix.patch "
+
+SRCREV = "15c283195f19f1d980e39ba45448683d5e383179"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig gettext
+
+PACKAGECONFIG ??= "openssl"
+PACKAGECONFIG[openssl] = "--with-crypto_backend=openssl,,openssl"
+PACKAGECONFIG[gcrypt] = "--with-crypto_backend=gcrypt,,libgcrypt"
+
+EXTRA_OECONF = "--enable-static"
+
+RRECOMMENDS_${PN} = "kernel-module-aes-generic \
+                     kernel-module-dm-crypt \
+                     kernel-module-md5 \
+                     kernel-module-cbc \
+                     kernel-module-sha256-generic \
+                     kernel-module-xts \
+                    "
+
+RDEPENDS_${PN} += "lvm2"
+RRECOMMENDS_${PN} += "lvm2-udevrules"
+
+RREPLACES_${PN} = "cryptsetup"
+RCONFLICTS_${PN}  ="cryptsetup"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.17.1


