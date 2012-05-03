Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F39E01412
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 09:43:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2012 09:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="136653402"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.59])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2012 09:43:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  3 May 2012 17:43:17 +0100
Message-Id: <1336063397-10503-2-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1336063397-10503-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1336063397-10503-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [yocto-docs] [PATCH 2/2] documentation/yocto-project-qs: remove note about sudo on Fedora pre-F15
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
X-List-Received-Date: Thu, 03 May 2012 16:43:39 -0000

We no longer support Fedora versions older than 15 so remove this note.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   10 ----------
 1 files changed, 0 insertions(+), 10 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 04bfdb5..11521cc 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -256,16 +256,6 @@
      autoconf automake libtool xterm
                 </literallayout>
 
-            <note><para>
-                If you are using a Fedora version prior to version 15, you will need to take some 
-                extra steps to enable <filename>sudo</filename>, or you will need to run
-                the commands as root user.
-                See the <ulink url='https://fedoraproject.org/wiki/Configuring_Sudo'>Configuring Sudo</ulink> 
-                wiki page for details.
-                For information on other dependencies you will need to install, see the Fedora section on the
-                <ulink url='&YOCTO_WIKI_URL;/wiki/Poky/GettingStarted/Dependencies'>Poky/GettingStarted/Dependencies</ulink>
-                wiki page.
-            </para></note>
         </section>
 
         <section id='opensuse'>
-- 
1.7.5.4


