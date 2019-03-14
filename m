Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F154E00D2E; Thu, 14 Mar 2019 07:29:35 -0700 (PDT)
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
	*      [209.85.210.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC35FE00D3F
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:34 -0700 (PDT)
Received: by mail-pf1-f176.google.com with SMTP id v21so3938667pfm.12
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2019 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Tn8qUbO9kzOTdAlALIkiflZd8iuf0o37XFdakCR0Gjw=;
	b=LhEIQ7wQIo3RnqjteDSgg7+uLHmQ3lkN/7E+2gt9Izx8FNn6jHCK1hq/5WZqAEeHfv
	HzU5A8e1zhHE/JV90SN5LrLI/NphjbKQ1fAg4/oqdgssCYxvwH7X7+iItGm5WzGFDyU0
	ruxbKjUnQ960f2WA7w14kA+VpxtpvSwW0kcJ+nO2AlbGb7FpgYyoyfR+nSQii/Rx9wUF
	UjfZzkVYY4bA7eZQ3tWXY5OnF9Io1rZP0gpMb8PfeFsiwAGC8FyhuwHAlJM8CpYTw9XN
	RDwEb8VUkHQBe04oLabtz3pOIZx1dtlaza5SPAOwWDykQjJ0dLIplCX+F5lPa098iuQb
	QhaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Tn8qUbO9kzOTdAlALIkiflZd8iuf0o37XFdakCR0Gjw=;
	b=R3MCIWiRdK8ndLtLaeynWh3+3KIARhuxcCL+jKDmRy0EOMZ73eeySzf3vwN2lNmAvq
	ucHoZegakvOw95Q/EepN5TkBDQF0uWDIP3yPdfhQjNhewAbpXf4eACn8ZT8lPpNwG3of
	wPM4cLtRYY8hV1GzilcLSeBoIsHOqb8jEP7MbaVWvHib89cZ7m9bcczQS+fae9Hh8KcD
	6dsQ2R6lRoWsabzJIpdvOzuulUUN0SCevELGTkSvAqlfLWulc5HkZ3EkD3B4CIkgxOGA
	ZOuXLIlxt/Y1Hd+l2HdwyuSuv/be9JIfHdQ/RdDAfhg1exgzigfZoTGPpAUy2JlzPhpK
	ecnA==
X-Gm-Message-State: APjAAAXIJsZeJLlGu/zG0w+/KwwVpzbx5dpARDGBOe051E77Ki1SU2M8
	Zfv4lbecvUpSH8gZebJHbneT2M92
X-Google-Smtp-Source: APXvYqxdlPnny3L3QXplSUI7cP9IJ7DJTOK/hK6YecAEZK9L71JWz6KxQVXzlgY5YjMSsC0ja2zkag==
X-Received: by 2002:a65:4549:: with SMTP id x9mr46163169pgr.3.1552573774039;
	Thu, 14 Mar 2019 07:29:34 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f125sm28148202pfc.91.2019.03.14.07.29.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Mar 2019 07:29:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Mar 2019 07:29:27 -0700
Message-Id: <20190314142928.1458-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190314142928.1458-1-akuster808@gmail.com>
References: <20190314142928.1458-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/6] tpm2-totp: add new package
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
X-List-Received-Date: Thu, 14 Mar 2019 14:29:35 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../files/litpm2_totp_build_fix.patch         | 36 +++++++++++++++++++
 .../recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb | 17 +++++++++
 2 files changed, 53 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch b/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
new file mode 100644
index 0000000..c147054
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/files/litpm2_totp_build_fix.patch
@@ -0,0 +1,36 @@
+C99 fixes:
+
+ src/libtpm2-totp.c:172:13: error: format '%li' expects argument of type 'long int', but argument 3 has type 'size_t' {aka 'unsigned int'} [-Werror=format=]
+|          dbg("Calling Esys_GetRandom for %li bytes", SECRETLEN - *secret_size);
+
+src/tpm2-totp.c:343:23: error: format '%ld' expects argument of type 'long int', but argument 3 has type 'uint64_t' {aka 'long long unsigned int'} [-Werror=format=]
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/src/libtpm2-totp.c
+===================================================================
+--- git.orig/src/libtpm2-totp.c
++++ git/src/libtpm2-totp.c
+@@ -169,7 +169,7 @@ tpm2totp_generateKey(uint32_t pcrs, uint
+     if (rc != TPM2_RC_INITIALIZE) chkrc(rc, goto error);
+ 
+     while (*secret_size < SECRETLEN) {
+-        dbg("Calling Esys_GetRandom for %li bytes", SECRETLEN - *secret_size);
++        dbg("Calling Esys_GetRandom for %li bytes", (long int) (SECRETLEN - *secret_size));
+         rc = Esys_GetRandom(ctx,
+                             ESYS_TR_NONE, ESYS_TR_NONE, ESYS_TR_NONE,
+                             SECRETLEN - *secret_size, &t);
+Index: git/src/tpm2-totp.c
+===================================================================
+--- git.orig/src/tpm2-totp.c
++++ git/src/tpm2-totp.c
+@@ -340,7 +340,7 @@ main(int argc, char **argv)
+                             localtime (&now));
+             chkrc(rc, exit(1));
+         }
+-        printf("%s%06ld", timestr, totp);
++        printf("%s%06ld", timestr, (long int)totp);
+         break;
+     case CMD_RESEAL:
+         rc = tpm2totp_loadKey_nv(opt.nvindex, &keyBlob, &keyBlob_size);
diff --git a/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb
new file mode 100644
index 0000000..bc94ab7
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-totp/tpm2-totp_0.9.9.bb
@@ -0,0 +1,17 @@
+SUMMARY = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL." 
+DESCRIPTION = "The tpm2-tss-engine project implements a cryptographic engine for OpenSSL for Trusted Platform Module (TPM 2.0) using the tpm2-tss software stack that follows the Trusted Computing Groups (TCG) TPM Software Stack (TSS 2.0). It uses the Enhanced System API (ESAPI) interface of the TSS 2.0 for downwards communication. It supports RSA decryption and signatures as well as ECDSA signatures."
+
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=ed23833e93c95173c8d8913745e4b4e1"
+
+SECTION = "security/tpm"
+
+DEPENDS = "autoconf-archive libtss2-dev qrencode"
+
+SRCREV = "44fcb6819f79302d5a088b3def648616e3551d4a"
+SRC_URI = "git://github.com/tpm2-software/tpm2-totp.git \
+           file://litpm2_totp_build_fix.patch "
+
+inherit autotools-brokensep pkgconfig
+
+S = "${WORKDIR}/git"
-- 
2.17.1


