Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18473E00DD0; Thu,  1 Mar 2018 02:46:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B513E00DCE
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 02:46:04 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id x7so10682924wmc.0
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 02:46:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=tdDpn3GSIZqO/9t62x8cmYzRod9E1Zjv/DZc3BdvqME=;
	b=trOboZ6P6hLtdW2++b9mZGfjcslQteOWYwQGuMd07+sx1r2ESsGclT2yvAtcAKnhvy
	uadJIiOsyLcC9pQ6+wYe291FJkGeqK3Vn/66sKdp43xJyG2cj/27U4mnTgvDTj/FJMAj
	l37TRD+iZAvnRcEUhsKMDjAXN+XLknmy52nWxbL2u2g77nkSKZC2mXo/eD+nG1bVHnqI
	i5I/ypi7mQvsgxI2c/D1dwCTwlFbTUHD+p4l5Wc6geqwPcRlS/C/EZzeP5ZkDpaLrchH
	A+ss7ufjQuDu4NymOOWIe6dvSo7OlMmOYxwbu4gzdXnoJk619hTUmevE5Hzw2mF1cUy4
	HIzQ==
X-Gm-Message-State: AElRT7E++9XkWC9mrG4jgzEbr221g4nS8EwN8wRs/5OZX7rFdO+yvBPp
	YtOikx1ykB8Y9ZwwxvgRa1MGlGsj
X-Google-Smtp-Source: AG47ELuz//k8IFd1wkN7SUGEvWBgU5nbjrWYEIHx4ZEkopl8ADZzkCAcFD8BJ5ocIZHpezkUCCncZQ==
X-Received: by 10.28.174.80 with SMTP id x77mr1402801wme.130.1519901163410;
	Thu, 01 Mar 2018 02:46:03 -0800 (PST)
Received: from tfsielt31850.fritz.box (188-141-55-36.dynamic.upc.ie.
	[188.141.55.36]) by smtp.gmail.com with ESMTPSA id
	p60sm4224175wrc.88.2018.03.01.02.46.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 01 Mar 2018 02:46:02 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu,  1 Mar 2018 10:46:01 +0000
Message-Id: <20180301104601.31665-1-git@andred.net>
X-Mailer: git-send-email 2.16.2
MIME-Version: 1.0
Subject: [meta-java][PATCH] jdepend: give the downloaded file a reasonable name
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
X-List-Received-Date: Thu, 01 Mar 2018 10:46:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

2.9.1.zip in the 'downloads' folder will easily be overwritten...

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/jdepend/jdepend_2.9.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/jdepend/jdepend_2.9.1.bb b/recipes-core/jdepend/jdepend_2.9.1.bb
index be48325..5f09a8b 100644
--- a/recipes-core/jdepend/jdepend_2.9.1.bb
+++ b/recipes-core/jdepend/jdepend_2.9.1.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=f5777d32a7709d558c2877d4a6616230"
 
 HOMEPAGE = "https://github.com/clarkware/jdepend"
 
-SRC_URI = "https://github.com/clarkware/jdepend/archive/${PV}.zip"
+SRC_URI = "https://github.com/clarkware/jdepend/archive/${PV}.zip;downloadfilename=${BP}.zip"
 
 inherit java-library
 
-- 
2.16.2


