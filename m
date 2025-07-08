Return-Path: <gary.huband@servicenow.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C33C8303C
	for <webhook@archiver.kernel.org>; Tue,  8 Jul 2025 18:30:08 +0000 (UTC)
Subject: kernel fragment merge in scarthgap #kernel #scarthgap
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary.huband@servicenow.com>
X-Originating-Location: Ashburn, Virginia, US (66.198.11.158)
X-Originating-Platform: Mac Safari 18.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Jul 2025 11:30:07 -0700
Message-ID: <KDxf.1751999407392516646.3hg0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PhQG9CKGgBxsIjT7JbtX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 18:30:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65629

--PhQG9CKGgBxsIjT7JbtX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In kirkstone I am able to see the merge order for linux kernel fragments by=
 doing

bitbake -c cleansstate virtual/kernel

bitbake -c clean virtual/kernel

bitbake --verbose linux-imx > build_linux.txt

scarthgap does not produce the merge info using this method.

Is there a way to see the kernel config fragment merge order in scarthgap?

--PhQG9CKGgBxsIjT7JbtX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>In kirkstone I am able to see the merge order for linux kernel fragmen=
ts by doing</div>
<div>&nbsp;</div>
<div>
<div class=3D"OutlineElement Ltr SCXW56145370 BCX4" style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration: none; -webkit-user-drag: none; margin: 0px; padd=
ing: 0px; -webkit-user-select: text; clear: both; cursor: text; overflow: v=
isible; position: relative; direction: ltr; caret-color: rgba(0, 0, 0, 0.84=
7); color: rgba(0, 0, 0, 0.847); font-family: 'Segoe UI', 'Segoe UI Web', A=
rial, Verdana, sans-serif; font-size: 12px;">
<p class=3D"Paragraph SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; =
margin: auto 0px; padding: 0px; -webkit-user-select: text; overflow-wrap: b=
reak-word; white-space: pre-wrap; font-weight: normal; font-style: normal; =
vertical-align: baseline; background-color: transparent; color: windowtext;=
 text-align: left; text-indent: 0px; -webkit-nbsp-mode: normal !important;"=
><span data-contrast=3D"auto" xml:lang=3D"EN-US" lang=3D"EN-US" class=3D"Te=
xtRun SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; margin: 0px; pad=
ding: 0px; -webkit-user-select: text; font-size: 12pt; line-height: 19.425p=
x; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFont', 'Times N=
ew Roman_MSCustomFont', 'Times New Roman_MSFontService', serif; font-varian=
t-ligatures: none !important; -webkit-nbsp-mode: normal !important;"><span =
class=3D"NormalTextRun SpellingErrorV2Themed SCXW56145370 BCX4" data-ccp-pa=
rastyle=3D"Normal (Web)" style=3D"-webkit-user-drag: none; margin: 0px; pad=
ding: 0px; -webkit-user-select: text; background-position: 0px 100%; backgr=
ound-repeat: repeat-x; background-image: var(--urlSpellingErrorV2,); border=
-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: transp=
arent; -webkit-nbsp-mode: normal !important;">bitbake</span><span class=3D"=
NormalTextRun SCXW56145370 BCX4" data-ccp-parastyle=3D"Normal (Web)" style=
=3D"-webkit-user-drag: none; margin: 0px; padding: 0px; -webkit-user-select=
: text; -webkit-nbsp-mode: normal !important;"> -c </span><span class=3D"No=
rmalTextRun SpellingErrorV2Themed SCXW56145370 BCX4" data-ccp-parastyle=3D"=
Normal (Web)" style=3D"-webkit-user-drag: none; margin: 0px; padding: 0px; =
-webkit-user-select: text; background-position: 0px 100%; background-repeat=
: repeat-x; background-image: var(--urlSpellingErrorV2,); border-bottom-wid=
th: 1px; border-bottom-style: solid; border-bottom-color: transparent; -web=
kit-nbsp-mode: normal !important;">cleansstate</span><span class=3D"NormalT=
extRun SCXW56145370 BCX4" data-ccp-parastyle=3D"Normal (Web)" style=3D"-web=
kit-user-drag: none; margin: 0px; padding: 0px; -webkit-user-select: text; =
-webkit-nbsp-mode: normal !important;"> virtual/kernel</span></span><span c=
lass=3D"EOP SCXW56145370 BCX4" data-ccp-props=3D"{&quot;134233117&quot;:tru=
e,&quot;134233118&quot;:true,&quot;469777462&quot;:[916,1832,2748,3664,4580=
,5496,6412,7328,8244,9160,10076,10992,11908,12824,13740,14656],&quot;469777=
927&quot;:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],&quot;469777928&quot;:[1,1,1,1,=
1,1,1,1,1,1,1,1,1,1,1,1]}" style=3D"-webkit-user-drag: none; margin: 0px; p=
adding: 0px; -webkit-user-select: text; font-size: 12pt; line-height: 19.42=
5px; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFont', 'Times=
 New Roman_MSCustomFont', 'Times New Roman_MSFontService', serif; -webkit-n=
