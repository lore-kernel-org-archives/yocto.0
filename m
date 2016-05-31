Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CDB8E00D8A; Tue, 31 May 2016 02:15:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A9C7E00D72
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 02:15:06 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id n129so30526734wmn.1
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 02:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Y8soNO7tyWID325MflYPGmUbcUn9q0mKYAcGGRNHgMA=;
	b=g7/ofQCajWbQTQUBlnj4+nehjuaLfV59k7gBzM5ajxGxX8pwH65bqutzNmWjIC7eji
	Pc87lasVce+IL5ISmWP1mv3YDZm+8dwDrtLX7+Kq1ZPp2OOd/aLQ/5Er4K8zGARLVB4v
	C3KZ9hNLFZNsTYz3IH5ys90Z4uSdN4aM9Ha3n9lZaS99LqmHWyZ5wo4OKqr1VzFhlty3
	XSvkRiGkUl4BcXlBCQewQiyuFZBAzoVAATUoH05TfMInOgv3jkmf0MFa+YgIiqgHGRGq
	O9eUgYOfCW4YHfiGQXiSgvhSTcXQTV+C4uN6suRcEV8XqyaulsUK9G0sjfasbso87b5s
	bPtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Y8soNO7tyWID325MflYPGmUbcUn9q0mKYAcGGRNHgMA=;
	b=XEOSHBqO1XiTSGSFtDsYTMCoNk2SY8U+NYD/4R8XeLiRd94PsPlqVTDBWA+21e/l/3
	FJ73GYgmwFex7ivXh44isP+AisTfNRitleYde/SBouMxxcAgwK6u8BpNKau/SSIejsi3
	4ogH3qA4By6P9BfacAjBU3FSqqyluMlIpOAX4AaoY5J29h28en+FrVsk9wQ6qTTTcCSX
	1w0JjxeNsIJYMUPTzw6Q3WzNVPMGxFcwZEYyuotNi1Rk1Npyx0nkLbvJ3WG1uEUP4BMc
	ThBLfnzx7kptP06rZ5OL6J8EZv7e8Z/b3jZUvpnVL3Juxo4GnBXIt1kGyGBsm3BThu1C
	HxJA==
X-Gm-Message-State: ALyK8tJi5BZuHmfVCpsc6eVmLjjlNhlBXNfx8sc9CeLgGm2RzM+ko7sX0J97CcrGd7m9sA==
X-Received: by 10.28.178.70 with SMTP id b67mr6140953wmf.13.1464686105719;
	Tue, 31 May 2016 02:15:05 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	qf10sm38899757wjb.2.2016.05.31.02.14.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 31 May 2016 02:15:00 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2016 14:44:46 +0530
Message-Id: <1464686086-11620-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] iproute2: fix qa warning by using with-selinux
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
X-List-Received-Date: Tue, 31 May 2016 09:15:13 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

WARNING: iproute2-4.6.0-r0 do_package_qa: QA Issue: iproute2-ss rdepends on
libselinux, but it isn't a build dependency, missing libselinux in DEPENDS
or PACKAGECONFIG? [build-deps]

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-connectivity/iproute2/iproute2_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-connectivity/iproute2/iproute2_%.bbappend

diff --git a/recipes-connectivity/iproute2/iproute2_%.bbappend b/recipes-connectivity/iproute2/iproute2_%.bbappend
new file mode 100644
index 0000000..c1e8ed6
--- /dev/null
+++ b/recipes-connectivity/iproute2/iproute2_%.bbappend
@@ -0,0 +1 @@
+inherit with-selinux
-- 
1.9.1


