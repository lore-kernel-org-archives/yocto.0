Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAD83E00DC7; Sat, 27 Feb 2016 07:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E696EE00DF9
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:20 -0800 (PST)
Received: by mail-qg0-f52.google.com with SMTP id d32so30900188qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=VqnUTtkmDD8I7OILOFPXKJmdqiF9aNPEeuA5+D+1/ts=;
	b=Sj1v0LecDZMAIkEFetAWaOdsvwYgwVp46IBOlkefYSNyN0LZ5hzvlSqpPaO2vt3b7T
	6Ptz+eDbRSoLGPhH+q2vdIdWfeiM+HeyVjj34Y0cFBsA5f0vTb5c06fZ+9sEhtA8W4gn
	ue4vuJA8U25ZZOUk9fpzjnTuA4wSDE3TMwA0zLdG5KX+gQEW/MRm0I+7e7HpjVbIbjp0
	vDF/yV31EjwRbgS1Ez0i9x6LZ7k38C37iAoD999HU2Qdai7UQ0mKwgSz2YcyshrVmrAT
	ErNeUf19LNayPyCnoP3bd1Mz5zVe1vQYiMo0zBSv00nHpBg1SNpONWWGTXr42SWf4bi5
	T9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=VqnUTtkmDD8I7OILOFPXKJmdqiF9aNPEeuA5+D+1/ts=;
	b=YTh1k32bE8rB2/KaFoweA4U71vFNoHRY2LVbCXZzZMoHIvqr7rnF4gsoO1J5+Zfs6z
	NudfRo9GYwrjfVAR/GcH0T8ha+Fe5sx48wtQQfDbw+dzDiPi2b3Uopc1yj4JHCKh42YG
	uAGxvOfzKBRb37zGdGlnsjqMERH5/VOVSezsOaPIOtEaLpCEBwo332plNbcTpyNrzIOh
	m04fBoDaXJRWW7cSD1GwZoNLNMuFMOqJlnwvkJn+mTVhZElz8ycMvelnTnBQ5wQT4div
	CTSicUHoxKmcg+AderTpazXACcSrgk//RLloVpL2gZUGGpDGe7aoh1cOylR/mqxUiUCa
	wFKw==
X-Gm-Message-State: AD7BkJKWUVrDip/n6+wzbZOCd3FGdNk2NINbZ4tJ9hk8tLwsnEVSpxPfScHtRkoEPBmOLw==
X-Received: by 10.140.133.133 with SMTP id 127mr9403427qhf.42.1456586839988;
	Sat, 27 Feb 2016 07:27:19 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:19 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:59 +0000
Message-Id: <f53bfb635f959e264525a04901a33ce73ae0b3db.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 20/23] linux-raspberrypi: Add recipe for 4.4 release
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:29 -0000

Make it default kernel as well

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.4.bb

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index c879dde..e65a4ae 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "4.1.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
new file mode 100644
index 0000000..47084e4
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -0,0 +1,6 @@
+LINUX_VERSION ?= "4.4.1"
+
+SRCREV = "52d3149aba3c684db1b6c739ca794dc330d92929"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y"
+
+require linux-raspberrypi.inc
-- 
1.9.1


