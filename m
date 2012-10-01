Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD355E011C0
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 11:05:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 11:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="199303499"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by azsmga001.ch.intel.com with ESMTP; 01 Oct 2012 11:05:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <scott.m.rifenbark@intel.com>,
	yocto@yoctoproject.org
Date: Mon,  1 Oct 2012 19:05:24 +0100
Message-Id: <bdf73dda6ecb31e012360ac8236764474655720e.1349114621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1349114621.git.paul.eggleton@linux.intel.com>
References: <cover.1349114621.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [yocto-docs][PATCH 05/11] documentation/poky-ref-manual: remove reference to Ubuntu Intrepid
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
X-List-Received-Date: Mon, 01 Oct 2012 18:05:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

We haven't supported Ubuntu Intrepid (8.04) for some time now.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/faq.xml |   22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 825ea8b..4a17313 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -310,28 +310,6 @@
     <qandaentry>
         <question>
             <para>
-                I'm using Ubuntu Intrepid and am seeing build failures. What’s wrong?
-            </para>
-        </question>
-        <answer>
-            <para>
-	            In Intrepid, Ubuntu turns on by default the normally optional compile-time security features 
-		        and warnings. 
-                There are more details at 
-                <ulink url='https://wiki.ubuntu.com/CompilerFlags'>https://wiki.ubuntu.com/CompilerFlags</ulink>.
-		        You can work around this problem by disabling those options by adding 
-                the following to the <filename>BUILD_CPPFLAGS</filename> variable in the
-                <filename>conf/bitbake.conf</filename> file.
-                <literallayout class='monospaced'>
-     " -Wno-format-security -U_FORTIFY_SOURCE" 
-                </literallayout>
-            </para>
-        </answer>
-    </qandaentry>
-
-    <qandaentry>
-        <question>
-            <para>
                 What’s the difference between <filename>foo</filename> and <filename>foo-native</filename>?
             </para>
         </question>
-- 
1.7.9.5


