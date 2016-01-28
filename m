Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01542E0073D; Thu, 28 Jan 2016 09:07:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2CBAE00444
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:07:39 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id r129so34232521wmr.0
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=f5b5vuzRuPXLvG3gRe+3K4/pYhYeyPO0ujTXV/aLi2s=;
	b=x/yzEnhpCvo+t7lyCpayfwScejmIfLRvEawKB7CnFB2XxE+BqDCis3aCrUGMF/yE0I
	6/XdoeCdlYRLPn4ECg2zu3FC6UwWvGoDUovcPHSujlwGUUGFuXkZk9opJcFQuNaMHcXf
	tBQRYITPsoGK9fEyRqQyqXF7eH2AWrFnTsGhZtoyUm8GQK3vD/yy+v6gz/YO2MFYvnuP
	MnQ1Q9UV/pjDCvbg+RVh7gyMTt+W6iUZkzoXJVNvJOKGbBUk1Zo+79R7moM5onSfiME4
	U8bpUsG6BvPmNm08vfoDPZXUgVYy6nbG58UgXoLGxPPGT2b5bfJYH/5Mv6yxOAtnO83J
	2Sqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=f5b5vuzRuPXLvG3gRe+3K4/pYhYeyPO0ujTXV/aLi2s=;
	b=WypWXWajj+BJsJ35TY9s3wiBC9rWznjVY15dqIDaOpQFkRkt13a1ZKLzd0qhk6gTD/
	JbW+zOyYJHz0LJvBj4mAYRQV2h1/Xs0xn/+l2o2OPI/wpxEjbWypjbQl15jo09PAZnYi
	v1LUXCDJppoK9vvV5fTmIc/ha5lcDZ546iU1YMItSLGHEfrD8HqUrgUyUV1g56Ebl80y
	GUTMzAxbJip73mLIgy5/3sLGYL9s4S++FpzFVDe9Jlvk0jbZyYACCIQbBW4tXFg6qVSh
	yr63b9wzICjOcro+DlIeOHGD0pfYsUS9IZI3wE6OlM+D7UIeEMadR2jKwN0mK0DYC7fC
	htQQ==
X-Gm-Message-State: AG10YOSITVz+3ndHLSsTlB86T/MOSdHkV1qLeal+MqkX4XuLjYepKtjXqiQtwnx1I4LGbvQv
X-Received: by 10.28.176.133 with SMTP id z127mr4472766wme.22.1454000858707;
	Thu, 28 Jan 2016 09:07:38 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	av3sm11915798wjc.44.2016.01.28.09.07.37 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jan 2016 09:07:38 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Jan 2016 17:07:35 +0000
Message-Id: <1454000855-26774-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH][yocto-autobuilder] nightly-world-lsb: blacklist qwt
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
X-List-Received-Date: Thu, 28 Jan 2016 17:07:43 -0000

qwt (from meta-qt4) doesn't build without errors but gets pulled into world
poky-lsb builds.  Until this is fixed, blacklist it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-world-lsb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset-config.controller/nightly-world-lsb.conf
index 7341f6c..df08e8d 100644
--- a/buildset-config.controller/nightly-world-lsb.conf
+++ b/buildset-config.controller/nightly-world-lsb.conf
@@ -17,7 +17,7 @@ steps: [{'SetDest':{}},
         {'CheckForWorldLsb':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'multilib': True,
-                            'atextprepend': 'QTDEMOS_remove = "qmmp"\n',
+                            'atextprepend': 'QTDEMOS_remove = "qmmp"\nPNBLACKLIST[qwt] = "already stripped errors"\n',
                             'distro': 'poky-lsb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'world'}},
-- 
2.6.4


