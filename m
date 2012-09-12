Return-Path: <sgw@bigsur.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14228E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:52:59 -0700 (PDT)
Received: by dadz8 with SMTP id z8so1658394dad.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bigsur.com; s=bigsur.com;
	h=sender:from:to:subject:date:message-id:x-mailer;
	bh=1sPNlCh2Jrz8kK+dsL4qJnzm2lJc1cqHirNQ3kGEWCs=;
	b=HQ3ZprX1kITptKe520uYGMF/gHW9sDvbZiI8otvr96FP8OBYNNs/ijYyAdCVv1G6+1
	rn0VvS1FG0+ev1wxYfeloh+cnQvxf6+w/zf0fQRJXayliGY4dirVimBsXOYpDASL/KCD
	6ArHM4+INEO/HfpsD1Yhn4cikMSEuzMoXYSbI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=1sPNlCh2Jrz8kK+dsL4qJnzm2lJc1cqHirNQ3kGEWCs=;
	b=dPoQz2OLbGbun2rzS3/Wx3cj8oeH+dcwkqTISCeWEsPmEQCF5z/cZTKczXEKn7yM/c
	BmUwmIG9IeAw8TnaVBCWmH5/zRdag1nDSRh6QY39qDLwBw5DFIXBoz8iNw56qhKZOFq6
	/1qdFPpdBRIlpQCC0jn75hfPP34ZIlKmMRDzb2XXhquTsJtbms9+lsoDPiWUybU8cw3c
	wamsJyVi+lId1/84daJbrp7iYU/OO8A3VjMUtatsa/sXJlzJ+CBQ0iFA58bTD1vehawA
	bOTtrGf4YYWsuaq/nGdH5VWknPrAijh/p9trCGV2VxFzUi2p60G/5UjNP4pdLN+5U+aJ
	L6SA==
Received: by 10.66.84.130 with SMTP id z2mr33704110pay.77.1347486765354;
	Wed, 12 Sep 2012 14:52:45 -0700 (PDT)
Received: from localhost (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id rm6sm5852905pbc.54.2012.09.12.14.52.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Sep 2012 14:52:43 -0700 (PDT)
Sender: Saul Wold <sgw@bigsur.com>
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Sep 2012 14:52:37 -0700
Message-Id: <1347486757-20642-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQkDyq5Ww9qSz2UjNLj8MRe9fQS9s8yTvNq3TlTR2bBeJmu0PeRQfqUap+FdhWAUwXFHhAG5
Subject: [PATCH] x32: Update for 1.3
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
X-List-Received-Date: Wed, 12 Sep 2012 21:53:00 -0000

x32 is now part of oe-core and the meta-x32 is no longer needed

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../poky-ref-manual/technical-details.xml          |   26 +++-----------------
 1 file changed, 4 insertions(+), 22 deletions(-)

diff --git a/documentation/poky-ref-manual/technical-details.xml b/documentation/poky-ref-manual/technical-details.xml
index aef1c27..caf52cd 100644
--- a/documentation/poky-ref-manual/technical-details.xml
+++ b/documentation/poky-ref-manual/technical-details.xml
@@ -600,10 +600,9 @@
             <itemizedlist>
                 <listitem><para>You can create packages and images in x32 psABI format on x86_64 architecture targets. 
                     </para></listitem>
-                <listitem><para>You can use the x32 psABI support through the <filename>meta-x32</filename>
-                    layer on top of the OE-core/Yocto layer.</para></listitem>
-                <listitem><para>The toolchain from the <filename>experimental/meta-x32</filename> layer 
-                    is used for building x32 psABI program binaries.</para></listitem>
+                <listitem><para>You can use the x32 psABI support by setting
+                    the <filenaeme>DEFAULTTUNE</filename></para></listitem>
+                <listitem><para>The toolchain in or-core now supports x32.</para></listitem>
                 <listitem><para>You can successfully build many recipes with the x32 toolchain.</para></listitem>
                 <listitem><para>You can create and boot <filename>core-image-minimal</filename> and 
                     <filename>core-image-sato</filename> images.</para></listitem>
@@ -626,8 +625,6 @@
                     work with and support x32 toolchains.</para></listitem>
                 <listitem><para>Enhance RPM Package Manager (RPM) support for x32 binaries.</para></listitem>
                 <listitem><para>Support larger images.</para></listitem>
-                <listitem><para>Integrate x32 recipes, toolchain, and kernel changes from 
-                    <filename>experimental/meta-x32</filename> into OE-core.</para></listitem>
             </itemizedlist>
         </para>
     </section>
@@ -636,23 +633,8 @@
         <title>Using x32 Right Now</title>
 
         <para>
-            Despite the fact the x32 psABI support is in development state for this release of the
-            Yocto Project, you can follow these steps to use the x32 spABI:
+            With this release of the Yocto Project, you can follow these steps to use the x32 spABI:
             <itemizedlist>
-                <listitem><para>Add the <filename>experimental/meta-x32</filename> layer to your local
-                    <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>build directory</ulink>.  
-                    You can find the <filename>experimental/meta-x32</filename> source repository at
-                    <ulink url='&YOCTO_GIT_URL;'></ulink>.</para></listitem>
-                <listitem><para>Edit your <filename>conf/bblayers.conf</filename> file so that it includes
-                    the <filename>meta-x32</filename>.
-                    Here is an example:
-                    <literallayout class='monospaced'>
-     BBLAYERS ?= " \
-        /home/nitin/prj/poky.git/meta \
-        /home/nitin/prj/poky.git/meta-yocto \
-        /home/nitin/prj/meta-x32.git \
-     "
-                    </literallayout></para></listitem>
                 <listitem><para>Enable the x32 psABI tuning file for <filename>x86_64</filename>
                     machines by editing the <filename>conf/local.conf</filename> like this:
                     <literallayout class='monospaced'>
-- 
1.7.9.5


