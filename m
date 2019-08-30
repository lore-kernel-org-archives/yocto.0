Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EAD3E00C25; Fri, 30 Aug 2019 12:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8A8BE00956
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 12:53:37 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46Kqsq5CXGz28
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 21:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1567194815;
	bh=Ec6lcHeCp00h7C6m4KKpY58lM4KVlPPFsZ5TJ9W495o=;
	h=From:To:Subject:Date:From;
	b=URqirK2e1ly+1FXDlcKeesPc0HzYOqfG4hIs8GY5/yeBTkdJsZldqxYm/KRpqRQVs
	xiFQNIfiiLZxolNPhV6OgKoZ1Iq+fgdLhawMfdLpG5gt3pyMX/s5hygaemHyQqh+II
	t3HZcmdtYqCvLv6nZeatlI3GPHvDzXeFHxV4rDMMbGdplVE5JshUcgKsolW/tx9nMy
	R+aEf624jIA0hOHx05qv+lwPr8v0NlRv06WP88An3xu9zSH895tXgPH+hlFhvBLNox
	S2VooIDIizRfp7mjugGYGvphtB7GIFrcKOnEWZothQ9KZnfthLh8DdG/Rba/s4WyYA
	YawunjfyV8zbpsJa/W5JmaPsbTXGqBiYVEUEwfHYb9KDwV/+7grP7AIIBuGuX7noNg
	oBhHIqWM/Rl7TZg1xADnF3w8ry1+NJoFU0aDJD9J3muUe+17rj4Cry2q/h+4RSIjFc
	FEdL1ScXyxOhfYTJoCBcgFC0m6UXxx+YlNl/PBlsVizzbaxhdQLZdisNgFxh51/9DH
	+W2OufX4J4+9gzxCFmD1Ht6PoAsOxdrXMgqkd31xm6edw0rVzhuM3ApWqtOREZlgvj
	4UR/Ta/DTV8j6A1SnKAJelUo4gIcy3E3QTw+LQ2Tw3zFyJDPEuiEJV254uJamQ+Zyv
	2hga1IjbSvGp6RY7AtHl8Yw8=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Fri, 30 Aug 2019 22:53:34 +0300
Message-Id: <20190830195334.8622-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [meta-qt4][PATCH] Mark as compatible with warrior and zeus
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
X-List-Received-Date: Fri, 30 Aug 2019 19:53:39 -0000

---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 8218dcd..c8d31bb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt4-layer"
 BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer = "6"
 
-LAYERSERIES_COMPAT_qt4-layer = "thud"
+LAYERSERIES_COMPAT_qt4-layer = "thud warrior zeus"
-- 
2.17.1


