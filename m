Return-Path: <joe@deserted.net>
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A699CE00B69
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 06:17:07 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id z60so1759403qgd.28
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 06:17:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=UqJkJ7Np66FtKHB6bvtpNWmAZ5QLaFKbk758ixJlcV4=;
	b=bTrZx+P4ptfkH4yLlu9GeDKNh3V6Pg1B8prVRtKLyCKi1a84Pl7lTgIhR6bZmtCkB+
	0MYFt2e5DlA0UKsmdfvJnpeDyJFtlco9ZKaB80AA9HHfOzXfgPX1KTHTeWAWv5sHEiEx
	1Nu/jZxMYrpJ2HewkjLyKZtK/QmPjGncye+KGyObMBwUINrTvVvzySC67UZrsxUwhyB/
	0jxUqFJqrh4nM58unKFNnAnawCTLbUIkrBZeWehvrYwLz1e+lKxIwGT4UJbrDcQfSKy4
	ELeBj0a1GRQUFL5hXsuGP2kGutlT0fIIs+rhbttFJliauuZ6DhopIjaBQrm4mRxYDoxx
	Uyig==
X-Gm-Message-State: ALoCoQker9ZHWCdQxKve3+aqElXgIPkikNBu43j3YtPqKkUOcpWA0XjsoDvF4LjffIvl/ij3x8R6
X-Received: by 10.224.13.77 with SMTP id b13mr7437465qaa.34.1396531026727;
	Thu, 03 Apr 2014 06:17:06 -0700 (PDT)
Received: from yow-asskicker.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id 104sm6860420qgq.1.2014.04.03.06.17.05
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Apr 2014 06:17:05 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Thu,  3 Apr 2014 09:17:04 -0400
Message-Id: <1396531024-12780-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-selinux][PATCH] refpolicy: add versioned directory to FILESEXTRAPATHS
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
X-List-Received-Date: Thu, 03 Apr 2014 13:17:15 -0000

${PV} is no longer calculated for non-bb/bbappend files, resulting in a
failure to find any patches in refpolicy-2.20130424/.  Explicitly set the
path name rather than relying on the ${PV} expansion.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/refpolicy/refpolicy_2.20130424.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index 9e5e426..4ea61fc 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -4,7 +4,7 @@ SRC_URI = "http://oss.tresys.com/files/refpolicy/refpolicy-${PV}.tar.bz2;"
 SRC_URI[md5sum] = "6a5c975258cc8eb92c122f11b11a5085"
 SRC_URI[sha256sum] = "6039ba854f244a39dc727cc7db25632f7b933bb271c803772d754d4354f5aef4"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20130424:"
 
 # Fix file contexts for Poky
 SRC_URI += "file://poky-fc-subs_dist.patch \
-- 
1.7.10.4


