Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EB69E00B51; Tue,  9 May 2017 07:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F67E00ACE
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:11 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id i63so194340pgd.2
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=31RkU3kpZn6X2X+EhLl2yiSUdsLy6py2TgiBfvB6iB0=;
	b=t+iM8qs/cx4TiRLh2LbdcGGCIooUqNIVd6xnPNMwnu2Zuc4ByJZbebuvTHAYh7XA5k
	r0/Twr0+eSELJek6V80P05A3EDB4TiYXRP/63V8HKAOGWszgne9z75SEyKAkhcpl+4xk
	zfqKF5jtkA6osBIklG3069CO4klws0+5k/RFhjVLpbhCBjGbogoJ5ITesOYT7fqb7oBy
	cWe89lgXGxF02eMys6NOkq9hR0Yf0AlrJJ2ugKYIZ8gcE7TiHlrTQJBgLL86lyzKxPJX
	Hsh3Trrf9SYo+LlozJ2vSHD2TEAzOR8cmTwVkDc1BG3HY5qEvQZA7KEgfnWDlJaT17Po
	ToMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=31RkU3kpZn6X2X+EhLl2yiSUdsLy6py2TgiBfvB6iB0=;
	b=IXAak6MrBRL/ALANuxLqhb6gVTWhEvFye0NM5L76M6nPI7/WIZJB+QWVTV1vWP56kW
	LxrfVBFO/gRirk8hJrlkN7ODLJkjdrP0wpm/Ys/WnmikkoaHMlgDb0k/ci7K+bVKb47F
	nbZopGrdJsMM7mPdg0fAdowbpmy6pya226r7+7ZoxMZoSD2EkT8vyeCshnNABF/MDv90
	2Iog2aK1rk3H7tJddvdaNi3LWAsvBgUvUaFPIIBsuxh3uB5qw+i9LprmSDTBtsA22XM5
	/ncGoKzUHgCb9LYl6gX43/8PCcdAxj7SgyIomE38EviVeAsP3pzxnszX3Kwa8/VL5Fn+
	zhcg==
X-Gm-Message-State: AODbwcAL3U5rCiQwN4x5wJfKk8eYKK61lXg6Wlgj6EzZ6RDEsM9aH/p4
	UFbR39pqvh4FN7U8
X-Received: by 10.98.193.65 with SMTP id i62mr335145pfg.134.1494341231636;
	Tue, 09 May 2017 07:47:11 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:11 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:47:00 -0700
Message-Id: <1494341221-17621-10-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/10] linux-stable: fix module selections
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
X-List-Received-Date: Tue, 09 May 2017 14:47:19 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg      | 3 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg     | 6 ++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc     | 3 +++
 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend | 6 ++++++
 4 files changed, 18 insertions(+)
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
index e34b24e..8782823 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
@@ -3,3 +3,6 @@ CONFIG_TCG_TPM=y
 CONFIG_TCG_TIS_CORE=y
 CONFIG_TCG_TIS=y
 CONFIG_SECURITYFS=y
+CONFIG_TCG_NSC=m
+CONFIG_TCG_ATMEL=m
+CONFIG_TCG_INFINEON=m
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
new file mode 100644
index 0000000..a81b54d
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
@@ -0,0 +1,6 @@
+CONFIG_HW_RANDOM_TPM=y
+CONFIG_TCG_TPM=y
+CONFIG_TCG_TIS_CORE=y
+CONFIG_TCG_TIS=y
+CONFIG_TCG_CRB=y
+CONFIG_SECURITYFS=y
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
new file mode 100644
index 0000000..088148f
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
@@ -0,0 +1,3 @@
+define KFEATURE_DESCRIPTION "Enable TPM 2.0"
+
+kconf hardware tpm2.cfg
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
index 0eebf00..cea8b1b 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -3,6 +3,12 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
 # Enable tpm in kernel 
 SRC_URI_append_x86 = " \
     ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
+    "
+
+SRC_URI_append_x86-64 = " \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
+    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
     "
 
 SRC_URI += " \
-- 
2.7.4


