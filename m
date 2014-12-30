Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E9DBE00873; Tue, 30 Dec 2014 12:28:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 485BEE00753
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 12:28:32 -0800 (PST)
Received: from [99.240.204.5] (port=49939 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y63P3-0000sk-SU
	for yocto@yoctoproject.org; Tue, 30 Dec 2014 15:28:29 -0500
Date: Tue, 30 Dec 2014 15:28:28 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1412301527070.17157@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] yocto-docs: Minor, aesthetic touchups to BSP Guide.
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
X-List-Received-Date: Tue, 30 Dec 2014 20:28:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index d485023..2f5a2cc 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -35,12 +35,12 @@
                 Collectively, you can think of the base directory, its file structure,
                 and the contents as a BSP Layer.
                 Although not a strict requirement, layers in the Yocto Project use the
-                following well established naming convention:
+                following well-established naming convention:
                 <literallayout class='monospaced'>
      meta-<replaceable>bsp_name</replaceable>
                 </literallayout>
                 The string "meta-" is prepended to the machine or platform name, which is
-                "bsp_name" in the above form.
+                <replaceable>bsp_name</replaceable> in the above form.
             </para>

             <para>
@@ -58,7 +58,7 @@
                 Each of these layers is a repository unto itself and clicking on a
                 layer reveals information that includes two links from which you can choose
                 to set up a clone of the layer's repository on your local host system.
-                Here is an example that clones the Minnow Board BSP layer:
+                Here is an example that clones the MinnowBoard BSP layer:
                 <literallayout class='monospaced'>
      $ git clone git://git.yoctoproject.org/meta-minnow
                 </literallayout>
@@ -115,8 +115,9 @@

             <para>
                 Some layers function as a layer to hold other BSP layers.
-                An example of this type of layer is the <filename>meta-intel</filename> layer.
-                The <filename>meta-intel</filename> layer contains many individual BSP layers.
+                An example of this type of layer is the <filename>meta-intel</filename> layer,
+                which contains a number of individual BSP sub-layers, as well as a directory
+                named <filename>common/</filename> full of common content across those layers.
             </para>

             <para>
@@ -131,8 +132,8 @@
             <title>Example Filesystem Layout</title>

             <para>
-                Providing a common form allows end-users to understand and become familiar
-                with the layout.
+                Defining a common BSP directory structure allows end-users to understand and
+                become familiar with that structure.
                 A common format also encourages standardization of software support of hardware.
             </para>

@@ -501,7 +502,7 @@
             <para>
                 You can find these files in the BSP Layer at:
                 <literallayout class='monospaced'>
-     meta-<replaceable>bsp_name</replaceable>/recipes-kernel/linux/linux-yocto_*.bbappend
+     meta-<replaceable>bsp_name</replaceable>/recipes-kernel/linux/linux-yocto*.bbappend
                 </literallayout>
             </para>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

