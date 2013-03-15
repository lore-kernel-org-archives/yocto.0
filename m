Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E277E01472
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 01:31:55 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UGQ3j-0001PY-H0
	for yocto@yoctoproject.org; Fri, 15 Mar 2013 09:32:15 +0100
Received: from 2-227-90-218.ip185.fastwebnet.it ([2.227.90.218])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 09:32:15 +0100
Received: from f.deldegan by 2-227-90-218.ip185.fastwebnet.it with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 09:32:15 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Francesco Del Degan <f.deldegan@pr0gg3d.net>
Date: Fri, 15 Mar 2013 09:31:41 +0100
Message-ID: <87wqt99i8i.fsf@pr0gg3d.net>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 2-227-90-218.ip185.fastwebnet.it
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
Cancel-Lock: sha1:luepsvCQ5tQYvfVvvpueZMgRr0s=
Subject: [PATCH] bc_1.06.bb: Fix uppercase typo in functions documentation (info manual).
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
X-List-Received-Date: Fri, 15 Mar 2013 08:31:56 -0000
Content-Type: text/plain


Fixes uppercase typo of j (bessel) and e (exponential) functions in info
manual.

Signed-off-by: Francesco Del Degan <f.deldegan@endian.com>
---
 .../bc/bc-1.06/bc-1.06-info_exp_bessel.patch            |   15
 +++++++++++++++
 meta/recipes-extended/bc/bc_1.06.bb                     |    3 ++-
 2 files changed, 17 insertions(+), 1 deletion(-)
 create mode 100644
 meta/recipes-extended/bc/bc-1.06/bc-1.06-info_exp_bessel.patch

diff --git
a/meta/recipes-extended/bc/bc-1.06/bc-1.06-info_exp_bessel.patch
b/meta/recipes-extended/bc/bc-1.06/bc-1.06-info_exp_bessel.patch
new file mode 100644
index 0000000..e3e778d
--- /dev/null
+++ b/meta/recipes-extended/bc/bc-1.06/bc-1.06-info_exp_bessel.patch
@@ -0,0 +1,15 @@
+--- bc-1.06/doc/bc.info.info_exp_bessel        2003-08-12
14:57:45.000000000 +0200
++++ bc-1.06/doc/bc.info        2003-08-12 14:57:51.000000000 +0200
+@@ -664,10 +664,10 @@
+ `l (X)'
+      The natural logarithm of X.
+ 
+-`E (X)'
++`e (X)'
+      The exponential function of raising E to the value X.
+ 
+-`J (N,X)'
++`j (N,X)'
+      The bessel function of integer order N of X.
+ 

diff --git a/meta/recipes-extended/bc/bc_1.06.bb
b/meta/recipes-extended/bc/bc_1.06.bb
index fe9c3f4..20073ed 100644
--- a/meta/recipes-extended/bc/bc_1.06.bb
+++ b/meta/recipes-extended/bc/bc_1.06.bb
@@ -11,9 +11,10 @@ LIC_FILES_CHKSUM =
"file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "base"
 DEPENDS = "flex"
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "${GNU_MIRROR}/bc/bc-${PV}.tar.gz"
+SRC_URI += "file://bc-1.06-info_exp_bessel.patch"
 
 SRC_URI[md5sum] = "d44b5dddebd8a7a7309aea6c36fda117"
 SRC_URI[sha256sum] =
 "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea72c0e33"
-- 
1.7.10.4



