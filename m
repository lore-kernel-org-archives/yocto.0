Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04D52E00D18; Sun,  8 Oct 2017 10:28:45 -0700 (PDT)
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
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D106EE00CC3
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 10:28:41 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id u144so6367523pgb.3
	for <yocto@yoctoproject.org>; Sun, 08 Oct 2017 10:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=t1pqUnSMiKSmYIh6a9+qagcB7PabfxAU8ZyOQKoK/Rw=;
	b=vA3E4icHPxfI0CLBzolSAvV53tUTI7WRIIhyYFF11jcgjQZOhjlf/YniqWidoo5Vvv
	d8YYed/SRgWh9PxeIMHuGkaMzpdRqzy9JiUxyuvG91Y1b9MC1S8m7npWjfIrAuo3NEnr
	hCc9Q78GtG3kKl92HiqXpNVBE1HP3KeR4E8KOAR1D0iW+L/7bCbkuom+QQOAKRfvHsIo
	wJpniDabPwdW8ntgFgTMj8JV2poaFNUl+Gi7dKwX4p7YKJdo27upstnUGvJDgoee8n76
	hDwN0ENuUgNTpY+EjL1RAkB4lRd3WenUxwQYSHjfNqQDyQni/0wzS83ZtaFMC1G4laJK
	xEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=t1pqUnSMiKSmYIh6a9+qagcB7PabfxAU8ZyOQKoK/Rw=;
	b=SQTyq6qQj0ae1/BifgTHshXqU4uYSSS6I88rOkKKK2F+3BGdkdSxTC9tguMaKwN5G8
	L45VOuwplD4aP/hd48g5xBaGmsr4iTS7lll//bARg7fxO29FmB1dnh7fYMftXodA5grm
	ohzCoHaHZYFO2FvGQ93oe0z5/pzjwO/VKkJDtjaZCvXomthHh2p5QNdeEHybO0vxbdA3
	e97FRaRUhJV4OEogYe5If2FmZCsYgJsuv0oCVyoAkfwhcIXN6+e2kidsuENlpYrK4u9/
	OnRPgjmPEQTyyLUMcL3UNNmY9Cn/j9PZHp4bvdHlsjvNayrZilfjgjGjpTa+JgUszXiY
	t95g==
X-Gm-Message-State: AMCzsaUuM8zrSuUM1i//G5nbyqgOHKs4MaQknyMdr/+KRJccW6ShYCkR
	bw3eiAG6sNMPC/bY8hN9q78=
X-Google-Smtp-Source: AOwi7QAX7MXvxlrZeL7kvrNo28ctwb/6aG7sDdzlO2GQ/CaET7Qq2v2dFBe6QiHi1gCtpJcpUPLAVg==
X-Received: by 10.98.192.18 with SMTP id x18mr5254753pff.280.1507483721052;
	Sun, 08 Oct 2017 10:28:41 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:b4af:95f:9afa:62fc])
	by smtp.gmail.com with ESMTPSA id
	a81sm10563350pfe.32.2017.10.08.10.28.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 08 Oct 2017 10:28:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  8 Oct 2017 10:28:36 -0700
Message-Id: <1507483718-5452-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
References: <1507483718-5452-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/4] tpm-quote-tools: Add package
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
X-List-Received-Date: Sun, 08 Oct 2017 17:28:45 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm-quote-tools/tpm-quote-tools_1.0.4.bb       | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb

diff --git a/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb b/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
new file mode 100644
index 0000000..8486d00
--- /dev/null
+++ b/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
@@ -0,0 +1,23 @@
+SUMMARY = "The TPM Quote Tools is a collection of programs that provide support \
+  for TPM based attestation using the TPM quote mechanism. \
+  "
+DESCRIPTION = "The TPM Quote Tools is a collection of programs that provide support \
+  for TPM based attestation using the TPM quote mechanism.  The manual \
+  page for tpm_quote_tools provides a usage overview. \
+  \
+  TPM Quote Tools has been tested with TrouSerS on Linux and NTRU on \
+  Windows XP.  It was ported to Windows using MinGW and MSYS. \
+  "
+HOMEPAGE = "https://sourceforge.net/projects/tpmquotetools/"
+SECTION = "security/tpm"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://COPYING;md5=8ec30b01163d242ecf07d9cd84e3611f"
+
+DEPENDS = "libtspi tpm-tools"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/tpmquotetools/${PV}/${BP}.tar.gz"
+
+SRC_URI[md5sum] = "6e194f5bc534301bbaef53dc6d22c233"
+SRC_URI[sha256sum] = "10dc4eade02635557a9496b388360844cd18e7864e2eb882f5e45ab2fa405ae2"
+
+inherit autotools
-- 
2.7.4


