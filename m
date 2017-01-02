Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 562C9E0089B; Mon,  2 Jan 2017 05:45:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.169 listed in dnsbl.sorbs.net]
Received: from mail-wj0-f169.google.com (mail-wj0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDEE7E0050B
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 05:45:13 -0800 (PST)
Received: by mail-wj0-f169.google.com with SMTP id sd9so240134957wjb.1
	for <yocto@yoctoproject.org>; Mon, 02 Jan 2017 05:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=NGFtl7OeAmz75CYCZ6ziQboa7lDpSrqz2qcaaPklBDM=;
	b=Vm/hXPFqoruz1Bqt8oEbXIiCcoi4M4P0YMuZ0q5lpq+3rE6Ia09nQBUzCCmcDc++cU
	ZjUgKJJiGh2+MBu0kuyVsfw+3Cp60hT6+0oAWy+ilL2mufiVuzS1mGwrjU0xRNv9+Xcq
	gamsx4aWI7yA9VATajjGEOX+PhAP9F0sd2aOJfPE52xQb76xECnl78spnoF82wtID82p
	5Bf9PlwcNLzkYLiya7VA/G5+0MLBpmDWVundG7G1i94OnAf8osYPr+ic2YEa9t4K65TJ
	Dt9v9pJvsHaMSFcR6OOFiIto64rhv2GPZeVxfvgsawqsSLkUb3FZBa27xNZ9ST49t0Bx
	Me+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=NGFtl7OeAmz75CYCZ6ziQboa7lDpSrqz2qcaaPklBDM=;
	b=rbuyDEXK/7qinCR5IJhhw1vscj2XaoKDmjnddMB/th/goF3Y64hdl8fZiMyFsu8mvg
	6Pm+AthHqyJ3RsQzPLbCRM+h+vxv0vqK2ET751Q1cS6c7C8ynMl0DXZ5SjwXlXlfD/Dq
	QNvwC0tI1KmMu5rTrOlawul3JH7pnJgMcD39/kYus8Ek/eAUnfPqJrRMnSNrTHjpMI11
	EmZUW+AwRwXdOiqpOCYitHxsOo+KWaz/XJo8mfaEZhHfWih+qPOb+BIwZ2hDNi4xdk+o
	+/V1m9f+UiQnCWP8uvIfyB6FA/HHJTyi7UGCw0nGKr16IKKV2e2UffKXMbUYyfUoeBNY
	aBig==
X-Gm-Message-State: AIkVDXKP2mnJilhIofMFqSQdAHps99sAhqbFg6bEC+ntfRBy6QZdlzAV3JHzSIyaL9iMsQ==
X-Received: by 10.194.26.170 with SMTP id m10mr50009244wjg.152.1483364712422; 
	Mon, 02 Jan 2017 05:45:12 -0800 (PST)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	z6sm87807298wjt.24.2017.01.02.05.45.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Jan 2017 05:45:11 -0800 (PST)
From: Piotr Lewicki <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Mon,  2 Jan 2017 14:45:02 +0100
Message-Id: <1483364703-31220-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 0/1] support of kernel config fragments
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
X-List-Received-Date: Mon, 02 Jan 2017 13:45:16 -0000

Resending a patch by Alex J Lennon
(https://lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html).

Applied manually to the newest revision.

Alex J Lennon (1):
  linux-raspberrypi: support configuration fragments / in-tree defconfig

 recipes-kernel/linux/linux-raspberrypi.inc       | 12 ++++--------
 recipes-kernel/linux/linux-raspberrypi/defconfig |  1 -
 recipes-kernel/linux/linux-rpi.inc               |  6 +++---
 3 files changed, 7 insertions(+), 12 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi/defconfig

-- 
2.7.4


