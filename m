Return-Path: <philip.balister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55570E00C9E; Wed,  2 Aug 2017 03:57:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FF0E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 03:57:05 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id u19so4189237qtc.0
	for <yocto@yoctoproject.org>; Wed, 02 Aug 2017 03:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id;
	bh=wQ34U4SZufHhI27d+2g/gFcklycHgFA1WHVp8lRFQSM=;
	b=VaZVaxX+eZFBPMVZNq8+0OB4MoQJ8DkjY72S23KUWBWzLAY7Pe+u433EyhGfgKzPzq
	TIi4XUrRr8F+M47l0e4xXp1ElDEvqihppQ04HTWVsIfIaqWOLwnDRwxp5Su9Gy2zyRvX
	/+MaZDm9nc3rX9ZP6XgbVU323dEjLULwHUuEGnAIUttb+uRIAqQolsyMVbOJQULwaWaA
	xbfHIzU6hm3sb1on2udnXLXoNGYDDX2ULPYdYT0WK2iyDI/EQ5APtWBOmpeRWHWoR0ha
	+nDOyYlt9mYVd3GbdFEOS9ZM0cb4c3MkmXyQlkD/PjaaxG6FZW4PAiTzbiXshMU+unrJ
	2bMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=wQ34U4SZufHhI27d+2g/gFcklycHgFA1WHVp8lRFQSM=;
	b=CM8CNXdanmQ1eglHG5CqlYvUMPIO+KEnvfOZYRzCPrPku9lT0mySq7hY4B1Uu7E9Yj
	PzFaif2sYIxJkBNSGf/SnRqFudldTigr5wPVKSg/CA93XIxIjXnbG/VN1wOx6tyiizst
	qTZW097kr1904izti4AeYRlcZFxh86rOJ1tR5tSbZPjrJG6wB7aBqe6wz/vNOZKa8c5z
	z2p1k7AjKFR8+UHTiGFi/SA5zykNs2goPXezzw0AnA/DX12b99/BCmiuN2VXS2yiERC4
	6cEON8DByR+yH7skGM57xeg5VN+NRHdfFE4GlLFfhoBmnoGErFD2niNrLTBcANy0dEvz
	1I2g==
X-Gm-Message-State: AIVw110iYPOgFO+bTpeyFoKtxcBxkb+rIhN+S3xWFK+6E8kgR9QNZ+aR
	UpUYRAuBpc/LyRQ2
X-Received: by 10.200.38.243 with SMTP id 48mr29733440qtp.130.1501671424905;
	Wed, 02 Aug 2017 03:57:04 -0700 (PDT)
Received: from thuvia.localdomain ([108.44.122.174])
	by smtp.gmail.com with ESMTPSA id
	q15sm22994601qkl.26.2017.08.02.03.57.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Aug 2017 03:57:03 -0700 (PDT)
Sender: Philip Balister <philip.balister@gmail.com>
From: Philip Balister <philip@balister.org>
To: yocto@yoctoproject.org
Date: Wed,  2 Aug 2017 06:56:58 -0400
Message-Id: <1501671418-18695-1-git-send-email-philip@balister.org>
X-Mailer: git-send-email 2.7.5
Subject: [meta-qt4][PATCH] qwt: Skip the already-stripped QA test.
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
X-List-Received-Date: Wed, 02 Aug 2017 10:57:07 -0000

In 2013, the poky reference distribution made already-stripped an error
not a warning. So if you try to build gnuradio with poky, it fails.

Since qt4 is not being updated and should go away eventually, skip
the check here.

Signed-off-by: Philip Balister <philip@balister.org>
---
 recipes-qt4/recipes-libs/qwt_6.0.1.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-qt4/recipes-libs/qwt_6.0.1.bb b/recipes-qt4/recipes-libs/qwt_6.0.1.bb
index f38816a..2c95b8e 100644
--- a/recipes-qt4/recipes-libs/qwt_6.0.1.bb
+++ b/recipes-qt4/recipes-libs/qwt_6.0.1.bb
@@ -8,3 +8,6 @@ SRC_URI[qwt.md5sum] = "ace68558eab873e2da7e641179c4ef0c"
 SRC_URI[qwt.sha256sum] = "3fe19dd5962d705632fc2ef616b009299de6cf1e702538296924dbfdc8003cb2"
 
 RPROVIDES_${PN}-dev = "libqwt-dev"
+
+INSANE_SKIP_${PN} += "already-stripped"
+
-- 
2.7.5


