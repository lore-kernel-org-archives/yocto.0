Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB8DBE003E4; Mon,  6 Aug 2018 04:35:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 014A0E0034A
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2018 04:35:52 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id w24-v6so13922286wmc.1
	for <yocto@yoctoproject.org>; Mon, 06 Aug 2018 04:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ejbrs54BHqwwGr5OZJebrfuwvg+ZXLp64cSuOOffKeA=;
	b=pkJyFxg6EUNMf+OnKrN/6CumoASek7hH6B/7I0IdYhHirV964K0OCWJhtH8PrMmwlZ
	1ZX2xJvb49d3ffKCxIjnYS+k+Abonc98RG4frqAKVpN6rGXiW8RYzMa6aJ0Xvn0YxnFk
	Y6bxep3UEFVi1/JF12mvQ5dHjRjQ2eEg1RoKJjb4nMFWWDP8LML96c9u7Cueuw+ftYyr
	tCTRmfTdkzhW9kMxtBkcaM1Cz1fEkhEh1aZLX46EBfbAnX8YCvzcDtKbbgnCTqtOE8bA
	7G5zV96sGYq10iIxspsTF7ze8WeyKK1Vv6Ohu/8HWSiMuQlsiaJO7yQDnI/C88VlVSFG
	xG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ejbrs54BHqwwGr5OZJebrfuwvg+ZXLp64cSuOOffKeA=;
	b=V3DF7dqDJeMh5mzexta9B0kc3VDKqzhOdYm2S2H3P4UtsIK8RgaJTrH72QrWxlwgQ3
	ZJ1ZE+YyGjRr6pyGs8prms8MohCP9LaLRqewPUlNHOLJj10L40l4oXcDewxDjauKQOsw
	fa8bYnx1FCjGW/2cYHdV5V12UkNcikl/coggYRxiaPdKQ5i+SciEWMtGMdi/Px8kIAD1
	sWA4cor5sy/5r98ItXKjVN5Vd3w98LvEU6goTR+MzWlsPf7FgaCgtLUAsmoseyiZHyGN
	Jw2ifAp92NXzj594Lzd7f+OJ4j0m2TBb5BUBn89pgSGUKQQD/xIuijcCNxv8EQQ/KcqJ
	veuA==
X-Gm-Message-State: AOUpUlEhwq4bcowCgcfVVxk+hBZspFLrw5Ce5SqDIinxgrD7dW8qFRsE
	ecPJuxrM7nB/a5wJzKOk/jEI37lIXw==
X-Google-Smtp-Source: AAOMgpcVRk8w5HXtmK/n7AtLD5OB7qF/6lCMxN8yblLeGzL+/vJ/7OBypnQTIkQOHOIEdMO1ssryQw==
X-Received: by 2002:a1c:ca0f:: with SMTP id
	a15-v6mr11037552wmg.102.1533555351950; 
	Mon, 06 Aug 2018 04:35:51 -0700 (PDT)
Received: from localhost.localdomain (64.196.28.37.rev.vodafone.pt.
	[37.28.196.64]) by smtp.gmail.com with ESMTPSA id
	i15-v6sm9874580wro.7.2018.08.06.04.35.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 06 Aug 2018 04:35:51 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Aug 2018 13:34:54 +0200
Message-Id: <1533555294-11187-1-git-send-email-ptsneves@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto-docs] documentation: Updated testimage targets.
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
X-List-Received-Date: Mon, 06 Aug 2018 11:35:53 -0000

The documentation of available names for TEST_TARGET have
been updated to match the convention of using the
class names of controllers.

Signed-off-by: Paulo Neves <ptsneves@gmail.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml |  8 ++++----
 documentation/ref-manual/ref-variables.xml           | 19 ++++---------------
 2 files changed, 8 insertions(+), 19 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 0cb967f..2fcdad0 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -11400,7 +11400,7 @@
                             within a separately started QEMU or any
                             other virtual machine manager.
                             </para></listitem>
-                        <listitem><para><emphasis>"Systemd-bootTarget":</emphasis>
+                        <listitem><para><emphasis>"SystemdbootTarget":</emphasis>
                             Choose "Systemd-bootTarget" if your hardware is
                             an EFI-based machine with
                             <filename>systemd-boot</filename> as bootloader and
@@ -11459,10 +11459,10 @@
             </section>
 
             <section id='selecting-systemd-boottarget'>
-                <title>Selecting Systemd-bootTarget</title>
+                <title>Selecting SystemdbootTarget</title>
 
                 <para>
-                    If you did not set <filename>TEST_TARGET</filename> to
+                    If you did not set <filename>TEST_TARG
                     "Systemd-bootTarget", then you do not need any information
                     in this section.
                     You can skip down to the
@@ -11472,7 +11472,7 @@
 
                 <para>
                     If you did set <filename>TEST_TARGET</filename> to
-                    "Systemd-bootTarget", you also need to perform a one-time
+                    "SystemdbootTarget", you also need to perform a one-time
                     setup of your master image by doing the following:
                     <orderedlist>
                         <listitem><para><emphasis>Set <filename>EFI_PROVIDER</filename>:</emphasis>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 2465553..a61fee6 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -15162,35 +15162,24 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     You can provide the following arguments with
                     <filename>TEST_TARGET</filename>:
                     <itemizedlist>
-                        <listitem><para><emphasis>"qemu" and "QemuTarget":</emphasis>
+                        <listitem><para><emphasis>"QemuTarget":</emphasis>
                             Boots a QEMU image and runs the tests.
                             See the
                             "<ulink url='&YOCTO_DOCS_DEV_URL;#qemu-image-enabling-tests'>Enabling Runtime Tests on QEMU</ulink>"
                             section in the Yocto Project Development Tasks
                             Manual for more information.
                             </para></listitem>
-                        <listitem><para><emphasis>"simpleremote" and "SimpleRemoteTarget":</emphasis>
+                        <listitem><para><emphasis>"SimpleRemoteTarget":</emphasis>
                             Runs the tests on target hardware that is already
                             up and running.
                             The hardware can be on the network or it can be
                             a device running an image on QEMU.
                             You must also set
                             <link linkend='var-TEST_TARGET_IP'><filename>TEST_TARGET_IP</filename></link>
-                            when you use "simpleremote" or "SimpleRemoteTarget".
+                            when you use "SimpleRemoteTarget".
                             <note>
                                 This argument is defined in
-                                <filename>meta/lib/oeqa/targetcontrol.py</filename>.
-                                The small caps names are kept for compatibility
-                                reasons.
-                            </note>
-                            </para></listitem>
-                        <listitem><para><emphasis>"GummibootTarget":</emphasis>
-                            Automatically deploys and runs tests on an
-                            EFI-enabled machine that has a master image
-                            installed.
-                            <note>
-                                This argument is defined in
-                                <filename>meta/lib/oeqa/controllers/masterimage.py</filename>.
+                                <filename>meta/lib/oeqa/controllers/simpleremote.py</filename>.
                             </note>
                             </para></listitem>
                     </itemizedlist>
-- 
2.7.4


