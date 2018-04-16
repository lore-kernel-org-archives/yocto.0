Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E9DE00C6B; Mon, 16 Apr 2018 08:03:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36BBCE00948
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:50 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id b9so3949203pgf.6
	for <yocto@yoctoproject.org>; Mon, 16 Apr 2018 08:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=D9Zepa6K98vb//CunieYgPDrn2kHAfBUvgsFR65Ksr0=;
	b=AOahcmJoKZxGkNT+gK8KaUeZKpV6NxA9D196tNvYHUrbkg87TRwyZ6Ex5yc5dYja/s
	EEUa9UJVW1JDxU7VmBgi6046zczquHoSd60Ai3KtjZ6NdOGFVlYfd0MO/A23D9VYvi3w
	vXRawEE5jLr57IKUEHY9gkgy2uRNwyX+k9yGEMmLTFhLh+cu7xGxRCUMn9jrkdqDntl7
	+tfC93TxNFCRlANV38jqGgVV9uO8pC3X6+1AG6VztPXzpQB/kP8YKRszOa8KMqC9Cy05
	tpOFZoOfzX2d6z7i5dlA68IZl4eOwN9itVMakRaFq+YTdnhm1Ow/NN129OBMgVxtA6Ip
	WVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=D9Zepa6K98vb//CunieYgPDrn2kHAfBUvgsFR65Ksr0=;
	b=aQKTTSwO605AK1PdEKjC3msyf6CoB1qjXmtt3fogHkHgHOd2sC8MUHWO0AYZEIgs4p
	pwuxrImyAmawwd0vUP37A2fyp4x8kK5aPdUpwJC58h0ZrJlLHkQrswOf2BhUSqx/rJgv
	zpXmGn6QPXA8j2B3QV9NPP0hghbhP8GZpbWQA3C35zaMaspBj3JYLQa3jPcvDyW66tuG
	bTLcbGPQX7hwX78CBRvnAIpFgCvTD8oQ1/Qczpa50c7B7JmkPUr5t9nKL/76ZJwPYJjK
	xwxBWMKXzPVw/5AYotB8ngZ9HI3fJK2CIuA7AexlRDFCZCNEJWeRmIbm/wKm2pQ0ttHg
	drVA==
X-Gm-Message-State: ALQs6tA/XhCxK7oKfDkQho1VhxhAfr5f06CrCUkdmxbWbEXIJwZaYn+K
	tFgfsnaGwS05pp5GZnEeiF8=
X-Google-Smtp-Source: AIpwx49tubSY4GRQqqOpYsYMyfP4tcCFr7lYbjkFRb8GBmXcxxoopWzBm/x5L1W91a2HioDu50/nqw==
X-Received: by 10.99.111.15 with SMTP id k15mr3927405pgc.73.1523891030027;
	Mon, 16 Apr 2018 08:03:50 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:846b:ecf3:2137:c7c5])
	by smtp.gmail.com with ESMTPSA id
	l80sm29472371pfb.38.2018.04.16.08.03.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Apr 2018 08:03:49 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Mon, 16 Apr 2018 08:03:47 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 16 Apr 2018 08:03:33 -0700
Message-Id: <1523891014-31583-5-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523891014-31583-1-git-send-email-akuster@mvista.com>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 4/5] iscsi-initiator-utils: drop bbappends
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
X-List-Received-Date: Mon, 16 Apr 2018 15:03:50 -0000

change appears to no longer being needed.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend               | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend

diff --git a/meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend b/meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
deleted file mode 100644
index ed99f60..0000000
--- a/meta-cgl-common/recipes-extended/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-FILES_${PN} += "/run"
-- 
2.7.4


