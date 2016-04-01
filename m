Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74C7DE00C96; Fri,  1 Apr 2016 04:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35200E00C92
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 04:37:16 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id p65so19463296wmp.0
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 04:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=ts+MHZapwwqcR8d/0Rgy77wVp3l3iZsbjy1KSOUzHos=;
	b=xtww8+aq4KuP8fEeO6xMcKVZwEVI5u+Hw6RH0eZhpWiM77XyfaFhsgDgvvpTaXG1OA
	8zZwib1c7vc4r1Dc3KYxRU7dBbytXNVjxRbx0j/9h+ipKeBaN5c0yGTRexGwxLmFBxi1
	4/FM3bamRtQ+8HazyUv5HBC0UPunM9+yVfSXvdN7QvK358N38nUX5u4N5H44xN3dmfQk
	6Ir5Ys5YsMys8JXZCW1L9iqKmo83uhd40IS9Tfj8T2nOOi0ZpoIVPSSgLjfqVyRfhFtJ
	rA++oAykBGxaA3vjJk25uuAtTSBBuQYeF2bpuTSceIxhDRMOtp5xaRPh9zkN85KrLvY6
	mz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ts+MHZapwwqcR8d/0Rgy77wVp3l3iZsbjy1KSOUzHos=;
	b=WPZcnkodedB9Yv9HCyDrkIxTfWbZs0Ny7HDIK9Wvsiugu73HQ/YisxxUW4MJrul0Eg
	T2z/fTOapYz2cbYmH9tL7jPG1YWp6DCKrha9Ygz99lUiJzJkwbldWCcj4YxDtYHsXzGY
	t+H3MKqjWh689yYgZuNiVDez4DUegj7FsZY8jooskIZ4yJUtXTjddoZurYKvp8Ye3s7r
	Bju3lfHw/ZnwWawwdzMb9FTplc1KSrkg8r3v4Ap6NGq1+vggKetIDlHeGh+mhKQAlbGa
	g+jbkEKPXLuoAamhkuQgNebUMbgEn1gfLqGziqA26+J3GZtGQWWwCKAI2NcAyKK1Q8L0
	COXQ==
X-Gm-Message-State: AD7BkJJmJ5gqFKE8JKw5Ih/8qVh9nPLhFtDw0cWWiPUQFG6klkGlNABRMisG67IVgYLxAA==
X-Received: by 10.28.171.8 with SMTP id u8mr3249733wme.97.1459510635614;
	Fri, 01 Apr 2016 04:37:15 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-076-238-192.088.076.pools.vodafone-ip.de. [88.76.238.192])
	by smtp.gmail.com with ESMTPSA id
	ka4sm13625017wjc.47.2016.04.01.04.37.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 01 Apr 2016 04:37:13 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri,  1 Apr 2016 13:37:11 +0200
Message-Id: <1459510631-20294-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH 1/1] userland: In case of wayland configuration build needs wayland-native
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
X-List-Received-Date: Fri, 01 Apr 2016 11:37:21 -0000

Building wayland support requires availability of wayland-scanner to avoid
build errors like:

| /bin/sh:
| /home/andrei/work/yocto/build-rpi-master/tmp/sysroots/x86_64-linux/usr/bin/wayland-scanner:
| No such file or directory

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index ca9123e..536c3ec 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -45,7 +45,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
 
 PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
 
-PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland"
+PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,wayland-native,wayland"
 
 CFLAGS_append = " -fPIC"
 
-- 
2.7.4


