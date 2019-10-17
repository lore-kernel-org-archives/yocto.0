Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70D06E00D9E; Thu, 17 Oct 2019 04:05:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 088ACE00B7A
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 04:05:34 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id w18so1279850wrt.3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 04:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Cxlsi3pUWbtSwnspsE4AXXOh8k51jgL8pA9ql7v/B88=;
	b=ptdc5VysQ0MmzNqu0JG5JprnWnmVFzDO+GwTT5Pv0/aUVg1pg+RbHjXOkn9WmnDSKO
	t7CpOSL5fnCuKbel8RzwAQldZIcWJ7Yd6D3m2cJ+Cnc9mM/1GPeGqxwOl3nbm0ivkQ+8
	gcIsbXgIqn56hVFIju6rMqSuEadsa+k5lJpUGdKZbwXhmvCvYCu9x1PFL6qWPsvKuWvZ
	bUIU/JPiNolAomKoVS3+PjykyvqN8ZnAxdXG8j5ZhM0q/Qk+YXF/7qMDTLS2Ql5cfyyJ
	XJbPvG2OTTVcJDhkNp3j0k0gDPIyS1gN0qNtVpOHpVlQ2ahVSSEMvrCWTiFcNToqXrqs
	yfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Cxlsi3pUWbtSwnspsE4AXXOh8k51jgL8pA9ql7v/B88=;
	b=deB5er39MtBbBDZObmIr3Jdhzj6WYbqiHo8U5HiQKk/GRZyscCjUlC8TPsCytBqamq
	uw4PYXgeteVByctgVjGF/etGQjRiWW9pX+X3Lo9ft4KKDBpeoy7p30u+V6T92Ut40Sfu
	sdBoTrXbH8Cn14QTyP722ywPLZM4qQjDsKOh80screhBUVfsiUN2TG9D5PdMgdD0QZjj
	xdc5hyZNC6W9e7tfJ1yCCnQeHp51/h1F6Aa4kCLxcjguquX9pJg2amBdhBEz9YY5tBEL
	8sJ1uK2clAazmgSI7iAJ7eaCn9+lIHGL5pJHGqNzGXa3QgyhIbVxAHJXh/jdOmXJfm5y
	kDTg==
X-Gm-Message-State: APjAAAXhPGv74kQPh3/VxoHabDukToayeg/+8kvl6OZBPUdp1RNA2U3z
	8QYdKQ5kxZawmVzh5DhaDnidC0MS
X-Google-Smtp-Source: APXvYqz2iQxZ5Yr6I+Y4pZdetm7lKRAlo8tH3DmAGpP+qGGN8JJgWx6M4EG02CMui0We4H0mLFu1vg==
X-Received: by 2002:a05:6000:12d1:: with SMTP id
	l17mr2629045wrx.2.1571310333745; 
	Thu, 17 Oct 2019 04:05:33 -0700 (PDT)
Received: from VM-VPR.corporate.saft.org ([80.215.103.33])
	by smtp.gmail.com with ESMTPSA id
	p23sm1714206wmg.42.2019.10.17.04.05.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 17 Oct 2019 04:05:32 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	yi.zhao@windriver.com,
	joe_macdonald@mentor.com
Date: Thu, 17 Oct 2019 13:05:02 +0200
Message-Id: <1571310302-32688-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Thu, 17 Oct 2019 08:07:18 -0700
Subject: [meta-selinux] [Warrior] [PATCH] Revert glib-2.0: fix configure error for meson build
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
X-List-Received-Date: Thu, 17 Oct 2019 11:05:35 -0000

On Warrior branch, glib-2.0 is in version 2.58.3 so we need to revert commit [bb0c9c3abcb] until then.

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 classes/meson-enable-selinux.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/meson-enable-selinux.bbclass b/classes/meson-enable-selinux.bbclass
index 91c2a2b..77a763a 100644
--- a/classes/meson-enable-selinux.bbclass
+++ b/classes/meson-enable-selinux.bbclass
@@ -1,4 +1,4 @@
 inherit selinux
 
 PACKAGECONFIG_append = " ${@target_selinux(d)}"
-PACKAGECONFIG[selinux] = "-Dselinux=enabled,-Dselinux=disabled,libselinux,"
+PACKAGECONFIG[selinux] = "-Dselinux=true,-Dselinux=false,libselinux,"
-- 
2.7.4


