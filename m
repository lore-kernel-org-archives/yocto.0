Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FECAE00DC9; Mon, 13 May 2019 21:47:18 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46E15E00DA9
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 21:47:15 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id w7so7604806plz.1
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 21:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Ek3NlWlPmEK5AZRlYVR+NmXDolf5dgIWE6+AdjsGvf0=;
	b=c3oYUJ0C/kJ2OXoZ096LcqBfmpiXa0E9wZx6Q6uxI4tw+U85ub29/R5ccT2aZj0Ac3
	1aioC3XJw3xSMQXPXD6mWwVLBWqrP5AmVtqTF6C6AdzF5mk+QzTQ9P5ez7gFxPm3w5Hl
	M6cDRHxYo+OHWkKBH276NUuo7vMvKuiObwVdIYdsHxmaiBxLYDfNfe8zNNNw3wNMnBeJ
	JmICcMXTLjY82oC4EzyjfZdYGBSXyHLZPUY1l4rPCJ0Zx1g+oQOneFzecD8a2rk14FO4
	M6lXqOMa78jSfbXmFlvae8BpEkwppVsoEj+T1hwJ8KkDdEFxm6a1TS5tiSPLFVrZUjKT
	FzVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Ek3NlWlPmEK5AZRlYVR+NmXDolf5dgIWE6+AdjsGvf0=;
	b=VHnKnhOc9t6GUKuEbDYwT8e5Zsu2FlocUoi2D4rdZPvrFZJwJTjtjPQCq4LARf83sK
	2WssKdQPbarGJNq9g5Cwtp0JlroQxN10rsDV01sQiX7rqCrvlwCt+k9fIR58sdg2oRX9
	wlo8yg/cyuuofiKkm/knfnMv6XyB0gyEpqovAGd/oKAg6EZ9glyW2a56Sozdr5OYe3Md
	YKLfmRLmlKr/3botLcrpsc/1HPhct1zs4p4oWD8o59kKHbgnBshqljg9yB8q56pB+aUx
	h8mx2avGKHDmjB79TkFtJhwaZzoxqbXUzuVnzbK6QwMgOE7a+jP+ykYdlXAQ02G9uiOQ
	Fh9A==
X-Gm-Message-State: APjAAAXB83RGOVwIIfjR3AZynweUWduVAlSIU+kUJVtCJcQZ0UGcDK9R
	Gd88OKH3uWTPB9/wsBRaIwrawDu9
X-Google-Smtp-Source: APXvYqz/sVdxnRoX3c0fael/tDf0wyMzYORHfejXv0TsqYVdBOxoH1Tuyh2zUw5sh+lQAfQ+4I+P1Q==
X-Received: by 2002:a17:902:e48d:: with SMTP id
	cj13mr35681027plb.156.1557809234641; 
	Mon, 13 May 2019 21:47:14 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:d909:eb3d:d2ab:fd1d])
	by smtp.gmail.com with ESMTPSA id
	a69sm9095750pfa.81.2019.05.13.21.47.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 May 2019 21:47:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 May 2019 21:47:09 -0700
Message-Id: <cover.1557809019.git.akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH 0/2] meta-yocto warrior-next patch review
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

From: Armin Kuster <akuster@mvista.com>

please review these change for the next meta-yocto warrior update

The following changes since commit 299b4150c66520985415fcc91119d563f7ba663c:

  poky.conf: Bump version for 2.7 warrior release (2019-04-12 13:50:29 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib meta-yocto/stable/warrior-nmut
  http://git.yoctoproject.org/cgit.cgi//log/?h=meta-yocto/stable/warrior-nmut

Naveen Saini (1):
  linux-yocto: update genericx86* SRCREV for 4.19

Richard Purdie (1):
  oeqa/systemd_boot: Drop OETestID

 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py        | 3 ---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend | 8 ++++----
 2 files changed, 4 insertions(+), 7 deletions(-)

-- 
2.7.4


