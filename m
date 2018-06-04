Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64023E00C6A; Sun,  3 Jun 2018 17:23:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.67 listed in list.dnswl.org]
Received: from mail-pl0-f67.google.com (mail-pl0-f67.google.com
	[209.85.160.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C1DAE00843
	for <yocto@yoctoproject.org>; Sun,  3 Jun 2018 17:23:01 -0700 (PDT)
Received: by mail-pl0-f67.google.com with SMTP id i5-v6so18571712plt.2
	for <yocto@yoctoproject.org>; Sun, 03 Jun 2018 17:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=J4rMbrfPzLhoBjgmZFyt0LbDk9ymApT6xcEoZzkw+54=;
	b=aJMua0Zb6p+l7wLn2zOiX0uTeox0tiOG8DV3cwzjyVvDzLe/l55ViNVd75VNPKQjFx
	xdw+Brp5xtRAt4YRYhhq/TQwmjQD4TM5zyQrlFBsqHesF9gwuwhND3CVzIOE//gfG+Uj
	V3Ky4sTk28rudTMcOiIehjG/O714tlyD/mEfxuoCGh+cf0TRk1+ss/nnMSwt88SLyNwW
	wXj7lOIvSE6o7iZTiuPxqbBm31kXbs3NHrmxlNyp67ADsOCX8vhRn+B36YrbOCcs0xZ6
	iAe2JKkXY4z6unkSYsY96x4UXroXyP544uulxT9o3L7NNfYTcNnEIAUVsSzJ/tQuv6YD
	Sn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=J4rMbrfPzLhoBjgmZFyt0LbDk9ymApT6xcEoZzkw+54=;
	b=Nml8CHDdGY86Mc0ULxukx7F1WavJsLCIesBu3m5vecZd/ooQeMnedZzZbkCk/djfCe
	1EUOmQHqLDCHPBIrnEvxwhqj9+xPPOo4lJbcZa6iYrUxyCTFoC5X5JbeVWvhouM1g8DK
	6haG+Yyp1cIC8dFXE2SB4SEXjdKVKnx2YMBownR3YfPwPFGth5lEiwe+vyDQEAC8v2Av
	rGyv5oS4JlSoikaMp4dIysFwMqWuR76ore7wvV7ZN48lil2WvvooVrFnhJ6mSbUp3bzA
	V+XGEiLE3w2FZ8DJmUXxDfK9T2hFL+nr+rDsBaYmXrSMMVrds2LzZvjA5nI8KBnqnIMQ
	sgqg==
X-Gm-Message-State: ALKqPwdG6d81qDHTDd8fDM6JNDDaYLycskC3rI25QHmJyjil2M/iuL+u
	/0v7jT7mXHT6RhcIrNEixi8=
X-Google-Smtp-Source: ADUXVKKnDVpnUByhnnUPlyUTLn2Ff9u4+GmqgW+8+ePnbU4IwsprQUYwsNnf++oEtFasT/UfPBMYDA==
X-Received: by 2002:a17:902:7c16:: with SMTP id
	x22-v6mr19634928pll.77.1528071780821; 
	Sun, 03 Jun 2018 17:23:00 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4000:1184:f1bd:c539:22b:bbf1])
	by smtp.gmail.com with ESMTPSA id
	v13-v6sm5500905pfa.131.2018.06.03.17.23.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 03 Jun 2018 17:23:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sun,  3 Jun 2018 17:22:58 -0700
Message-Id: <1528071779-1499-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [autobuilder][PATCH 1/2] yocto-autobuilder2: add missing __init__.py to top level
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
X-List-Received-Date: Mon, 04 Jun 2018 00:23:02 -0000

This fixes the import of modules when starting buildbot
as master.cfg has:
from yoctoabb import builders, config, schedulers, workers, services, www

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 __init__.py | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 __init__.py

diff --git a/__init__.py b/__init__.py
new file mode 100644
index 0000000..e69de29
-- 
2.7.4


