Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FD00E00AD2; Mon, 17 Oct 2016 17:02:35 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5185E00A7D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:33 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i85so10241355pfa.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=KrcWpHSbug0E8kaXXQ+m1e5TAvz6hMgKuBrBqGNDd98=;
	b=rbMzPlFFbuNrHHZOxV9DYBZjFx1AveEZTyUEcoKF7Y2SzaYIygcjXaFu1m5Se/Qq9y
	HXuOWv7YsXSETB/hNCxTNS68rjiV8QniMeWXF2UrSU7LnBlDf/J9t1BU2lfm7LVT0HiU
	K4DRmpGnRnhJ2g1guduRH5gpklJZFlec7bPMyrLJvrzNasfr3hsBwYeWBNwulGb0LS2F
	WEg6XSRtMW0dfVAJ8RILnxdOrFYh0K+YJjpx56D9PpN6+wfQog9paMQW7Pmn1KwCpdal
	mkW3Zcjf6cHuAUiXittXOnlYIiSTGBMkVVICMXhrAKze/OXnS8zj+KpOB1XHuU3JKuce
	IWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=KrcWpHSbug0E8kaXXQ+m1e5TAvz6hMgKuBrBqGNDd98=;
	b=AzezrlRcwIfGQZu0/1WxRkp+NVghO9a15LmlrsnsUZVR+SsiykKOELBeH2+FGJRRfU
	NGP7R2o2/h86T7njQvrH0Ee+d695Nyo37bsoBxg5Rjh+cjuXYMP0/aYFrrOzStvDNpiu
	j7qMr8ixoDmqvZB8CZt4Rq2pi7kKFzRCIfrAxzbDni5kJ09oZQzvIGUHJhFNtG/qTJce
	ON9gNUWZ0XX8sp9T1a4fqU3ZcPWMbO23X3jW+pw1uFgszc8ghbssc9nXLmiInaPAnDFj
	rLtU+eV6WR+3H6V6CcyqQJOiYZhDxHElOGqZl49mqLeweQwA+6uPIEsm1FKhjHffIr+j
	90Qw==
X-Gm-Message-State: AA6/9RmfWVxaOo7fq5WkW0p1kMM9bRzazfBy1f0+r71skrzkXDYIOgu+wgsKhZj8ZPqYCQ==
X-Received: by 10.99.116.79 with SMTP id e15mr136817pgn.166.1476748952850;
	Mon, 17 Oct 2016 17:02:32 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:32 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:15 -0700
Message-Id: <1476748950-21342-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/17] tpm-tools: add native support
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:35 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 +++++++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb

diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
index 5645976..99ea8ee 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
@@ -9,6 +9,7 @@ SECTION = "tpm"
 LICENSE = "CPL-1.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 DEPENDS = "libtspi openssl"
+DEPENDS_class-native = "trousers-native"
 
 SRC_URI += " \
     http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.gz \
@@ -20,3 +21,5 @@ SRC_URI[md5sum] = "85a978c4e03fefd4b73cbeadde7c4d0b"
 SRC_URI[sha256sum] = "66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
 
 inherit autotools gettext
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
new file mode 100644
index 0000000..be49dd9
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
@@ -0,0 +1,23 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2.0-tools"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
+SECTION = "tpm"
+
+DEPENDS = "tpm2.0-tss openssl curl"
+
+SRCREV = "c924cc8ca752e5af6a829f893c6be4b185d56e99"
+
+SRC_URI = "git://github.com/01org/tpm2.0-tools.git;protocol=git;branch=master;name=tpm2.0-tools;destsuffix=tpm2.0-tools"
+
+S = "${WORKDIR}/tpm2.0-tools"
+
+PV = "1.0+git${SRCPV}"
+
+inherit autotools-brokensep pkgconfig
+
+do_configure () {
+	cd ${S}
+	./bootstrap  --force
+	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+}
-- 
2.7.4


