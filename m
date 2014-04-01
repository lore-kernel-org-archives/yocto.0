Return-Path: <Alexandru.Vaduva@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id ABE66E00C56
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 03:45:55 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1; Tue, 1 Apr 2014
	12:45:53 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 6EFD628840C;
	Tue,  1 Apr 2014 12:45:53 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 1 Apr 2014 12:45:49 +0200
Message-ID: <1396349149-61351-2-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1396349149-61351-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1396349149-61351-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
X-Mailman-Approved-At: Tue, 01 Apr 2014 08:01:50 -0700
Cc: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
Subject: [PATCH 1/1] refpolicy: Updated FILESEXTRAPATHS_prepend value
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
X-List-Received-Date: Tue, 01 Apr 2014 10:46:01 -0000
Content-Type: text/plain

From: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>

The value was defined as:
FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-${PV}:"
and changed it to:
FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-2.20130424:"
becase the bb that inherit this overwrites the PV every time,
changing its name.

Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
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


