Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB99EE00985; Mon, 16 Jan 2017 06:24:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72CCE009A0
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:39 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id e4so3931543pfg.0
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=fv2QWmVGBQGiBt0ymsvBlJ0dtNjmkriZSHTkEcLP7w0=;
	b=dtGjUTBf4k+H9spHi21+KG7gPAPwsVs9nem5iqui+3tV9dIUPLKf2+9rvyszTMzvG+
	QUrXkyuH5uwjzzd7XsOAQxZRvq3jHPEpOkaWt0VQsgWL+/h8jEPjHIcaEf8RGouS/cMG
	jmCKnGsM0o/nz6GK1B9p9+EwI2KGLmBUg51fFXfi7QJyb52006NJHn6nu36grwdZFTtg
	LnAV1BtZCkAwsJ/lSAbSlsKKGc7dBy9oRYw3eYKzYgvRwkPmMNvRA3WzT4a4/u9eVEdv
	8cNqUwxqnpSX38v6TzXQKLjh2o6TDk0CyUhVejH2Oxbqp8YVSXG94J+0lX3W2mGYpbQO
	AHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=fv2QWmVGBQGiBt0ymsvBlJ0dtNjmkriZSHTkEcLP7w0=;
	b=bSKn65H772FkVcj2iqEHR3CP9jJjJNt3JMt0dTAuyFUidjBiFvpkI1TZ88WDBfFz2h
	rhAx6lnVash5xCea71Qp3iKYcYNfM/FRKQQtpvISQ2wcAIprJUXZX/DuisTDQIkmUxRk
	/EOW5kLGV5L5U9oWWNNvM6ZDrNO6vdr9kMgGb6/0XzzUde19Gt0qTU2x1asWPo+Hh6SU
	q/85cSbPRQ3xy0gPxjxYZaFWfHBrtg62B4wHYVd+f7CR8jY8RbCQjeadDRX5zRhX2U8L
	7gt6JvkaZJxHU2Vf1XbZnTT7t27pl8RyibIMCKH/aK7CJ7NtTEAugr5wJ08O+RinLHhY
	o3hA==
X-Gm-Message-State: AIkVDXKcTdiJ6vIDpxqFExb6i7kfCcmRBh3Gu0+ImMohh9FQNCymHUUUluS1bAEpA4+H+w==
X-Received: by 10.84.236.76 with SMTP id h12mr51098325pln.173.1484576679188;
	Mon, 16 Jan 2017 06:24:39 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	f191sm9040777pgc.12.2017.01.16.06.24.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:24:38 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-7-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 7/7] dtc_%.bbappend: Only build libfdt for mingw32
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Whilst building libfdt on mingw32 is functional, building dtc for minw32
is not. This is due to dtc relying on certain POSIX functions as well as
not handling the MSVCRT printf formatting.

This change enables building and installing libfdt only for mingw32,
disabling the build of device-tree-compiler itself.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/dtc/dtc_%.bbappend | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 recipes-core/dtc/dtc_%.bbappend

diff --git a/recipes-core/dtc/dtc_%.bbappend b/recipes-core/dtc/dtc_%.bbappend
new file mode 100644
index 0000000000..140693778a
--- /dev/null
+++ b/recipes-core/dtc/dtc_%.bbappend
@@ -0,0 +1,16 @@
+
+do_configure_append_mingw32 () {
+		# don't try to build the other dtc components when installing libs
+		sed -i 's/install-lib: all/install-lib: libfdt/g' ${S}/Makefile
+}
+
+do_compile_mingw32 () {
+		oe_runmake libfdt
+}
+
+do_install_mingw32 () {
+		oe_runmake install-lib install-includes
+}
+
+RDEPENDS_${PN}-misc_remove_mingw32 = "bash"
+
-- 
2.11.0


