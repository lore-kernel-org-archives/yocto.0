Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5869E0093F; Wed,  8 Feb 2017 06:39:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89E9DE0092C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 06:39:30 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id e4so11807706pfg.0
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 06:39:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=I8ULUPK/qT4ByPh5kzASkfplS/z30p7UHA5KrMU2608=;
	b=MgqyYw6WvN/WfCJqzQvflcIKPwSULAVhSVxUPjlASWlrht3Z5T95jIYfnrCHRYPDyi
	utSeNZkbZEhgJ0d4kHkodYYLsF4lwCS07VlnDb9emxhuLeV6R1UPzPCnxeqnYi5MsEP2
	w/bZb6KHjQcFYQSoHifBgzAxIelt+ZFvOeMKR7GI18e0HZoTCE5irCIzMYrq+tpg+bve
	6Pr3f7QitZ1b9hR7TDvbPQws3TClkOi2Yp3HZz14MmBBtjjm2JYg9IPV3J6+T/jH/vau
	VR5Z90JesMLgsZv3f7Q31wuiQ2VSBKJzZLX6slFo5n1FRueJuR9XzZvfo1TDbtf1o+ot
	zohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=I8ULUPK/qT4ByPh5kzASkfplS/z30p7UHA5KrMU2608=;
	b=ALLVjQbAweHhwoqEvebCeYxVKyanLdj1G34vMOaxlrAODJLMVwKnOlwJXl+QFJ2L5N
	SKpEhyS8alzcKRIEwoU6jB1QfswhXk+XCLLfxWqA58KPwRHfHRw7d+u1VF0XPxniHl2M
	jDffItELZIa2wJ+MEw8VaGnaVHN8nRNGxbrhY8S6uBbgHUGWAE5hVcM93sNE/zz+KQui
	UfKv0vMmpYIqfF3UHMXZ9OTKT0I+FvgDAXxTyD59BmlIbZs4Lk0MxJ3grVhlU1Rgrrgk
	kKgBm1u5yoX7Yf+GD2klmRhNc8NkVv2143GqqyFB5MMj9fEzP47a747cYCNLNtLk4ja1
	lcMw==
X-Gm-Message-State: AIkVDXJKmkNErPSwKCjzFOQGI7rqClv5y6mbAcWaCrd762w13XKhTt0RF6a1gIa9bkfsdw==
X-Received: by 10.99.155.18 with SMTP id r18mr26896084pgd.193.1486564769549;
	Wed, 08 Feb 2017 06:39:29 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	p15sm21016966pfk.58.2017.02.08.06.39.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 08 Feb 2017 06:39:28 -0800 (PST)
From: Eddie Cai <eddie.cai.linux@gmail.com>
To: romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  8 Feb 2017 22:38:16 +0800
Message-Id: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][morty][PATH 0/3] add main line kernel support
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
X-List-Received-Date: Wed, 08 Feb 2017 14:39:32 -0000

This patch set add main line kernel support for meta-rockchip

Eddie Cai (3):
  machine: Use cortexa17hf-neon-vfpv4 as default tune for rk3288.inc
  machine: Use SOC specific assignements
  recipes-kernel: linux: Add mainline kernel

 conf/machine/include/rk3288.inc    |  5 ++++-
 recipes-kernel/linux/linux_4.10.bb | 18 ++++++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/linux/linux_4.10.bb

-- 
2.7.4


