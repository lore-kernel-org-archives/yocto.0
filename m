Return-Path: <joaohf@gmail.com>
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72611E00AD6
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 18:21:12 -0800 (PST)
Received: by mail-yk0-f175.google.com with SMTP id 131so5116503ykp.6
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 18:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=TaNw5lHcLCu0MTjrvmKo0SdGUbrJY+fsi4uhGA9LC7o=;
	b=p/5NcWMobJoEB1BbeFOaoD2qjssvEUflQqgb+gWpiD8DAm3z+1RUNBUZQLvU76QLUM
	kZDDWpGiKRxlmqr81QHn5OOnwBSCrKyNDVU+Kg5qQKQiysx5rTAA75laFYv59nenRwpt
	RuXBdoMMSE79R9yUyjlWtehbeIR1bct2fFLUlgRBmTyZ6L4nhffsfW+fa529j7ETohJA
	noGqInJp8qc48MSDHrePP6wJtrm48y/tBvKI3xD7LME0KRk4sy7RPEGv5L1XLGCMQd91
	RN8f4S5SBNhS+/n9FrUk6rLbM4b2LIqPkuzOaXrFnkYvjhBYZ3gL9YpuF1qRIuI+8Sps
	mh/w==
X-Received: by 10.236.15.102 with SMTP id e66mr11438694yhe.69.1394072471991;
	Wed, 05 Mar 2014 18:21:11 -0800 (PST)
Received: from localhost.localdomain ([201.53.197.242])
	by mx.google.com with ESMTPSA id
	l23sm13892843yhg.15.2014.03.05.18.21.09 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 05 Mar 2014 18:21:11 -0800 (PST)
From: =?UTF-8?q?Jo=C3=A3o=20Henrique=20Ferreira=20de=20Freitas?=
	<joaohf@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 23:20:58 -0300
Message-Id: <1394072458-5930-1-git-send-email-joaohf@gmail.com>
X-Mailer: git-send-email 1.8.3.2
MIME-Version: 1.0
Subject: [yocto-docs][PATCH] kernel-dev: Updates "Generating Configuration Files" section
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
X-List-Received-Date: Thu, 06 Mar 2014 02:21:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add a new step about how to use diffconfig task to create
kernel config fragments.

[YOCTO #3862]

Signed-off-by: João Henrique Ferreira de Freitas <joaohf@gmail.com>
---
 documentation/kernel-dev/kernel-dev-common.xml | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation/kernel-dev/kernel-dev-common.xml
index a152f9f..de04a39 100644
--- a/documentation/kernel-dev/kernel-dev-common.xml
+++ b/documentation/kernel-dev/kernel-dev-common.xml
@@ -342,32 +342,25 @@
                         <literallayout class='monospaced'>
      $ bitbake linux-yocto -c kernel_configme -f
                         </literallayout></para></listitem>
-                    <listitem><para>Copy and rename the resulting
-                        <filename>.config</filename> file (e.g.
-                        <filename>config.orig</filename>).
-                        </para></listitem>
                     <listitem><para>Run the <filename>menuconfig</filename>
                         command:
                         <literallayout class='monospaced'>
      $ bitbake linux-yocto -c menuconfig
                         </literallayout></para></listitem>
-                    <listitem><para>Prepare a configuration fragment based on
-                        the differences between the two files.
-                        </para></listitem>
+                    <listitem><para>Run the <filename>diffconfig</filename>
+                        command to prepare a configuration fragment.
+                        The result file <filename>fragment.cfg</filename> will be placed in
+                        <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename> directory:
+                        <literallayout class='monospaced'>
+     $ bitbake linux-yocto -c diffconfig
+                        </literallayout></para></listitem>
                 </orderedlist>
             </para>
 
             <para>
-                Ultimately, the configuration fragment file needs to be a
+                The <filename>diffconfig</filename> command creates a file that is a
                 list of Linux kernel <filename>CONFIG_</filename> assignments.
-                It cannot be in <filename>diff</filename> format.
-                Here is an example of a command that creates your
-                configuration fragment file.
-                Regardless of the exact command you use, plan on reviewing
-                the output as you can usually remove some of the defaults:
-                <literallayout class='monospaced'>
-     $ diff -Nurp config.orig .config | sed -n "s/^\+//p" > frag.cfg
-                </literallayout>
+
                 See the "<link linkend='changing-the-configuration'>Changing the Configuration</link>"
                 section for information on how to use the output as a
                 configuration fragment.
-- 
1.8.3.2


