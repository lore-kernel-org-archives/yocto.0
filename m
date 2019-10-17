Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84AA7E00DA8; Thu, 17 Oct 2019 04:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45502E0098A
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 04:09:46 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id r19so2122367wmh.2
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 04:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Cxlsi3pUWbtSwnspsE4AXXOh8k51jgL8pA9ql7v/B88=;
	b=kAAceIVRtZq6EcQKFQXVxqH/RCjzA0ySw5sVw5lpfV5j1xfqQbp3ciKebCBv1oRhXk
	3X3Wma5QlYgdXzrzcloeDGmZCnri5nwK5RE6ddwKpjW9PrsmfbgupK8PiVVHXKuv6jll
	lEgrYnBr689jPduc/VTb7ADL14EpY+UDO8LtVRnWjeKPszO12Gr2YXsKhd2FH6OrRxKh
	ZSlM3wnbzt/DPT05WohEze025SEBdgQ56OUGK/eZO1el1GPD2e4J4BbnC98r2nngrlWS
	63ag5BEuRs4m7rPBb0jGmH+WTynfKu8AExfoyVo4f0yShQRTtrcCD5b3qQRGKLJv7lYK
	IQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Cxlsi3pUWbtSwnspsE4AXXOh8k51jgL8pA9ql7v/B88=;
	b=OvO/D9CHtVle0AZcJW3l6ieWCZsZSUrjtmAvPiO4J9gYKPY8c4vPtsRoH5NA4e2I5B
	p4GfANSoEZZxdmeslOdyvK4WzZcert18tn9HfHldFku38c7ht8xzCjxs1YkL4MZXVxyX
	uD1K6XhalBRv4Fxu5OsTKLTV6jTXWaGAMpC5Fn6HTr3ZhnyX6N3h7kan/j4QGZx8XqFe
	yyxea6i1RGKlTpD21eTeF8z3TdNfQsOmvzV2rdMex+qkUzSOCOLHPgE+bGFAP/Y3EMH+
	keiWwb14gVV0vyYefSICsZPZUj9lIRb9gqP1grnaq2Xh60GWnUzyKB+HWeZ4M5JojJXZ
	zE8w==
X-Gm-Message-State: APjAAAWfU5ngQUvV9o+YgeePKAWl09QHHi94IIpdgTdiSQNVPElbRc/f
	9hkWfYUq5yKNQ+F/OhWL5BScdmh9
X-Google-Smtp-Source: APXvYqz3txlkGBxsWiUJ6ojbUj9TQDTfyULsAItRT+CoHO8pwoyDanKZlgzqZFseTYslGQvHAZELJw==
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr2316942wmj.91.1571310585079; 
	Thu, 17 Oct 2019 04:09:45 -0700 (PDT)
Received: from VM-VPR.corporate.saft.org ([80.215.103.33])
	by smtp.gmail.com with ESMTPSA id w18sm1831570wmc.9.2019.10.17.04.09.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 17 Oct 2019 04:09:44 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	yi.zhao@windriver.com,
	joe_macdonald@mentor.com
Date: Thu, 17 Oct 2019 13:09:40 +0200
Message-Id: <1571310580-579-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
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
X-List-Received-Date: Thu, 17 Oct 2019 11:09:47 -0000

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


