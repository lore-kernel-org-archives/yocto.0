Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 316E0E00A21; Fri,  3 Feb 2017 00:46:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF51E009CD
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:34 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id j18so12774367ioe.2
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Qq4Bd7FSFO8Cf8zazlJmjaUP9Cx8u0IMnNeTaGl7eMY=;
	b=mYJ5+ucDBKHJlc8oy+U267N/yqV/6xbCVQtSVLnyBGDOUIAq4vKR210g7IVdokaeDs
	r9AOTIPq8tPgYmPzyfQS+zTYAJjJz1VIReH+HzAB/Vw6Xtmk9Dtx80fbp611bP3/wlPY
	9IRm9N61LcG/a+OzhR8Uy/j3f9Se8Zeg9u+WAuU7+gxWD1t02LVaN/NJfleXKTNB0zU5
	fOnLg7F4YrJxzC3C9JHaiym7KMY3LmexWm/2AyJURc1kzwGn+q7iag5+S+hIglzKmZ5M
	Ujia8loGKMEi1hc4IG1/+EtTY6Oj1w0ooujZjncJq7OOHpaMDJs4+daon1y6T3tLAKKk
	h3Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Qq4Bd7FSFO8Cf8zazlJmjaUP9Cx8u0IMnNeTaGl7eMY=;
	b=mn1LftRC8IHjukiuv+b944Z7ID+GWJHKq6QQNkoEn72AEw+vLJRjQgjXuiig/XbOB/
	BheCjMd3C/pRddqfKUAqXCkQysiCJPbHHNL7oEDft7NZP5qJIf6vDZ/wJWswDDqI+lBe
	tU9Q+Yx8ikyyJtdfaAvjtF+uUhyFak95KyiompkWI2h1rXdkKviCdi+mv7cRNonTfoph
	p0jQfGFAjH5HBIoOAkhZf6OPLalNZEycPGXfVQ3putvQyKxI5lKj37P59ns/+SJzHhQA
	rXBhGCn4gsSMDpI/F5p8b3i9ij9egMoCXMLEEMDk4L9VZXPBhXy4JsKn93hxbuswC+Tu
	F0VQ==
X-Gm-Message-State: AIkVDXKqB0Ff2DFNZ9N99fv/v749aOSiRmu4lNHDK9RkUK1ahLFT+CybLfu/ojBFO4sML5Js
X-Received: by 10.107.53.215 with SMTP id k84mr4345447ioo.45.1486111594386;
	Fri, 03 Feb 2017 00:46:34 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:33 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:10 +0100
Message-Id: <4dd6f29782cfe21f7758e2ddb2cd0f6a4d15624f.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 5/9] swtpm: depends on tpm-tools
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:46 -0000

The configure script checks for tpm_nvdefine from tpm-tools and fails
when it is not present.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm_1.0.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index d5a2a58..5283f5d 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -5,6 +5,11 @@ SECTION = "apps"
 
 DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
 
+# configure checks for the tools already during compilation and
+# then swtpm_setup needs them at runtime
+DEPENDS += "tpm-tools-native"
+RDEPENDS_${PN} += "tpm-tools"
+
 SRCREV = "ca906a02124d0ed8b6194e845d272d23ee394a34"
 SRC_URI = " \
 	git://github.com/stefanberger/swtpm.git \
-- 
git-series 0.9.1

