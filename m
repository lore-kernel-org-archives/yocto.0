Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55908E011AB
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 02:11:35 -0800 (PST)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id r0GABVJP027398
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 11:11:31 +0100
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id r0GABVCZ027396
	for yocto@yoctoproject.org; Wed, 16 Jan 2013 11:11:31 +0100
Date: Wed, 16 Jan 2013 11:11:31 +0100
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjorn@haxx.se>
To: yocto@yoctoproject.org
Message-ID: <20130116101131.GA26137@giant>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [PATCH] For danny: Fix typo in kvm capability detection in runqemu
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
X-List-Received-Date: Wed, 16 Jan 2013 10:11:36 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Signed-off-by: Björn Stenberg <bjst@enea.com>
---
diff --git a/scripts/runqemu b/scripts/runqemu
index fb7ac56..fc7d749 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -155,7 +155,7 @@ while true; do
             ;;
         "kvm")
             KVM_ENABLED="yes"
-            KVM_CAPABLE=`grep -q 'vmx\|smx' /proc/cpuinfo && echo 1`
+            KVM_CAPABLE=`grep -q 'vmx\|svm' /proc/cpuinfo && echo 1`
             ;;
         "") break ;;
         *)

-- 
Björn