bsp-mode: normal !important;">&nbsp;</span></p>
</div>
<div class=3D"OutlineElement Ltr SCXW56145370 BCX4" style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration: none; -webkit-user-drag: none; margin: 0px; padd=
ing: 0px; -webkit-user-select: text; clear: both; cursor: text; overflow: v=
isible; position: relative; direction: ltr; caret-color: rgba(0, 0, 0, 0.84=
7); color: rgba(0, 0, 0, 0.847); font-family: 'Segoe UI', 'Segoe UI Web', A=
rial, Verdana, sans-serif; font-size: 12px;">
<p class=3D"Paragraph SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; =
margin: auto 0px; padding: 0px; -webkit-user-select: text; overflow-wrap: b=
reak-word; white-space: pre-wrap; font-weight: normal; font-style: normal; =
vertical-align: baseline; background-color: transparent; color: windowtext;=
 text-align: left; text-indent: 0px; -webkit-nbsp-mode: normal !important;"=
><span data-contrast=3D"auto" xml:lang=3D"EN-US" lang=3D"EN-US" class=3D"Te=
xtRun SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; margin: 0px; pad=
ding: 0px; -webkit-user-select: text; font-size: 12pt; line-height: 19.425p=
x; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFont', 'Times N=
ew Roman_MSCustomFont', 'Times New Roman_MSFontService', serif; font-varian=
t-ligatures: none !important; -webkit-nbsp-mode: normal !important;"><span =
class=3D"NormalTextRun SpellingErrorV2Themed SCXW56145370 BCX4" data-ccp-pa=
rastyle=3D"Normal (Web)" style=3D"-webkit-user-drag: none; margin: 0px; pad=
ding: 0px; -webkit-user-select: text; background-position: 0px 100%; backgr=
ound-repeat: repeat-x; background-image: var(--urlSpellingErrorV2,); border=
-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: transp=
arent; -webkit-nbsp-mode: normal !important;">bitbake</span><span class=3D"=
NormalTextRun SCXW56145370 BCX4" data-ccp-parastyle=3D"Normal (Web)" style=
=3D"-webkit-user-drag: none; margin: 0px; padding: 0px; -webkit-user-select=
: text; -webkit-nbsp-mode: normal !important;"> -c clean virtual/kernel</sp=
an></span><span class=3D"EOP SCXW56145370 BCX4" data-ccp-props=3D"{&quot;13=
4233117&quot;:true,&quot;134233118&quot;:true,&quot;469777462&quot;:[916,18=
32,2748,3664,4580,5496,6412,7328,8244,9160,10076,10992,11908,12824,13740,14=
656],&quot;469777927&quot;:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],&quot;46977792=
8&quot;:[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}" style=3D"-webkit-user-drag: non=
e; margin: 0px; padding: 0px; -webkit-user-select: text; font-size: 12pt; l=
ine-height: 19.425px; font-family: 'Times New Roman', 'Times New Roman_Embe=
ddedFont', 'Times New Roman_MSCustomFont', 'Times New Roman_MSFontService',=
 serif; -webkit-nbsp-mode: normal !important;">&nbsp;</span></p>
</div>
<div class=3D"OutlineElement Ltr SCXW56145370 BCX4" style=3D"font-style: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-wi=
dth: 0px; text-decoration: none; -webkit-user-drag: none; margin: 0px; padd=
ing: 0px; -webkit-user-select: text; clear: both; cursor: text; overflow: v=
isible; position: relative; direction: ltr; caret-color: rgba(0, 0, 0, 0.84=
7); color: rgba(0, 0, 0, 0.847); font-family: 'Segoe UI', 'Segoe UI Web', A=
rial, Verdana, sans-serif; font-size: 12px;">
<p class=3D"Paragraph SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; =
margin: auto 0px; padding: 0px; -webkit-user-select: text; overflow-wrap: b=
reak-word; white-space: pre-wrap; font-weight: normal; font-style: normal; =
vertical-align: baseline; background-color: transparent; color: windowtext;=
 text-align: left; text-indent: 0px; -webkit-nbsp-mode: normal !important;"=
