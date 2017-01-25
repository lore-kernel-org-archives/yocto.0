Return-Path: <freesilicon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A59B8E00BD6; Wed, 25 Jan 2017 02:39:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (freesilicon[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6474DE00BBF
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 02:39:05 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id d140so41785845wmd.2
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 02:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=rOKJJMgSgarbdp+s9m0B7g4vEyQo2KlNyUItgPRCaHc=;
	b=t13dz0Kvaf6ASx+nmO28WaOs91IDny4Uuut3iAeAPAUCr5yfZBBDjHhv+Nt00RkM9m
	uCIaqyUGszXPyVDgkXrspSr/xGA+10tek+zRn7sml9ZloGaR9+cqhGbCaFy/5IXKN3XK
	kFXq4ujGbtYlzh/6Xl+v+MEz0KOCn1L66EZjBmAndmGU96I/TVUS5aY1ox/BVV4Fsgbn
	HuGBvAlrSMm1fLhZ4A8vYsk6ShhoYbRQir29Cdk9f8NZjupJbJQMNzG3yN8KcOGFQ/+w
	ftDGwjW45WTfV9gjcm+VAyad5IL4BHHRCHMZf0itzgC6qugcGxuM9BTSloooIVVMYzzq
	ZX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=rOKJJMgSgarbdp+s9m0B7g4vEyQo2KlNyUItgPRCaHc=;
	b=RJs0n7BvsJ560ZpHgGnRpOB6qQOt2toq5/07gS17b0tublp41/wlrgxIHlAesUFQKu
	TpreDZUj70VKQ9JJk4Sx9whKRDQxX3Hlk65PoLItpps1UvcD8D2ZokfeB3fy9qrUnrTI
	X/JzzJm45R4B8MAyym5dq0Ntwle45SomIqeRUZdgAArIDUMAyRVTP1Y8L8tCHvpmrbl5
	YlwyjTSkccRL4gxD0Nw/Sm+64JAk+qTyCIOmKXXW3dhE6bgihEaghIXg2a+1uOGL3uB2
	TqZQoBfl2Ivd1Rz7cQq7nLtTumrCQlPUbe3L9j+nGRtsXZp+IFN29Ov9Ur3tfZFKi8GA
	zcQQ==
X-Gm-Message-State: AIkVDXJ3s3AJOOXVtLHdVE7wMp/xsj5fBcOuPGIYXJ5RB0SRli/Tz/Rx9izkHmv/Px8e+A==
X-Received: by 10.28.197.77 with SMTP id v74mr23773106wmf.30.1485340743953;
	Wed, 25 Jan 2017 02:39:03 -0800 (PST)
Received: from localhost.localdomain ([185.47.80.46])
	by smtp.gmail.com with ESMTPSA id
	h75sm24340116wrh.37.2017.01.25.02.39.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 Jan 2017 02:39:03 -0800 (PST)
From: David Vincent <freesilicon@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Jan 2017 11:37:58 +0100
Message-Id: <20170125103759.15880-1-freesilicon@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [yocto-kernel-tools][PATCH 0/1] Rework merge of feature branches
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
X-List-Received-Date: Wed, 25 Jan 2017 10:39:08 -0000

I've recently noticed that, on Morty, feature branches of a Yocto kernel are not
merged anymore. This is due to the fact that the meta-series file does not
process the git merge commands anymore.

This commit creates a new merge command to be executed when processing the
kernel metadata. To solve the issue, there is also a patch to send to oe-core
for kernel-yocto.bbclass, but I wait for this patch to be included since there
is no point without it.

David Vincent (1):
  scc: Move merge command

 tools/kgit-meta          | 14 ++++++++++++++
 tools/scc                | 13 -------------
 tools/scc-cmds/merge.cmd | 10 ++++++++++
 3 files changed, 24 insertions(+), 13 deletions(-)
 create mode 100644 tools/scc-cmds/merge.cmd

-- 
2.11.0


