Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D852EE009D4; Mon, 30 Jan 2017 23:48:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 963A5E009AA
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:30 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id d9so26893764itc.0
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Qq4Bd7FSFO8Cf8zazlJmjaUP9Cx8u0IMnNeTaGl7eMY=;
	b=CvnHam9+2BX1RPRCpz6SUG0IaW3t//RdksqkeYCram/v70Q9B+wnfwTVURqqv7/s8P
	4CViSadLImnp+klUPr9/Mc+JvfuaGYpLslpGpn9Ujn1qdxjPlFO5OExxLq0BxIXbomHp
	vx+AjtMd5FGLnuJza/IdJ/JuF8l/SCnBzwW3SFruTshgMa8afVW7MU2sURpMVBDw4f3t
	VBydwUkE2718Huxkqp4Q2te/RsKBM3roIh4l71xTaM59dUW2GlxW+7do6mhj7g3MCDxl
	kvT4R1Li0owQfARYQ7KRFHgfBVk81LvYlvIrHtmVygR9EKKcsCYi12loMq82w2sYmNSD
	xpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Qq4Bd7FSFO8Cf8zazlJmjaUP9Cx8u0IMnNeTaGl7eMY=;
	b=Z/EpZqkiMCr8YhkbK8TtSxoIEub6YG+6G0hys52fWhAv9ALKrr1fmLB2QsbQYT1i9B
	GBeGElg1SornYn+dA75JtibTMT0EqB5QU7WFZA+l5+J/8L54HxPYUNeDum8XQ2H9k8M4
	X/WzXgF8ZWW2Xw4smXrFLJL9FEsz7qpU5E+24Yrsp77MDbSumuHSjUL7DVXomnCco+du
	LrUrWIAqmYCPQunXjichOX3cIsQpOaBN2c8bdiSrHlUhp0OoMgzXhAiN51oYoeIk8sda
	yx5G7WANINp8L2QqR5h+f3z+E9lhczkcYUzngtHeLCHLIdMSODV6yCJNOtYoZvbCb5Mz
	IbTA==
X-Gm-Message-State: AIkVDXIubcH23GMKnU1YDOxOSt9yFnNHFmUGNDfkyMA7Q1EY3bcDz9Byiiyzp6PdOa2zBvF9
X-Received: by 10.36.111.143 with SMTP id x137mr17324345itb.42.1485848909431; 
	Mon, 30 Jan 2017 23:48:29 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:28 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:04 +0100
Message-Id: <827fe7b64438b13b960c38e4b0bba35c179d1f54.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 5/8] swtpm: depends on tpm-tools
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:35 -0000

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

