Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 534BAE007E1; Fri, 13 Apr 2018 15:34:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA2D0E007E1
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:34:26 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id h69so7005276pfe.13
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=/WgM1CoLRz8nasHPu60kVjHrmXeWSamHwuwTK+/9mPo=;
	b=uATLmoDiFTc4v9puXPpcQhD4yDdBGgvdex1Lbw5Kmdn9P0lo10mC/hrhobsf172OX8
	1ywBaHTNMOccqyuoGM3uBQzbVWrUaEMWs0xe4zo6gcenf+NI48cd1fOxJIiqeARbOMVM
	oNI+CVgQwxIDwwitf1NfL4LwuY2S1WH+kBT2HK4AXjzOBZc3+rCBLkMM+bum523xUKoI
	1rULuOQld2Dm7DkS8szfkmIDz4jBrovM9Denw94eFCwslH3fqS49iX3v49IEPstxG0S1
	5FOHkX61k8dX3l+GkMAfuiYgngVxgyI+CvPULQMkLBl6Ik2MDaHoyUHUh+NeNZPF/LL1
	rWdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=/WgM1CoLRz8nasHPu60kVjHrmXeWSamHwuwTK+/9mPo=;
	b=cFuF033IvwrWqZSjkdulbtWNQ5vrS75xdOiJCi/z1FeSvIIfus9xCNw1GukBwn+SXL
	kRWqtSmcggFjCr3Y3bsuZMj6BZ9VZYmSYJ2sR89/QNBc+2nxgaD6yH4w1j5bVS/v1wmI
	gcUpGtEE404qiAqtsdFLqWmgciZhOhNSPBoVG026WgkraTUTuIvny1+2n/BcCcpFtpqp
	5gXu5+7IVa1CtwMhXqbze7mQTVocS0tAy//TuGTpBHyvpEuefz6qQJ5iYmSxihQR6B0I
	XGW/AspwGcWB77s2qDYDVzu4Nm8+qxtSLZkU2TX0n15by/Fa/NDFS3NDCQZ9+Bo6wuM2
	iBhA==
X-Gm-Message-State: ALQs6tArW+ebTGjyQPVn0qKgKQgz3SinS0hW0WkTVizN1p+KXLCScbXl
	neTPjgCPlGtRqc4eSrQt1LE=
X-Google-Smtp-Source: AIpwx4/E5ZGQh5FQRXQ5wd4QNkSoYunIP0WlaZC6ZhxTnpnnpWOEikfk74D6eMBQCa+MAnUi/KtnTQ==
X-Received: by 10.101.73.207 with SMTP id t15mr5591702pgs.204.1523658866397;
	Fri, 13 Apr 2018 15:34:26 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	m21sm13141300pgn.0.2018.04.13.15.34.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:34:25 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:34:23 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:34:19 -0700
Message-Id: <1523658859-17210-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523658859-17210-1-git-send-email-akuster@mvista.com>
References: <1523658859-17210-1-git-send-email-akuster@mvista.com>
Subject: [meta-qt4][PATCH 2/2] layers: move LAYERSERIES_COMPAT to sumo
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
X-List-Received-Date: Fri, 13 Apr 2018 22:34:27 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 2fbfad7..67ab5d6 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt4-layer"
 BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer = "6"
 
-LAYERSERIES_COMPAT_virtualization-layer = "rocko"
+LAYERSERIES_COMPAT_virtualization-layer = "sumo"
-- 
2.7.4


