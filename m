Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC7F6E00D8B; Tue, 17 May 2016 05:14:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72CB4E00CED
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 05:14:17 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id s8so8475776ign.0
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 05:14:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=H7GYm6VRWYYacPpwpzbi5/MUWh/BwP/ZBwGFQNeHWZs=;
	b=N679U5wy3N5Jf6d8XZx7TgY7yAXH+2eDEu6a5+/GdsYVLjpscx6Vw9mQpwrlkplycz
	vCFYyt25vGT/Mk2C0SrIodW1SMDdPdtfkrRyUf2fjf1O7VSxnm1nRbzVQy0YqJJKxs39
	erNgPTqpANkmOnDZQ02V4/C2lO3Uz7kBnlvxzVg4VNKjl2qGMUVDVb8Nll7DZ/l6LGTP
	S0McgK9cySkdqEmNKeAKvl9OyWK31251QfKZ/e0fNsDROk0KEqp8Z/npwDRIwAlJtWy0
	sKIQAwExwvNIFudxpL9lxHjwWNBjCS08yiKNh8zAniJveKJ7UVBuaVRueUGv+mcrZt/V
	0gWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=H7GYm6VRWYYacPpwpzbi5/MUWh/BwP/ZBwGFQNeHWZs=;
	b=ZltSrEdTAqrAFjIgwj9AYaYkhy6BJGXnapBY7FCTNBtz6c7JtvFzlNqwBRIc/T4BIP
	tYmMpD5ZiWhoHDx9a794wCxMbiFN7Qa12GGkYLC3V8q1bIgW6pP74XluDty4yKFGmxhC
	uWfkBpsMTDB2YDkRITy9/hiDgskUS+FGFXJlEEVGHihgNcMzBzyGaPzrRQm04vi78fsv
	xRlvBvdhoniuE9nNi1qht8xzT0AX6YuSCBfFDa9wx3ZaoL3WwuoVenDMN8d+cZP8zjBk
	yxdZMhj/yMZEn43DSmj78i+UtYzAI35LfoDkvQQmBlGgCIB5/nd7YMU9l58rjhp4fvC8
	N6Pg==
X-Gm-Message-State: AOPr4FVBwe9KrAqfleuIeLC1/qTe4igon7vKIFARoQ6D/XdiksbXZ71MCqwutni0YUVsjoc9SXbRF+mEoJcGhdBC
X-Received: by 10.50.119.67 with SMTP id ks3mr740767igb.78.1463487256813; Tue,
	17 May 2016 05:14:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 17 May 2016 05:13:57 -0700 (PDT)
In-Reply-To: <1463478209-57439-2-git-send-email-herve.jourdain@neuf.fr>
References: <1463478209-57439-1-git-send-email-herve.jourdain@neuf.fr>
	<1463478209-57439-2-git-send-email-herve.jourdain@neuf.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 May 2016 13:13:57 +0100
Message-ID: <CAJTo0LaKn2-9VoctHeaGSRJL=XJz9XoFM_TQ5q2JQvie_RC4tA@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 17 May 2016 12:14:24 -0000
Content-Type: multipart/alternative; boundary=089e011847f6138550053308ae29

--089e011847f6138550053308ae29
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Herve,

Can you submit the two patches (caps behaviour, and french layout) against
the matchbox-keyboard-0.1 branch directly to this list please?  Then we can
just bump the srcrev in the recipe instead of carrying patches against our
own software.

Ross

On 17 May 2016 at 10:43, Herve Jourdain <herve.jourdain@neuf.fr> wrote:

> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  .../files/0002-add-french-keyboard.patch           | 477
> +++++++++++++++++++++
>  .../matchbox-keyboard/matchbox-keyboard_git.bb     |   1 +
>  2 files changed, 478 insertions(+)
>  create mode 100644
> meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patch
>
> diff --git
> a/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h
> b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h
> new file mode 100644
> index 0000000..c6dc5f7
> --- /dev/null
> +++
> b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.patc=
h
> @@ -0,0 +1,477 @@
> +diff --git a/layouts/Makefile.am b/layouts/Makefile.am
> +index b439041..ed40256 100644
> +--- a/layouts/Makefile.am
> ++++ b/layouts/Makefile.am
> +@@ -1,4 +1,4 @@
> + keyboardsdir =3D $(datadir)/matchbox-keyboard
> + dist_keyboards_DATA =3D keyboard.xml keyboard-extended.xml
> keyboard-dvorak.xml \
> +                     keyboard-us.xml keyboard-ru.xml keyboard-fi.xml
>   \
> +-                    keyboard-numpad.xml
> ++                    keyboard-fr.xml keyboard-numpad.xml
> +diff --git a/layouts/keyboard-fr.xml b/layouts/keyboard-fr.xml
> +--- a/layouts/keyboard-fr.xml
> ++++ b/layouts/keyboard-fr.xml
> +@@ -0,0 +1,343 @@
> ++<?xml version=3D"1.0" encoding=3D"UTF-8"?>
> ++<keyboard>
> ++
> ++<!--
> ++
> ++ FR keyboard layout by Herve Jourdain <herve.jourdain@neuf.fr>
> ++
> ++-->
> ++
> ++<options>
> ++<!-- not yet implemented -->
> ++</options>
> ++
> ++<layout id=3D"default keyboard">
> ++
> ++  <row>
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key fill=3D"true">
> ++        <default display=3D"Esc" action=3D"escape" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=C2=B2" />
> ++        <shifted display=3D"=C2=B3" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"&amp;" />
> ++        <shifted display=3D"1" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=C3=A9" />
> ++        <shifted display=3D'2' />
> ++        <mod1 display=3D'~' />
> ++        <caps display=3D"=C3=89" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"&quot;" />
> ++        <shifted display=3D"3" />
> ++        <mod1 display=3D"#" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"'" />
> ++        <shifted display=3D"4" />
> ++        <mod1 display=3D"{" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"(" />
> ++        <shifted display=3D"5" />
> ++        <mod1 display=3D"[" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"-" />
> ++        <shifted display=3D"6" />
> ++        <mod1 display=3D"|" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=C3=A8" />
> ++        <shifted display=3D"7" />
> ++        <mod1 display=3D'`' />
> ++        <caps display=3D"=C3=88" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"_" />
> ++        <shifted display=3D"8" />
> ++        <mod1 display=3D'\' />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=C3=A7" />
> ++        <shifted display=3D"9" />
> ++        <mod1 display=3D'^' />
> ++        <caps display=3D"=C3=87" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=C3=A0" />
> ++        <shifted display=3D"0" />
> ++        <mod1 display=3D'@' />
> ++        <caps display=3D"=C3=80" />
> ++    </key>
> ++    <key>
> ++        <default display=3D")" />
> ++        <shifted display=3D"=C2=B0" />
> ++        <mod1 display=3D"]" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=3D" />
> ++        <shifted display=3D"+" />
> ++        <mod1 display=3D"}" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"*" />
> ++        <shifted display=3D"=C2=B5" />
> ++    </key>
> ++
> ++    <key fill=3D"true">
> ++        <default display=3D"Suppr" action=3D"backspace"/>
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key width=3D"4000"  extended=3D"true">
> ++        <default display=3D"D=C3=A9but" action=3D"home"/>
> ++    </key>
> ++    <key width=3D"4000"  extended=3D"true">
> ++        <default display=3D"Pr=C3=A9c" action=3D"pageup"/>
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++  </row>
> ++
> ++  <row>
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key fill=3D"true">
> ++        <default display=3D"Tab" action=3D"tab"/>
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"a" />
> ++        <shifted display=3D"A" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"z" />
> ++        <shifted display=3D"Z" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"e" />
> ++        <shifted display=3D"E" />
> ++        <mod1 display=3D"=E2=82=AC" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"r" />
> ++        <shifted display=3D"R" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"t" />
> ++        <shifted display=3D"T" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"y" />
> ++        <shifted display=3D"Y" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"u" />
> ++        <shifted display=3D"U" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"i" />
> ++        <shifted display=3D"I" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"o" />
> ++        <shifted display=3D"O" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"p" />
> ++        <shifted display=3D"P" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"^" action=3D"xkeysym:dead_circumflex"/>
> ++        <shifted display=3D"=C2=A8" action=3D"xkeysym:dead_diaeresis"/>
> ++    </key>
> ++    <key>
> ++        <default display=3D"$" />
> ++        <shifted display=3D"=C2=A3" />
> ++        <mod1 display=3D"=C3=B8" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"Pr=C3=A9c" action=3D"pageup"/>
> ++    </key>
> ++    <key>
> ++        <default display=3D"Suiv" action=3D"pagedown"/>
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key width=3D"4000"  extended=3D"true">
> ++        <default display=3D"Fin" action=3D"end"/>
> ++    </key>
> ++    <key width=3D"4000"  extended=3D"true">
> ++        <default display=3D"Suiv" action=3D"pagedown"/>
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++  </row>
> ++
> ++  <row>
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key fill=3D"true">
> ++        <default display=3D"Caps" action=3D"modifier:caps"/>
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"q" />
> ++        <shifted display=3D"Q" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"s" />
> ++        <shifted display=3D"S" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"d" />
> ++        <shifted display=3D"D" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"f" />
> ++        <shifted display=3D"F" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"g" />
> ++        <shifted display=3D"G" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"h" />
> ++        <shifted display=3D"H" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"j" />
> ++        <shifted display=3D"J" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"k" />
> ++        <shifted display=3D"K" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"l" />
> ++        <shifted display=3D"L" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"m" />
> ++        <shifted display=3D"M" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"=C3=B9" />
> ++        <shifted display=3D"%" />
> ++        <caps display=3D"=C3=99" />
> ++    </key>
> ++    <key fill=3D"true">
> ++        <default display=3D"Entr=C3=A9e" action=3D"return"/>
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++    <space width=3D"4000"  extended=3D"true" />
> ++    <space width=3D"4000"  extended=3D"true" />
> ++    <space width=3D"500" extended=3D"true"/>
> ++  </row>
> ++
> ++  <row>
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key fill=3D"true">
> ++        <default display=3D"Maj" action=3D"modifier:shift"/>
> ++    </key>
> ++    <key>
> ++        <default display=3D"&lt;" />
> ++        <shifted display=3D"&gt;" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"w" />
> ++        <shifted display=3D"W" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"x" />
> ++        <shifted display=3D"X" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"c" />
> ++        <shifted display=3D"C" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"v" />
> ++        <shifted display=3D"V" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"b" />
> ++        <shifted display=3D"B" />
> ++    </key>
> ++    <key obey-caps=3D'true'>
> ++        <default display=3D"n" />
> ++        <shifted display=3D"N" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"," />
> ++        <shifted display=3D"?" />
> ++    </key>
> ++    <key>
> ++        <default display=3D";" />
> ++        <shifted display=3D"." />
> ++    </key>
> ++    <key>
> ++        <default display=3D":" />
> ++        <shifted display=3D"/" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"!" />
> ++        <shifted display=3D"=C2=A7" />
> ++    </key>
> ++    <key fill=3D"true">
> ++        <default display=3D"Maj" action=3D"modifier:shift"/>
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++    <space width=3D"4000"  extended=3D"true" />
> ++    <space width=3D"4000"  extended=3D"true" />
> ++    <space width=3D"500" extended=3D"true"/>
> ++  </row>
> ++
> ++  <row>
> ++    <space width=3D"500" extended=3D"true"/>
> ++
> ++    <key fill=3D"true">
> ++        <default display=3D"Ctrl" action=3D"modifier:ctrl"/>
> ++    </key>
> ++    <key>
> ++        <default display=3D"Alt" action=3D"modifier:alt"/>
> ++    </key>
> ++    <key width=3D"12000">
> ++        <default display=3D" " action=3D"space" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"AGR" action=3D"modifier:mod1"/>
> ++    </key>
> ++
> ++    <key>
> ++        <default display=3D"&#x2191;" action=3D"up" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"&#x2193;" action=3D"down" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"&#x2190;" action=3D"left" />
> ++    </key>
> ++    <key>
> ++        <default display=3D"&#x2192;" action=3D"right" />
> ++    </key>
> ++
> ++    <space width=3D"500" extended=3D"true"/>
> ++    <space width=3D"4000"  extended=3D"true" />
> ++    <space width=3D"4000"  extended=3D"true" />
> ++    <space width=3D"500" extended=3D"true"/>
> ++  </row>
> ++
> ++</layout>
> ++
> ++</keyboard>
> +diff --git a/src/matchbox-keyboard.h b/src/matchbox-keyboard.h
> +index 4dd258f..430b08b 100644
> +--- a/src/matchbox-keyboard.h
> ++++ b/src/matchbox-keyboard.h
> +@@ -116,6 +116,7 @@ typedef enum
> + {
> +   MBKeyboardKeyStateNormal =3D 0,
> +   MBKeyboardKeyStateShifted,
> ++  MBKeyboardKeyStateCaps,
> +   MBKeyboardKeyStateMod1,
> +   MBKeyboardKeyStateMod2,
> +   MBKeyboardKeyStateMod3,
> +diff --git a/src/matchbox-keyboard.c b/src/matchbox-keyboard.c
> +index 9f9bb7d..3ed98c0 100644
> +--- a/src/matchbox-keyboard.c
> ++++ b/src/matchbox-keyboard.c
> +@@ -200,6 +200,9 @@ mb_kbd_keys_current_state(MBKeyboard *kbd)
> +   if (mb_kbd_has_state(kbd, MBKeyboardStateShifted))
> +     return MBKeyboardKeyStateShifted;
> +
> ++  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
> ++    return MBKeyboardKeyStateCaps;
> ++
> +   if (mb_kbd_has_state(kbd, MBKeyboardStateMod1))
> +     return MBKeyboardKeyStateMod1;
> +
> +diff --git a/src/matchbox-keyboard-key.c b/src/matchbox-keyboard-key.c
> +index 0555c9c..c086fbe 100644
> +--- a/src/matchbox-keyboard-key.c
> ++++ b/src/matchbox-keyboard-key.c
> +@@ -413,9 +413,13 @@ mb_kbd_key_press(MBKeyboardKey *key)
> +
> +   state =3D mb_kbd_keys_current_state(key->kbd);
> +
> +-  if (mb_kbd_has_state(key->kbd, MBKeyboardStateCaps)
> +-      && mb_kbd_key_get_obey_caps(key))
> +-    state =3D MBKeyboardKeyStateShifted;
> ++  if (mb_kbd_has_state(key->kbd, MBKeyboardStateCaps))
> ++  {
> ++    if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
> ++      state =3D MBKeyboardKeyStateCaps;
> ++    else if (mb_kbd_key_get_obey_caps(key))
> ++      state =3D MBKeyboardKeyStateShifted;
> ++  }
> +
> +   /* XXX below fakekey mods probably better in ui */
> +
> +@@ -616,6 +620,7 @@ mb_kbd_key_dump_key(MBKeyboardKey *key)
> +     {
> +       /* MBKeyboardKeyStateNormal  */ "Normal",
> +       /* MBKeyboardKeyStateShifted */ "Shifted" ,
> ++      /* MBKeyboardKeyStateCaps    */ "Caps" ,
> +       /* MBKeyboardKeyStateMod1,    */ "Mod1" ,
> +       /* MBKeyboardKeyStateMod2,    */ "Mod2" ,
> +       /* MBKeyboardKeyStateMod3,    */ "Mod3"
> +diff --git a/src/config-parser.c b/src/config-parser.c
> +index 15a973e..13ee6d6 100644
> +--- a/src/config-parser.c
> ++++ b/src/config-parser.c
> +@@ -326,6 +326,10 @@ config_handle_key_subtag(MBKeyboardConfigState
> *state,
> +     {
> +       keystate =3D MBKeyboardKeyStateShifted;
> +     }
> ++  else if (streq(tag, "caps"))
> ++    {
> ++      keystate =3D MBKeyboardKeyStateCaps;
> ++    }
> +   else if (streq(tag, "mod1"))
> +     {
> +       keystate =3D MBKeyboardKeyStateMod1;
> +@@ -548,6 +552,7 @@ config_xml_start_cb(void *data, const char *tag,
> const char **attr)
> +   else if (streq(tag, "normal")
> +          || streq(tag, "default")
> +          || streq(tag, "shifted")
> ++         || streq(tag, "caps")
> +          || streq(tag, "mod1")
> +          || streq(tag, "mod2")
> +          || streq(tag, "mod3"))
> +diff --git a/src/matchbox-keyboard-ui-cairo-backend.c
> b/src/matchbox-keyboard-ui-cairo-backend.c
> +index 3b7a401..3f15ac8 100644
> +--- a/src/matchbox-keyboard-ui-cairo-backend.c
> ++++ b/src/matchbox-keyboard-ui-cairo-backend.c
> +@@ -174,9 +174,13 @@ mb_kbd_ui_cairo_redraw_key(MBKeyboardUI  *ui,
> MBKeyboardKey *key)
> +
> +   state =3D mb_kbd_keys_current_state(kbd);
> +
> +-  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)
> +-      && mb_kbd_key_get_obey_caps(key))
> +-    state =3D MBKeyboardKeyStateShifted;
> ++  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
> ++    {
> ++      if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
> ++        state =3D MBKeyboardKeyStateCaps;
> ++      else if (mb_kbd_key_get_obey_caps(key))
> ++        state =3D MBKeyboardKeyStateShifted;
> ++    }
> +
> +   if (!mb_kdb_key_has_state(key, state))
> +     {
> +diff --git a/src/matchbox-keyboard-ui-xft-backend.c
> b/src/matchbox-keyboard-ui-xft-backend.c
> +index 9a3c6d2..2790591 100644
> +--- a/src/matchbox-keyboard-ui-xft-backend.c
> ++++ b/src/matchbox-keyboard-ui-xft-backend.c
> +@@ -212,9 +212,13 @@ mb_kbd_ui_xft_redraw_key(MBKeyboardUI  *ui,
> MBKeyboardKey *key)
> +
> +   state =3D mb_kbd_keys_current_state(kbd);
> +
> +-  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)
> +-      && mb_kbd_key_get_obey_caps(key))
> +-    state =3D MBKeyboardKeyStateShifted;
> ++  if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))
> ++    {
> ++      if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))
> ++        state =3D MBKeyboardKeyStateCaps;
> ++      else if (mb_kbd_key_get_obey_caps(key))
> ++        state =3D MBKeyboardKeyStateShifted;
> ++    }
> +
> +   if (!mb_kdb_key_has_state(key, state))
> +     {
> diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> index eba1970..6d9d943 100644
> --- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> +++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb
> @@ -16,6 +16,7 @@ PR =3D "r4"
>
>  SRC_URI =3D "git://git.yoctoproject.org/${BPN};branch=3Dmatchbox-keyboar=
d-0-1
> \
>             file://0001-desktop-file-Hide-the-keyboard-from-app-list.patc=
h
> \
> +           file://0002-add-french-keyboard.patch \
>             file://80matchboxkeyboard.sh"
>
>  S =3D "${WORKDIR}/git"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e011847f6138550053308ae29
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Herve,<div><br></div><div>Can you submit the two patche=
s (caps behaviour, and french layout) against the matchbox-keyboard-0.1 bra=
nch directly to this list please?=C2=A0 Then we can just bump the srcrev in=
 the recipe instead of carrying patches against our own software.<div><br><=
/div><div>Ross</div></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 17 May 2016 at 10:43, Herve Jourdain <span dir=3D"ltr">=
&lt;<a href=3D"mailto:herve.jourdain@neuf.fr" target=3D"_blank">herve.jourd=
ain@neuf.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Signed-=
off-by: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.=
jourdain@neuf.fr</a>&gt;<br>
---<br>
<span class=3D"">=C2=A0.../files/0002-add-french-keyboard.patch=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 477 +++++++++++++++++++++<br>
=C2=A0.../matchbox-keyboard/<a href=3D"http://matchbox-keyboard_git.bb" rel=
=3D"noreferrer" target=3D"_blank">matchbox-keyboard_git.bb</a>=C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A01 +<br>
=C2=A02 files changed, 478 insertions(+)<br>
</span>=C2=A0create mode 100644 meta/recipes-sato/matchbox-keyboard/files/0=
002-add-french-keyboard.patch<br>
<br>
diff --git a/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyb=
oard.patch b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyb=
oard.patch<br>
new file mode 100644<br>
index 0000000..c6dc5f7<br>
--- /dev/null<br>
+++ b/meta/recipes-sato/matchbox-keyboard/files/0002-add-french-keyboard.pa=
tch<br>
@@ -0,0 +1,477 @@<br>
+diff --git a/layouts/Makefile.am b/layouts/Makefile.am<br>
+index b439041..ed40256 100644<br>
+--- a/layouts/Makefile.am<br>
++++ b/layouts/Makefile.am<br>
+@@ -1,4 +1,4 @@<br>
+ keyboardsdir =3D $(datadir)/matchbox-keyboard<br>
+ dist_keyboards_DATA =3D keyboard.xml keyboard-extended.xml keyboard-dvora=
k.xml \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0keyboard-us.xml keyboard-ru.xml keyboard-fi.xml=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 key=
board-numpad.xml<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 key=
board-fr.xml keyboard-numpad.xml<br>
+diff --git a/layouts/keyboard-fr.xml b/layouts/keyboard-fr.xml<br>
+--- a/layouts/keyboard-fr.xml<br>
++++ b/layouts/keyboard-fr.xml<br>
+@@ -0,0 +1,343 @@<br>
++&lt;?xml version=3D&quot;1.0&quot; encoding=3D&quot;UTF-8&quot;?&gt;<br>
++&lt;keyboard&gt;<br>
++<br>
++&lt;!--<br>
++<br>
++ FR keyboard layout by Herve Jourdain &lt;<a href=3D"mailto:herve.jourdai=
n@neuf.fr">herve.jourdain@neuf.fr</a>&gt;<br>
++<br>
++--&gt;<br>
++<br>
++&lt;options&gt;<br>
++&lt;!-- not yet implemented --&gt;<br>
++&lt;/options&gt;<br>
++<br>
++&lt;layout id=3D&quot;default keyboard&quot;&gt;<br>
++<br>
++=C2=A0 &lt;row&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Esc&quot; action=
=3D&quot;escape&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=C2=B2&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;=C2=B3&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;amp;&quot; /=
&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;1&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=C3=A9&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&#39;2&#39; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&#39;~&#39; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;caps display=3D&quot;=C3=89&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;quot;&quot; =
/&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;3&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;#&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&#39;&quot; /&gt;=
<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;4&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;{&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;(&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;5&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;[&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;-&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;6&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;|&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=C3=A8&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;7&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&#39;`&#39; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;caps display=3D&quot;=C3=88&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;_&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;8&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&#39;\&#39; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=C3=A7&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;9&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&#39;^&#39; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;caps display=3D&quot;=C3=87&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=C3=A0&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;0&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&#39;@&#39; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;caps display=3D&quot;=C3=80&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;)&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;=C2=B0&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;]&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=3D&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;+&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;}&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;*&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;=C2=B5&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Suppr&quot; actio=
n=3D&quot;backspace&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;tru=
e&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;D=C3=A9but&quot; =
action=3D&quot;home&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;tru=
e&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Pr=C3=A9c&quot; a=
ction=3D&quot;pageup&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 &lt;/row&gt;<br>
++<br>
++=C2=A0 &lt;row&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Tab&quot; action=
=3D&quot;tab&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;a&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;A&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;z&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;Z&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;e&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;E&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;=E2=82=AC&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;r&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;R&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;t&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;T&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;y&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;Y&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;u&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;U&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;i&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;I&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;o&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;O&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;p&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;P&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;^&quot; action=3D=
&quot;xkeysym:dead_circumflex&quot;/&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;=C2=A8&quot; acti=
on=3D&quot;xkeysym:dead_diaeresis&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;$&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;=C2=A3&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mod1 display=3D&quot;=C3=B8&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Pr=C3=A9c&quot; a=
ction=3D&quot;pageup&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Suiv&quot; action=
=3D&quot;pagedown&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;tru=
e&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Fin&quot; action=
=3D&quot;end&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;tru=
e&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Suiv&quot; action=
=3D&quot;pagedown&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 &lt;/row&gt;<br>
++<br>
++=C2=A0 &lt;row&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Caps&quot; action=
=3D&quot;modifier:caps&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;q&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;Q&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;s&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;S&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;d&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;D&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;f&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;F&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;g&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;G&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;h&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;H&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;j&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;J&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;k&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;K&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;l&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;L&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;m&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;M&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;=C3=B9&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;%&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;caps display=3D&quot;=C3=99&quot; /&gt;<b=
r>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Entr=C3=A9e&quot;=
 action=3D&quot;return&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;t=
rue&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;t=
rue&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 &lt;/row&gt;<br>
++<br>
++=C2=A0 &lt;row&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Maj&quot; action=
=3D&quot;modifier:shift&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;lt;&quot; /&=
gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;&amp;gt;&quot; /&=
gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;w&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;W&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;x&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;X&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;c&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;C&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;v&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;V&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;b&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;B&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key obey-caps=3D&#39;true&#39;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;n&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;N&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;,&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;?&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;;&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;.&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;:&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;/&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;!&quot; /&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;shifted display=3D&quot;=C2=A7&quot; /&gt=
;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Maj&quot; action=
=3D&quot;modifier:shift&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;t=
rue&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;t=
rue&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 &lt;/row&gt;<br>
++<br>
++=C2=A0 &lt;row&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key fill=3D&quot;true&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Ctrl&quot; action=
=3D&quot;modifier:ctrl&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;Alt&quot; action=
=3D&quot;modifier:alt&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key width=3D&quot;12000&quot;&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot; &quot; action=3D=
&quot;space&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;AGR&quot; action=
=3D&quot;modifier:mod1&quot;/&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;#x2191;&quot=
; action=3D&quot;up&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;#x2193;&quot=
; action=3D&quot;down&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;#x2190;&quot=
; action=3D&quot;left&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++=C2=A0 =C2=A0 &lt;key&gt;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;default display=3D&quot;&amp;#x2192;&quot=
; action=3D&quot;right&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;/key&gt;<br>
++<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;t=
rue&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;4000&quot;=C2=A0 extended=3D&quot;t=
rue&quot; /&gt;<br>
++=C2=A0 =C2=A0 &lt;space width=3D&quot;500&quot; extended=3D&quot;true&quo=
t;/&gt;<br>
++=C2=A0 &lt;/row&gt;<br>
++<br>
++&lt;/layout&gt;<br>
++<br>
++&lt;/keyboard&gt;<br>
+diff --git a/src/matchbox-keyboard.h b/src/matchbox-keyboard.h<br>
+index 4dd258f..430b08b 100644<br>
+--- a/src/matchbox-keyboard.h<br>
++++ b/src/matchbox-keyboard.h<br>
+@@ -116,6 +116,7 @@ typedef enum<br>
+ {<br>
+=C2=A0 =C2=A0MBKeyboardKeyStateNormal =3D 0,<br>
+=C2=A0 =C2=A0MBKeyboardKeyStateShifted,<br>
++=C2=A0 MBKeyboardKeyStateCaps,<br>
+=C2=A0 =C2=A0MBKeyboardKeyStateMod1,<br>
+=C2=A0 =C2=A0MBKeyboardKeyStateMod2,<br>
+=C2=A0 =C2=A0MBKeyboardKeyStateMod3,<br>
+diff --git a/src/matchbox-keyboard.c b/src/matchbox-keyboard.c<br>
+index 9f9bb7d..3ed98c0 100644<br>
+--- a/src/matchbox-keyboard.c<br>
++++ b/src/matchbox-keyboard.c<br>
+@@ -200,6 +200,9 @@ mb_kbd_keys_current_state(MBKeyboard *kbd)<br>
+=C2=A0 =C2=A0if (mb_kbd_has_state(kbd, MBKeyboardStateShifted))<br>
+=C2=A0 =C2=A0 =C2=A0return MBKeyboardKeyStateShifted;<br>
+<br>
++=C2=A0 if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))<br>
++=C2=A0 =C2=A0 return MBKeyboardKeyStateCaps;<br>
++<br>
+=C2=A0 =C2=A0if (mb_kbd_has_state(kbd, MBKeyboardStateMod1))<br>
+=C2=A0 =C2=A0 =C2=A0return MBKeyboardKeyStateMod1;<br>
+<br>
+diff --git a/src/matchbox-keyboard-key.c b/src/matchbox-keyboard-key.c<br>
+index 0555c9c..c086fbe 100644<br>
+--- a/src/matchbox-keyboard-key.c<br>
++++ b/src/matchbox-keyboard-key.c<br>
+@@ -413,9 +413,13 @@ mb_kbd_key_press(MBKeyboardKey *key)<br>
+<br>
+=C2=A0 =C2=A0state =3D mb_kbd_keys_current_state(key-&gt;kbd);<br>
+<br>
+-=C2=A0 if (mb_kbd_has_state(key-&gt;kbd, MBKeyboardStateCaps)<br>
+-=C2=A0 =C2=A0 =C2=A0 &amp;&amp; mb_kbd_key_get_obey_caps(key))<br>
+-=C2=A0 =C2=A0 state =3D MBKeyboardKeyStateShifted;<br>
++=C2=A0 if (mb_kbd_has_state(key-&gt;kbd, MBKeyboardStateCaps))<br>
++=C2=A0 {<br>
++=C2=A0 =C2=A0 if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCaps))<br>
++=C2=A0 =C2=A0 =C2=A0 state =3D MBKeyboardKeyStateCaps;<br>
++=C2=A0 =C2=A0 else if (mb_kbd_key_get_obey_caps(key))<br>
++=C2=A0 =C2=A0 =C2=A0 state =3D MBKeyboardKeyStateShifted;<br>
++=C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0/* XXX below fakekey mods probably better in ui */<br>
+<br>
+@@ -616,6 +620,7 @@ mb_kbd_key_dump_key(MBKeyboardKey *key)<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* MBKeyboardKeyStateNormal=C2=A0 */ &quot;Norm=
al&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* MBKeyboardKeyStateShifted */ &quot;Shifted&q=
uot; ,<br>
++=C2=A0 =C2=A0 =C2=A0 /* MBKeyboardKeyStateCaps=C2=A0 =C2=A0 */ &quot;Caps=
&quot; ,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* MBKeyboardKeyStateMod1,=C2=A0 =C2=A0 */ &quo=
t;Mod1&quot; ,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* MBKeyboardKeyStateMod2,=C2=A0 =C2=A0 */ &quo=
t;Mod2&quot; ,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* MBKeyboardKeyStateMod3,=C2=A0 =C2=A0 */ &quo=
t;Mod3&quot;<br>
+diff --git a/src/config-parser.c b/src/config-parser.c<br>
+index 15a973e..13ee6d6 100644<br>
+--- a/src/config-parser.c<br>
++++ b/src/config-parser.c<br>
+@@ -326,6 +326,10 @@ config_handle_key_subtag(MBKeyboardConfigState *state=
,<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0keystate =3D MBKeyboardKeyStateShifted;<br>
+=C2=A0 =C2=A0 =C2=A0}<br>
++=C2=A0 else if (streq(tag, &quot;caps&quot;))<br>
++=C2=A0 =C2=A0 {<br>
++=C2=A0 =C2=A0 =C2=A0 keystate =3D MBKeyboardKeyStateCaps;<br>
++=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0else if (streq(tag, &quot;mod1&quot;))<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0keystate =3D MBKeyboardKeyStateMod1;<br>
+@@ -548,6 +552,7 @@ config_xml_start_cb(void *data, const char *tag, const=
 char **attr)<br>
+=C2=A0 =C2=A0else if (streq(tag, &quot;normal&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 || streq(tag, &quot;default&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 || streq(tag, &quot;shifted&quot;)<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|| streq(tag, &quot;caps&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 || streq(tag, &quot;mod1&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 || streq(tag, &quot;mod2&quot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 || streq(tag, &quot;mod3&quot;))<br>
+diff --git a/src/matchbox-keyboard-ui-cairo-backend.c b/src/matchbox-keybo=
ard-ui-cairo-backend.c<br>
+index 3b7a401..3f15ac8 100644<br>
+--- a/src/matchbox-keyboard-ui-cairo-backend.c<br>
++++ b/src/matchbox-keyboard-ui-cairo-backend.c<br>
+@@ -174,9 +174,13 @@ mb_kbd_ui_cairo_redraw_key(MBKeyboardUI=C2=A0 *ui, MB=
KeyboardKey *key)<br>
+<br>
+=C2=A0 =C2=A0state =3D mb_kbd_keys_current_state(kbd);<br>
+<br>
+-=C2=A0 if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)<br>
+-=C2=A0 =C2=A0 =C2=A0 &amp;&amp; mb_kbd_key_get_obey_caps(key))<br>
+-=C2=A0 =C2=A0 state =3D MBKeyboardKeyStateShifted;<br>
++=C2=A0 if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))<br>
++=C2=A0 =C2=A0 {<br>
++=C2=A0 =C2=A0 =C2=A0 if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCap=
s))<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 state =3D MBKeyboardKeyStateCaps;<br>
++=C2=A0 =C2=A0 =C2=A0 else if (mb_kbd_key_get_obey_caps(key))<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 state =3D MBKeyboardKeyStateShifted;<br>
++=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0if (!mb_kdb_key_has_state(key, state))<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
+diff --git a/src/matchbox-keyboard-ui-xft-backend.c b/src/matchbox-keyboar=
d-ui-xft-backend.c<br>
+index 9a3c6d2..2790591 100644<br>
+--- a/src/matchbox-keyboard-ui-xft-backend.c<br>
++++ b/src/matchbox-keyboard-ui-xft-backend.c<br>
+@@ -212,9 +212,13 @@ mb_kbd_ui_xft_redraw_key(MBKeyboardUI=C2=A0 *ui, MBKe=
yboardKey *key)<br>
+<br>
+=C2=A0 =C2=A0state =3D mb_kbd_keys_current_state(kbd);<br>
+<br>
+-=C2=A0 if (mb_kbd_has_state(kbd, MBKeyboardStateCaps)<br>
+-=C2=A0 =C2=A0 =C2=A0 &amp;&amp; mb_kbd_key_get_obey_caps(key))<br>
+-=C2=A0 =C2=A0 state =3D MBKeyboardKeyStateShifted;<br>
++=C2=A0 if (mb_kbd_has_state(kbd, MBKeyboardStateCaps))<br>
++=C2=A0 =C2=A0 {<br>
++=C2=A0 =C2=A0 =C2=A0 if (mb_kdb_key_has_state (key, MBKeyboardKeyStateCap=
s))<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 state =3D MBKeyboardKeyStateCaps;<br>
++=C2=A0 =C2=A0 =C2=A0 else if (mb_kbd_key_get_obey_caps(key))<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 state =3D MBKeyboardKeyStateShifted;<br>
++=C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0if (!mb_kdb_key_has_state(key, state))<br>
+=C2=A0 =C2=A0 =C2=A0{<br>
diff --git a/meta/recipes-sato/matchbox-keyboard/<a href=3D"http://matchbox=
-keyboard_git.bb" rel=3D"noreferrer" target=3D"_blank">matchbox-keyboard_gi=
t.bb</a> b/meta/recipes-sato/matchbox-keyboard/<a href=3D"http://matchbox-k=
eyboard_git.bb" rel=3D"noreferrer" target=3D"_blank">matchbox-keyboard_git.=
bb</a><br>
index eba1970..6d9d943 100644<br>
--- a/meta/recipes-sato/matchbox-keyboard/<a href=3D"http://matchbox-keyboa=
rd_git.bb" rel=3D"noreferrer" target=3D"_blank">matchbox-keyboard_git.bb</a=
><br>
+++ b/meta/recipes-sato/matchbox-keyboard/<a href=3D"http://matchbox-keyboa=
rd_git.bb" rel=3D"noreferrer" target=3D"_blank">matchbox-keyboard_git.bb</a=
><br>
@@ -16,6 +16,7 @@ PR =3D &quot;r4&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://git.yoctoproject.org/${BPN}=
;branch=3Dmatchbox-keyboard-0-1" rel=3D"noreferrer" target=3D"_blank">git.y=
octoproject.org/${BPN};branch=3Dmatchbox-keyboard-0-1</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-desktop-file-Hide-the=
-keyboard-from-app-list.patch \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0002-add-french-keyboard.p=
atch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://80matchboxkeyboard.sh&quot=
;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
2.7.4<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--089e011847f6138550053308ae29--
