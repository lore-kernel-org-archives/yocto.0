Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AAEEE00D77; Wed, 18 Sep 2019 02:09:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF820E00782
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 02:09:06 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id h7so6016084wrw.8
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 02:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=CK+T58JL7iwNZtiYU4fi5J1+qtwpQ2KSKOeVKXASo5A=;
	b=KZPNZHmpXLGMo+fPkmvudc50Xa1HUnRMixp/+gjtzrD2iYiUpvvHhKZuf7SyW4a8Rg
	fPRo1zAdKQx6fWl2V7vDp0CMc25NCwCu9AF7HcZ1OB32gqS/kTISrMxrkFRglJxU2Q6Q
	F8LDj4OttKswvLO1XNYtC/STVdwrSCyCpoFfhsRadxfrB+jCGBITwpoQ5AuH0vOBRC5b
	izvF3L3bwO2kNK3Hfcwi3XHjP2g75jBSlmmk8V8I71qlr2Mcm+IfzFry8o7JkLgQqEWg
	lXfa8ch7oRx8BLSAKFf8aABdBC7Iw1o54FsxG/WcAYIc/5jRGYp200I/ThQzdokG/+LS
	PhTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding;
	bh=CK+T58JL7iwNZtiYU4fi5J1+qtwpQ2KSKOeVKXASo5A=;
	b=Kfa905EBWu0g4HFc6Aho+lcoQ8OG4TebwdIZfmwH58a+UGniztoyG5FC6ddHCPRxh4
	xGH953TZL580++BUsMCWWD9X+H3VJkIguBuAlwmrxEZ6HIt4YV+Ydx1E0Xt3YThT4F73
	7fRzy4ji8ZHYCH+NSgs+tFd66Vj9WeFgp6ZZU0mn2mUQ0T1jXBk9AUGIWgjSDZr4oQhH
	gw8ceCXgbO2Xbn1t6pyMXPdTe8rHcXReLyIdxEKpkFui94wRy+bmHZeVNr4kOXp0JmVd
	dp5Bo7UovVxRPV5CBV8QrBrgbjlR5mnmxaT79PLrwMRnakTxW3w+dYx1O4XAaPwJp1Pc
	wLgw==
X-Gm-Message-State: APjAAAVJhETprf4WlydjrhAlemWgPfERTPKiWSGhvA7Dp3O87yKnrOzD
	f/Y9lPWO6eXlnUMAgYv9JTQijkWmOdk=
X-Google-Smtp-Source: APXvYqwPpiFS3qxw3xxJaOQtbxtGgTpYvBu+WZUA3GuaP5yQSJGdp8ayAhvBQKvEh8DozNj8cqi9mg==
X-Received: by 2002:a5d:6951:: with SMTP id r17mr2118657wrw.208.1568797744468; 
	Wed, 18 Sep 2019 02:09:04 -0700 (PDT)
Received: from nightwinge.world.mentorg.com (nat-wv.mentorg.com.
	[192.94.38.34]) by smtp.gmail.com with ESMTPSA id
	q192sm1698275wme.23.2019.09.18.02.09.02
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 18 Sep 2019 02:09:03 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 18 Sep 2019 05:08:57 -0400
Message-Id: <20190918090857.10754-1-joe_macdonald@mentor.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-selinux][warrior][PATCH] compat: remove thud from warrior layer compatibility list
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
X-List-Received-Date: Wed, 18 Sep 2019 09:09:07 -0000
Content-Transfer-Encoding: 8bit

Based on this discussion:
https://www.mail-archive.com/yocto@yoctoproject.org/msg45785.html the
warrior branch does not build against oe-core thud any longer.  Since
that's not really intended to be a supported use caes anyway, remove the
layer compatibility statement for thud.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9dd34b1..b10bd76 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,7 +18,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "thud warrior"
+LAYERSERIES_COMPAT_selinux = "warrior"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.20.1


