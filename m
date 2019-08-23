Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38EA0E00DB6; Fri, 23 Aug 2019 09:27:20 -0700 (PDT)
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
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0EDE00AB4
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:27:19 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id d1so6046397pgp.4
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=/BWP0CRoNTQ8pGZr4KE9JSM0A/WwKytcOAhAdSIrACg=;
	b=h1uVyj/hUNsWFaZWPfVValPcmpWu/ylA5xv+cGlBWFoyJEWCEtE2CNCTbI0hnZJmNq
	DdDlY9wz9FVcCNbwJqjiuZp3E75HONwGF6LlDTvNgOoAQQ3Xsc52vQvW/V2GB44+G5ZH
	Nx8B5P7Gfn7DTw4tmkqzu+FiRSpwUXEIaRq7K6XF98qsoq63RaCd72H6Y+506pqZw7Uw
	0cwQvgCRd3K94mcwxQZ8PC9KOwqEKBDD7Cyb2tHLsBpSY8GezQjGwzhr2GgfCmXwPcxs
	kxF18pejEL/0KDrgQhksCtzWAoGmYJB5pzHayaGrDpL4zAL16AyPrabap+7gkAa/NkbA
	dKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=/BWP0CRoNTQ8pGZr4KE9JSM0A/WwKytcOAhAdSIrACg=;
	b=aVW3+gzRvpO0k3qS+QqM5/EcrX6jDlcO4r86RPcytfBsJCeaEIFSr6Zu/+MmDVGYVc
	S+5uBs3rKtIvAjkdcIaqzx61rGENSjGJmEJAjeazTu/THwgBzZL65HEUvxn7woOZJcFT
	opaVKJrvFUIZpU1lj4tHph42j4VjG4IeOwae8pFbFLpKHBmmJdKcb7ushl42raegawqC
	i1sBy0ljOGIorvn3yyJbCsJ4Ryu4+VXrPjgI6tZ/gx9+ea6MMHSSNUgi3oYpX24B7ozE
	EkkHGmQHkrkk7FMGduWb43USMv0lBos8AN+Fd89VwuLeSurRmDgwI7AAF4AP3ckPxlut
	SfTA==
X-Gm-Message-State: APjAAAXgKcvfHkkEwthCAMmWajzJJWIN1c6lJhkjIfA++7OyO8wbeEVg
	cxYuqpqq4Mk7oACqutqxadCO5mk4
X-Google-Smtp-Source: APXvYqxa/Fozvc5RC/RfOVuOagBB/EJDl0Ht5uvmCTRBJ6rmEfhcDBntV7PPetoRAEcZ+gVUks4VKQ==
X-Received: by 2002:a62:ab0a:: with SMTP id p10mr6258289pff.144.1566577638362; 
	Fri, 23 Aug 2019 09:27:18 -0700 (PDT)
Received: from localhost.localdomain (wsip-184-188-36-2.sd.sd.cox.net.
	[184.188.36.2]) by smtp.gmail.com with ESMTPSA id
	b30sm4478634pfr.117.2019.08.23.09.27.17 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 23 Aug 2019 09:27:17 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 23 Aug 2019 09:27:15 -0700
Message-Id: <1566577636-29800-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] linux-stable: rename to more generic bbappend
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
X-List-Received-Date: Fri, 23 Aug 2019 16:27:20 -0000

use wildcards

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/{linux-stable_5.2.bbappend => linux-%_5.%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/linux/{linux-stable_5.2.bbappend => linux-%_5.%.bbappend} (100%)

diff --git a/recipes-kernel/linux/linux-stable_5.2.bbappend b/recipes-kernel/linux/linux-%_5.%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-stable_5.2.bbappend
rename to recipes-kernel/linux/linux-%_5.%.bbappend
-- 
2.7.4


