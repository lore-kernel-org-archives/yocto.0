Return-Path: <martyn.welch@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F9B5E00CC4; Mon, 13 Nov 2017 11:25:51 -0800 (PST)
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
X-Greylist: delayed 347 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Nov 2017 11:25:49 PST
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2204E00BEA
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 11:25:49 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: martyn) with ESMTPSA id 6D48526E9A6
From: Martyn Welch <martyn.welch@collabora.co.uk>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Mon, 13 Nov 2017 19:19:48 +0000
Message-Id: <1510600788-27455-2-git-send-email-martyn.welch@collabora.co.uk>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
Subject: [PATCH v2 2/2] ref-manual: Add documentation for prohibited-path QA test
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
X-List-Received-Date: Mon, 13 Nov 2017 19:25:51 -0000

Add documentation for the prohibited-path QA test and associated
PROHIBITED_PATH variable.

Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
---

Changes since v1:
 - Correcting author and SOB.

 documentation/ref-manual/ref-classes.xml   |  5 +++++
 documentation/ref-manual/ref-variables.xml | 25 +++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 5961d3e..15f5586 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -1714,6 +1714,11 @@
                 <filename>FILES_${PN} = "xyz"</filename> effectively turn into
                 <filename>FILES = "xyz"</filename>.
                 </para></listitem>
+            <listitem><para><emphasis><filename>prohibited-path:</filename></emphasis>
+                Checks that a recipe does not package and files in locations
+                specified in
+                <link linkend='var-PROHIBITED_PATH'><filename>PROHIBITED_PATH</filename></link>.
+                </para></listitem>
            <listitem><para><emphasis><filename>rpaths:</filename></emphasis>
                 Checks for rpaths in the binaries that contain build system paths such
                 as <filename>TMPDIR</filename>.
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index e31aa21..0bdbbba 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -10820,6 +10820,31 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PROHIBITED_PATH'><glossterm>PROHIBITED_PATH</glossterm>
+            <info>
+                PROHIBITED_PATH[doc] = "A list of paths in which recipes are prohibited from installing."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
+                    A list of paths in which recipes are prohibited from
+                    installing.
+                    Paths can be provided for specific locations or may include
+                    a wildcard asterisk at the end to ensure nothing is
+                    installed under the path provided.
+                </para>
+
+                <para>
+                    For example, the following
+                    <filename>PROHIBITED_PATH</filename> ensures no packages
+                    install anything under <filename>/mnt</filename>:
+                    <literallayout class='monospaced'>
+     PROHIBITED_PATH += "/mnt/*"
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


