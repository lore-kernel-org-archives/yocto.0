Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78F11E00BEA; Mon, 17 Oct 2016 17:02:37 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0334FE00B66
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:36 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 128so13669568pfz.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Cfxn+cfVCad+red1AoYetP00b+DPyThsfIPAsn0rN7w=;
	b=zuX10J/aW64SaNK6gUHOoVItwHS/WGLlEGyNQhKx5YJegvsEvVucaGoSmE7nwyYEgn
	6GuknpDHzuxSdXwwAFy/WT/+iAx8bAkXl27LfQzZRG/Uy8XvvoJU+69+S099PeJM2UCO
	Cp8pAYDRihfWDQsSo60unPCsHsL1fj8YhRvlGyPzQgGbdjBcnf8nPg5SWEUrQUluJgDB
	yz63GVc9/yaniRkc0wO8Vmi8rHKJkKXLc2iCbQneDADz9Imd8Xjhgv03vNift9B0YJF1
	JBkqqNuqhEjkG8gm7UWeZU3aDrNibezU46riqpqrkzEZuUfYCQA7M5V/1HzgCPFjiAL2
	Kpog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Cfxn+cfVCad+red1AoYetP00b+DPyThsfIPAsn0rN7w=;
	b=V7DPUUY2ppVxN30zauiFUiqcPZqFssG78+IF3Lkue3t9GMYrO/i1e0kNyTHTOUyvxf
	Doh5yqwf9buHmtNE+LVc/MBY0C6wagvrXGczTw6tFXlGt88rULjx6jI9FsWbQqEzDdWp
	8daYhNOb5d33GD9kPXLSLlKuMp2dTbB5M7iSKjw6fHhfnBNsepoUqwH9d88GxfS5GMRW
	LoU+IiFg4A/GWo52BvXB9N/vrV8Yo2hwhlH2ctfM2HCDQKeWtuG6aqg6lK9DhWrUiaQ5
	N60RL2e6l0alBv50/g3KXTbrq7GgAWD+azqUYzF/f8EeOv0hpB6sqsLzVMeWVUpQI2CR
	LRzg==
X-Gm-Message-State: AA6/9RlDnP0jQ1qPaZ9SvfMqZ+XJUzaX2VP0IUT0LrjoO+eamEx5kDMpdYv8otD360OMpg==
X-Received: by 10.99.54.196 with SMTP id d187mr167622pga.34.1476748956364;
	Mon, 17 Oct 2016 17:02:36 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:18 -0700
Message-Id: <1476748950-21342-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/17] tpm2simulator: add package
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:37 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2simulator/tpm2simulator-native_116.bb      | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb

diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
new file mode 100644
index 0000000..33eaf99
--- /dev/null
+++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
@@ -0,0 +1,25 @@
+SUMMARY = "TPM 2.0 Simulator Extraction Script"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b"
+
+DEPENDS += "python"
+
+SRCREV = "93dc4412432013ed7bcabd42007754c68f6e362e"
+SRC_URI = "git://github.com/stwagnr/tpm2simulator.git"
+
+S = "${WORKDIR}/git/cmake"
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
+	sed -i 's/^SET = False/SET = True/' ${WORKDIR}/git/scripts/settings.py 
+}
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


