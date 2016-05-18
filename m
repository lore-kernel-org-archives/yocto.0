Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBC20E00E1E; Tue, 17 May 2016 22:34:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C00BE00E19
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 22:34:10 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2614.sfr.fr (SMTP Server) with ESMTP id F0A6F1C000835;
	Wed, 18 May 2016 07:34:09 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2614.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 07:34:07 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 13:33:45 +0800
Message-Id: <1463549625-58594-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463549625-58594-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463549625-58594-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
X-sfr-mailing: LEGIT
Subject: [matchbox-keyboard][PATCH 1/1] Addition of french keyboard
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
X-List-Received-Date: Wed, 18 May 2016 05:34:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 layouts/Makefile.am     |   2 +-
 layouts/keyboard-fr.xml | 343 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 344 insertions(+), 1 deletion(-)
 create mode 100644 layouts/keyboard-fr.xml

diff --git a/layouts/Makefile.am b/layouts/Makefile.am
index b439041..ed40256 100644
--- a/layouts/Makefile.am
+++ b/layouts/Makefile.am
@@ -1,4 +1,4 @@
 keyboardsdir = $(datadir)/matchbox-keyboard
 dist_keyboards_DATA = keyboard.xml keyboard-extended.xml keyboard-dvorak.xml \
 		      keyboard-us.xml keyboard-ru.xml keyboard-fi.xml        \
