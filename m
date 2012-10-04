Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9763FE01465
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 09:29:26 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hn14so3669931wib.11
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 09:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=Ic4AhEW6hGNYxO9/OFZtpCaActJKyiIcKNBnSqkWw3Q=;
	b=q/6U4pzMrJ7BOyTOiAWvoApDG/KDn/Fq8OPTGnFsggE16EBE60YiRiKWX13nuHOPJ7
	rWsfKEa4XuEtRt7GoPZALIowadmO+O9cDSEQPePm8eWxUKVENvoTVpQ/R/ZlVDZHgic3
	Ztt8pwzS+RQI/Vr4Tng15nWvjZWBL92ihazI3IiXyr3C+LryypBvPoXx3ebjeSMnHv8Q
	CiZFXFOKo5adpeqC6De9XPEwrhaEqKhvRLbAugUrd59vf07EsipLAyiejO92W/qyAXNY
	ztZKxpYWBww4ddExnr3DXUedhHw4DqdM5gLntmFYeASm+1XFNod4vvt0X8bu1ttnGTGV
	4bvw==
Received: by 10.180.91.169 with SMTP id cf9mr39509023wib.1.1349368163579;
	Thu, 04 Oct 2012 09:29:23 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id k20sm33163608wiv.11.2012.10.04.09.29.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 04 Oct 2012 09:29:21 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 18:29:13 +0200
Message-Id: <1f5c57bfc8c08926a349c395e0e72058f857448e.1349358184.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.12
In-Reply-To: <cover.1349358184.git.Martin.Jansa@gmail.com>
References: <cover.1349358184.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1349358184.git.Martin.Jansa@gmail.com>
References: <cover.1349358184.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 1/1] opkg-make-index: fix mis-indented else:
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 16:29:27 -0000

From: Marc Olzheim <marc@iphion.nl>

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg-make-index | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/opkg-make-index b/opkg-make-index
index 1c3a8e1..44fa64d 100755
--- a/opkg-make-index
+++ b/opkg-make-index
@@ -213,7 +213,7 @@ if filelist_filename:
             (h,t) = os.path.split(fn)
             if not t: continue
             if t not in files: files[t] = name+':'+fn
-        else: files[t] = files[t] + ',' + name+':'+fn
+            else: files[t] = files[t] + ',' + name+':'+fn
 
     tmp_filelist_filename = ("%s.%d" % (filelist_filename, os.getpid()))
     f = open(tmp_filelist_filename, "w")
-- 
1.7.12


