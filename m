Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E0BDE00CC0; Sun,  1 Oct 2017 09:43:44 -0700 (PDT)
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
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 213D5E00B87
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:43 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id u136so3568411pgc.0
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=wMpjnrVT4Ke2gfykic5g3TVcAtozqst+kXBde2/Q5HE=;
	b=rNwxKbuMUzMIZrUXGrJVNOPRgh2wWD4A6F9msi/r9FA52+X5nWFXlbXLDKPC0Hk4aD
	VOhW8yIjrMP7BXUJWsAg2FLku8lp4krbGASGxSPrN7avJ4gNDiCAVC5a3vjwu7XjXAeq
	Y5ltdzrEVotil2iuQZPAWDUDbemaoKXcH4CaRHuDw1EOaTFsv9la4a24rPzhJlat65RM
	CbWIqtAOIDxpGgewi0YmoaTgXSeNTPcJBzydX55EA/ukZ6hoy/mPeddUV6REd0qrWP71
	Vc8jj2uHTepHrwiu0/5bON3umA3Zb2fpN3uuQCQVuICQ+epbYtwg9SHVOUHFx57YsI89
	+7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=wMpjnrVT4Ke2gfykic5g3TVcAtozqst+kXBde2/Q5HE=;
	b=afQJ9FJwVz09HWRGPB61o3nAzyL7B+OWsNeDAKuZIrqeh+1S1P+lA3e+LdvynYv3fN
	l5ArUlZm0xBgShfFE3bsY9P0rK3nq8WiqyuoH6sUzF6wq7ToytS2LMora613OEJf8YHw
	a2wg0eqSYp5AQYMe19fvgw0ReT9buK6LTGzxt+nM91XF9CDc+wd+myxOWeo2UAIJnq0N
	QX7NY/YJGSdc1jhOClKq/feN9HFrJYTm/CttoEZU+MjDa30GQuABZdu3EVK6Utvfi1Kl
	+XuA+ilASa2HtzHxmk+wLmXNeJJTjs3kReLtodF6DAjfiPw8r6shr5ZRcsaMbOUhVniE
	NNRw==
X-Gm-Message-State: AMCzsaWOuVBjITqeMQF5vaa9t807INGYyb3O6qhHQ2rkLkj2GQqxcpNu
	6yXLBXGw+Ui9GA7bikikBU0=
X-Google-Smtp-Source: AOwi7QCjgRXim0oTpxmJ5KjDtdUeOzurf2gltIrJFlfK7EL2hS8dHZ/t3od7yDRpIZgybFfUYwexdQ==
X-Received: by 10.84.244.140 with SMTP id h12mr5625172pll.110.1506876222921;
	Sun, 01 Oct 2017 09:43:42 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:32 -0700
Message-Id: <1506876220-22710-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/10] layer.conf: update layer depends
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0e524a1..7218560 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,8 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "6"
 
-LAYERDEPENDS_security = "core openembedded-layer perl-layer"
-LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
+LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
 LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"
-- 
2.7.4


