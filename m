Subject: Not all config fragments applied
To: yocto@lists.yoctoproject.org
From: "Konstantin Kletschke" <konstantin.kletschke@inside-m2m.de>
X-Originating-Location: Offenbach, Hesse, DE (217.91.183.55)
X-Originating-Platform: Mac Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 26 Apr 2021 06:23:40 -0700
Message-ID: <C86w.1619443420933754902.T4kB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EDzKykmrwBracFQLhepH"

--EDzKykmrwBracFQLhepH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I added a custom layer and under recipes-kernel I try to apply kernel confi=
g fragments:

=E2=94=94[ *~* ]> cat poky/meta-insidem2m/recipes-kernel/linux/linux-yocto=
_5.10.bbappend

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

SRC_URI +=3D "\

file://wext.cfg \

file://at24.cfg \

file://leds.cfg \

file://usb.cfg \

file://keyspan.cfg \

file://00-leds.patch \

"

Works fine. So far.
Today i added wext.cfg and the file itself is found among the other in

poky/build/tmp/work/beaglebone_yocto-poky-linux-gnueabi/linux-yocto/5.10.1=
2+gitAUTOINC+67e74d52f2_cdca787784-r0
but its content is not applied to the .config.

wext.cfg has this content:

=E2=94=94[ *~* ]> cat poky/meta-insidem2m/recipes-kernel/linux/linux-yocto=
/wext.cfg

CONFIG_WIRELESS_EXT=3Dy

CONFIG_WEXT_CORE=3Dy

CONFIG_WEXT_PROC=3Dy

I don't see a dependency missing,
if I test the so far .config in two fresh linux trees, do make menuconfig =
in both and do this again in one tree and add then CONFIG_WIRELESS_EXT in o=
ne tree with make menucinfug I get the following diff:

=E2=94=94[ *~* ]> diff -Nur a/.config b/.config

*--- a/.config 2021-04-26 15:16:24.425877434 +0200*

*+++ b/.config 2021-04-26 15:15:42.797926593 +0200*

@@ -1222,7 +1222,9 @@

# CONFIG_AF_KCM is not set

CONFIG_FIB_RULES=3Dy

CONFIG_WIRELESS=3Dy

-# CONFIG_WIRELESS_EXT is not set

+CONFIG_WIRELESS_EXT=3Dy

+CONFIG_WEXT_CORE=3Dy

+CONFIG_WEXT_PROC=3Dy

# CONFIG_WEXT_SPY is not set

# CONFIG_WEXT_PRIV is not set

CONFIG_CFG80211=3Dy

Does somebody have a hint what's going on here? As said the other fragment=
s are properly applied...