><span data-contrast=3D"auto" xml:lang=3D"EN-US" lang=3D"EN-US" class=3D"Te=
xtRun SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; margin: 0px; pad=
ding: 0px; -webkit-user-select: text; font-size: 12pt; line-height: 19.425p=
x; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFont', 'Times N=
ew Roman_MSCustomFont', 'Times New Roman_MSFontService', serif; font-varian=
t-ligatures: none !important; -webkit-nbsp-mode: normal !important;"><span =
class=3D"NormalTextRun SpellingErrorV2Themed SCXW56145370 BCX4" data-ccp-pa=
rastyle=3D"Normal (Web)" style=3D"-webkit-user-drag: none; margin: 0px; pad=
ding: 0px; -webkit-user-select: text; background-position: 0px 100%; backgr=
ound-repeat: repeat-x; background-image: var(--urlSpellingErrorV2,); border=
-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: transp=
arent; -webkit-nbsp-mode: normal !important;">bitbake</span><span class=3D"=
NormalTextRun SCXW56145370 BCX4" data-ccp-parastyle=3D"Normal (Web)" style=
=3D"-webkit-user-drag: none; margin: 0px; padding: 0px; -webkit-user-select=
: text; -webkit-nbsp-mode: normal !important;"> --verbose </span><span clas=
s=3D"NormalTextRun SpellingErrorV2Themed SCXW56145370 BCX4" data-ccp-parast=
yle=3D"Normal (Web)" style=3D"-webkit-user-drag: none; margin: 0px; padding=
: 0px; -webkit-user-select: text; background-position: 0px 100%; background=
-repeat: repeat-x; background-image: var(--urlSpellingErrorV2,); border-bot=
tom-width: 1px; border-bottom-style: solid; border-bottom-color: transparen=
t; -webkit-nbsp-mode: normal !important;">linux-imx</span><span class=3D"No=
rmalTextRun SCXW56145370 BCX4" data-ccp-parastyle=3D"Normal (Web)" style=3D=
"-webkit-user-drag: none; margin: 0px; padding: 0px; -webkit-user-select: t=
ext; -webkit-nbsp-mode: normal !important;"> &gt; build_linux.txt</span></s=
pan><span class=3D"EOP SCXW56145370 BCX4" data-ccp-props=3D"{&quot;13423311=
7&quot;:true,&quot;134233118&quot;:true,&quot;469777462&quot;:[916,1832,274=
8,3664,4580,5496,6412,7328,8244,9160,10076,10992,11908,12824,13740,14656],&=
quot;469777927&quot;:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],&quot;469777928&quot=
;:[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}" style=3D"-webkit-user-drag: none; mar=
gin: 0px; padding: 0px; -webkit-user-select: text; font-size: 12pt; line-he=
ight: 19.425px; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFo=
nt', 'Times New Roman_MSCustomFont', 'Times New Roman_MSFontService', serif=
; -webkit-nbsp-mode: normal !important;">&nbsp;</span></p>
<p class=3D"Paragraph SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; =
margin: auto 0px; padding: 0px; -webkit-user-select: text; overflow-wrap: b=
reak-word; white-space: pre-wrap; font-weight: normal; font-style: normal; =
vertical-align: baseline; background-color: transparent; color: windowtext;=
 text-align: left; text-indent: 0px; -webkit-nbsp-mode: normal !important;"=
>&nbsp;</p>
<p class=3D"Paragraph SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; =
margin: auto 0px; padding: 0px; -webkit-user-select: text; overflow-wrap: b=
reak-word; white-space: pre-wrap; font-weight: normal; font-style: normal; =
vertical-align: baseline; background-color: transparent; color: windowtext;=
 text-align: left; text-indent: 0px; -webkit-nbsp-mode: normal !important;"=
><span class=3D"EOP SCXW56145370 BCX4" data-ccp-props=3D"{&quot;134233117&q=
uot;:true,&quot;134233118&quot;:true,&quot;469777462&quot;:[916,1832,2748,3=
664,4580,5496,6412,7328,8244,9160,10076,10992,11908,12824,13740,14656],&quo=
t;469777927&quot;:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],&quot;469777928&quot;:[=
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}" style=3D"-webkit-user-drag: none; margin=
: 0px; padding: 0px; -webkit-user-select: text; font-size: 12pt; line-heigh=
t: 19.425px; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFont'=
, 'Times New Roman_MSCustomFont', 'Times New Roman_MSFontService', serif; -=
webkit-nbsp-mode: normal !important;">scarthgap does not produce the merge =
info using this method.</span></p>
<p class=3D"Paragraph SCXW56145370 BCX4" style=3D"-webkit-user-drag: none; =
margin: auto 0px; padding: 0px; -webkit-user-select: text; overflow-wrap: b=
reak-word; white-space: pre-wrap; font-weight: normal; font-style: normal; =
vertical-align: baseline; background-color: transparent; color: windowtext;=
 text-align: left; text-indent: 0px; -webkit-nbsp-mode: normal !important;"=
><span class=3D"EOP SCXW56145370 BCX4" data-ccp-props=3D"{&quot;134233117&q=
uot;:true,&quot;134233118&quot;:true,&quot;469777462&quot;:[916,1832,2748,3=
664,4580,5496,6412,7328,8244,9160,10076,10992,11908,12824,13740,14656],&quo=
t;469777927&quot;:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],&quot;469777928&quot;:[=
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}" style=3D"-webkit-user-drag: none; margin=
: 0px; padding: 0px; -webkit-user-select: text; font-size: 12pt; line-heigh=
t: 19.425px; font-family: 'Times New Roman', 'Times New Roman_EmbeddedFont'=
, 'Times New Roman_MSCustomFont', 'Times New Roman_MSFontService', serif; -=
webkit-nbsp-mode: normal !important;">Is there a way to see the kernel conf=
ig fragment merge order in scarthgap?</span></p>
</div>
</div>

--PhQG9CKGgBxsIjT7JbtX--

