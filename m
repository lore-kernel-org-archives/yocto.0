Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A090CE00E05; Sat, 27 Feb 2016 07:27:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3631E00E00
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:17 -0800 (PST)
Received: by mail-qg0-f49.google.com with SMTP id d32so30899615qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=dPBDutoh4uKQFzD6hWqn4H/UX9SZspeFZyiBTd3ylvg=;
	b=VjIsF55BDq91XpRqLtEYCCwBQZF/PfSFe63Tjungy6JYAEJNP3qPofTwUfbl0TrQcG
	DxK9k0NZemPBKQThmqaavOQtQ8HirdH9o2SxXMk2ddm9DnQV+hIYqtsbn7N35PKrYzBH
	iWjsRLdSbh5ZKW8N2Xd5G45vNPX9UrB2pKtwZmsrcntlv/zoF4FdwrHt2AEDUN99ZfQp
	BMxGt9JcIp+mGg3Z43Rbbd7avGm8WYVgl5bsQ/XLti7Edj9IdhiISP4fgr9f0TGRXav4
	otsuubzbEOmfEEllhbDfJGNKjm/sOzTx56ZuGf1XcSfh6zJhsQAMMz+5w1etc+cQNrDg
	F2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=dPBDutoh4uKQFzD6hWqn4H/UX9SZspeFZyiBTd3ylvg=;
	b=K/5y1o4aaQmmzNpLXkpiM2xpIOuE3sDavQogtGkY9LWSeDmsyXs2fF7vTK4EobqC5X
	5QhMOSxVRT9Ezk0FAndeMnkRJ+1gZmehf9EAEZFCmvhDyPrdoqzB79qvccwvX9d57ZJD
	9WnMSeIkwbSf/B1G+tyEfZOo0ImnrPhnVzbnXZEgnJolBdfiea/f7o8+/9V0JHbA4xjs
	6thDs+NEkmRfDUzTQMz7f+MJtoh8fakQekgHr1Yfc285JNlAsiuZJbIUCd2Tfgbl8l9n
	dDH7zo7bKhA8Lb1MFAWqpwlLeA3e1WHq2rFAOxgMZ37V7qj5ckhT+Zk7hlGFywXJU3nx
	MeQg==
X-Gm-Message-State: AD7BkJJAEwg0Rh9L2x3kEt6GgBgiv+elFN8vM+2+0LPxNjKDAwBZqUQ7pbji7nL6ToPZQw==
X-Received: by 10.140.37.6 with SMTP id q6mr8864111qgq.98.1456586837572;
	Sat, 27 Feb 2016 07:27:17 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:17 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:54 +0000
Message-Id: <7e87aad1e8a3daff5913a6848af57d29f6d5c83f.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 15/23] weston: Specify egl and compositor options for rpi
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:28 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/weston/weston_%.bbappend | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 recipes-graphics/weston/weston_%.bbappend

diff --git a/recipes-graphics/weston/weston_%.bbappend b/recipes-graphics/weston/weston_%.bbappend
new file mode 100644
index 0000000..3ec311d
--- /dev/null
+++ b/recipes-graphics/weston/weston_%.bbappend
@@ -0,0 +1,7 @@
+EXTRA_OECONF += "--enable-rpi-compositor \
+             --disable-resize-optimization \
+             --disable-setuid-install \
+             --disable-xwayland-test \
+             --disable-simple-egl-clients \
+             WESTON_NATIVE_BACKEND=rpi-backend.so \
+"
-- 
1.9.1


