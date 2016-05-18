Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A89AE00C65; Wed, 18 May 2016 13:11:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF47E00B70
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 13:11:46 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id i7so5380195qkd.1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 13:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Xr38YnA3RY4XmEoklfgKQL7tc+QjILlxzzB1nCoEE7A=;
	b=vA9/C3umMlUccaPDKbs8iO9ou6I5xPSmeMxeTLqqX+E0BBRTzU942bkEBZWM3LSiK1
	xbCdMpdlfaxACZtqikG5XgK+I9SKOZMwKaWXLkUCC2VCukjEk79c//GZUnXNoKrCNacw
	jb3qivrLV3hCrAP2TwkwOLgB9MAWD5ipHX2pBYJnSUXU2KDGy2/Y39H7uTZmXfxHU8VR
	tNmBxZwfTMlwbFwn/5Ys3tkOTGDhVbYAYeQ7g4S0QpbVmXFD7SCdDPmM5B3aZJr0/mFC
	E4bD/kTlx2PyBDpWMir0vit0YDlfx4ARr9b380y7+y7o2Ovm/BYFpFsYCLPj9t4mGvwn
	vFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Xr38YnA3RY4XmEoklfgKQL7tc+QjILlxzzB1nCoEE7A=;
	b=J95s932n/6XbRx0iuOYE6hSYjcnLZgKz62DQn7+th/aGyg8cC69jBWUAul4jDB3AZs
	ybveXUPPkFI/iX7Q8cGj7B9NoGZOOrLl3ZCggtvH7UpKn4144ghU+Oz9CYHS4mp+AxJ9
	oOG0VpigueD+CRNgzzQQy9K4W018NEalVBiaEBS3kmMm5lrFcEksJTYl8PQ1BeEVYW0V
	Lc77se5AEciMsNEyDHS8CgE8gl3h6lkdnYD3ctdj6K6sKH/lQ1XaPO4vG94OVaJealp+
	eSTLLvO2nIzhMFR6uaq1PTMlDuF2cLUbMYWzcyNYS2BK70GddK081VyWE3gPz6HvULCG
	syMA==
X-Gm-Message-State: AOPr4FWjTTp25aaqB9lQ4UaOquc6VQ3O4aAtt+ByCwXYbymtrAX2S+5bBCdILlkid5xTSA==
X-Received: by 10.55.192.209 with SMTP id v78mr10266368qkv.122.1463602302048; 
	Wed, 18 May 2016 13:11:42 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	a22sm4973145qge.31.2016.05.18.13.11.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 18 May 2016 13:11:41 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 20:11:35 +0000
Message-Id: <1463602296-7061-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: paul.eggleton@linux.intel.com
Subject: [meta-qt4][PATCH 1/2] layer.conf: Use immediate expansion
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
X-List-Received-Date: Wed, 18 May 2016 20:11:48 -0000

Matches most of layers defaults

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 62ce9cc..39c2421 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -5,6 +5,6 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
 
 BBFILE_COLLECTIONS += "qt4-layer"
-BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
+BBFILE_PATTERN_qt4-layer := "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer = "6"
 
-- 
1.9.1


