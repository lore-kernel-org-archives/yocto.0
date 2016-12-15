Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4217BE00D03; Thu, 15 Dec 2016 02:05:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E17E00CF1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:05:50 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id f82so37611448wmf.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=k2/1e4yIQVIZBjRhwDH653dSSTcHBoJDrCBn4axNWE8=;
	b=RCgXWpZv7yjq4aXBWCyScsCWJO/n64hs3JWIvipZw/sWMXm4VYUksZPSwDaM5yEEEp
	YdQ3hDybOmWZAZsREquZMGLGKTd4DdUdzeqxKBwIKBoaVbp5lo+LGyWed8eNPn1tKZp/
	rLWM9NO0AgtX1FzmVyum7DV+efnrD4PYGofwZoukSpChPq01s2CgMJQ5QMSHJOflLpP6
	2tOV9XAV6DuFFUZ+B+hlPUMxRHMwFkgbfBtdmyVTrZcErX3vkTdCnci9qle3acdz0rXx
	YXl9IxRZyS72gjJOThKo8u3AxvHK5wN1lwEfj582CBDKj6RCovTsP83KxiQTE6SWfZy0
	lzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=k2/1e4yIQVIZBjRhwDH653dSSTcHBoJDrCBn4axNWE8=;
	b=iNMEkvjnabbk6EwN88oJAy+yjWTVYblPYjpvvSgcsKwvWWWb6wbqxLqiUoeM5N5ei4
	Djo3Ad6uZvzS6lvmsKKRJRkKDkSlxwhkGlBXt6TL6zInsweeRS6OeO4c9ee2R83upjct
	0rVJ4+65eGKiY+4qr4DvX2kwe/LkTBSGLFgNFYHTZSA2WMoO0tW34KahTa6HRJk7Oqzy
	RATTkPyooR8d2jVJWEvNx+LNe0B4HLpnzD2iPLZ4je9zXrxPaJxb7BsXMrLhWQ8dDoqW
	SgDQL3S5pDbK4+xeJauKQ5ZAflXWZuaS+JGVVPnfZlMtPgh7m34S/tlnTSuqepIQWDWu
	YXXA==
X-Gm-Message-State: AIkVDXIrm+A6O5RowY6SXPbSV1wXx+qwDSIDqnlsCJYla9NTRn/AXOlgshI2+fZhQaJN3w==
X-Received: by 10.28.72.198 with SMTP id v189mr582138wma.13.1481796349052;
	Thu, 15 Dec 2016 02:05:49 -0800 (PST)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id e6sm1287447wjw.33.2016.12.15.02.05.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 Dec 2016 02:05:48 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Thu, 15 Dec 2016 11:05:30 +0100
Message-Id: <1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
Subject: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Thu, 15 Dec 2016 10:05:53 -0000

Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
---
 recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 95a9530..c665b9f 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -34,11 +34,13 @@ kernel_configure_variable() {
     fi
 }
 
-do_configure_prepend() {
+do_rpi_kconfig_clean() {
     # Clean .config
-    echo "" > ${B}/.config
+    echo -n "" > ${B}/.config
     CONF_SED_SCRIPT=""
+}
 
+do_configure_prepend() {
     # oabi / eabi support
     kernel_configure_variable AEABI y
     if [ "${ARM_KEEP_OABI}" = "1" ] ; then
@@ -124,8 +126,11 @@ do_configure_prepend() {
     # Keep this the last line
     # Remove all modified configs and add the rest to .config
     sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
+    # Clean variable- useful when calling configure step multiple times
+    CONF_SED_SCRIPT=""
 
     yes '' | oe_runmake oldconfig
+
 }
 
 # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
@@ -146,3 +151,5 @@ python () {
 
     configfile.close()
 }
+
+addtask rpi_kconfig_clean before do_configure after do_populate_lic
-- 
2.7.4


