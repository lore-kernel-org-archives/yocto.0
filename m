Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43960E00DB0; Fri, 16 Dec 2016 04:04:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C038CE00777
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 04:04:55 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id a197so29844463wmd.0
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 04:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=VZs9aC9PC7YijyRhF5ceF9lSkx7eQM3vO8FpV4ky378=;
	b=E05JLsv+edpX8VQOiBFmluQgiYNnCtSBMtR8J9YUwnp/nhhfCA+I2k/cf5WSiN+quX
	onYiYekRlNOtm2Wiq56q0xBxOuB8Tv3yW2uSfJ9ZdY0+Ejfn9RhVkIBTb8Plpg8qBqqU
	b72emd2ImTtyKCVXce5PbDJd1tKlEEf+suH0VqRNtKTl8tfSClWGdRhj9STFUo8e6yGB
	J5Z4Z/gu2h5kNKpfONQrg0l0Tjt0Efb5rGMEw4S0uBtmVqfH6qmaagpkTaQuMSDFfB7i
	KXWORHdMErHbRvRhq3S0H6q7U1gXLKnyLIFpy3J8fNXAMrh3yX0R6eDmAroOiKw210lo
	C3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=VZs9aC9PC7YijyRhF5ceF9lSkx7eQM3vO8FpV4ky378=;
	b=EP9GDOW2ML4rAGoPYlolzbxT3RFdp76ETpBD8bwY4ULYj4Vw7vFFMY8nl4mRKIbc6n
	hP5nwOKBAKrhIiJKemFb6BbnAUTP4O0sQVJxZaNC1rURLtz07l+V/80YhUDQ1V2p5eYS
	tpZ59z6x3BS+6ZqGQRgWZC+S3dxYnGqr/rhy+4nKaqruw82qE7tfAkRAXBUwdsgw4Ws3
	bQWVwDeWpHoHjfq9zCqGjrXKqvJKIzV6x0X/xIjNQZqUwkWr0ItjY1HpCeOpMkyvgoUe
	zm1Ii2MKVSnxAiOa/qIKjr2TYgKBRI5XqP9sB6fgPZBENvChhqWUSIcd0y06vA2oYn0Q
	haMw==
X-Gm-Message-State: AIkVDXJ9u5CGEqoUjTfaiFZfSoRs3NFkhazEL8KEm/zBiIs/6Y2EfN9abxSloabPfaEa8A==
X-Received: by 10.28.144.70 with SMTP id s67mr2354987wmd.138.1481889894540;
	Fri, 16 Dec 2016 04:04:54 -0800 (PST)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id d8sm3030666wmi.21.2016.12.16.04.04.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 16 Dec 2016 04:04:23 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Fri, 16 Dec 2016 13:04:19 +0100
Message-Id: <1481889859-17427-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
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
X-List-Received-Date: Fri, 16 Dec 2016 12:04:57 -0000

Previously using bbappend files for linux-raspberrypi recipe did not allow to
use "kernel_configure_variable" function to set kernel config variables.
If user wanted to use it in his bbappend with "do_configure_prepend" it was
cleared afterwards. This patch moves cleaning to a separate step.
I'm unsure about whether CONF_SED_SCRIPT variable gets cleaned here. Please
verify this.

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


