Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF28EE00C02; Sun, 25 Sep 2016 09:13:44 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D930E009B4
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2016 09:13:40 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 21so7902073pfy.1
	for <yocto@yoctoproject.org>; Sun, 25 Sep 2016 09:13:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=7PL0559AaFbwGLU+OvabBlfDbPDPH8C9XWy5oZPnNWs=;
	b=qSagQmdEkBqRLVu3S3sM9mfVs0VdaV04zUWA6560+YLdLsTRpjIn37qj9lK/RRZk+U
	bLjdtTzjmGzwhyOV6nP1jvu9JAeDkkDRCBkftq1PpREzHm0FKkneDckGirD8q7Gz2vcH
	DRvob0Y+LxLJ1SlTq+fbbycnT/W1sM0u4Wzeygnf95Byu1M9X8X7APF263AIsZxpI7uT
	/KdRpzgFV2gzQ93T78U+7znpyJcDR7XuKP+CUwSvJ38AiOx4wigN088Bv35UNlIqdA5r
	2Key4wYYSwzV7D3AVhrp/0nNCK5ihhc+cgJRI9rGf7HOg/wCHWQx7d5R/M8ihjXT+H3F
	WHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=7PL0559AaFbwGLU+OvabBlfDbPDPH8C9XWy5oZPnNWs=;
	b=XuvgeOQQehnra/ZD5avCTRBdADhC1hFlWWoL6HaOo6l9SbSpyNTSb0aJXvZtciamlX
	NzdaPieR16DVFeHjrPON3Uzn1ExCEH5oue4wcRrx9oYfS7bu1La0LQMg7os3j/xhFLpr
	JgYv/OPxPMrvloWD20gAYSuw6q3jIo3r1w5CnAsmkaDx2UsmTb96IrcsurxkJkg/m2qV
	hzua8gAUIK18MG4fYgvOmERLU82PNv324NngXp9aJi6jfX5WcXBnbR/iIwK+kz5oO1Yi
	Mh91tQTW2tgnB48dqmvnN1M9qtLl2M4y6QbY/U46nCC8qPVt8Yxff45l4pXZk1/Cz1bW
	RInw==
X-Gm-Message-State: AE9vXwMfjYKefwyTIrrbJvQxdH64CzTm8u6xQLlv+iN7GmHPMeIwLfj/eFtoi5phU7Sp7A==
X-Received: by 10.98.65.1 with SMTP id o1mr31066548pfa.134.1474820020471;
	Sun, 25 Sep 2016 09:13:40 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c88d:7203:3d56:a160])
	by smtp.gmail.com with ESMTPSA id d9sm24842176pan.7.2016.09.25.09.13.39
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 25 Sep 2016 09:13:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 25 Sep 2016 09:13:38 -0700
Message-Id: <1474820018-30383-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] paxctl: Fix QA warning
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
X-List-Received-Date: Sun, 25 Sep 2016 16:13:44 -0000

WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: No GNU_HASH in the elf binary: '...../build/tmp-glibc/work/core2-64-oe-linux/paxctl/0.9-r0/packages-split/paxctl/sbin/paxctl' [ldflags]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/paxctl/paxctl_0.9.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
index fb87f10..3c04141 100644
--- a/recipes-security/paxctl/paxctl_0.9.bb
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -32,4 +32,7 @@ do_install_class-native() {
 	install --mode a=r $PROG.1 ${D}${mandir}/man1/$PROG.1
 }
 
+# Avoid QA Issue: No GNU_HASH in the elf binary
+INSANE_SKIP_${PN} = "ldflags" 
+
 BBCLASSEXTEND = "native"
-- 
2.7.4


