Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBBD7E00510; Mon, 27 Feb 2017 11:15:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E376AE0050B
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 11:15:49 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id l7so25100199ioe.3
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 11:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=g21I1ZMK4+D4b7sUK+tM2IN2gIBA/jrA3KDFZkEFiGQ=;
	b=DnRY6F+zglQ8qvDow2+PUwQR3lqehtOFGNEZfC38sUNI0/IECc4+WaHJ2Rs/91PCVe
	LuSCpt8pJXXLhsVmjx7iQ/nawOLm1gzY7UielectzFV1rAv6VxpCe6CeUXQ3XFIbvoSV
	Q38p0bfROxD890a/BveXERuXv5oFMGDetuWN1pB/mXHA619ZXGJuU4umIVLM7qvroM3j
	FuD20/m4rcECEyx+V5hbfHUo3Cojdw2BzFcurBjzRfJRtQzjsj5e7n4HWvoVJwF3LWnq
	jkzxwRhWaxV5NE5NNP6xN+iyRqh7jD96Xnuj/xQeoKqbT83RWnuo+AXNRNtiFKXMZGVc
	H50A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=g21I1ZMK4+D4b7sUK+tM2IN2gIBA/jrA3KDFZkEFiGQ=;
	b=HFi4ZmTbjk7PjcAjZU6l4dmjjohzggl71IR1cykAQ9j69/Ss1OoHYIPEeDwXRr675E
	Ipcun0lpv9kHdkkrW3bktD3vewPt3Z8uPwl0qlfxVsrrreSP5F+NotfZ+EYDaYMdpICl
	Nfb8buejGPxvEI95uy3x1BEkTX+CZaTUB9LVuN3NKJDAbJ7Pg6k0o4R9Lx7mgmazGsav
	sf+KR+f7YbAmwDSJteA7f0zevnhtiWRlZYxzOAdsxlkURROq6X4HN7bTS5WCL4lP8qyP
	xEYgw4CsED/7+VJs9TCM7afZx2BUHuk2+DVay9azpWUALfhc6WNEtBstk8WUx7oECBZ3
	FNdQ==
X-Gm-Message-State: AMke39kQ2ELr3hHKexZ6zBiP50ubN00OidW4aSV1sU7kVL2HIqb7KQtw0HKfps0RzjrgNA==
X-Received: by 10.107.191.130 with SMTP id p124mr18923002iof.172.1488222948627;
	Mon, 27 Feb 2017 11:15:48 -0800 (PST)
Received: from linux-uys3.suse (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	i195sm4646150ita.17.2017.02.27.11.15.47 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 27 Feb 2017 11:15:48 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 14:15:35 -0500
Message-Id: <20170227191536.8742-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-rockchip][PATCH v3 0/1] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Mon, 27 Feb 2017 19:15:54 -0000

Here is my v3 of this patch, based on feedback from earlier reviews.

Changes since v2:
	- change commit message and call the "old" layout "legacy parameter"
	  format instead of "rk-boot" format
	- rename generate_rk3288_image() to generate_rk3288_loader1_image()
	- leave any older gpt image files (with datestamp) in the deploy
	  directory but just move the symlink so it always points to the most
	  recent

	- leave size variable as GPTIMG_SIZE
	- leave the boot image name as BOOT_IMG since trying to add ${MACHINE}
	  and ${DATETIME} causes the build to fail with "the basehash value
	  changed... metadata is not deterministic...". I think what was
	  wanted was that older gpt image files be left around, and this new
	  logic does that in a different way and maintains a symlink to the
	  latest

Changes since v1:
	- break large commits into smaller ones
	- rename the class and improve the commit message

Trevor Woerner (1):
  classes: rockchip-gpt-img: add

 classes/rockchip-gpt-img.bbclass | 132 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)
 create mode 100644 classes/rockchip-gpt-img.bbclass

-- 
2.12.0.rc1.48.g076c053


