Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C585E00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 17:46:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2R0k9oJ000777
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 17:46:09 -0700 (PDT)
Received: from e6410-2 (172.25.40.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 26 Mar 2014 17:46:09 -0700
Date: Wed, 26 Mar 2014 19:45:46 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: <yocto@yoctoproject.org>, "Hatle, Mark" <mark.hatle@windriver.com>, Pascal
	Ouyang <xin.ouyang@windriver.com>
Message-ID: <20140326194546.2d88d3e1@e6410-2>
X-Mailer: Claws Mail 3.8.0 (GTK+ 2.24.10; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: meta-selinux/policycoreutils [PATCH 1/1] Add missing dependencies to semanage
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
X-List-Received-Date: Thu, 27 Mar 2014 00:46:12 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

The semanage utility is missing two dependencies, so if your system
hasn't happened to pick them up, it will install but not be able to
execute. Add the missing dependencies. (Tested locally using a bbappend
file.)

Note that gzip.py requires python-io. That's already in BPN-python, which is already in RDEPENDS, so I'm not adding it specifically to semanage.

The following changes since commit a6079a43719e79e12a57e609923a0cccdba06916:

  refpolicy: fix real path for su.shadow (2014-02-13 10:52:07 -0500)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib seebs/semanage-python-depends
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=seebs/semanage-python-depends

Peter Seebach (1):
  policycoreutils.inc: Add missing dependencies for semanage

 recipes-security/selinux/policycoreutils.inc | 2 ++
 1 file changed, 2 insertions(+)

And here's the actual patch:

policycoreutils.inc: Add missing dependencies for
 semanage

The semanage utility requires python-compression (for "import gzip")
and python-xml (for "import xml.etree.ElementTree").

Signed-off-by: Peter Seebach <peter.seebach@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 56470e9..521e70b 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -75,6 +75,8 @@ RDEPENDS_${BPN}-secon += "libselinux"
 RDEPENDS_${BPN}-semanage = "\
 	python-core \
 	python-ipy \
+	python-compression \
+	python-xml \
 	${BPN}-python \
 	libselinux-python \
 "
-- 
1.8.3.4


-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

