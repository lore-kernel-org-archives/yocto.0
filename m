Return-Path: <j.madieu@expemb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07211E0073D; Mon, 11 Jan 2016 06:40:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB8D0E004A1
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 06:40:38 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id f206so271923304wmf.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 06:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=expemb-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=xTTgkpZBF/9U6iSGNTVm91jBHCu9DQkFaf/GDHQLP5r+bi3dLqJoXj/SvE1mq5QEOt
	RwslNVVspJT9qs4YjLiKQgePJX41PBG+5aQNyr/gv8w71bSOwF63tHjT0PbIhdTmMylb
	6OAqgZ5HhsYT28v427YutxZXCkumzZ5NLFtZJKuwr2XYwEY14hR+ASmHRgOVUnmfUouU
	5Bceo6DqyFq+lwVaDrowpczEzNGtC3+eX9/jJRA1Mvutce9YEQ7AI8HaGhIK6z+X5Pcu
	IAVZ+QCY0cIXX4xcOW1lcQpgreJ8/iMRM7FThUa/DM0FU51orqIbybPz5obROdsrtY5x
	86xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ksj0lIEoYaqwJ0UfxjciO7uPq7Bzmi61s6XUpBq22+c=;
	b=CCRx4IlLs4w1yO5VBbxPF0ahRaUrFlz0gJDvrgq93GEMVmRvoktJMFN2dLyKHfU049
	y3+2F5/wZH3mU9IhSc4wOG0vnWWkRFe7/zEepyk+ijcsyUjWvt3LhfRKe5DiQk4lPYWn
	Gb6IhReEQU7OHCYeS+8CKcNOzJMZWqarcdjR2KJPLEgV+YJGvcASZF3W6uWv70o3Kv5w
	u41pHqYs4v4PeXGCXeKd20G1GVsCZfvJJNssiQz3Destngxoikfp02NYWdn234C2LZSD
	iSRB43tBvHFwaZtWt+2q7H6zautRKu+6AS3mJbltq22V+uhKjlovYnyPJazOc7o8jd+N
	mK/A==
X-Gm-Message-State: ALoCoQn28ZanSWhU2Jv+vtcPvrIFIGkoYdNa2AuvwcP3if1AJK4eKgtl81SF8d8li7aEF1C1XUVufGxCtNyx0niWg/Mb78TB6w==
X-Received: by 10.194.240.67 with SMTP id vy3mr136263860wjc.168.1452523237536; 
	Mon, 11 Jan 2016 06:40:37 -0800 (PST)
Received: from localhost.localdomain (179.16.90.92.rev.sfr.net. [92.90.16.179])
	by smtp.gmail.com with ESMTPSA id
	q75sm13165371wmd.6.2016.01.11.06.40.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 11 Jan 2016 06:40:37 -0800 (PST)
From: John Madieu <j.madieu@expemb.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 15:40:29 +0100
Message-Id: <1452523229-24341-2-git-send-email-j.madieu@expemb.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1452523229-24341-1-git-send-email-j.madieu@expemb.com>
References: <CAJzgOf+useUh1kc6eKnP1bbCvALnH3M+tYdod3WbTM_9-rp=eQ@mail.gmail.com>
	<1452523229-24341-1-git-send-email-j.madieu@expemb.com>
Subject: [meta-raspberrypi][PATCH v2 2/2] layer.conf: avoid to force users to add the qt5 layer because of qtbase bbappend
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
X-List-Received-Date: Mon, 11 Jan 2016 14:40:42 -0000

Signed-off-by: John Madieu <j.madieu@expemb.com>
---
 conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index bea5a65..60f1bcb 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -12,3 +12,7 @@ BBFILE_PRIORITY_raspberrypi = "9"
 # Additional license directories.
 LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
 
+# Let us add layer-specific (such as qt5-layer) bbappends which
+# are only applied when that layer is included in our configuration
+BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
-- 
1.9.1


