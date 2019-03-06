Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5EDFE00CB9; Wed,  6 Mar 2019 08:47:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 078ECE00C93
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:47:35 -0800 (PST)
Received: by mail-io1-f67.google.com with SMTP id y6so10761497ioq.10
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=JlrEaCVvS6rValabpV+RXdCkP+C8O9krYm+PBSM3ixg=;
	b=cuBS2yjkL13JORru8vxNL+fhXGIqrM6a5a7nElQ8BdSjPkyPRbuANNamj9DJ3ghPeI
	ujqOqOt1Clwspf3y6Qu/CfrNxR/ZyTkRx8i52SM4osa5nU30X7dJ8oXfFoCyXnOP5x9y
	48Ky7+JMUlOJj1OUFaMPkJjS/jvf1WxoGPh/v8ugebBt85g2d17ulWtFysIBQe9XJm2G
	WNv4t9PwNNfC+rmfKrZOvxS7/r6mtXmwXXSYip26ZgKEYAG3kOe8sYx+UHxax6g2u7AU
	QWfHVw9Wi2CBNe+B7ZxFYDkCJJ4JmEAgDBjKljG+mYFtfmUYioXZKnVQnirlXijOppl6
	g2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=JlrEaCVvS6rValabpV+RXdCkP+C8O9krYm+PBSM3ixg=;
	b=X4Elz6RRZkTorCEDA94a0BV06VZiVAiiTbMJehnp6fB7GxkLrA2TfmvXRliV69rte8
	tGaAJacejYeCC/dW7H+KFxntWX9yplkPoFXYsgKVIj/A0neSDESVJVfDf3HSm8XIEXFI
	dMenAD+VYlrhK6VgAv/Z9c/ZRAAuRQ/apSJnxSfyoSjI/VZFWsbB2HhrKyH2R6nP8ALe
	/QooEGxn3yrDM1e3cb9otz6lKg1sm4acXmv1vimqOGqTpDgXnvAvZRlr9SJt2sRMdXzA
	96Q1ow0udCiym5CaBBdvsQV2HLteujn1Y9+SpbOcYG+uomgMvDuF7wUlX8HALUi5si0s
	uy/Q==
X-Gm-Message-State: APjAAAXWQOJIWi7gFSvk1zBS5cooQJcHV9rOx0/DY27kYMuSFit8o9IV
	Sz6u3SSJY7JrPDmIC0lsPAn22kBLeTI=
X-Google-Smtp-Source: APXvYqx0t0U92nqMei0drKGJJUMzFHHg2TPM6gIMo9/86Vvh3iLhE8KJkCidc6jBDJlElbs3eYec1A==
X-Received: by 2002:a6b:e208:: with SMTP id z8mr3866268ioc.56.1551890855388;
	Wed, 06 Mar 2019 08:47:35 -0800 (PST)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.116.254.195])
	by smtp.gmail.com with ESMTPSA id v14sm700227iol.61.2019.03.06.08.47.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Mar 2019 08:47:34 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Wed,  6 Mar 2019 11:47:28 -0500
Message-Id: <da2de48e11ccba42944ae64ba86bada7be92300b.1551890688.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1551890688.git.bruce.ashfield@gmail.com>
References: <cover.1551890688.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/4] meta-yocto-bsp: Add the v5.0 kernel support for all the BSPs
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
X-List-Received-Date: Wed, 06 Mar 2019 16:47:37 -0000
Content-Transfer-Encoding: 8bit

From: Kevin Hao <kexin.hao@windriver.com>

Boot test for all the boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.0.bbappend            | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
index de5d84db11..fe52a06550 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
@@ -1,17 +1,17 @@
-KBRANCH_genericx86  = "v4.19/standard/base"
-KBRANCH_genericx86-64  = "v4.19/standard/base"
-KBRANCH_edgerouter = "v4.19/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v4.19/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v4.19/standard/fsl-mpc8315e-rdb"
+KBRANCH_genericx86  = "v5.0/standard/base"
+KBRANCH_genericx86-64  = "v5.0/standard/base"
+KBRANCH_edgerouter = "v5.0/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v5.0/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v5.0/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_genericx86    ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
 SRCREV_machine_genericx86-64 ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
 SRCREV_machine_edgerouter ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
-SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_beaglebone-yocto ?= "1a0da7e50b77c82841efb501c648dbaca699eac2"
 SRCREV_machine_mpc8315e-rdb ?= "21aae3b4437eb6eec18804f1bad692030352430c"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.19.14"
-LINUX_VERSION_genericx86-64 = "4.19.14"
-LINUX_VERSION_edgerouter = "4.19.14"
-LINUX_VERSION_beaglebone-yocto = "4.19.14"
-LINUX_VERSION_mpc8315e-rdb = "4.19.14"
+LINUX_VERSION_genericx86 = "5.0"
+LINUX_VERSION_genericx86-64 = "5.0"
+LINUX_VERSION_edgerouter = "5.0"
+LINUX_VERSION_beaglebone-yocto = "5.0"
+LINUX_VERSION_mpc8315e-rdb = "5.0"
-- 
2.19.1


