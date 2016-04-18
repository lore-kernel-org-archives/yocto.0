Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A85A2E00F04; Mon, 18 Apr 2016 11:13:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f65.google.com (mail-qg0-f65.google.com
	[209.85.192.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A0A4E00C70
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 11:13:49 -0700 (PDT)
Received: by mail-qg0-f65.google.com with SMTP id 7so17692802qgj.0
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 11:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:organization;
	bh=b0otJW0z2mePhQLR3cWl2EhbUB1MATSFaw6W6NvVViY=;
	b=1n7tQuj/Qktrlb+Cx4eezoP6As27pR3iwzUR2Npyf1u633lEow1ji3MNe9rU1zh3in
	gADdBNIFx7ND2Fxqp814PcIqIu2hvhy/zhvZW5e5jMYwaZ8Xx1RUAiiICI9gJbAsGdQg
	/XaIs3B5MjyNyHLUXJI9OtZyblCjyuoRSe907leikscuG+qzFJRJ+gI7It7XrA0zsjH8
	4GAaCrB/CrkJfHXbtEdQkwqghMpeaZh70qoBFS+9Wl2a0tEzCtNXfEGyVNev6/UZmvAc
	uEdYxf9EBGBh9NIpJxVCi8QI45fNcjfen/f3aBIL/ZLPvyVzYYi5frNMcgDMOcYSIWzG
	dM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:organization;
	bh=b0otJW0z2mePhQLR3cWl2EhbUB1MATSFaw6W6NvVViY=;
	b=CSmI1wnMSS+vU5DmARPG1ihBKV8JuZvjtDx6EXr1uxOljdCsEXU1hmGZgzRMx3jaLs
	yFqFH2bh/6wrtboG/olgL9hqMY1kIlGm3rcvq7iuqB04w110m2VBYdWfGwSYq/BuVUBV
	RqnXLSf9uKj9oHSsa/Ik34f0zK0TDsei8PMH98xxStk6UFxbqa3hsVxvXUGLmn7E04UI
	zdCIslncl9Gm4Y3up0sgdX7D4Ig2ie/hiTMmt4kZbZY6IV1QQJTzQBUz6yzOw7HGZVry
	tfrGp5C7KIRp/AuD4idg80ICnNjzmMB2WPAPhsJT4TpNuO3SJmo5sZTLK9X47LM+cJ6i
	8DNQ==
X-Gm-Message-State: AOPr4FWVfuSwkuoTTKGW21JrtR52KXP7HUPUj+7ZjpQGJ5qpOgoSGABH5lBj/WGq2+/RjA==
X-Received: by 10.140.173.133 with SMTP id t127mr47384212qht.23.1461003229170; 
	Mon, 18 Apr 2016 11:13:49 -0700 (PDT)
Received: from monster.lab.ossystems.com.br ([187.23.154.250])
	by smtp.gmail.com with ESMTPSA id
	y89sm27004024qgd.5.2016.04.18.11.13.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Apr 2016 11:13:47 -0700 (PDT)
From: Fabio Berton <fabio.berton@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Mon, 18 Apr 2016 15:13:25 -0300
Message-Id: <1461003206-12330-1-git-send-email-fabio.berton@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
Organization: O.S. Systems Software LTDA.
Subject: [meta-mono][PATCH 1/2] mono-4xx: Add zlib to DEPENDS
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
X-List-Received-Date: Mon, 18 Apr 2016 18:13:51 -0000

Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
---
 recipes-mono/mono/mono-4.xx.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index 6075766..0225aaa 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -5,6 +5,8 @@ BUGTRACKER = "http://bugzilla.xamarin.com/"
 SECTION = "devel"
 LICENSE = "GPLv2"
 
+DEPENDS = "zlib"
+
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=80862f3fd0e11a5fa0318070c54461ce"
 
 SRC_URI = "http://download.mono-project.com/sources/mono/mono-${PV}.tar.bz2 \
-- 
2.1.4


