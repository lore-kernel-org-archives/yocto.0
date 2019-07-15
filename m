Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C61E00D11; Mon, 15 Jul 2019 01:44:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43816E00D11
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 01:44:12 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45nHBf6shmz6c;
	Mon, 15 Jul 2019 10:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1563180251;
	bh=0M7J2nUtRX6TW1Nr7SGV1fse39Hzuf441RbxR1XRtWI=;
	h=From:To:Cc:Subject:Date:From;
	b=J1WbWtBerhGjEoxh8KuQt0N6nuDferjLXsPeWzlz8RpxssdTPUje/c9SLI2OOjpjg
	7xghnTyLyw5EesFOhkEzHAqmVFVP5GQb1iVaUyg4P3pyxbILzWtGNsCOp0JcqtBTVY
	DlX54ASdyTH99cnQAN5+UuqsTR9OGMQIMisMn0mvQv1uhZeXkiregpJ4Uo1AgaFGzE
	6fqE+ZNnWNXHhaewpx6uMaWJJo+XkDe09pE7+6H43W4KHcwcu0TNPGEyveRoUEdSfm
	algiFZrkomLI7dEpAensKL/8KnWbT+t99eCSML9VQSuCznJUoRcLDZwSg2of6eVuYL
	IQk/8Zld0UY7eqxSxqR2PUy8XrBh4ANyjhcH0ftwHkJo2U2G1Ooye+MZtw60yqYGsK
	9ASBvUwHuuQjP653X5JEeDsfZD/vzKo6/msh9zUiImCcWcvDeh2S7bfDdisB/+zJQg
	LP5uGvn3SNIoPyHdCiJ6OrG0Vng9WM4ohbwyKXl6hBQ4n+yoTEyPmxL/ydgq/Ms0mx
	waQ0C8clCj+lTV6iMcwZw6NjlGZXhhxSi+UZCfu1ky62hrruU2TVaCOeowVek3gXEV
	Li892v5J89bgfQo6NY8PsyETZPJ7T25xIX6eD7/hQyl9jhloUxsDBtGFk8VXShw8LE
	SHE3LiONqoqZ3NDq92nrysBw=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Mon, 15 Jul 2019 11:44:10 +0300
Message-Id: <20190715084410.12496-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [yocto-docs][PATCH] ref-manual: Remove documentation for the removed bluez5 distro feature
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
X-List-Received-Date: Mon, 15 Jul 2019 08:44:13 -0000

bluez4 was removed even from meta-oe 2 years ago,
which made made the bluez5 feature for selecting between
bluez4 and bluez5 mandatory for using the bluetooth feature.

The backfilled bluez5 feature has been removed,
including the bluetooth class that helped recipes
for selecting between bluez4/bluez5.
Recipes can replace ${BLUEZ} with bluez5.

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 documentation/ref-manual/ref-classes.xml  | 17 -----------------
 documentation/ref-manual/ref-features.xml | 21 ---------------------
 2 files changed, 38 deletions(-)

diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index ece47e757b..37619e382d 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -318,23 +318,6 @@
     </para>
 </section>
 
-<section id='ref-classes-bluetooth'>
-    <title><filename>bluetooth.bbclass</filename></title>
-
-    <para>
-        The <filename>bluetooth</filename> class defines a variable that
-        expands to the recipe (package) providing core
-        bluetooth support on the platform.
-    </para>
-
-    <para>
-        For details on how the class works, see the
-        <filename>meta/classes/bluetooth.bbclass</filename> file in the Yocto
-        Project
-        <link linkend='source-directory'>Source Directory</link>.
-    </para>
-</section>
-
 <section id='ref-classes-buildhistory'>
     <title><filename>buildhistory.bbclass</filename></title>
 
diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-manual/ref-features.xml
index b057d2d040..44ba67cf50 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -154,27 +154,6 @@
                     </para></listitem>
                 <listitem><para><emphasis>bluetooth:</emphasis> Include
                     bluetooth support (integrated BT only).</para></listitem>
-                <listitem><para><emphasis>bluez5:</emphasis> Include
-                    BlueZ Version 5, which provides core Bluetooth layers and
-                    protocols support.
-                    <note>
-                        The default value for the
-                        <filename>DISTRO FEATURES</filename> variable includes
-                        "bluetooth", which causes bluez5 to be backfilled in
-                        for bluetooth support.
-                        If you do not want bluez5 backfilled and would rather
-                        use bluez4, you need to use the
-                        <link linkend='var-DISTRO_FEATURES_BACKFILL_CONSIDERED'><filename>DISTRO_FEATURES_BACKFILL_CONSIDERED</filename></link>
-                        variable as follows:
-                        <literallayout class='monospaced'>
-     DISTRO_FEATURES_BACKFILL_CONSIDERED = "bluez5"
-                        </literallayout>
-                        Setting this variable tells the OpenEmbedded build
-                        system that you have considered but ruled
-                        out using the bluez5 feature and that bluez4 will be
-                        used.
-                    </note>
-                    </para></listitem>
                 <listitem><para><emphasis>cramfs:</emphasis> Include CramFS
                     support.</para></listitem>
                 <listitem><para><emphasis>directfb:</emphasis>
-- 
2.17.1


