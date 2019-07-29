Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80FC1E00A49; Mon, 29 Jul 2019 03:45:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B23E007E1
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 03:45:50 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id h10so58118241ljg.0
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2019 03:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jCAKcJ9PaZoAsgv6/+F24mTSqdotqmgIwN3OFP11Fyg=;
	b=GLz4ymEgYmNh1MHBnKh/eQya/+8fn0vumUjuE/+13HDJwoIRKM9yeTNk5XKAGogj1e
	WN7K1gxgIxsbdEQ32VnlHhhXZnpr9OyrB55Age/Jq4d8R3LgFuN3zle/l9TikbIJy0MS
	gmZe1Xj6U6aXtWbK1ZDx6mwcoBjYJG+xlC2+/LyIR7MMDyXyR3hxfkWqYESyIVSIbZNL
	QMHPsxycl5HVN/Sd1E9nFrjJWbnvixTg1wFsc4hO3aCNsfIOxYXpZfxULzrjOlofI4fz
	FwjjmWY2Vkg/0agZKEXpqe1rqNhm7X1wD0vLbhVu+LtdU39bqV236B3j3lrSS6GAYbZp
	IHPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=jCAKcJ9PaZoAsgv6/+F24mTSqdotqmgIwN3OFP11Fyg=;
	b=TMJF2RPPzs29wW/BnztqXC0AdmlYSLwkoKK9ri2m4fe5jrYyG9c1EcIgvago0CVS9E
	RDsIycaUuy0pbtfqS4m9eD1rIhQ1oJRWToOlquNpEuI0aS9avvLQnD6/SRgmL8CRtNpC
	0CSwdZnHambXe2nGrBjTFGcXTSF7E3okbMiRM5KKDCEY2F6Z7r0HXwqn3uEiKk7nzP2Y
	GCMSAp7NasAjlE0/cHHit50ptteVFRmcgSKKoVfLiT3d5ULbhOWYZaqafguOrUB2YhvV
	NhctKSOlxfVnkDE+OdracQlDMnel6+XgddfU7hYO4p3jJhA2PUit5hEe77PS3wj0ojQl
	SZEw==
X-Gm-Message-State: APjAAAV9/nUlkdniGgDKFvk3B0HgkkIDxMsD6c9+lrdnXQ6CaPh3AjBH
	CzQ8uAVHBXfJ7h10b4PcnmoBqfiUNZU=
X-Google-Smtp-Source: APXvYqwiJOCR9dBSF0lFkmMrdPUzYgGX/aAKaLZUkfYLJfu5n5TcsQhdXKfc7zkuyR+Jrd/8DOvbKQ==
X-Received: by 2002:a2e:8e83:: with SMTP id z3mr56592033ljk.98.1564397149476; 
	Mon, 29 Jul 2019 03:45:49 -0700 (PDT)
Received: from localhost.localdomain ([94.25.228.211])
	by smtp.gmail.com with ESMTPSA id
	l22sm12673876ljc.4.2019.07.29.03.45.48 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 29 Jul 2019 03:45:48 -0700 (PDT)
From: dbaryshkov@gmail.com
To: yocto@yoctoproject.org
Date: Mon, 29 Jul 2019 13:45:47 +0300
Message-Id: <20190729104547.20894-1-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-integrity] layer.conf: switch to keyutils from meta-oe
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
X-List-Received-Date: Mon, 29 Jul 2019 10:45:51 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

As pointer by Martin Jansa, keyutils package is now a part of meta-oe,
so switch to using keyutils from that layer.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 meta-integrity/conf/layer.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 1d31edd9b151..41989da38f63 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -22,5 +22,5 @@ INTEGRITY_BASE := '${LAYERDIR}'
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
 LAYERSERIES_COMPAT_integrity = "warrior"
-# ima-evm-utils depends on keyutils from meta-security
-LAYERDEPENDS_integrity = "core security"
+# ima-evm-utils depends on keyutils from meta-oe
+LAYERDEPENDS_integrity = "core openembedded-layer"
-- 
2.20.1


