Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DA05E00B9E; Thu,  8 May 2014 10:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f42.google.com (unknown [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96E61E0077C
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 10:01:18 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id d49so1940329eek.29
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 10:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=E1gZT0VPLse9VXINU993I1LO3pJlE7xXgFswRjrO/Vs=;
	b=DIzehs6oP95vOW23ihsMaroRio5ozQQUUp++ybW3OUY7uLHAAttyItNZGp0RR6GpDA
	p5dNuD4WHfX738fexR3SabnsGpKiXO3Ldn/h0XaQfRIHSEa0hsy5d2VrXGqsbpimjXqE
	BiH91xMrPG3Ul4f0Q6mR9f5YXdUGDSznD46QVcZDpsyxGhWOdrnBgEl72YP8V0Ngh09N
	w4Uw1yQvSxwSlhfDyZGmEkc1XXCr4ju5sUhWZXXIbmDyoQZvHWT4Rm7caiS/mvFXqZS9
	a3MGe/rOkC9l1W6u4Q/lXmwcjlAF5QJHANxXzICv5JAxXxnRxdIyBDm/LLSqfVGU1nA6
	Rk1A==
X-Received: by 10.14.5.135 with SMTP id 7mr7043085eel.86.1399568097026;
	Thu, 08 May 2014 09:54:57 -0700 (PDT)
Received: from localhost.localdomain (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id x42sm5390510eel.41.2014.05.08.09.54.55
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 May 2014 09:54:56 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Thu,  8 May 2014 16:54:45 +0000
Message-Id: <1399568085-11592-4-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.9.2
In-Reply-To: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
References: <1399568085-11592-1-git-send-email-paul@paulbarker.me.uk>
Subject: [opkg-utils][PATCH 3/3] opkg-update-index: Emit relative path to package file
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
X-List-Received-Date: Thu, 08 May 2014 17:01:36 -0000

The new relpath argument of the Package object constructor is used so that the
relative path from pkg_dir to the package file will be placed in the package
index. The allows the package file to be in a subdirectory of pkg_dir.

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 opkg-update-index | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/opkg-update-index b/opkg-update-index
index 1b05875..353ea69 100755
--- a/opkg-update-index
+++ b/opkg-update-index
@@ -17,7 +17,7 @@ packages.read_packages_file(pkg_dir + '/Packages')
 
 names = list(packages.packages.keys())
 
-packages.add_package(opkg.Package(pkg_filename))
+packages.add_package(opkg.Package(pkg_filename, relpath=pkg_dir))
 
 packages.write_packages_file(pkg_dir + '/Packages.new')
 os.rename(pkg_dir + '/Packages.new', pkg_dir + '/Packages')
-- 
1.9.2


