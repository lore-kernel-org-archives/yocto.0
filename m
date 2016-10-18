Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1083E00D4C; Tue, 18 Oct 2016 09:53:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A811CE00D45
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:53:40 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id s8so15580928pfj.2
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 09:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=oDIAb2hItsidBLa5BjlHK6AmwN0Yc8ePqHrHdmwcXTQ=;
	b=LNrxLoj/7cmHhFK6mWKiMg63+dTDM9QZEPTN+SGrOI7yAV7sIP2kZhHhVbKDC5k6GH
	XuoLt8o6vtAmP8abo+hjRUaigbJIFwEaeivnHdRcxWY68L9wZkhC/jA030Pl4gdfGBtq
	ZJaNwixEdAmb4Pl6gzOZDvdTJ8cpNBqnQ1iWbJU6qt2uAIO01sI4gUIAmNeO3JCzUdGq
	NG3uGE+kNSMaAxyxaqB50MZQKkAJtwys6tVBRwYVFP7xqqzCIUIY3AJPA2uO+8DS7MP1
	7vymZz7DBJRLCdHPbX1ldgUeXBrzjliF3araGCUIS+ODgJeTxbTTGb9FFBY7YYo3MPoa
	NX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=oDIAb2hItsidBLa5BjlHK6AmwN0Yc8ePqHrHdmwcXTQ=;
	b=fyOe0tlN+gVev00tZWMhX6Sx2qDVsb/YwJfQTrDAzH5xvuul+KLmWqAjuM2N4ngIma
	ovDs7s/reN+vL6LIWn5peh1ah1uvtHWIjZU1mzLiLvYfTJFrPB21NKlkJmrpk/yu1Fb/
	AMaOOBt98o1AeBueKx6mbwJDwEqz4QD1hsKacg/l62suTWbn8KdnzHWTozSSCdZ9Uw8+
	VUpN+LyRPcOFJwCc4NaW3+w00VKBcQnD4hLxCkcl71QCashO8Q8p3aQnOjEmkGGr5NUP
	NJU874rsmIrRd/j55i5BsI+znVU2ee6DeKYOZFOtNNNpETz5lkP8P3L92xrNIA8dg1om
	mayQ==
X-Gm-Message-State: AA6/9RmdhG3v9fvrdHwa9i7lan3mMQ0l04LNtanQobXnuEeDL3gFMD3YyoCg+y6Dv+oDZw==
X-Received: by 10.98.72.3 with SMTP id v3mr2244409pfa.175.1476809620055;
	Tue, 18 Oct 2016 09:53:40 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	c75sm57285612pfb.23.2016.10.18.09.53.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 18 Oct 2016 09:53:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue, 18 Oct 2016 09:53:38 -0700
Message-Id: <1476809618-21806-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][V2][PATCH] tpm2simulator: add package
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
X-List-Received-Date: Tue, 18 Oct 2016 16:53:41 -0000

V2:
Change ${S} and add OECMAKE_SOURCEPATH
use ${S} instead of ${WORKDIR} in  sed cmd

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2simulator/tpm2simulator-native_116.bb      | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb

diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
new file mode 100644
index 0000000..a53d4c3
--- /dev/null
+++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
@@ -0,0 +1,24 @@
+SUMMARY = "TPM 2.0 Simulator Extraction Script"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b"
+
+DEPENDS += "python"
+
+SRCREV = "93dc4412432013ed7bcabd42007754c68f6e362e"
+SRC_URI = "git://github.com/stwagnr/tpm2simulator.git"
+
+S = "${WORKDIR}/git"
+OECMAKE_SOURCEPATH = "${S}/cmake"
+
+PV = "116+git${SRCPV}"
+
+inherit native lib_package cmake
+
+EXTRA_OECMAKE = " \
+	-DCMAKE_BUILD_TYPE=Debug \
+	-DSPEC_VERSION=116 \
+"
+
+do_configure_prepend () {
+	sed -i 's/^SET = False/SET = True/' ${S}/scripts/settings.py 
+}
-- 
2.7.4


