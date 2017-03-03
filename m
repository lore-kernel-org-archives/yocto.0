Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF835E00A26; Fri,  3 Mar 2017 06:00:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B658E009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 06:00:32 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id 203so2369158ith.2
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 06:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=sender:from:to:subject:date:message-id:in-reply-to:references;
	bh=3f5+o205NoF6yMnuS8taJYAVDcZFGbdiBUIRKc98dRM=;
	b=0wJC0x+bt1Omsv7KW/mWZQT5D2HtVu+2GGVBMX3kA9nU7Txzu93VEhNsfIIIUuYtK9
	Eik1KJQZNjrPlHcjrdRY0gnAvoW+DeUnkdMH/x30L9gw9BjqJ9v7cOAGmGucIVvoIbMJ
	nLQUa9mP0FX43wYXxBO0i0pBvWoqoMymZOPDy+AGOAzBeAiv3wYTwK7sYjtbyNisS1IM
	meVYAViBr6iFt9aj5NjQzKXd6sa8ndt+O3IkAN4kdrI+Sz2ZZxDVe+TYZI9iph3uBP8j
	vT3814h5cLpLF2yhp4fUO3lt3LoPDc96yMuffE7hHVbmDnN170kg1M/w5vygLfh9oR1i
	MXQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:subject:date:message-id
	:in-reply-to:references;
	bh=3f5+o205NoF6yMnuS8taJYAVDcZFGbdiBUIRKc98dRM=;
	b=sjlInbvJNXGrXl31/NHlY06lwalOw1Y05gTSjW2u9wQS1S4SuTFOJlQFOEPhMrqy+8
	0/R3Zpu4CeT3v6vguBzt5xqtB8f6grlmRMZgNeW3dfqnSuyZkDkuLW9UcP4Eu3dqIFI/
	GJSFyrY9JZIzjVR3fwxzKkkAQCHFYJ5TlvVqeX1odsLg9FD7aK2glLJNofKkf0G3TSOd
	nk1EiHPVyKWkuTzuGJvYNC88pTGMdxFIZf2NpFbY77PYtW3hokO7LCd5czWr06NMH7IW
	PBCEFsT1zjYc6UNb+Z+JNbxLsLz2O9F+9K9c+N/1POhigL4S2Xdd+GFTtaZ+/K8godDm
	QMVQ==
X-Gm-Message-State: AMke39lXNmzylg5Sd+LVsEqsq+NQRBDIvW2dtNsfVt237OwzCwtHfZhu70wT6tXxyf8TZA==
X-Received: by 10.36.215.129 with SMTP id y123mr2968658itg.17.1488549631425;
	Fri, 03 Mar 2017 06:00:31 -0800 (PST)
Received: from mir.deserted.net (23-233-31-74.cpe.pppoe.ca. [23.233.31.74])
	by smtp.gmail.com with ESMTPSA id
	198sm4655072ioz.59.2017.03.03.06.00.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Mar 2017 06:00:30 -0800 (PST)
Sender: Joe MacDonald <joe@deserted.net>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Mar 2017 09:01:35 -0500
Message-Id: <1488549695-20065-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1488549444-20010-1-git-send-email-joe_macdonald@mentor.com>
References: <1488549444-20010-1-git-send-email-joe_macdonald@mentor.com>
Subject: [PATCH] deprecated.bbclass: Document PNDEPRECATED variable
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
X-List-Received-Date: Fri, 03 Mar 2017 14:00:33 -0000

Based on the blacklist behaviour, recipes can be tagged as deprecated.
Such recipes will produce a warning message when included in a build but
unlike blacklisted recipes, the build will continue.  Update the
documentation to support this new variable.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---

This should only be added if or when the bbclass is merged into meta/

-J.

 documentation/ref-manual/ref-classes.xml   | 28 ++++++++++++++++++++++++++++
 documentation/ref-manual/ref-variables.xml | 28 ++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index f7b1126..6088b44 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -632,6 +632,34 @@
     </para>
 </section>
 
+<section id='ref-classes-deprecated'>
+    <title><filename>deprecated.bbclass</filename></title>
+
+    <para>
+        The <filename>deprecated</filename> class identifies recipes
+        that for one reason or another are being considered for removal
+        from their current layer. It may be due to persistent, known
+        issues with the package, that there are newer, more feature-rich
+        alternatives available in the same layer or that the recipe is
+        no longer needed.  The recipe should provide a reason for the
+        depercation and a suggestion to consumers of the recipe as to how
+        to proceed.
+        To use this class, inherit the class globally and set
+        <link linkend='var-PNDEPRECATED'><filename>PNDEPRECATED</filename></link>
+        for each recipe you intend to deprecate.
+        Specify the <link linkend='var-PN'><filename>PN</filename></link>
+        value as a variable flag (varflag) and provide a reason, which is
+        reported, if the package is requested to be built as the value.
+        For example, if you want to deprecate a recipe called "exoticware",
+        you add the following to your <filename>local.conf</filename>
+        or distribution configuration:
+        <literallayout class='monospaced'>
+     INHERIT += "deprecated"
+     PNDEPRECATED[exoticware] = "'exoticware' is considered obsolete and has been replaced by 'standardware'.  'exoticware' may not appear in future releases."
+        </literallayout>
+    </para>
+</section>
+
 <section id='ref-classes-devshell'>
     <title><filename>devshell.bbclass</filename></title>
 
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index f79cdd2..629d167 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -9920,6 +9920,34 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PNDEPRECATED'><glossterm>PNDEPRECATED</glossterm>
+            <info>
+                PNDEPRECATED[doc] = "Lists recipes that may be removed in a future release or have more actively maintained alternatives."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
+                    Lists recipes that may be removed in a future release or
+                    have more actively maintained alternatives.
+                    This variable works in conjunction with the
+                    <link linkend='ref-classes-deprecated'><filename>deprecated</filename></link>
+                    class, which the recipe must inherit globally.
+                </para>
+
+                <para>
+                    To identify a recipe as deprecated, inherit the class
+                    globally and use the variable in your
+                    <filename>local.conf</filename> file.
+                    Here is an example that will show a warning when
+                    <filename>myrecipe</filename> is included in a project:
+                    <literallayout class='monospaced'>
+     INHERIT += "deprecated"
+     PNDEPRECATED[myrecipe] = "Recipe is no longer actively maintained, you should consider using 'mynewrecipe' as an alternative."
+                    </literallayout>
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-POPULATE_SDK_POST_HOST_COMMAND'><glossterm>POPULATE_SDK_POST_HOST_COMMAND</glossterm>
             <info>
                 POPULATE_SDK_POST_HOST_COMMAND[doc] = "Specifies a list of functions to call once the OpenEmbedded build system has created host part of the SDK."
-- 
1.9.1


