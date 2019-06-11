Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C90E00D6F; Tue, 11 Jun 2019 00:07:59 -0700 (PDT)
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
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66EFDE00D6C
	for <yocto@lists.yoctoproject.org>;
	Tue, 11 Jun 2019 00:07:59 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id s3so1645839wms.2
	for <yocto@lists.yoctoproject.org>;
	Tue, 11 Jun 2019 00:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=hhxb3yg3CDVZe+qtmrsxzVrtwy25aIRpuSiPIspni6Y=;
	b=W/I5B6Eo7lJGA+9yjj7FtxYQYwC2GMRusGPqwLLel24N43PZXW1HcTPplFGOPEw1Ec
	euhkEYP9/MPL59srDmc3EYbc/aUqI0XHVXbcwoo/YJQ3l7e1AwRXWr4hFAcher+qPPdM
	JRHfD0TA5OBSn/LUTMACjl0Zfnx2ao5I1JmWCtqt2lhWX8dPU0qnChk/2ECCSouY7vk2
	xabskUZlRUDstNq6ioKCjYUsXRxdBz8UN4LGBRWG6rMzLw3fEDSyW9sr4/OrSGRMT7El
	YgfLhK9OlTIACWpwfuoPOMjcPf8dCGJVYZx9i4Mk/LyFGapzCyG31gc+WRefEbZGfXoz
	6eLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hhxb3yg3CDVZe+qtmrsxzVrtwy25aIRpuSiPIspni6Y=;
	b=Yq8HkLX/ETQVMEATQ0SdrFPe4VyGq/IltbPHNQ2/rWiDzhSLKeAjyfI+4og5E3xEr7
	+VztwE7HaQptIbt+fNQl5CEqcg2E+dDRRMk3KgEVnMAVB0tqwZCgNEsE7D2VhMie2W4D
	9HbK3S85G1vwr2sz5KD54zQH0lB8xELdgU7d7auAsxIYsUlAFtoNVMsWQnew15VXoClg
	UD1dFpGiHXfH16x0TlYLMXE7+fB0fuJz3fCaQOiXheZio5U7tXZuyVCP50KjtmWlb6kw
	DUS9fwa38G76Y/vARRIorNbaboEmHVEiypGfZeHKFpTp+uxtrEpg1P3h0cwlBeAZ+Sxk
	jznw==
X-Gm-Message-State: APjAAAX2OUD5dncxOtyaGBY8DQ7FKEi2wYsfK/eLm5nlljjYzyjUMyZe
	XmAvhwgJh69t+zMK+JTY8hUaKi/f
X-Google-Smtp-Source: APXvYqzrvhmdlWf1dZwv36VHuaY6yNWBJTT/TOLwuTKZhpWh2jWRQT02aSWQwveqnTvjTXlqyb4Y+A==
X-Received: by 2002:a1c:c255:: with SMTP id s82mr17498532wmf.6.1560236878160; 
	Tue, 11 Jun 2019 00:07:58 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	l190sm1405749wml.25.2019.06.11.00.07.57
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 11 Jun 2019 00:07:57 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue, 11 Jun 2019 07:07:55 +0000
Message-Id: <20190611070755.192-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-gplv2][PATCH] bc: use u-a for bc as well
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
X-List-Received-Date: Tue, 11 Jun 2019 07:08:00 -0000

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


