Return-Path: <vvavrychuk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F9B0E00D11; Wed, 27 Mar 2019 13:33:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vvavrychuk[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3BAAE00BAF
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 13:33:45 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id l7so15629429ljg.6
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 13:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=4qW6jNxjvL0rjTi4VTzCDqx1jWSjjKFvygcR/ALFWI0=;
	b=cU6YOt39ntWSa/o2x5tX9/nzukQyIApPn4CcWU2S2vLKawpgAfKww3X4BZ2wIjsAoC
	JT+I1597aiC4NZSBrxzSuyRRQWgvcUuMvw/s/pUl6MZBMbqGUMhD6ipMNlHQ06brJTkJ
	/Fq6Bg/qC2A6T060etfER3XEI6wyVFFqh71+hSIs91M0otUL2ybJ3vIbbsAbo9FF/tLQ
	q58JRqucCXJIJTsQYskLq2I5aQ1SJYxHXFJ8ypzVBOBtgeZALzjw7Jfrv6ZRZkwNp/xD
	5cQ49Kl9cMPtYem7lZuN7DUKoc993qJVCpLe9npdOEjukJvwb1EA6etUOsholLO7vfuL
	dkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=4qW6jNxjvL0rjTi4VTzCDqx1jWSjjKFvygcR/ALFWI0=;
	b=ZncYom4iEwUZbPznd6wmridHydSPXCC4mTZLz2SMIDv7gZdF3dsdIcGZUYvNqSWKYe
	j6VkE7yywb6ZrEpYhqHS9VCNs+QwHGLHOZLExDr102E33BXl10UJVadMSPrLALdXySI9
	KBc/v77ldswazMOx+bMqr8xbtKBUdG3TONLKuUK986X7PCwegeSm1VVkb54vGmfX2rlo
	k7bXMHYoZz1N/5tk3A4eeFqLRYk69ES3X+1usdtZ+nv9pG/23O3S+Meny8D2a5X9Nuyo
	n9mLzMSfgYzXIl5ArOCuRiqR1bjtrZQGmL05LhZreJyi3S19++FE9YKqQnK1KhdCXVRn
	9Apw==
X-Gm-Message-State: APjAAAU5D0fil2jfUzWdZOo6lJCDHNjAPOTDYyQPor4rLg5c2s+9c1d1
	yWfijADwMmZcszqPFtTMLQGmbUn21kc=
X-Google-Smtp-Source: APXvYqxuwJLoB7umcobGx3IcLS3fnDK2O+BVX3ST1CViRbiP5IrXuQo/JCwKhhugpLMJtqadDmpHlw==
X-Received: by 2002:a2e:6350:: with SMTP id x77mr20856887ljb.191.1553718824320;
	Wed, 27 Mar 2019 13:33:44 -0700 (PDT)
Received: from localhost.localdomain ([185.219.78.166])
	by smtp.gmail.com with ESMTPSA id 26sm4790079ljo.4.2019.03.27.13.33.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 27 Mar 2019 13:33:43 -0700 (PDT)
From: Vasyl Vavrychuk <vvavrychuk@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Mar 2019 22:33:27 +0200
Message-Id: <20190327203328.10623-1-vvavrychuk@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH 1/2] ref-manual: Fix mistake in base class description.
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
X-List-Received-Date: Wed, 27 Mar 2019 20:33:46 -0000
Content-Transfer-Encoding: 8bit

Clearly, previous sentense speaks about definitions in classes which
can be overrided or extended in other classes.

Signed-off-by: Vasyl Vavrychuk <vvavrychuk@gmail.com>
---
 documentation/ref-manual/ref-classes.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index d602851c54..22659821bc 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -190,7 +190,7 @@
         tasks such as fetching, unpacking, configuring (empty by default),
         compiling (runs any <filename>Makefile</filename> present), installing
         (empty by default) and packaging (empty by default).
-        These classes are often overridden or extended by other classes
+        These definitions are often overridden or extended by other classes
         such as the
         <link linkend='ref-classes-autotools'><filename>autotools</filename></link>
         class or the
-- 
2.20.1


