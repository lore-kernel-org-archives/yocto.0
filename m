Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE141E00E18; Mon,  5 Mar 2018 01:31:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 819FFE00DE0
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:20 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id z9so13996712wmb.3
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=6ATjf3F6K5DKHww4C48xNSZXIusRE3CV5FbfbKELv7Q=;
	b=GIN+LiPRzO1ERLzl1wGykQ7SyVYKJ9S4qTaAMNqJK8RPow0likAGMf90ADcfU1p5WN
	74fr8Bwppmp1G2mjuJKqACsGU4olZGFKXbx5Bw8IfKRsqGEbEVkWFdrMkneuGpOtmDJx
	WQpzOkTvxN5fI2FMM3uWwUNts/feFqAqNCfq3FPkMZqPb3+wQNb13ctTClnLzwoF1Bv3
	fOxKF7XBO+G7UNdRbTHNuu95nCYL4tLvpjRA6wmdU2xh5ORAAnF0/2D/dDVB9c9X5pp5
	DsI6m+upRyTSQMyy01UDud8oId0goS3V3p+LwxXPp6TASW+E+tmq+FdKTK5SmHC7zzvB
	BY4w==
X-Gm-Message-State: AElRT7HUKPiztawdXIFJyisUXaulF8jQwVHJHNDSVCiU8qtPgWzM/5wO
	Adldkvq/rKMrMtYvyUK/WAM6OHmA
X-Google-Smtp-Source: AG47ELsIoY8FGeQsPLqWrlvqGxPz4Xl1oWVq4oxTppn7b1+4sUMJ6+pd97pePdBh0T5kMN7qChy18A==
X-Received: by 10.28.213.129 with SMTP id m123mr7203867wmg.148.1520242279278; 
	Mon, 05 Mar 2018 01:31:19 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.18 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:18 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:30:56 +0000
Message-Id: <20180305093106.11858-5-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 04/14] openjdk-8: rework do_patch (pt 1 - X11 wrappers)
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

X11 wrappers are currently being deleted using a custom
do_patch[postfuncs]. This is confusing to say the least,
as e.g. naming implies this is done after ./configure
has run.

At the moment, this also happens halfway through
patches have been applied, i.e. some patches are being
applied, then the X11 wrappers are deleted, then
more patches are being applied.

Streamline this so that the unneeded wrappers are
removed as part of do_unpack[postfuncs].

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-common.inc | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-8-common.inc b/recipes-core/openjdk/openjdk-8-common.inc
index ab4c870..cf14be9 100644
--- a/recipes-core/openjdk/openjdk-8-common.inc
+++ b/recipes-core/openjdk/openjdk-8-common.inc
@@ -39,6 +39,10 @@ do_unpack_extract_submodules () {
     tar xjf ${WORKDIR}/${NASHORN_FILE} --transform "s,-${NASHORN_CHANGESET},,g"
 }
 
+do_unpack_remove_X11_wrappers() {
+    find ${S}/jdk/src/solaris/classes/sun/awt/X11 -maxdepth 1 -name '*.java' -delete
+}
+
 def package_config_option_cleanup(d):
     distro_x11 = bb.utils.contains('DISTRO_FEATURES', 'x11', True, False, d)
     distro_alsa = bb.utils.contains('DISTRO_FEATURES', 'alsa', True, False, d)
@@ -149,13 +153,11 @@ def jdk_configure_options(d):
     return options[3]
 
 do_unpack[postfuncs] += "do_unpack_extract_submodules"
-
-POST_CONFIGURE_CLEAN_X11 = "${@bb.utils.contains('PACKAGECONFIG', 'x11', '', 'rm -f jdk/src/solaris/classes/sun/awt/X11/*.java', d)}"
+do_unpack[postfuncs] += "${@bb.utils.contains('PACKAGECONFIG', 'x11', '', 'do_unpack_remove_X11_wrappers', d)}"
 
 do_patch_openjdk8() {
         olddir=`pwd`
         cd "${S}"
-        ${POST_CONFIGURE_CLEAN_X11}
         for OJ8P in ${WORKDIR}/openjdk8-*.patch; do
                 patch -p0 < ${OJ8P}
         done
-- 
2.16.2


