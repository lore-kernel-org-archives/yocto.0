Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FB56E00DC3; Mon, 13 May 2019 21:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D5FAE00DB5
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 21:47:16 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id c13so7946065pgt.1
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 21:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=eZw/BpYzckv17kkemv4qp8dJee+Rijm4Uq39trmaqNY=;
	b=GW4Ue3JDHLapKjdsI1r4R2rWTfgf4H/ZpR4DxvKJR8vk9hS/6krtJKjBmsf+8FI5gV
	PyoQSaxqYNTq59PAo9IzIAOwmdQj27GOip7bcQtsr0M+VhJxwWwkSjYR1zawDKoencHF
	77zJ+fPDNjfroG+aHu+lcWLlVBCOtcynkMI4OOGeSgAA0xXJMTRqObBDSEGefuLqtpem
	QjM3JC93/N63iM2okPKeWhHf2Q9jKCYl6ivuyB2AjHAOHZRBJlaBOg7BV2V/UBhMjltW
	lvLZtRU5ghVZujF5gfQuUbTWN4Lp9qceCHkuSNiF5Gc/CbfiuSKBpGtd6pqXFqoMjvbg
	Nypw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=eZw/BpYzckv17kkemv4qp8dJee+Rijm4Uq39trmaqNY=;
	b=eSzJdiI34GP66eLX6jgsBDXbLIvPekXYbM5P0jpwYnxu75EZ00QG4G4GPbeuveInpc
	bJ/PcLdBxiLCsxAEu1BkUeS8bhscVwb/6znR7grVr2Mj6f/nPpYeDnedQDGXpCH2s2oN
	If4PtvXHKREIWaxk9CRlOSTdHyuFjHx/QnczxIwfBCxUuzx14lxx82gGO2cwumuJXULY
	WAd/bFfjMBqz8hIEQjnmc3GzPcRhRv24cgk2HD9U3gNT8VCLAC3Co0o1mjjEMywSNOrm
	lyZRLETNfoNYs/biD4Cdlg94EAqDkrakhgAm2AafEj29112x8bFYGlsAtzXm8Tc4MQyM
	doIg==
X-Gm-Message-State: APjAAAXOnqMsP/SnC/G2XkTS8QJ422haaJL2RocsTbk6ep/uIATpA8T4
	6awJwY8tcKXfzUSmm3zC3E+7ySDc
X-Google-Smtp-Source: APXvYqx4+9J9CI5KUEle/BwAczlxwQhoXdWl/tZ1uEOobJgD1VV2Z1exHu8DZ8cASqHxdNyoJpCiaQ==
X-Received: by 2002:a62:30c2:: with SMTP id
	w185mr38540724pfw.175.1557809235395; 
	Mon, 13 May 2019 21:47:15 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:d909:eb3d:d2ab:fd1d])
	by smtp.gmail.com with ESMTPSA id
	a69sm9095750pfa.81.2019.05.13.21.47.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 May 2019 21:47:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 May 2019 21:47:10 -0700
Message-Id: <4573518a9e890ffda86cb57dce67c0db909d53d9.1557809019.git.akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1557809019.git.akuster@mvista.com>
References: <cover.1557809019.git.akuster@mvista.com>
Subject: [PATCH 1/2] linux-yocto: update genericx86* SRCREV for 4.19
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
X-List-Received-Date: Tue, 14 May 2019 04:47:18 -0000

From: Naveen Saini <naveen.kumar.saini@intel.com>

Bump to kernel release v4.19.19

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index 8e708cb..6025230 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86    ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
-SRCREV_machine_genericx86-64 ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
+SRCREV_machine_genericx86    ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
+SRCREV_machine_genericx86-64 ?= "11e0e616ed095bb8012e1b4a231254c9656a0193"
 SRCREV_machine_edgerouter ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
 SRCREV_machine_beaglebone-yocto ?= "eebb51300a07804a020ec468b5f8c5bf720198d9"
 SRCREV_machine_mpc8315e-rdb ?= "8b60f968823256f5d2889c4520d70299ca21411b"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
-LINUX_VERSION_genericx86 = "4.19.14"
-LINUX_VERSION_genericx86-64 = "4.19.14"
+LINUX_VERSION_genericx86 = "4.19.19"
+LINUX_VERSION_genericx86-64 = "4.19.19"
 LINUX_VERSION_edgerouter = "4.19.14"
 LINUX_VERSION_beaglebone-yocto = "4.19.14"
 LINUX_VERSION_mpc8315e-rdb = "4.19.14"
-- 
2.7.4