--EDzKykmrwBracFQLhepH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I added a custom layer and under recipes-kernel I try to apply kernel confi=
g fragments:<br /><br />
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s1" =
style=3D"font-variant-ligatures: no-common-ligatures; color: #b42419;">=E2=
=94=94[</span><span class=3D"s2" style=3D"font-variant-ligatures: no-commo=
n-ligatures; color: #c0c0c0;"><strong>~</strong></span><span class=3D"s1" s=
tyle=3D"font-variant-ligatures: no-common-ligatures; color: #b42419;">]&gt;=
</span><span class=3D"s3" style=3D"font-variant-ligatures: no-common-ligatu=
res;"> cat poky/meta-insidem2m/recipes-kernel/linux/linux-yocto_5.10.bbappe=
nd<span class=3D"Apple-converted-space">&nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">FILESEXTRAPATHS_prep=
end :=3D "${THISDIR}/${PN}:"</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">SRC_URI +=3D "\</spa=
n></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp; &nbsp; </span>file://wext.cfg \</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-tab-span" style=3D"white-space: pre;"> </span>file://at24.cfg \</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-tab-span" style=3D"white-space: pre;"> </span>file://leds.cfg \</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp; &nbsp; </span>file://usb.cfg \<span class=3D"Apple=
-converted-space">&nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp; &nbsp; </span>file://keyspan.cfg \<span class=3D"A=
pple-converted-space">&nbsp;</span></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp; &nbsp; </span>file://00-leds.patch \</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-tab-span" style=3D"white-space: pre;"> </span>"<br /><br />Works fine. So =
far.<br />Today i added wext.cfg and the file itself is found among the oth=
er in&nbsp;<br /></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s1" =
style=3D"font-variant-ligatures: no-common-ligatures;">poky/build/tmp/work/=
beaglebone_yocto-poky-linux-gnueabi/linux-yocto/5.10.12+gitAUTOINC+67e74d52=
f2_cdca787784-r0<br />but its content is not applied to the .config.<br /><=
br /><br />wext.cfg has this content:<br /><br /></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s1" =
style=3D"font-variant-ligatures: no-common-ligatures; color: #b42419;">=E2=
=94=94[</span><span class=3D"s2" style=3D"font-variant-ligatures: no-commo=
n-ligatures; color: #c0c0c0;"><strong>~</strong></span><span class=3D"s1" s=
tyle=3D"font-variant-ligatures: no-common-ligatures; color: #b42419;">]&gt;=
</span><span class=3D"s3" style=3D"font-variant-ligatures: no-common-ligatu=
res;"> cat poky/meta-insidem2m/recipes-kernel/linux/linux-yocto/wext.cfg<sp=
an class=3D"Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span></=
p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">CONFIG_WIRELESS_EXT=
=3Dy</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">CONFIG_WEXT_CORE=3Dy=
</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">CONFIG_WEXT_PROC=3Dy=
<br /><br />I don't see a dependency missing,&nbsp;<br />if I test the so f=
ar .config in two fresh linux trees, do make menuconfig in both and do this=
 again in one tree and add then CONFIG_WIRELESS_EXT in one tree with make m=
enucinfug I get the following diff:<br /><br /></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s1" =
style=3D"font-variant-ligatures: no-common-ligatures; color: #b42419;">=E2=
=94=94[</span><span class=3D"s2" style=3D"font-variant-ligatures: no-commo=
n-ligatures; color: #c0c0c0;"><strong>~</strong></span><span class=3D"s1" s=
tyle=3D"font-variant-ligatures: no-common-ligatures; color: #b42419;">]&gt;=
</span><span class=3D"s3" style=3D"font-variant-ligatures: no-common-ligatu=
res;"> diff -Nur a/.config b/.config</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><strong>--- a/.confi=
g<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>2021-04=
-26 15:16:24.425877434 +0200</strong></span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><strong>+++ b/.confi=
g<span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>2021-04=
-26 15:15:42.797926593 +0200</strong></span></p>
<p class=3D"p2" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #2eaebb;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">@@ -1222,7 +1222,9 @=
@</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp;</span># CONFIG_AF_KCM is not set</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp;</span>CONFIG_FIB_RULES=3Dy</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp;</span>CONFIG_WIRELESS=3Dy</span></p>
<p class=3D"p3" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #b42419;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">-# CONFIG_WIRELESS_E=
XT is not set</span></p>
<p class=3D"p4" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #2fb41d;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">+CONFIG_WIRELESS_EXT=
=
=3Dy</span></p>
<p class=3D"p4" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #2fb41d;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">+CONFIG_WEXT_CORE=3D=
y</span></p>
<p class=3D"p4" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #2fb41d;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;">+CONFIG_WEXT_PROC=3D=
y</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp;</span># CONFIG_WEXT_SPY is not set</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp;</span># CONFIG_WEXT_PRIV is not set</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;">&nbsp;</p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s3" =
style=3D"font-variant-ligatures: no-common-ligatures;"><span class=3D"Apple=
-converted-space">&nbsp;</span>CONFIG_CFG80211=3Dy<br /><br />Does somebody=
 have a hint what's going on here? As said the other fragments are properly=
 applied...</span></p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 11px; li=
ne-height: normal; font-family: Menlo; color: #000000;"><span class=3D"s1" =
style=3D"font-variant-ligatures: no-common-ligatures;">&nbsp;</span></p>

--EDzKykmrwBracFQLhepH--