-		      keyboard-numpad.xml
+		      keyboard-fr.xml keyboard-numpad.xml
diff --git a/layouts/keyboard-fr.xml b/layouts/keyboard-fr.xml
new file mode 100644
index 0000000..da8f3fe
--- /dev/null
+++ b/layouts/keyboard-fr.xml
@@ -0,0 +1,343 @@
+<?xml version="1.0" encoding="UTF-8"?>
+<keyboard>
+
+<!--
+
+ FR keyboard layout by Herve Jourdain <herve.jourdain@neuf.fr>
+
+-->
+
+<options>
+<!-- not yet implemented -->
+</options>
+
+<layout id="default keyboard">
+
+  <row>
+    <space width="500" extended="true"/>
+
+    <key fill="true">
+	  <default display="Esc" action="escape" />
+    </key>
+    <key>
+	  <default display="²" />
+	  <shifted display="³" />
+    </key>
+    <key>
+	  <default display="&amp;" />
+	  <shifted display="1" />
+    </key>
+    <key>
+	  <default display="é" />
+	  <shifted display='2' />
+	  <mod1 display='~' />
+	  <caps display="É" />
+    </key>
+    <key>
+	  <default display="&quot;" />
+	  <shifted display="3" />
+	  <mod1 display="#" />
+    </key>
+    <key>
+	  <default display="'" />
+	  <shifted display="4" />
+	  <mod1 display="{" />
+    </key>
+    <key>
+	  <default display="(" />
+	  <shifted display="5" />
+	  <mod1 display="[" />
+    </key>
+    <key>
+	  <default display="-" />
+	  <shifted display="6" />
+	  <mod1 display="|" />
+    </key>
+    <key>
+	  <default display="è" />
+	  <shifted display="7" />
+	  <mod1 display='`' />
+	  <caps display="È" />
+    </key>
+    <key>
+	  <default display="_" />
+	  <shifted display="8" />
+	  <mod1 display='\' />
+    </key>
+    <key>
+	  <default display="ç" />
+	  <shifted display="9" />
+	  <mod1 display='^' />
+	  <caps display="Ç" />
+    </key>
+    <key>
+	  <default display="à" />
+	  <shifted display="0" />
+	  <mod1 display='@' />
+	  <caps display="À" />
+    </key>
+    <key>
+	  <default display=")" />
+	  <shifted display="°" />
+	  <mod1 display="]" />
+    </key>
+    <key>
+	  <default display="=" />
+	  <shifted display="+" />
+	  <mod1 display="}" />
+    </key>
+    <key>
+	  <default display="*" />
+	  <shifted display="µ" />
+    </key>
+
+    <key fill="true">
+	  <default display="Suppr" action="backspace"/>
+    </key>
+
+    <space width="500" extended="true"/>
+
+    <key width="4000"  extended="true">
+	  <default display="Début" action="home"/>
+    </key>
+    <key width="4000"  extended="true">
+	  <default display="Préc" action="pageup"/>
+    </key>
+
+    <space width="500" extended="true"/>
+  </row>
+
+  <row>
+    <space width="500" extended="true"/>
+
+    <key fill="true">
+	  <default display="Tab" action="tab"/>
+    </key>
+    <key obey-caps='true'>
+	  <default display="a" />
+	  <shifted display="A" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="z" />
+	  <shifted display="Z" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="e" />
+	  <shifted display="E" />
+	  <mod1 display="€" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="r" />
+	  <shifted display="R" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="t" />
+	  <shifted display="T" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="y" />
+	  <shifted display="Y" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="u" />
+	  <shifted display="U" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="i" />
+	  <shifted display="I" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="o" />
+	  <shifted display="O" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="p" />
+	  <shifted display="P" />
+    </key>
+    <key>
+	  <default display="^" action="xkeysym:dead_circumflex"/>
+	  <shifted display="¨" action="xkeysym:dead_diaeresis"/>
+    </key>
+    <key>
+	  <default display="$" />
+	  <shifted display="£" />
+	  <mod1 display="ø" />
+    </key>
+    <key>
+	  <default display="Préc" action="pageup"/>
+    </key>
+    <key>
+	  <default display="Suiv" action="pagedown"/>
+    </key>
+
+    <space width="500" extended="true"/>
+
+    <key width="4000"  extended="true">
+	  <default display="Fin" action="end"/>
+    </key>
+    <key width="4000"  extended="true">
+	  <default display="Suiv" action="pagedown"/>
+    </key>
+
+    <space width="500" extended="true"/>
+  </row>
+
+  <row>
+    <space width="500" extended="true"/>
+
+    <key fill="true">
+	  <default display="Caps" action="modifier:caps"/>
+    </key>
+    <key obey-caps='true'>
+	  <default display="q" />
+	  <shifted display="Q" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="s" />
+	  <shifted display="S" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="d" />
+	  <shifted display="D" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="f" />
+	  <shifted display="F" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="g" />
+	  <shifted display="G" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="h" />
+	  <shifted display="H" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="j" />
+	  <shifted display="J" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="k" />
+	  <shifted display="K" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="l" />
+	  <shifted display="L" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="m" />
+	  <shifted display="M" />
+    </key>
+    <key>
+	  <default display="ù" />
+	  <shifted display="%" />
+	  <caps display="Ù" />
+    </key>
+    <key fill="true">
+	  <default display="Entrée" action="return"/>
+    </key>
+
+    <space width="500" extended="true"/>
+    <space width="4000"  extended="true" />
+    <space width="4000"  extended="true" />
+    <space width="500" extended="true"/>
+  </row>
+
+  <row>
+    <space width="500" extended="true"/>
+
+    <key fill="true">
+	  <default display="Maj" action="modifier:shift"/>
+    </key>
+    <key>
+	  <default display="&lt;" />
+	  <shifted display="&gt;" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="w" />
+	  <shifted display="W" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="x" />
+	  <shifted display="X" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="c" />
+	  <shifted display="C" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="v" />
+	  <shifted display="V" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="b" />
+	  <shifted display="B" />
+    </key>
+    <key obey-caps='true'>
+	  <default display="n" />
+	  <shifted display="N" />
+    </key>
+    <key>
+	  <default display="," />
+	  <shifted display="?" />
+    </key>
+    <key>
+	  <default display=";" />
+	  <shifted display="." />
+    </key>
+    <key>
+	  <default display=":" />
+	  <shifted display="/" />
+    </key>
+    <key>
+	  <default display="!" />
+	  <shifted display="§" />
+    </key>
+    <key fill="true">
+	  <default display="Maj" action="modifier:shift"/>
+    </key>
+
+    <space width="500" extended="true"/>
+    <space width="4000"  extended="true" />
+    <space width="4000"  extended="true" />
+    <space width="500" extended="true"/>
+  </row>
+
+  <row>
+    <space width="500" extended="true"/>
+
+    <key fill="true">
+	  <default display="Ctrl" action="modifier:ctrl"/>
+    </key>
+    <key>
+	  <default display="Alt" action="modifier:alt"/>
+    </key>
+    <key width="12000">
+	  <default display=" " action="space" />
+    </key>
+    <key>
+	  <default display="AGR" action="modifier:mod1"/>
+    </key>
+
+    <key>
+	  <default display="&#x2191;" action="up" />
+    </key>
+    <key>
+	  <default display="&#x2193;" action="down" />
+    </key>
+    <key>
+	  <default display="&#x2190;" action="left" />
+    </key>
+    <key>
+	  <default display="&#x2192;" action="right" />
+    </key>
+
+    <space width="500" extended="true"/>
+    <space width="4000"  extended="true" />
+    <space width="4000"  extended="true" />
+    <space width="500" extended="true"/>
+  </row>
+
+</layout>
+
+</keyboard>
-- 
2.7.4


