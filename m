Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE1DCE00CBB; Tue, 17 May 2016 23:03:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B2DE00C39
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 23:03:24 -0700 (PDT)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net [111.250.207.159])
	by msfrf2613.sfr.fr (SMTP Server) with ESMTP id 85C4E1C000C45;
	Wed, 18 May 2016 08:03:23 +0200 (CEST)
Received: from nbhjo (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2613.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 08:03:16 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <1463478209-57439-1-git-send-email-herve.jourdain@neuf.fr>
	<1463478209-57439-2-git-send-email-herve.jourdain@neuf.fr>
	<CAJTo0LaKn2-9VoctHeaGSRJL=XJz9XoFM_TQ5q2JQvie_RC4tA@mail.gmail.com>
In-Reply-To: <CAJTo0LaKn2-9VoctHeaGSRJL=XJz9XoFM_TQ5q2JQvie_RC4tA@mail.gmail.com>
Date: Wed, 18 May 2016 08:03:08 +0200
Message-ID: <013e01d1b0ca$fa977f90$efc67eb0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQI+FHEEIA8KGT4PqjIWYq6LxsYk6AFZcuPNAjBVhWCeyRwq4A==
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [matchbox-keyboard][PATCH 1/1] Addition of french keyboard
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
X-List-Received-Date: Wed, 18 May 2016 06:03:31 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_013F_01D1B0DB.BE249550"
Content-Language: fr

------=_NextPart_000_013F_01D1B0DB.BE249550
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

=20

I=E2=80=99ve just re-submitted the patches against the =
matchbox-keyboard-0-1 branch, please let me know if I missed anything =
while doing that.

=20

I believe you=E2=80=99re aware there is another patch, 1 line patch, by =
Jussi Kukkonen, applied to matchbox-keyboard, =
=E2=80=9C0001-desktop-file-Hide-the-keyboard-from-app-list.patch=E2=80=9D=
, that adds =E2=80=9CNoDisplay=3Dtrue=E2=80=9D to =
matchbox-keyboard.desktop.

Should anyone send it also as a patch to the branch, so it can be =
removed from the layer?

Similarly, shouldn=E2=80=99t the script 80matchboxkeyboard.sh be also =
added to the branch?

=20

Herve

=20

From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: mardi 17 mai 2016 14:14
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [matchbox-keyboard][PATCH 1/1] Addition of french =
keyboard

=20

Hi Herve,

=20

Can you submit the two patches (caps behaviour, and french layout) =
against the matchbox-keyboard-0.1 branch directly to this list please?  =
Then we can just bump the srcrev in the recipe instead of carrying =
patches against our own software.

=20

Ross

=20

On 17 May 2016 at 10:43, Herve Jourdain <herve.jourdain@neuf.fr =
<mailto:herve.jourdain@neuf.fr> > wrote:

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
---
 .../files/0002-add-french-keyboard.patch           | 477 =
+++++++++++++++++++++
 .../matchbox-keyboard/matchbox-keyboard_git.bb =
<http://matchbox-keyboard_git.bb>      |   1 +
 2 files changed, 478 insertions(+)
 create mode 100644 =
meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patch

diff --git =
a/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h =
b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h
new file mode 100644
index 0000000..c6dc5f7
--- /dev/null
+++ =
b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h
@@ -0,0 +1,477 @@
+diff --git a/layouts/Makefile.am b/layouts/Makefile.am
+index b439041..ed40256 100644
+--- a/layouts/Makefile.am
++++ b/layouts/Makefile.am
+@@ -1,4 +1,4 @@
+ keyboardsdir =3D $(datadir)/matchbox-keyboard
+ dist_keyboards_DATA =3D keyboard.xml keyboard-extended.xml =
keyboard-dvorak.xml \
+                     keyboard-us.xml keyboard-ru.xml keyboard-fi.xml    =
    \
+-                    keyboard-numpad.xml
++                    keyboard-fr.xml keyboard-numpad.xml
+diff --git a/layouts/keyboard-fr.xml b/layouts/keyboard-fr.xml
+--- a/layouts/keyboard-fr.xml
++++ b/layouts/keyboard-fr.xml
+@@ -0,0 +1,343 @@
++<?xml version=3D"1.0" encoding=3D"UTF-8"?>
++<keyboard>
++
++<!--
++
++ FR keyboard layout by Herve Jourdain <herve.jourdain@neuf.fr =
<mailto:herve.jourdain@neuf.fr> >
++
++-->
++
++<options>
++<!-- not yet implemented -->
++</options>
++
++<layout id=3D"default keyboard">
++
++  <row>
++    <space width=3D"500" extended=3D"true"/>
++
++    <key fill=3D"true">
++        <default display=3D"Esc" action=3D"escape" />
++    </key>
++    <key>
++        <default display=3D"=C2=B2" />
++        <shifted display=3D"=C2=B3" />
++    </key>
++    <key>
++        <default display=3D"&amp;" />
++        <shifted display=3D"1" />
++    </key>
++    <key>
++        <default display=3D"=C3=A9" />
++        <shifted display=3D'2' />
++        <mod1 display=3D'~' />
++        <caps display=3D"=C3=89" />
++    </key>
++    <key>
++        <default display=3D"&quot;" />
++        <shifted display=3D"3" />
++        <mod1 display=3D"#" />
++    </key>
++    <key>
++        <default display=3D"'" />
++        <shifted display=3D"4" />
++        <mod1 display=3D"{" />
++    </key>
++    <key>
++        <default display=3D"(" />
++        <shifted display=3D"5" />
++        <mod1 display=3D"[" />
++    </key>
++    <key>
++        <default display=3D"-" />
++        <shifted display=3D"6" />
++        <mod1 display=3D"|" />
++    </key>
++    <key>
++        <default display=3D"=C3=A8" />
++        <shifted display=3D"7" />
++        <mod1 display=3D'`' />
++        <caps display=3D"=C3=88" />
++    </key>
++    <key>
++        <default display=3D"_" />
++        <shifted display=3D"8" />
++        <mod1 display=3D'\' />
++    </key>
++    <key>
++        <default display=3D"=C3=A7" />
++        <shifted display=3D"9" />
++        <mod1 display=3D'^' />
++        <caps display=3D"=C3=87" />
++    </key>
++    <key>
++        <default display=3D"=C3=A0" />
++        <shifted display=3D"0" />
++        <mod1 display=3D'@' />
++        <caps display=3D"=C3=80" />
++    </key>
++    <key>
++        <default display=3D")" />
++        <shifted display=3D"=C2=B0" />
++        <mod1 display=3D"]" />
++    </key>
++    <key>
++        <default display=3D"=3D" />
++        <shifted display=3D"+" />
++        <mod1 display=3D"}" />
++    </key>
++    <key>
++        <default display=3D"*" />
++        <shifted display=3D"=C2=B5" />
++    </key>
++
++    <key fill=3D"true">
++        <default display=3D"Suppr" action=3D"backspace"/>
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++
++    <key width=3D"4000"  extended=3D"true">
++        <default display=3D"D=C3=A9but" action=3D"home"/>
++    </key>
++    <key width=3D"4000"  extended=3D"true">
++        <default display=3D"Pr=C3=A9c" action=3D"pageup"/>
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++  </row>
++
++  <row>
++    <space width=3D"500" extended=3D"true"/>
++
++    <key fill=3D"true">
++        <default display=3D"Tab" action=3D"tab"/>
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"a" />
++        <shifted display=3D"A" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"z" />
++        <shifted display=3D"Z" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"e" />
++        <shifted display=3D"E" />
++        <mod1 display=3D"=E2=82=AC" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"r" />
++        <shifted display=3D"R" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"t" />
++        <shifted display=3D"T" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"y" />
++        <shifted display=3D"Y" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"u" />
++        <shifted display=3D"U" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"i" />
++        <shifted display=3D"I" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"o" />
++        <shifted display=3D"O" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"p" />
++        <shifted display=3D"P" />
++    </key>
++    <key>
++        <default display=3D"^" action=3D"xkeysym:dead_circumflex"/>
++        <shifted display=3D"=C2=A8" =
action=3D"xkeysym:dead_diaeresis"/>
++    </key>
++    <key>
++        <default display=3D"$" />
++        <shifted display=3D"=C2=A3" />
++        <mod1 display=3D"=C3=B8" />
++    </key>
++    <key>
++        <default display=3D"Pr=C3=A9c" action=3D"pageup"/>
++    </key>
++    <key>
++        <default display=3D"Suiv" action=3D"pagedown"/>
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++
++    <key width=3D"4000"  extended=3D"true">
++        <default display=3D"Fin" action=3D"end"/>
++    </key>
++    <key width=3D"4000"  extended=3D"true">
++        <default display=3D"Suiv" action=3D"pagedown"/>
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++  </row>
++
++  <row>
++    <space width=3D"500" extended=3D"true"/>
++
++    <key fill=3D"true">
++        <default display=3D"Caps" action=3D"modifier:caps"/>
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"q" />
++        <shifted display=3D"Q" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"s" />
++        <shifted display=3D"S" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"d" />
++        <shifted display=3D"D" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"f" />
++        <shifted display=3D"F" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"g" />
++        <shifted display=3D"G" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"h" />
++        <shifted display=3D"H" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"j" />
++        <shifted display=3D"J" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"k" />
++        <shifted display=3D"K" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"l" />
++        <shifted display=3D"L" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"m" />
++        <shifted display=3D"M" />
++    </key>
++    <key>
++        <default display=3D"=C3=B9" />
++        <shifted display=3D"%" />
++        <caps display=3D"=C3=99" />
++    </key>
++    <key fill=3D"true">
++        <default display=3D"Entr=C3=A9e" action=3D"return"/>
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++    <space width=3D"4000"  extended=3D"true" />
++    <space width=3D"4000"  extended=3D"true" />
++    <space width=3D"500" extended=3D"true"/>
++  </row>
++
++  <row>
++    <space width=3D"500" extended=3D"true"/>
++
++    <key fill=3D"true">
++        <default display=3D"Maj" action=3D"modifier:shift"/>
++    </key>
++    <key>
++        <default display=3D"&lt;" />
++        <shifted display=3D"&gt;" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"w" />
++        <shifted display=3D"W" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"x" />
++        <shifted display=3D"X" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"c" />
++        <shifted display=3D"C" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"v" />
++        <shifted display=3D"V" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"b" />
++        <shifted display=3D"B" />
++    </key>
++    <key obey-caps=3D'true'>
++        <default display=3D"n" />
++        <shifted display=3D"N" />
++    </key>
++    <key>
++        <default display=3D"," />
++        <shifted display=3D"?" />
++    </key>
++    <key>
++        <default display=3D";" />
++        <shifted display=3D"." />
++    </key>
++    <key>
++        <default display=3D":" />
++        <shifted display=3D"/" />
++    </key>
++    <key>
++        <default display=3D"!" />
++        <shifted display=3D"=C2=A7" />
++    </key>
++    <key fill=3D"true">
++        <default display=3D"Maj" action=3D"modifier:shift"/>
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++    <space width=3D"4000"  extended=3D"true" />
++    <space width=3D"4000"  extended=3D"true" />
++    <space width=3D"500" extended=3D"true"/>
++  </row>
++
++  <row>
++    <space width=3D"500" extended=3D"true"/>
++
++    <key fill=3D"true">
++        <default display=3D"Ctrl" action=3D"modifier:ctrl"/>
++    </key>
++    <key>
++        <default display=3D"Alt" action=3D"modifier:alt"/>
++    </key>
++    <key width=3D"12000">
++        <default display=3D" " action=3D"space" />
++    </key>
++    <key>
++        <default display=3D"AGR" action=3D"modifier:mod1"/>
++    </key>
++
++    <key>
++        <default display=3D"&#x2191;" action=3D"up" />
++    </key>
++    <key>
++        <default display=3D"&#x2193;" action=3D"down" />
++    </key>
++    <key>
++        <default display=3D"&#x2190;" action=3D"left" />
++    </key>
++    <key>
++        <default display=3D"&#x2192;" action=3D"right" />
++    </key>
++
++    <space width=3D"500" extended=3D"true"/>
++    <space width=3D"4000"  extended=3D"true" />
++    <space width=3D"4000"  extended=3D"true" />
++    <space width=3D"500" extended=3D"true"/>
++  </row>
++
++</layout>
++
++</keyboard>
+diff --git a/src/matchbox-keyboard.h b/src/matchbox-keyboard.h
+index 4dd258f..430b08b 100644
+--- a/src/matchbox-keyboard.h
++++ b/src/matchbox-keyboard.h
+@@ -116,6 +116,7 @@ typedef enum
+ {
+   MBKeyboardKeyStateNormal =3D 0,
+   MBKeyboardKeyStateShifted,
++  MBKeyboardKeyStateCaps,
+   MBKeyboardKeyStateMod1,
+   MBKeyboardKeyStateMod2,
+   MBKeyboardKeyStateMod3,
+diff --git a/src/matchbox-keyboard.c b/src/matchbox-keyboard.c
+index 9f9bb7d..3ed98c0 100644
+--- a/src/matchbox-keyboard.c
++++ b/src/matchbox-keyboard.c
+@@ -200,6 +200,9 @@ mb_kbd_keys_current_state(MBKeyboard *kbd)
+   if (mb_kbd_has_state(kbd, MBKeyboardStateShifted))
+     return MBKeyboardKeyStateShifted;
+
++  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
++    return MBKeyboardKeyStateCaps;
++
+   if (mb_kbd_has_state(kbd, MBKeyboardStateMod1))
+     return MBKeyboardKeyStateMod1;
+
+diff --git a/src/matchbox-keyboard-key.c b/src/matchbox-keyboard-key.c
+index 0555c9c..c086fbe 100644
+--- a/src/matchbox-keyboard-key.c
++++ b/src/matchbox-keyboard-key.c
+@@ -413,9 +413,13 @@ mb_kbd_key_press(MBKeyboardKey *key)
+
+   state =3D mb_kbd_keys_current_state(key->kbd);
+
+-  if (mb_kbd_has_state(key->kbd, MBKeyboardStateCaps)
+-      && mb_kbd_key_get_obey_caps(key))
+-    state =3D MBKeyboardKeyStateShifted;
++  if (mb_kbd_has_state(key->kbd, MBKeyboardStateCaps))
++  {
++    if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
++      state =3D MBKeyboardKeyStateCaps;
++    else if (mb_kbd_key_get_obey_caps(key))
++      state =3D MBKeyboardKeyStateShifted;
++  }
+
+   /* XXX below fakekey mods probably better in ui */
+
+@@ -616,6 +620,7 @@ mb_kbd_key_dump_key(MBKeyboardKey *key)
+     {
+       /* MBKeyboardKeyStateNormal  */ "Normal",
+       /* MBKeyboardKeyStateShifted */ "Shifted" ,
++      /* MBKeyboardKeyStateCaps    */ "Caps" ,
+       /* MBKeyboardKeyStateMod1,    */ "Mod1" ,
+       /* MBKeyboardKeyStateMod2,    */ "Mod2" ,
+       /* MBKeyboardKeyStateMod3,    */ "Mod3"
+diff --git a/src/config-parser.c b/src/config-parser.c
+index 15a973e..13ee6d6 100644
+--- a/src/config-parser.c
++++ b/src/config-parser.c
+@@ -326,6 +326,10 @@ config_handle_key_subtag(MBKeyboardConfigState =
*state,
+     {
+       keystate =3D MBKeyboardKeyStateShifted;
+     }
++  else if (streq(tag, "caps"))
++    {
++      keystate =3D MBKeyboardKeyStateCaps;
++    }
+   else if (streq(tag, "mod1"))
+     {
+       keystate =3D MBKeyboardKeyStateMod1;
+@@ -548,6 +552,7 @@ config_xml_start_cb(void *data, const char *tag, =
const char **attr)
+   else if (streq(tag, "normal")
+          || streq(tag, "default")
+          || streq(tag, "shifted")
++         || streq(tag, "caps")
+          || streq(tag, "mod1")
+          || streq(tag, "mod2")
+          || streq(tag, "mod3"))
+diff --git a/src/matchbox-keyboard-ui-cairo-backend.c =
b/src/matchbox-keyboard-ui-cairo-backend.c
+index 3b7a401..3f15ac8 100644
+--- a/src/matchbox-keyboard-ui-cairo-backend.c
++++ b/src/matchbox-keyboard-ui-cairo-backend.c
+@@ -174,9 +174,13 @@ mb_kbd_ui_cairo_redraw_key(MBKeyboardUI  *ui, =
MBKeyboardKey *key)
+
+   state =3D mb_kbd_keys_current_state(kbd);
+
+-  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)
+-      && mb_kbd_key_get_obey_caps(key))
+-    state =3D MBKeyboardKeyStateShifted;
++  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
++    {
++      if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
++        state =3D MBKeyboardKeyStateCaps;
++      else if (mb_kbd_key_get_obey_caps(key))
++        state =3D MBKeyboardKeyStateShifted;
++    }
+
+   if (!mb_kdb_key_has_state(key, state))
+     {
+diff --git a/src/matchbox-keyboard-ui-xft-backend.c =
b/src/matchbox-keyboard-ui-xft-backend.c
+index 9a3c6d2..2790591 100644
+--- a/src/matchbox-keyboard-ui-xft-backend.c
++++ b/src/matchbox-keyboard-ui-xft-backend.c
+@@ -212,9 +212,13 @@ mb_kbd_ui_xft_redraw_key(MBKeyboardUI  *ui, =
MBKeyboardKey *key)
+
+   state =3D mb_kbd_keys_current_state(kbd);
+
+-  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)
+-      && mb_kbd_key_get_obey_caps(key))
+-    state =3D MBKeyboardKeyStateShifted;
++  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
++    {
++      if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
++        state =3D MBKeyboardKeyStateCaps;
++      else if (mb_kbd_key_get_obey_caps(key))
++        state =3D MBKeyboardKeyStateShifted;
++    }
+
+   if (!mb_kdb_key_has_state(key, state))
+     {
diff --git =
a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb =
<http://matchbox-keyboard_git.bb>  =
b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb =
<http://matchbox-keyboard_git.bb>=20
index eba1970..6d9d943 100644
--- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb =
<http://matchbox-keyboard_git.bb>=20
+++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb =
<http://matchbox-keyboard_git.bb>=20
@@ -16,6 +16,7 @@ PR =3D "r4"

 SRC_URI =3D =
"git://git.yoctoproject.org/${BPN};branch=3Dmatchbox-keyboard-0-1 =
<http://git.yoctoproject.org/$%7bBPN%7d;branch=3Dmatchbox-keyboard-0-1>  =
\
            =
file://0001-desktop-file-Hide-the-keyboard-from-app-list.patch =
<file:///\\0001-desktop-file-Hide-the-keyboard-from-app-list.patch>  \
+           file://0002-add-french-keyboard.patch =
<file:///\\0002-add-french-keyboard.patch>  \
            file://80matchboxkeyboard.sh =
<file:///\\80matchboxkeyboard.sh> "

 S =3D "${WORKDIR}/git"

--
2.7.4

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>=20
https://lists.yoctoproject.org/listinfo/yocto

=20


------=_NextPart_000_013F_01D1B0DB.BE249550
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Hi Ross,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I=E2=80=99ve just re-submitted the patches =
against the matchbox-keyboard-0-1 branch, please let me know if I missed =
anything while doing that.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>I believe you=E2=80=99re aware there is =
another patch, 1 line patch, by Jussi Kukkonen, applied to =
matchbox-keyboard, =
=E2=80=9C0001-desktop-file-Hide-the-keyboard-from-app-list.patch=E2=80=9D=
, that adds =E2=80=9CNoDisplay=3Dtrue=E2=80=9D to =
matchbox-keyboard.desktop.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Should anyone send it also as a patch to the =
branch, so it can be removed from the layer?<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Similarly, shouldn=E2=80=99t the script =
80matchboxkeyboard.sh be also added to the =
branch?<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'>Herve<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;color:#1F497D;=
mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'>From:</span><=
/b><span lang=3DEN-US =
style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif'> Burton, =
Ross [mailto:ross.burton@intel.com] <br><b>Sent:</b> mardi 17 mai 2016 =
14:14<br><b>To:</b> Herve Jourdain =
&lt;herve.jourdain@neuf.fr&gt;<br><b>Cc:</b> =
yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] =
[matchbox-keyboard][PATCH 1/1] Addition of french =
keyboard<o:p></o:p></span></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>Hi =
Herve,<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Can you submit the two patches (caps behaviour, and =
french layout) against the matchbox-keyboard-0.1 branch directly to this =
list please?&nbsp; Then we can just bump the srcrev in the recipe =
instead of carrying patches against our own =
software.<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Ross<o:p></o:p></p></div></div></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On 17 =
May 2016 at 10:43, Herve Jourdain &lt;<a =
href=3D"mailto:herve.jourdain@neuf.fr" =
target=3D"_blank">herve.jourdain@neuf.fr</a>&gt; =
wrote:<o:p></o:p></p><blockquote style=3D'border:none;border-left:solid =
#CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><p =
class=3DMsoNormal>Signed-off-by: Herve Jourdain &lt;<a =
href=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt;<br>=
---<br>&nbsp;.../files/0002-add-french-keyboard.patch&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;| 477 =
+++++++++++++++++++++<br>&nbsp;.../matchbox-keyboard/<a =
href=3D"http://matchbox-keyboard_git.bb" =
target=3D"_blank">matchbox-keyboard_git.bb</a>&nbsp; &nbsp; =
&nbsp;|&nbsp; &nbsp;1 +<br>&nbsp;2 files changed, 478 =
insertions(+)<br>&nbsp;create mode 100644 =
meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patch<=
br><br>diff --git =
a/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h =
b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h<br>new file mode 100644<br>index 0000000..c6dc5f7<br>--- =
/dev/null<br>+++ =
b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h<br>@@ -0,0 +1,477 @@<br>+diff --git a/layouts/Makefile.am =
b/layouts/Makefile.am<br>+index b439041..ed40256 100644<br>+--- =
a/layouts/Makefile.am<br>++++ b/layouts/Makefile.am<br>+@@ -1,4 +1,4 =
@@<br>+ keyboardsdir =3D $(datadir)/matchbox-keyboard<br>+ =
dist_keyboards_DATA =3D keyboard.xml keyboard-extended.xml =
keyboard-dvorak.xml \<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;keyboard-us.xml keyboard-ru.xml =
keyboard-fi.xml&nbsp; &nbsp; &nbsp; &nbsp; \<br>+-&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
keyboard-numpad.xml<br>++&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; keyboard-fr.xml keyboard-numpad.xml<br>+diff =
--git a/layouts/keyboard-fr.xml b/layouts/keyboard-fr.xml<br>+--- =
a/layouts/keyboard-fr.xml<br>++++ b/layouts/keyboard-fr.xml<br>+@@ -0,0 =
+1,343 @@<br>++&lt;?xml version=3D&quot;1.0&quot; =
encoding=3D&quot;UTF-8&quot;?&gt;<br>++&lt;keyboard&gt;<br>++<br>++&lt;!-=
-<br>++<br>++ FR keyboard layout by Herve Jourdain &lt;<a =
href=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt;<br>=
++<br>++--&gt;<br>++<br>++&lt;options&gt;<br>++&lt;!-- not yet =
implemented --&gt;<br>++&lt;/options&gt;<br>++<br>++&lt;layout =
id=3D&quot;default keyboard&quot;&gt;<br>++<br>++&nbsp; =
&lt;row&gt;<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Esc&quot; action=3D&quot;escape&quot; /&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;default display=3D&quot;=C2=B2&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;=C2=B3&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;&amp;amp;&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;1&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;=C3=A9&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D'2' /&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;mod1 display=3D'~' /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;caps display=3D&quot;=C3=89&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;&amp;quot;&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;3&quot; =
/&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;mod1 display=3D&quot;#&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;'&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;4&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;mod1 display=3D&quot;{&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;(&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;5&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;mod1 display=3D&quot;[&quot; /&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;default display=3D&quot;-&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;6&quot; =
/&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;mod1 display=3D&quot;|&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;=C3=A8&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;7&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;mod1 display=3D'`' /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;caps display=3D&quot;=C3=88&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;_&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;8&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;mod1 display=3D'\' /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;=C3=A7&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;9&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;mod1 display=3D'^' /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;caps display=3D&quot;=C3=87&quot; /&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;default display=3D&quot;=C3=A0&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;0&quot; =
/&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;mod1 display=3D'@' =
/&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;caps =
display=3D&quot;=C3=80&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;)&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;=C2=B0&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;mod1 display=3D&quot;]&quot; /&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;default display=3D&quot;=3D&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;+&quot; =
/&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;mod1 display=3D&quot;}&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;*&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;=C2=B5&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Suppr&quot; =
action=3D&quot;backspace&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;default display=3D&quot;D=C3=A9but&quot; =
action=3D&quot;home&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;default display=3D&quot;Pr=C3=A9c&quot; =
action=3D&quot;pageup&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++&nbsp; =
&lt;/row&gt;<br>++<br>++&nbsp; &lt;row&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Tab&quot; action=3D&quot;tab&quot;/&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;a&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;A&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;z&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;Z&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;e&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;E&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;mod1 display=3D&quot;=E2=82=AC&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;r&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;R&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;t&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;T&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;y&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;Y&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;u&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;U&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;i&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;I&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;o&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;O&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;p&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;P&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;^&quot; =
action=3D&quot;xkeysym:dead_circumflex&quot;/&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;=C2=A8&quot; =
action=3D&quot;xkeysym:dead_diaeresis&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;$&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;=C2=A3&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;mod1 display=3D&quot;=C3=B8&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Pr=C3=A9c&quot; =
action=3D&quot;pageup&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;Suiv&quot; =
action=3D&quot;pagedown&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;default display=3D&quot;Fin&quot; =
action=3D&quot;end&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;default display=3D&quot;Suiv&quot; =
action=3D&quot;pagedown&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++&nbsp; =
&lt;/row&gt;<br>++<br>++&nbsp; &lt;row&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Caps&quot; =
action=3D&quot;modifier:caps&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;q&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;Q&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;s&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;S&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;d&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;D&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;f&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;F&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;g&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;G&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;h&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;H&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;j&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;J&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;k&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;K&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;l&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;L&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;m&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;M&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;=C3=B9&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;%&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;caps display=3D&quot;=C3=99&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Entr=C3=A9e&quot; =
action=3D&quot;return&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;4000&quot;&nbsp; extended=3D&quot;true&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;space width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot; /&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; extended=3D&quot;true&quot;/&gt;<br>++&nbsp; =
&lt;/row&gt;<br>++<br>++&nbsp; &lt;row&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Maj&quot; =
action=3D&quot;modifier:shift&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;&amp;lt;&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;&amp;gt;&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;w&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;W&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;x&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;X&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;c&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;C&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;v&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;V&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;b&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;B&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
obey-caps=3D'true'&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;n&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;N&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;,&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;?&quot; /&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;default display=3D&quot;;&quot; /&gt;<br>++&nbsp; =
&nbsp; &nbsp; &nbsp; &lt;shifted display=3D&quot;.&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;:&quot; /&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;shifted display=3D&quot;/&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;!&quot; /&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;shifted display=3D&quot;=C2=A7&quot; /&gt;<br>++&nbsp; =
&nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Maj&quot; =
action=3D&quot;modifier:shift&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;4000&quot;&nbsp; extended=3D&quot;true&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;space width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot; /&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; extended=3D&quot;true&quot;/&gt;<br>++&nbsp; =
&lt;/row&gt;<br>++<br>++&nbsp; &lt;row&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++<br>++&nbsp; &nbsp; &lt;key =
fill=3D&quot;true&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;Ctrl&quot; =
action=3D&quot;modifier:ctrl&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;Alt&quot; =
action=3D&quot;modifier:alt&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key =
width=3D&quot;12000&quot;&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&lt;default display=3D&quot; &quot; action=3D&quot;space&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;/key&gt;<br>++&nbsp; &nbsp; =
&lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; &nbsp; &lt;default =
display=3D&quot;AGR&quot; =
action=3D&quot;modifier:mod1&quot;/&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; &lt;default display=3D&quot;&amp;#x2191;&quot; =
action=3D&quot;up&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;&amp;#x2193;&quot; =
action=3D&quot;down&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;&amp;#x2190;&quot; =
action=3D&quot;left&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++&nbsp; &nbsp; &lt;key&gt;<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; &lt;default display=3D&quot;&amp;#x2192;&quot; =
action=3D&quot;right&quot; /&gt;<br>++&nbsp; &nbsp; =
&lt;/key&gt;<br>++<br>++&nbsp; &nbsp; &lt;space width=3D&quot;500&quot; =
extended=3D&quot;true&quot;/&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;4000&quot;&nbsp; extended=3D&quot;true&quot; =
/&gt;<br>++&nbsp; &nbsp; &lt;space width=3D&quot;4000&quot;&nbsp; =
extended=3D&quot;true&quot; /&gt;<br>++&nbsp; &nbsp; &lt;space =
width=3D&quot;500&quot; extended=3D&quot;true&quot;/&gt;<br>++&nbsp; =
&lt;/row&gt;<br>++<br>++&lt;/layout&gt;<br>++<br>++&lt;/keyboard&gt;<br>+=
diff --git a/src/matchbox-keyboard.h b/src/matchbox-keyboard.h<br>+index =
4dd258f..430b08b 100644<br>+--- a/src/matchbox-keyboard.h<br>++++ =
b/src/matchbox-keyboard.h<br>+@@ -116,6 +116,7 @@ typedef enum<br>+ =
{<br>+&nbsp; &nbsp;MBKeyboardKeyStateNormal =3D 0,<br>+&nbsp; =
&nbsp;MBKeyboardKeyStateShifted,<br>++&nbsp; =
MBKeyboardKeyStateCaps,<br>+&nbsp; =
&nbsp;MBKeyboardKeyStateMod1,<br>+&nbsp; =
&nbsp;MBKeyboardKeyStateMod2,<br>+&nbsp; =
&nbsp;MBKeyboardKeyStateMod3,<br>+diff --git a/src/matchbox-keyboard.c =
b/src/matchbox-keyboard.c<br>+index 9f9bb7d..3ed98c0 100644<br>+--- =
a/src/matchbox-keyboard.c<br>++++ b/src/matchbox-keyboard.c<br>+@@ =
-200,6 +200,9 @@ mb_kbd_keys_current_state(MBKeyboard *kbd)<br>+&nbsp; =
&nbsp;if (mb_kbd_has_state(kbd, MBKeyboardStateShifted))<br>+&nbsp; =
&nbsp; &nbsp;return MBKeyboardKeyStateShifted;<br>+<br>++&nbsp; if =
(mb_kbd_has_state(kbd, MBKeyboardStateCaps))<br>++&nbsp; &nbsp; return =
MBKeyboardKeyStateCaps;<br>++<br>+&nbsp; &nbsp;if (mb_kbd_has_state(kbd, =
MBKeyboardStateMod1))<br>+&nbsp; &nbsp; &nbsp;return =
MBKeyboardKeyStateMod1;<br>+<br>+diff --git =
a/src/matchbox-keyboard-key.c b/src/matchbox-keyboard-key.c<br>+index =
0555c9c..c086fbe 100644<br>+--- a/src/matchbox-keyboard-key.c<br>++++ =
b/src/matchbox-keyboard-key.c<br>+@@ -413,9 +413,13 @@ =
mb_kbd_key_press(MBKeyboardKey *key)<br>+<br>+&nbsp; &nbsp;state =3D =
mb_kbd_keys_current_state(key-&gt;kbd);<br>+<br>+-&nbsp; if =
(mb_kbd_has_state(key-&gt;kbd, MBKeyboardStateCaps)<br>+-&nbsp; &nbsp; =
&nbsp; &amp;&amp; mb_kbd_key_get_obey_caps(key))<br>+-&nbsp; &nbsp; =
state =3D MBKeyboardKeyStateShifted;<br>++&nbsp; if =
(mb_kbd_has_state(key-&gt;kbd, MBKeyboardStateCaps))<br>++&nbsp; =
{<br>++&nbsp; &nbsp; if (mb_kdb_key_has_state (key, =
MBKeyboardKeyStateCaps))<br>++&nbsp; &nbsp; &nbsp; state =3D =
MBKeyboardKeyStateCaps;<br>++&nbsp; &nbsp; else if =
(mb_kbd_key_get_obey_caps(key))<br>++&nbsp; &nbsp; &nbsp; state =3D =
MBKeyboardKeyStateShifted;<br>++&nbsp; }<br>+<br>+&nbsp; &nbsp;/* XXX =
below fakekey mods probably better in ui */<br>+<br>+@@ -616,6 +620,7 @@ =
mb_kbd_key_dump_key(MBKeyboardKey *key)<br>+&nbsp; &nbsp; =
&nbsp;{<br>+&nbsp; &nbsp; &nbsp; &nbsp;/* MBKeyboardKeyStateNormal&nbsp; =
*/ &quot;Normal&quot;,<br>+&nbsp; &nbsp; &nbsp; &nbsp;/* =
MBKeyboardKeyStateShifted */ &quot;Shifted&quot; ,<br>++&nbsp; &nbsp; =
&nbsp; /* MBKeyboardKeyStateCaps&nbsp; &nbsp; */ &quot;Caps&quot; =
,<br>+&nbsp; &nbsp; &nbsp; &nbsp;/* MBKeyboardKeyStateMod1,&nbsp; &nbsp; =
*/ &quot;Mod1&quot; ,<br>+&nbsp; &nbsp; &nbsp; &nbsp;/* =
MBKeyboardKeyStateMod2,&nbsp; &nbsp; */ &quot;Mod2&quot; ,<br>+&nbsp; =
&nbsp; &nbsp; &nbsp;/* MBKeyboardKeyStateMod3,&nbsp; &nbsp; */ =
&quot;Mod3&quot;<br>+diff --git a/src/config-parser.c =
b/src/config-parser.c<br>+index 15a973e..13ee6d6 100644<br>+--- =
a/src/config-parser.c<br>++++ b/src/config-parser.c<br>+@@ -326,6 =
+326,10 @@ config_handle_key_subtag(MBKeyboardConfigState =
*state,<br>+&nbsp; &nbsp; &nbsp;{<br>+&nbsp; &nbsp; &nbsp; =
&nbsp;keystate =3D MBKeyboardKeyStateShifted;<br>+&nbsp; &nbsp; =
&nbsp;}<br>++&nbsp; else if (streq(tag, &quot;caps&quot;))<br>++&nbsp; =
&nbsp; {<br>++&nbsp; &nbsp; &nbsp; keystate =3D =
MBKeyboardKeyStateCaps;<br>++&nbsp; &nbsp; }<br>+&nbsp; &nbsp;else if =
(streq(tag, &quot;mod1&quot;))<br>+&nbsp; &nbsp; &nbsp;{<br>+&nbsp; =
&nbsp; &nbsp; &nbsp;keystate =3D MBKeyboardKeyStateMod1;<br>+@@ -548,6 =
+552,7 @@ config_xml_start_cb(void *data, const char *tag, const char =
**attr)<br>+&nbsp; &nbsp;else if (streq(tag, =
&quot;normal&quot;)<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; || streq(tag, =
&quot;default&quot;)<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; || =
streq(tag, &quot;shifted&quot;)<br>++&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;|| streq(tag, &quot;caps&quot;)<br>+&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; || streq(tag, &quot;mod1&quot;)<br>+&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; || streq(tag, &quot;mod2&quot;)<br>+&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; || streq(tag, &quot;mod3&quot;))<br>+diff --git =
a/src/matchbox-keyboard-ui-cairo-backend.c =
b/src/matchbox-keyboard-ui-cairo-backend.c<br>+index 3b7a401..3f15ac8 =
100644<br>+--- a/src/matchbox-keyboard-ui-cairo-backend.c<br>++++ =
b/src/matchbox-keyboard-ui-cairo-backend.c<br>+@@ -174,9 +174,13 @@ =
mb_kbd_ui_cairo_redraw_key(MBKeyboardUI&nbsp; *ui, MBKeyboardKey =
*key)<br>+<br>+&nbsp; &nbsp;state =3D =
mb_kbd_keys_current_state(kbd);<br>+<br>+-&nbsp; if =
(mb_kbd_has_state(kbd, MBKeyboardStateCaps)<br>+-&nbsp; &nbsp; &nbsp; =
&amp;&amp; mb_kbd_key_get_obey_caps(key))<br>+-&nbsp; &nbsp; state =3D =
MBKeyboardKeyStateShifted;<br>++&nbsp; if (mb_kbd_has_state(kbd, =
MBKeyboardStateCaps))<br>++&nbsp; &nbsp; {<br>++&nbsp; &nbsp; &nbsp; if =
(mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; state =3D MBKeyboardKeyStateCaps;<br>++&nbsp; &nbsp; =
&nbsp; else if (mb_kbd_key_get_obey_caps(key))<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; state =3D MBKeyboardKeyStateShifted;<br>++&nbsp; &nbsp; =
}<br>+<br>+&nbsp; &nbsp;if (!mb_kdb_key_has_state(key, =
state))<br>+&nbsp; &nbsp; &nbsp;{<br>+diff --git =
a/src/matchbox-keyboard-ui-xft-backend.c =
b/src/matchbox-keyboard-ui-xft-backend.c<br>+index 9a3c6d2..2790591 =
100644<br>+--- a/src/matchbox-keyboard-ui-xft-backend.c<br>++++ =
b/src/matchbox-keyboard-ui-xft-backend.c<br>+@@ -212,9 +212,13 @@ =
mb_kbd_ui_xft_redraw_key(MBKeyboardUI&nbsp; *ui, MBKeyboardKey =
*key)<br>+<br>+&nbsp; &nbsp;state =3D =
mb_kbd_keys_current_state(kbd);<br>+<br>+-&nbsp; if =
(mb_kbd_has_state(kbd, MBKeyboardStateCaps)<br>+-&nbsp; &nbsp; &nbsp; =
&amp;&amp; mb_kbd_key_get_obey_caps(key))<br>+-&nbsp; &nbsp; state =3D =
MBKeyboardKeyStateShifted;<br>++&nbsp; if (mb_kbd_has_state(kbd, =
MBKeyboardStateCaps))<br>++&nbsp; &nbsp; {<br>++&nbsp; &nbsp; &nbsp; if =
(mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))<br>++&nbsp; &nbsp; =
&nbsp; &nbsp; state =3D MBKeyboardKeyStateCaps;<br>++&nbsp; &nbsp; =
&nbsp; else if (mb_kbd_key_get_obey_caps(key))<br>++&nbsp; &nbsp; &nbsp; =
&nbsp; state =3D MBKeyboardKeyStateShifted;<br>++&nbsp; &nbsp; =
}<br>+<br>+&nbsp; &nbsp;if (!mb_kdb_key_has_state(key, =
state))<br>+&nbsp; &nbsp; &nbsp;{<br>diff --git =
a/meta/recipes-sato/matchbox-keyboard/<a =
href=3D"http://matchbox-keyboard_git.bb" =
target=3D"_blank">matchbox-keyboard_git.bb</a> =
b/meta/recipes-sato/matchbox-keyboard/<a =
href=3D"http://matchbox-keyboard_git.bb" =
target=3D"_blank">matchbox-keyboard_git.bb</a><br>index eba1970..6d9d943 =
100644<br>--- a/meta/recipes-sato/matchbox-keyboard/<a =
href=3D"http://matchbox-keyboard_git.bb" =
target=3D"_blank">matchbox-keyboard_git.bb</a><br>+++ =
b/meta/recipes-sato/matchbox-keyboard/<a =
href=3D"http://matchbox-keyboard_git.bb" =
target=3D"_blank">matchbox-keyboard_git.bb</a><br>@@ -16,6 +16,7 @@ PR =
=3D &quot;r4&quot;<br><br>&nbsp;SRC_URI =3D &quot;git://<a =
href=3D"http://git.yoctoproject.org/$%7bBPN%7d;branch=3Dmatchbox-keyboard=
-0-1" =
target=3D"_blank">git.yoctoproject.org/${BPN};branch=3Dmatchbox-keyboard-=
0-1</a> \<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a =
href=3D"file:///\\0001-desktop-file-Hide-the-keyboard-from-app-list.patch=
">file://0001-desktop-file-Hide-the-keyboard-from-app-list.patch</a> =
\<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///\\0002-add-french-keyboard.patch">file://0002-add-french-=
keyboard.patch</a> \<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a =
href=3D"file:///\\80matchboxkeyboard.sh">file://80matchboxkeyboard.sh</a>=
&quot;<br><br>&nbsp;S =3D =
&quot;${WORKDIR}/git&quot;<o:p></o:p></p><div><div><p =
class=3DMsoNormal>--<br>2.7.4<br><br>--<br>______________________________=
_________________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p><=
/o:p></p></div></div></blockquote></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></body></html>

------=_NextPart_000_013F_01D1B0DB.BE249550--
