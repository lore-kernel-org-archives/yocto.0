Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 506B1E009F8; Fri,  3 Feb 2017 00:47:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0859FE00A4F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:46 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id c7so7557683itd.1
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=OPYC5VOwvgsSg5SwJ7tk2PXy4bins1+x/m/gW/LZ8No=;
	b=FSjOa8803BPWoMau52iKn6TSl9i3gcix/9cF1crH16WqjxctSH/KDoPYX2ptNuDkYu
	ggJ3dRCM5EZ97sqksYpBhz8BU1RKebxRyFYdozHpjpBgdDRkEiqiNxBSGPTualqWr4Wt
	rCnv4m42IdCSK+KJTaB1u95KIdYFhcimcOLqDdA2WQMyyMGr9mRwCg5sIbi8xO9Hhlhu
	vF9a4SpjEFbFRt1O9nXl0jkBhHBmH4ettE3P0tFCyeZ0h5f+lGUVgeHk5KD47m/p2lN0
	DcWUmOK7QT0/64JFL8vdKrgL2CVIudJpzmauMJDPYqbtx8iz1aUHwE+O+MTnmdpE4vE2
	B5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=OPYC5VOwvgsSg5SwJ7tk2PXy4bins1+x/m/gW/LZ8No=;
	b=LLQ6K4V4t2/IW7FO6fAchgwcq2fNWdcrxMqbDqW8M0yT2BtrHZxSi68sazFmsI19Ol
	YzdxfbGOcHoQ29CEpQe9rk2U6D9Bsv/KnQ2pxkYkNqXAtAobzfjkbiPX7+AI1PHnD9d4
	13sx0O0mfg3REBYG8OsHuAmbeC9V+mg0FcV4GlTOfpSR+Q56pKI/g/BTdh+qFn6O67C/
	JClHcDjSjXbZvsy0gnCHyOQccmsbfqDkor+YUQ7T7jIu6IPuDWF84IX/2Rr8nn0Url+7
	+3IzNfj67GkgfD3PvQe1GfYQXebJPzWUhkxhqSVUDZ71p1dCzcEiNEdS+RLB34CaT63S
	OJGQ==
X-Gm-Message-State: AIkVDXI4p4AJjEJMEEM+ub1ZpcEiYTOBfA1MOi4RFDhflh8y30uGRToQKN/lgG4A4JVJYL6Z
X-Received: by 10.36.3.68 with SMTP id e65mr213494ite.50.1486111605978;
	Fri, 03 Feb 2017 00:46:45 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:44 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:14 +0100
Message-Id: <fa260b43edccec4214a3c7b236d6f7b9b1350b21.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 9/9] swtpm: update to latest tip
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
X-List-Received-Date: Fri, 03 Feb 2017 08:47:03 -0000

Brings in instructions for setting the log level. Setting the log level
with --log file=...,level=1 is necessary at the moment before anything
gets written to the log. Even errors are suppressed by default.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 0733adc..0d3bab0 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -10,7 +10,7 @@ DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
 DEPENDS += "tpm-tools-native"
 RDEPENDS_${PN} += "tpm-tools"
 
-SRCREV = "ca906a02124d0ed8b6194e845d272d23ee394a34"
+SRCREV = "65d8e4d83447f4c13a41a6f995bd0490f49bc5ef"
 SRC_URI = " \
 	git://github.com/stefanberger/swtpm.git \
 	file://fix_signed_issue.patch \
-- 
git-series 0.9.1

