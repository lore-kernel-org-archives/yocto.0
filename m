Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97CC0E00E75; Thu, 24 Sep 2015 09:30:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D73E00306
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 09:30:29 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so259759811wic.0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 09:30:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=a7/p2ESd11vnmxAAsF7vLTVqtioQmeW1O216enz9rMs=;
	b=gqcGIYHcKjVCKI3bccmlkF47q0r2PgWTYQCmmR7Om1PeG6wy1C2ZG4nDQcLHjdyxEx
	LLyF/OqClw4llZVno7T6Cq9BFTnITfq57Asq1hWvecWMHqqo5F/ZAm6Aneae1kWaoawN
	Y0BF6z4VzYJYCJ6VFzOJQevWmHJ8lsHgSQVC5Y+SeDkCSQaoTRWvZAnqY5wOZ/bjglXD
	Mo5IDdvsSJR7JZ6ZqqNj3goOqYnsZCwHhET9u49yGo5hugJuMPGVjhQvPdVRAeiFhaVn
	56HTvAFJgW2KKHF5Zi5a4mH9Gyh7x9HJv6+F+oaso2/VD7FH7ttu2qeNVbM1Sgb/3+I4
	5/eA==
X-Gm-Message-State: ALoCoQmdjVE4Eco02wTrHTmFqo7yJJ4sJvKGw64vwL/iWCAWCYMM6J6nNaK584F/w2OJ/ZgjwI0N
X-Received: by 10.180.8.200 with SMTP id t8mr1473874wia.34.1443112229260;
	Thu, 24 Sep 2015 09:30:29 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	ki7sm13044701wjc.28.2015.09.24.09.30.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 24 Sep 2015 09:30:28 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Sep 2015 17:23:20 +0100
Message-Id: <1443111800-2978-3-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443111800-2978-1-git-send-email-ross.burton@intel.com>
References: <1443111800-2978-1-git-send-email-ross.burton@intel.com>
Subject: [PATCH][autobuilder 3/3] nightly-multilib: improve multilib build determinism
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
X-List-Received-Date: Thu, 24 Sep 2015 16:30:32 -0000

There are patches for oe-core which improve the behaviour of multilib images but
show that the RPM-based multilib image construction was working more by luck
than anything else.

Explicitly set RPM_PREFER_ARCH_ELF="1" to prefer 32-bit binaries when both
options are being installed.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-multilib.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-config.controller/nightly-multilib.conf
index 6bd68f0..7cf75c3 100644
--- a/buildset-config.controller/nightly-multilib.conf
+++ b/buildset-config.controller/nightly-multilib.conf
@@ -24,7 +24,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'multilib': 'lib32',
                             'distro': 'poky',
-                            'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
+                            'atextappend' : '\nRPM_PREFER_ELF_ARCH = "1"\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'multilib'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64',
-- 
2.1.4


