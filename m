Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 800EBE00D01; Thu, 15 Dec 2016 02:05:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 315C8E00CEC
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:05:46 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id g23so155836737wme.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=kmFQjB4lafqJvH89PAgD35sDzzekG2fGJoyTSZdU2Ns=;
	b=em/VYt0rj/NzmKO75eK04EBo4NDptKlm7/9iK2WA1Wfo6fCXNqnocGY6UP3QELOlC+
	PmAp3RXxkrG6MEg6vMe4qlv1wJPBqRk5MQTTzVf6eC73h5pBa3H5d5k5NDGmq17PaZw2
	inYjr+mgKBBNzPvIA7iew4jZnW3Aty/cn8EGxQHqte5SiRJWVztaQc98KacAjfRjVf7L
	7ivvee123E5bfpPRNJev+/ffXp2AdH1Ls4V0yTWpWBvsvdAE/NGyyPQjx0qs93q6NXGY
	shPq/EH/E5cRY5ORGovVfC1+EnlCHDIxg7cz/fD/BfppEyB98mR0T4w89tvW8QDncMTI
	M9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=kmFQjB4lafqJvH89PAgD35sDzzekG2fGJoyTSZdU2Ns=;
	b=Due0wbwunukT3ff0h1wfpjLv2sKKpcEK3B6DBg44tMBpXbMyoKySPxkOHRMcsZ0uju
	DiXqDmqU5iq70/Z/WD11wHpimwIpd9nVE/IODu0Oe4Dn04VDqcXyMqIba5gE6BvytPCy
	60LKq8i14EvjnBxbqEM2OjBkLs+uRfzD3JbrmDvOBFomdi85lH+Hnd1+6ZeIqd01vWOb
	zohEPqx2lk1AXeKIF5BNE5zRuH2HxFqE3GAEOHThTT96fSzIorpTCkNY3zwDyaGwnWMo
	8S+58H0fUHZTaMHy4PbaWUJvRitozHZY7UBsAlJ+hou1Q6zWhBxEfnskcjJXuPPnHGh9
	1ysQ==
X-Gm-Message-State: AIkVDXLd40B7ilWwdoyQbR/dCFQ/UTdtSS7dIguUno/VDtpepMbEDCgns5A/1/XmsGjagQ==
X-Received: by 10.28.31.23 with SMTP id f23mr584340wmf.94.1481796345743;
	Thu, 15 Dec 2016 02:05:45 -0800 (PST)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id e6sm1287447wjw.33.2016.12.15.02.05.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 Dec 2016 02:05:45 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Thu, 15 Dec 2016 11:05:29 +0100
Message-Id: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 0/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Thu, 15 Dec 2016 10:05:49 -0000

Previously using bbappend files for linux-raspberrypi recipe did not allow to
use "kernel_configure_variable" function to set kernel config variables.
If user wanted to use it in his bbappend with "do_configure_prepend" it was
cleared afterwards. This patch moves cleaning to a separate step.
I'm unsure about whether CONF_SED_SCRIPT variable gets cleaned here. Please
verify this.

Piotr Lewicki (1):
  linux-rpi: clean .config in before do_configure step

 recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

-- 
2.7.4


