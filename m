Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F97AE00DB1; Tue, 11 Jun 2019 00:08:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF959E00D6E
	for <yocto@lists.yoctoproject.org>;
	Tue, 11 Jun 2019 00:08:26 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id s15so1577689wmj.3
	for <yocto@lists.yoctoproject.org>;
	Tue, 11 Jun 2019 00:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=hhxb3yg3CDVZe+qtmrsxzVrtwy25aIRpuSiPIspni6Y=;
	b=h9He86Zyx7+arTTdDp0Mo0uvPBxQP0TtQPplFKNZYiwP9k8JUSBTdZQvnN/9IcpAZF
	QbAZ2PCCInbbwfa80U4S25n2svCrJ7775wLXeeG5IzZczvP+iMiRNo5VgO/XG0ClTKpU
	vMiV10FGxqF/nOclLmOik9ipStomdgdifXtmQooFYA5og2lzWyJ+TKzkEQId50stBt6t
	OuYHlxvmOt/7ptGc/Zm3FX7k80MM8zB/mS/77GLYlTrMbWjAzVnDFw3QquXs7/y11fr7
	D6jOr4SNK1wCegbTn07GFBNtCQaFTRo6EU+PTheoRHxknxBMpYHyP3ncdFLEufG2NEWO
	zztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hhxb3yg3CDVZe+qtmrsxzVrtwy25aIRpuSiPIspni6Y=;
	b=IeqnAW6YuWW9SRMJq6WeMYgIYS6ZhX89y/8SAI74192R2DCgV6gZGaCrrAnAHrboMz
	qQT2rlAye21Av7rINyFW0bEDVBuoUpJdlCRXF+3R7MvLD4btdNQI/7tOs7wWxPyUTMUJ
	Yy4OZM6nZVClYGh2saQ2sbJ339vq1fQmLFRllM5IROCqz/lFiAWpQJYhBGZp77dEgeWW
	skkKdM7jl5KQP7eRfQsacRpLNHsLjoVk4K/fxDbg0X64Y4uGRapPfxhVi0F3d6wOVaAz
	JwyncML6eq/IqGV/wXjsuU45Pap3fnorlfj3p8A1gZYz4F8Yrn3xM9dPDo2TxVvkM2gz
	Vriw==
X-Gm-Message-State: APjAAAV6y/OrWtdGOFfBmqj8YZSJnri0sbC6F/JgwOLnw0U5y8GwNnDH
	QRA+5IjBSB91n2ZySj4DHdF0fDeo
X-Google-Smtp-Source: APXvYqxZ5xpF0oxn8rhAZZMYyjS75X7EjAhb9m12lSbFPGU0VDQz5Yu8trQx/+x8Uz7u7MCM6WiWWg==
X-Received: by 2002:a1c:be0a:: with SMTP id o10mr15204054wmf.91.1560236905694; 
	Tue, 11 Jun 2019 00:08:25 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	y38sm21902903wrd.41.2019.06.11.00.08.25
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 11 Jun 2019 00:08:25 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue, 11 Jun 2019 07:08:23 +0000
Message-Id: <20190611070823.367-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-gplv2][warrior][PATCH] bc: use u-a for bc as well
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
X-List-Received-Date: Tue, 11 Jun 2019 07:08:33 -0000

* bc can be provided by busybox as well (e.g. if you have your own
  defconfig and forget to explicitly disable it:
  ...
  *
  * Miscellaneous Utilities
  *
  adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n
  bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n
  bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] y
    Use bc code base for dc (larger, more features) (FEATURE_DC_BIG) [Y] (NEW) y
      Interactive mode (+4kb) (FEATURE_BC_INTERACTIVE) [Y/n/?] (NEW)     Enable bc/dc long options (FEATURE_BC_LONG_OPTIONS) [Y/n] (NEW) beep (2.4 kb) (BEEP) [N/y/?] n
  chat (6.3 kb) (CHAT) [N/y/?] n
  conspy (10 kb) (CONSPY) [N/y/?] n
  ...
  ), causing conflict in u-a:

  update-alternatives: Error: not linking /usr/bin/bc to /bin/busybox.nosuid since /usr/bin/bc exists and is not a link

  and then whole do_rootfs or do_populate_sdk to fail because busybox postinst is failing:

  do_populate_sdk: Postinstall scriptlets of ['busybox'] have failed. If the intention is to defer them to first boot,
  then please place them into pkg_postinst_ontarget_${PN} (). Deferring to first boot via 'exit 1' is no longer supported.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 recipes-extended/bc/bc_1.06.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/bc_1.06.bb
index d8c8a86..3de1b24 100644
--- a/recipes-extended/bc/bc_1.06.bb
+++ b/recipes-extended/bc/bc_1.06.bb
@@ -20,7 +20,7 @@ SRC_URI[sha256sum] = "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea7
 
 inherit autotools texinfo update-alternatives
 
-ALTERNATIVE_${PN} = "dc"
+ALTERNATIVE_${PN} = "bc dc"
 ALTERNATIVE_PRIORITY = "100"
 
 BBCLASSEXTEND = "native"
-- 
2.17.1


