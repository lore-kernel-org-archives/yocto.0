Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F03FE00CB8; Wed, 18 May 2016 01:35:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	T_FILL_THIS_FORM_SHORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A38E00E23
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 01:35:29 -0700 (PDT)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2627.sfr.fr (SMTP Server) with ESMTP id 863931C000812;
	Wed, 18 May 2016 10:35:28 +0200 (CEST)
Received: from localhost.localdomain (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2627.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 10:35:26 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 16:34:59 +0800
Message-Id: <1463560499-60284-2-git-send-email-herve.jourdain@neuf.fr>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1463560499-60284-1-git-send-email-herve.jourdain@neuf.fr>
References: <1463560499-60284-1-git-send-email-herve.jourdain@neuf.fr>
X-sfr-mailing: LEGIT
MIME-Version: 1.0
Subject: [matchbox-keyboard][PATCH v2 1/1] Support of "caps" tag
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
X-List-Received-Date: Wed, 18 May 2016 08:35:30 -0000

This patch allows the support of a "caps" tag, that defines the value of the key when the CAPS action modifier is in effect.
This feature is needed for the french keyboard - at least - in order to handle the uppercase accented letters, that are the ones accessible when caps is on, for some keys.
There is no impact when the tag is not used in the xml description of the layout, therefore there should be no impact on keyboards not using this tag.
Tests have been done using sato.

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 src/config-parser.c                      |  5 +++++
 src/matchbox-keyboard-key.c              | 11 ++++++++---
 src/matchbox-keyboard-ui-cairo-backend.c | 10 +++++++---
 src/matchbox-keyboard-ui-xft-backend.c   | 10 +++++++---
 src/matchbox-keyboard.c                  |  3 +++
 src/matchbox-keyboard.h                  |  1 +
 6 files changed, 31 insertions(+), 9 deletions(-)

diff --git a/src/config-parser.c b/src/config-parser.c
index 15a973e..13ee6d6 100644
--- a/src/config-parser.c
+++ b/src/config-parser.c
@@ -326,6 +326,10 @@ config_handle_key_subtag(MBKeyboardConfigState *state,
     {
       keystate = MBKeyboardKeyStateShifted;
     }
+  else if (streq(tag, "caps"))
+    {
+      keystate = MBKeyboardKeyStateCaps;
+    }
   else if (streq(tag, "mod1"))
     {
       keystate = MBKeyboardKeyStateMod1;
@@ -548,6 +552,7 @@ config_xml_start_cb(void *data, const char *tag, const char **attr)
   else if (streq(tag, "normal") 
 	   || streq(tag, "default")
 	   || streq(tag, "shifted")
+	   || streq(tag, "caps")
 	   || streq(tag, "mod1")
 	   || streq(tag, "mod2")
 	   || streq(tag, "mod3"))
diff --git a/src/matchbox-keyboard-key.c b/src/matchbox-keyboard-key.c
index 0555c9c..c086fbe 100644
--- a/src/matchbox-keyboard-key.c
+++ b/src/matchbox-keyboard-key.c
@@ -413,9 +413,13 @@ mb_kbd_key_press(MBKeyboardKey *key)
 
   state = mb_kbd_keys_current_state(key->kbd);
 
-  if (mb_kbd_has_state(key->kbd, MBKeyboardStateCaps)
-      && mb_kbd_key_get_obey_caps(key))
-    state = MBKeyboardKeyStateShifted;
+  if (mb_kbd_has_state(key->kbd, MBKeyboardStateCaps))
+  {
+    if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
+      state = MBKeyboardKeyStateCaps;
+    else if (mb_kbd_key_get_obey_caps(key))
+      state = MBKeyboardKeyStateShifted;
+  }
 
   /* XXX below fakekey mods probably better in ui */
 
@@ -616,6 +620,7 @@ mb_kbd_key_dump_key(MBKeyboardKey *key)
     {
       /* MBKeyboardKeyStateNormal  */ "Normal",
       /* MBKeyboardKeyStateShifted */ "Shifted" ,
+      /* MBKeyboardKeyStateCaps    */ "Caps" ,
       /* MBKeyboardKeyStateMod1,    */ "Mod1" ,
       /* MBKeyboardKeyStateMod2,    */ "Mod2" ,
       /* MBKeyboardKeyStateMod3,    */ "Mod3" 
diff --git a/src/matchbox-keyboard-ui-cairo-backend.c b/src/matchbox-keyboard-ui-cairo-backend.c
index 3b7a401..3f15ac8 100644
--- a/src/matchbox-keyboard-ui-cairo-backend.c
+++ b/src/matchbox-keyboard-ui-cairo-backend.c
@@ -174,9 +174,13 @@ mb_kbd_ui_cairo_redraw_key(MBKeyboardUI  *ui, MBKeyboardKey *key)
 
   state = mb_kbd_keys_current_state(kbd); 
 
-  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)
-      && mb_kbd_key_get_obey_caps(key))
-    state = MBKeyboardKeyStateShifted;
+  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
+    {
+      if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
+        state = MBKeyboardKeyStateCaps;
+      else if (mb_kbd_key_get_obey_caps(key))
+        state = MBKeyboardKeyStateShifted;
+    }
 
   if (!mb_kdb_key_has_state(key, state))
     {
diff --git a/src/matchbox-keyboard-ui-xft-backend.c b/src/matchbox-keyboard-ui-xft-backend.c
index 9a3c6d2..2790591 100644
--- a/src/matchbox-keyboard-ui-xft-backend.c
+++ b/src/matchbox-keyboard-ui-xft-backend.c
@@ -212,9 +212,13 @@ mb_kbd_ui_xft_redraw_key(MBKeyboardUI  *ui, MBKeyboardKey *key)
 
   state = mb_kbd_keys_current_state(kbd); 
 
-  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)
-      && mb_kbd_key_get_obey_caps(key))
-    state = MBKeyboardKeyStateShifted;
+  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
+    {
+      if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
+        state = MBKeyboardKeyStateCaps;
+      else if (mb_kbd_key_get_obey_caps(key))
+        state = MBKeyboardKeyStateShifted;
+    }
 
   if (!mb_kdb_key_has_state(key, state))
     {
diff --git a/src/matchbox-keyboard.c b/src/matchbox-keyboard.c
index 9f9bb7d..3ed98c0 100644
--- a/src/matchbox-keyboard.c
+++ b/src/matchbox-keyboard.c
@@ -200,6 +200,9 @@ mb_kbd_keys_current_state(MBKeyboard *kbd)
   if (mb_kbd_has_state(kbd, MBKeyboardStateShifted))
     return MBKeyboardKeyStateShifted;
 
+  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
+    return MBKeyboardKeyStateCaps;
+
   if (mb_kbd_has_state(kbd, MBKeyboardStateMod1))
     return MBKeyboardKeyStateMod1;
 
diff --git a/src/matchbox-keyboard.h b/src/matchbox-keyboard.h
index 4dd258f..430b08b 100644
--- a/src/matchbox-keyboard.h
+++ b/src/matchbox-keyboard.h
@@ -116,6 +116,7 @@ typedef enum
 {
   MBKeyboardKeyStateNormal = 0,
   MBKeyboardKeyStateShifted,
+  MBKeyboardKeyStateCaps,
   MBKeyboardKeyStateMod1,
   MBKeyboardKeyStateMod2,
   MBKeyboardKeyStateMod3,
-- 
2.7.4


