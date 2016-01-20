Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DED5E00BAA; Wed, 20 Jan 2016 05:49:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF011E00B9C
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 05:49:50 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id l65so179900827wmf.1
	for <yocto@yoctoproject.org>; Wed, 20 Jan 2016 05:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=u3FX9XPMT+wKGn8KHF51PvBVLUhKXNOvF6omBbUgPyU=;
	b=md7FGV/W6M+mEudzzjay6Y/21+4KpyAV5mM7Y5LKHkkEdkM7c8MsPU49bdUo151pW+
	ZjCEAKuL4SV7vMlLfxawNA+67SxHJkEcSC5QzHgLTOiw/vIjzNA8sxgsK9a8PPXWA533
	FSsGqTP2rVQoOWcVLihKr3Qaow42jreMUJ6v0bTzC1NHfS8owCXgD0iRLPqFVqSvuCcl
	BlnhLqEaBT+MQibqgS7LIDyOc8gzLh+3cPi8Z+0zP3GWdjsK3SqcVt1Met/l59cLNJGu
	is1FDyUF+lxRTFz7DH9Im+fZ3cpJh0BOFeG8O2dANlMK5RYD5EqZ5bjvKc4Fh0gMMGAx
	9oCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=u3FX9XPMT+wKGn8KHF51PvBVLUhKXNOvF6omBbUgPyU=;
	b=jXU6RLx8mVpAFyYwJbdV5feDJCb9t8zsOLg+Pvtic3ni1z/eqfl1pRoSIsKMOgHi4E
	esM3qyzdEvq/cy9WSCbSMYwVU6mOiK24XXwgXUFgUzg0sHkLlQYQ5TbbFtg3Z7ggn8Un
	RZ/+qAjQKdVWunvu9RDz/ka+xP43w8c/4qIL2NcNItSU0mh3j5HwnWXNUXnBrgS2bZd5
	tvHGu0Qnc6WT5vZw9PNgAMGRhqVarDoEzJ4k5geQ4ppJfpB71bilrl/fi1YG6nagyCTs
	D5OHnEy/tp4TrYvct6vZOtXmipj4bkiy6Xf2r3vuZoWGcEis/Aznt75e4g9ntd2TgIhs
	y7eQ==
X-Gm-Message-State: AG10YOTR5niGapqgKgMnUQVfDsfzRK3FjoUqY5t7JuYKTfc9PsRJ6l4ndEm+9vJcgj3k/NKP
X-Received: by 10.194.7.67 with SMTP id h3mr7406136wja.44.1453297788078;
	Wed, 20 Jan 2016 05:49:48 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	gl10sm33321384wjb.30.2016.01.20.05.49.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Jan 2016 05:49:47 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Jan 2016 13:49:43 +0000
Message-Id: <1453297783-19496-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH][meta-qt3][V2] qt-x11-free: update SRC_URI
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
X-List-Received-Date: Wed, 20 Jan 2016 13:49:52 -0000

ftp.trolltech.com doesn't exist anymore, so update SRC_URI to use qt.io.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb | 2 +-
 recipes-qt3/qt3/qt-x11-free_3.3.7.bb        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index e4388c4..b9097c4 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -10,7 +10,7 @@ FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=629178675a7d49c9fa19dfe9f43ea256 \
                     file://LICENSE.QPL;md5=fff372435cb41647bc0b3cb940ea5c51"
 
-SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
+SRC_URI = "http://download.qt.io/archive/qt/3/qt-x11-free-${PV}.tar.bz2 \
            file://no-examples.patch \
            file://qt3-cstddef.patch \
            file://qmake.conf"
diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
index 89f976d..f90f9b9 100644
--- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
+++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
@@ -5,7 +5,7 @@ PR = "${INC_PR}.1"
 LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
                     file://LICENSE.QPL;md5=b81b6b6fc04ed873adde5aa901c0613b"
 
-SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
+SRC_URI = "http://download.qt.io/archive/qt/3/${BP}.tar.bz2 \
 	   file://configure.patch \
 	   file://no-examples.patch \
            file://gcc4_1-HACK.patch \
-- 
2.6.4


