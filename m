Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C416E00DF1; Mon, 11 Apr 2016 14:54:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32A7AE00527
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 14:54:43 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id gy3so93093562igb.1
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 14:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=Zq59v90BjRkDxwjfJ66ECRUUoux7HNCTDiSrrmlnDCE=;
	b=R55D6kkSE+AeG/ZIBT5j2C84Fimv962sZgvIFUZb82Xp9r6StsxnpbDwPwrLWyyzhs
	RbzFUzjFZZBBqHlq2crRG7BphFmpuYjd6rpyI5r3Gvz746+HGZwtvkNt4A5zuoEIbwjt
	VbGLLEJQSDtc+QVlam3G77sAK9kOdT4j4RRG+BGJ7o8R6JY98BcM2S8H6+rArCw7jON/
	xx7rGCWwUeJMfaqtGlUN08Gh4h8d8ZT5wHp0rbiZLvR6ypV4lHG4pKkd+LX22dQk9+oF
	jT79LxeFBhvCu24rPzK89ySGJvlQLTAK/KWHzig27WH/teeTndqXHt7h+ZCW2lcDKe2h
	gX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Zq59v90BjRkDxwjfJ66ECRUUoux7HNCTDiSrrmlnDCE=;
	b=H8xyweg1WmZ/vGTQNFCoYKCKU4LD6lYNtSowNrO/j2bhVua+zvHpTvyFBYZzI4vdXq
	DWDyxbBhXy5K+X/NS0Tyd4IBk4KUKKn6pHdaYd8wQtImrT3dYXrtH/VxIs1U74m+w8iB
	sMb6x0Uk3nagGl+DviXw5pQ6CObtNhqQ2o94Vq2f3pgzTy/pX+NzIk0JSWkHILismPrG
	WWzYXyLTtgl/oNOs+ekgfA7cMUO8J5MyR/1wzjNej7gmRuYbRPa73UjgfroOwpBgsXQa
	hqVoXf3TS7VzRfC3OzOGjlsnYraaW9c6MUj/M7v6CWlnOVBo9tmmp1qZZhHYEi1wmrP/
	m45A==
X-Gm-Message-State: AD7BkJLxd0DhkuPKC8F9FjZh5NcoEBP/qBLxrKSp5unK9X6IddnKEgHZdEvS3k47tKPNZw==
X-Received: by 10.50.79.229 with SMTP id m5mr21858204igx.5.1460411682778;
	Mon, 11 Apr 2016 14:54:42 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	j72sm9393607ioj.30.2016.04.11.14.54.41 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Apr 2016 14:54:41 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 17:54:44 -0400
Message-Id: <1460411685-12573-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.8.1
Subject: [meta-raspberrypi][PATCH v2 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Mon, 11 Apr 2016 21:54:47 -0000

The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
/dev/ttyAMA0.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/raspberrypi3.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1b73f2f..cb6056e 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 
 include conf/machine/raspberrypi2.conf
+
+SERIAL_CONSOLE = "115200 ttyS0"
-- 
2.7.0.rc3


