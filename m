Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FDC6E00AD5; Tue,  2 Apr 2019 04:21:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F701E00994
	for <yocto@lists.yoctoproject.org>;
	Tue,  2 Apr 2019 04:21:32 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id w1so16169174wrp.2
	for <yocto@lists.yoctoproject.org>;
	Tue, 02 Apr 2019 04:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=WJA0fjWQnTBNHAX3P28t1NAi0d/OXB0jzpRTYEwqHrM=;
	b=CPrne3gMju/79Y2zijDNRjzV1k7vkUoBs7hZl16aWI3eVZH0eud0B8JPBwITHxxV89
	YvBYCH41Eth/O6jGftmoql6ErutPrA83eK1OVXwWtO6/Lp4EUjGoMjbDVu2zHlWvZcDs
	FiTRsZSMLqHJglJDBt8zLNgx7WsHDQVjSgDoqubzB037utiEV/sEDUA10VLjY37Lbqjm
	ldVGvZ5jFYvcfaUkGBLCSgUJEIGRlntGHqhAJt1I2A64Z8UkiiP80xIiayvLuWItsjcO
	wDsMepJTSFDac1BuL4T0YSyTYXGsq4Xm37HAzgYeOwAr1LJQv/Xm/F4FLijZkGZBPGDw
	YI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=WJA0fjWQnTBNHAX3P28t1NAi0d/OXB0jzpRTYEwqHrM=;
	b=Kd+sBW/bdRtVh/3+z9WrTcgyCs4IBlKuAW4yT/eSHL1EF+sjYiJixIW5WvVx8+DgAL
	rKBWcQRFhByaDOutZ7GFFNj1tDxrwT/ijk/BS756IBAyZfa6nj9Uyv4RMU+5RWzfP/Py
	MpoScwTK4ihexK/dCAhRNofgFGIKWQdlglAymZzvNlpDtCydeJXPNwpOwiVloo2RCu6l
	F/inPWmFCojXMbhCpN8gkVoTFS1frz4FOoBReN7puZHvbaXucWw8020gUydKQpYl6BN9
	WHBXRU6okm0uBWS6gjvNW9wbL2WocY0rNOe7o2biwOcD87wiK1BN1USfavlOM5VX1kaO
	dREQ==
X-Gm-Message-State: APjAAAUiZ9HixxECY4DTuuRpajmG4F7YMtG3U6rcvWKag2W5JItxnQmK
	diewtYUnaNV5mXpnVFQ43usVNxCy
X-Google-Smtp-Source: APXvYqz9PfLEcCjGik5sfPCyzBcvtV1qwDrZqDlOG+WJNWhTb20/geFxJ1h7YYfsiNVyr7eC+npqcA==
X-Received: by 2002:adf:ff88:: with SMTP id j8mr37911962wrr.1.1554204091262;
	Tue, 02 Apr 2019 04:21:31 -0700 (PDT)
Received: from localhost (ip-217-030-068-212.aim-net.cz. [217.30.68.212])
	by smtp.gmail.com with ESMTPSA id
	r30sm32908190wrr.46.2019.04.02.04.21.29
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 02 Apr 2019 04:21:30 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Date: Tue,  2 Apr 2019 11:21:25 +0000
Message-Id: <20190402112125.91-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Tue, 02 Apr 2019 04:34:25 -0700
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-gplv2][PATCH] layer.conf: Update to warrior release name series
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
X-List-Received-Date: Tue, 02 Apr 2019 11:21:34 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 43d578b..59f6a89 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_gplv2 = "1"
 
 LAYERDEPENDS_gplv2 = "core"
 
-LAYERSERIES_COMPAT_gplv2 = "thud"
+LAYERSERIES_COMPAT_gplv2 = "warrior"
-- 
2.17.1


