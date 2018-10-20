Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC53AE009CA; Sat, 20 Oct 2018 15:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D7EE008DB
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 15:47:17 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id i4-v6so2235711wrr.13
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 15:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=5RQqewa0TTSwSFrYrciB2Fc59WuM6MJnwyFnql5BAUk=;
	b=tasz975pZQ9POSHnLupxH36A7r3zS6OzsDjBqLYUGjNwKDiOWpypQmj5eEcg8n4OEA
	hDwx7W1diyHfa0mSs0hhNyhLKUX4DlAvQC4GNwvU3MGcn1UjEDaD+xfBfWq/1AIS6xDs
	tg1WqZibmI0M8u6VTcQue/kFfwmzT4re2tW15oB7Z+kgXWV1wSta6sc8MYGROiUaC7vt
	4EJvglcjooIXUT627XHO8SN6xa5Acd74XnKIerSuPVc0akwki/IUU6W2m24PkJNJGbyF
	K+TMILq7czd8fJZ90Tm6QsFdSaLMWl4p8TL1nQ9+qUgUJedpklUhkhhieplRYAs/HzkG
	PpBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5RQqewa0TTSwSFrYrciB2Fc59WuM6MJnwyFnql5BAUk=;
	b=iBuYqtWiJkTYm7rsXdDs3n5r/WKZ5w5vbxBL00odfATskNTp2LlUSndy/IGF65AEbV
	wYjLjJSecSy2IHYYr0GTRvTOWddizFtKip/ROoTrea5nsfwWS8lduT1Cbn1iXwRTmZ9l
	wtrHuEwmj13+wIe5qYMLFS0Ucp/vdU7TA4xj+6dJI+Oqq9Mb/+zzAcVDpYEabE5zdYse
	slTvFaIA2hbxwShx/7R+fdx+TumYSptep2/dEltWhpTE905MJTLngtjrQ9w8SzPY+Hy+
	EZh3LgiSiwlmu00RyV2wjCLm4SijnwbizRILsYXTITCJMtAc+Aty2s62Z0Xp3i2eDgQ1
	yLlg==
X-Gm-Message-State: ABuFfojUGUFGutRlyERjgDmTvTW69ArHjd/ATdJ3rB874AzCygowXGz6
	fKmehrgt7BpmAwOwE396t8pHOJJ0aQk=
X-Google-Smtp-Source: ACcGV60d+VVWvPxERx9Gt+sQ86TTQXEQZk9+jdk11P2YLIn09+21ZQN3NvqrmMKYaEXD+2ObWI2qvQ==
X-Received: by 2002:a05:6000:111:: with SMTP id
	o17mr41079132wrx.279.1540075635868; 
	Sat, 20 Oct 2018 15:47:15 -0700 (PDT)
Received: from akuster-ThinkPad-T460s ([109.144.218.73])
	by smtp.gmail.com with ESMTPSA id
	a84-v6sm5457785wmf.46.2018.10.20.15.47.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 20 Oct 2018 15:47:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Sat, 20 Oct 2018 23:47:12 +0100
To: yocto@yoctoproject.org
Date: Sat, 20 Oct 2018 23:47:06 +0100
Message-Id: <1540075626-21543-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] meta-qt3: update LAYERSERIES_COMPAT to thud
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
X-List-Received-Date: Sat, 20 Oct 2018 22:47:17 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index cfcad24..c4c165a 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt3"
 BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt3 = "6"
 
-LAYERSERIES_COMPAT_qt3 = "sumo"
+LAYERSERIES_COMPAT_qt3 = "thud"
-- 
2.7.4


