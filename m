Return-Path: <martyn.welch@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93680E00D32; Wed, 15 Nov 2017 07:10:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CC2E00D28
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 07:10:57 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: martyn) with ESMTPSA id 51AD326F0CA
From: Martyn Welch <martyn.welch@collabora.co.uk>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Wed, 15 Nov 2017 15:10:46 +0000
Message-Id: <1510758646-19268-2-git-send-email-martyn.welch@collabora.co.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1510758646-19268-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1510758646-19268-1-git-send-email-martyn.welch@collabora.co.uk>
Subject: [PATCH v3 2/2] ref-manual: Add documentation for prohibited-path QA test
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
X-List-Received-Date: Wed, 15 Nov 2017 15:10:58 -0000

Add documentation for the PROHIBITED_PATHS variable and associated
prohibited-path QA test

Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
---
Changes since v1:
 - Correcting author and SOB.

Changes since v2:
 - Reimplemented as image rather than package level QA test, altering
   documentation to suit.
 - Changed variable from PROHIBITED_PATH to PROHIBITED_PATHS to better
   reflect its use.

 documentation/ref-manual/ref-variables.xml | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index e31aa21..1fb8a86 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -10820,6 +10820,30 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PROHIBITED_PATHS'><glossterm>PROHIBITED_PATHS</glossterm>
+            <info>
+                PROHIBITED_PATHS[doc] = "A colon separated list of paths in which recipes are prohibited from installing."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
+                    A colon separated list of paths in which recipes are
+                    prohibited from installing.
+                    Shell-style wildcards can be used in paths. All paths need
+                    to be absolute paths.
+                </para>
+
+                <para>
+                    For example, the following
+                    <filename>PROHIBITED_PATHS</filename> ensures nothing is
+                    installed under <filename>/mnt</filename>:
+                    <literallayout class='monospaced'>
+     PROHIBITED_PATHS += "/mnt/*"
+                    </literallayout>
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-PROVIDES'><glossterm>PROVIDES</glossterm>
             <info>
                 PROVIDES[doc] = "A list of aliases that a recipe also provides. These aliases are useful for satisfying dependencies of other recipes during the build as specified by DEPENDS."
-- 
2.1.4


