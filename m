Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14C2DE009B3; Thu, 23 Jul 2015 08:53:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.158 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm28-vm3.bullet.mail.ne1.yahoo.com
	(nm28-vm3.bullet.mail.ne1.yahoo.com [98.138.91.158])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 170E2E00867
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 08:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437666812; bh=HFk/ew7Qlk2i9FtRJ7FWWDfHCgCWEtya5sC+dAbcl5o=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=bxqz0BgAdxJ2WKj4RPr2XrM2ITH839jPYrKUbcecX8HMv7Sijo5wIGaFklDS13VThutFxL1f2P8+vxk+1tsjPFMHeXWhSFCJgqf5EHcLf4GyiFzD8RN9TmrEhtrQmbo6hKFS/QbEHTysBg3OQCQsbOEz4C1jTBvLM9A3G6JbpjDpUA7rm1hvUWI9nEWvmdeU9CLB4kKZb2rL1wPRdiJCwwxNp5WCflGuJUbPZkTxKXmaRqit3yTpuYQr5R8FOhYAN04sLGdOwVH/tq4zHXnz6+dEiqSafqxvi3wz6EPl8T1YhV68KR8Fo7yLVhybGqbzQZlmtIrZbei9uVCojaZNEg==
Received: from [98.138.100.111] by nm28.bullet.mail.ne1.yahoo.com with NNFMP;
	23 Jul 2015 15:53:32 -0000
Received: from [98.138.89.196] by tm100.bullet.mail.ne1.yahoo.com with NNFMP;
	23 Jul 2015 15:53:32 -0000
Received: from [127.0.0.1] by omp1054.mail.ne1.yahoo.com with NNFMP;
	23 Jul 2015 15:53:32 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 243870.25870.bm@omp1054.mail.ne1.yahoo.com
X-YMail-OSG: v.Vajq8VM1mbKK.AUtxzr8h96zNoQMskHERJJkeOgF7nz9Vx72l6f5DGKZRmxW8
	GfZFK4z7XspDcKNDg7c2YFTKRWi6n5nJb_brPznxbjOzOmV3gT7xyxHOQRfXMUvgJKlZanNJcxuS
	qzAtS.NJWk7i.Aj5EXq5kVm5bj0nXEWbVF1im2H4TTrDtV6LSX6Tex6H1l_gNU9KECGlmPl005Ck
	MkwyOWmm0IFbDGTrP1RznOrxY5ulj9ZkYIAXcwuCcttjUcLGwn59GIY532l5OiBqa32G1H5aAQdo
	kNf4cLwsP_IFyBxRJJJityaH1F3aUojOc.QEUZYk7dPuE1fQT3cJuhfH47.gtEyAKHB3if44kYut
	qoOucx0cIWdBAF_18j5R8A5PuA9reSCHsamVB9i8jCyrN3aKk1Z7WPEVq.c4SGpBVsI9AA7BfbQw
	gtu6c6IFtBuR.9TFuIDITvcI3Oc40fgRJMByhmMcEbl.yKFpa_wAQ3pNBXy6ym328EneJahpAmeJ
	p8K6O20oMyoRw0QYmV7.okBkoQvzhLi4-
Received: by 98.138.105.249; Thu, 23 Jul 2015 15:53:31 +0000 
Date: Thu, 23 Jul 2015 15:53:31 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <337580094.1119907.1437666811235.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: raspberry Pi core-image-sato booted okay
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Jul 2015 15:53:38 -0000
X-Groupsio-MsgNum: 25645
Content-Type: multipart/mixed; 
	boundary="----=_Part_1119906_1385641774.1437666811234"

------=_Part_1119906_1385641774.1437666811234
Content-Type: multipart/alternative; 
	boundary="----=_Part_1119905_953788052.1437666811231"

------=_Part_1119905_953788052.1437666811231
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

i Gary,

I added to my the 2 lines mentioned in the e-mail to my conf/local.conf

PREFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"
PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"

I had saved the original local.conf in ~/wkg/yocto/local.conf before making=
 any changes.

diff -u ~/wkg/yocto/local.conf conf/local.conf
--- /home/vidal/wkg/yocto/local.conf=C2=A0=C2=A0=C2=A0 2015-07-21 08:15:40.=
228867905 -0600
+++ conf/local.conf=C2=A0=C2=A0=C2=A0 2015-07-23 09:11:45.095116784 -0600
@@ -10,6 +10,25 @@
=C2=A0# default values are provided as comments to show people example synt=
ax. Enabling
=C2=A0# the option is a question of removing the # character and making any=
 change to the
=C2=A0# variable as required.
+PREFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"
+#
+# Parallelism Options
+#
+# These two options control how much parallelism BitBake should use. The f=
irst=20
+# option determines how many tasks bitbake should run in parallel:
+#
+BB_NUMBER_THREADS =3D "12"
+#=20
+# The second option controls how many processes make should run in paralle=
l when
+# running compile tasks:
+#
+PARALLEL_MAKE =3D "-j 12"
+#
+# For a quad-core machine, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-=
j 4" would
+# be appropriate for example.
+
+#
=C2=A0
=C2=A0#
=C2=A0# Machine Selection
@@ -34,7 +53,10 @@
=C2=A0#MACHINE ?=3D "edgerouter"
=C2=A0#
=C2=A0# This sets the default machine to be qemux86 if no other machine is =
selected:
-MACHINE ??=3D "qemux86"
+#MACHINE ??=3D "qemux86"
+#MACHINE =3D "raspberrypi2"
+MACHINE ??=3D "raspberrypi2"
+GPU_MEM =3D "16"
=C2=A0
=C2=A0#
=C2=A0# Where to place downloads
@@ -48,7 +70,7 @@
=C2=A0# The default is a downloads directory under TOPDIR which is the buil=
d directory.
=C2=A0#
=C2=A0#DL_DIR ?=3D "${TOPDIR}/downloads"
-
+DL_DIR ?=3D "/home/vidal/wkg/yocto/downloads"
=C2=A0#
=C2=A0# Where to place shared-state files
=C2=A0#

bitbake userland -c cleansstate

bitbake core-image-sato=C2=A0=20

WARNING: QA Issue: gstreamer1.0-plugins-bad: configure was passed unrecogni=
sed options: --with-egl-window-system [unknown-configure-option]
NOTE: Tasks Summary: Attempted 5356 tasks of which 4131 didn't need to be r=
erun and all succeeded.

Summary: There was 1 WARNING message shown.
As root I created the SD=20


dd if=3Dtmp/deploy/images/raspberrypi2/core-image-sato-raspberrypi2.rpi-sdi=
mg | pv | sudo dd of=3D/dev/sdb bs=3D16M

The Raspberry Pi 2 B boot to graphical sato interface.

Is there anything else that I can provide.
How do you when to use -c cleansstate on a recipe?=C2=A0 This appears to be=
 a handy command.Thanks for all the help!!
Regards
=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_1119905_953788052.1437666811231
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437661817368_27786"><spa=
n>i Gary,<br class=3D""><br class=3D"">I added to my the 2 lines mentioned =
in the e-mail to my conf/local.conf<br class=3D""><br class=3D"">PREFERRED_=
PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"<br class=3D"">PREFERRED_PROV=
IDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"<br class=3D""><br class=3D"=
">I had saved the original local.conf in ~/wkg/yocto/local.conf before maki=
ng any changes.<br class=3D""><br class=3D"">diff -u ~/wkg/yocto/local.conf=
 conf/local.conf<br class=3D"">--- /home/vidal/wkg/yocto/local.conf&nbsp;&n=
bsp;&nbsp; 2015-07-21 08:15:40.228867905 -0600<br class=3D"">+++ conf/local=
.conf&nbsp;&nbsp;&nbsp; 2015-07-23 09:11:45.095116784 -0600<br class=3D"">@=
@ -10,6 +10,25 @@<br class=3D"">&nbsp;# default values are provided as comm=
ents to show people example syntax. Enabling<br class=3D"">&nbsp;# the opti=
on is a question of removing the # character and making any change to the<b=
r class=3D"">&nbsp;# variable as required.<br class=3D"">+PREFERRED_PROVIDE=
R_virtual/egl ?=3D "vc-graphics-hardfp"<br class=3D"">+PREFERRED_PROVIDER_v=
irtual/libgles2 ?=3D "vc-graphics-hardfp"<br class=3D"">+#<br class=3D"">+#=
 Parallelism Options<br class=3D"">+#<br class=3D"">+# These two options co=
ntrol how much parallelism BitBake should use. The first <br class=3D"">+# =
option determines how many tasks bitbake should run in parallel:<br class=
=3D"">+#<br class=3D"">+BB_NUMBER_THREADS =3D "12"<br class=3D"">+# <br cla=
ss=3D"">+# The second option controls how many processes make should run in=
 parallel when<br class=3D"">+# running compile tasks:<br class=3D"">+#<br =
class=3D"">+PARALLEL_MAKE =3D "-j 12"<br class=3D"">+#<br class=3D"">+# For=
 a quad-core machine, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-j 4" w=
ould<br class=3D"">+# be appropriate for example.<br class=3D"">+<br class=
=3D"">+#<br class=3D"">&nbsp;<br class=3D"">&nbsp;#<br class=3D"">&nbsp;# M=
achine Selection<br class=3D"">@@ -34,7 +53,10 @@<br class=3D"">&nbsp;#MACH=
INE ?=3D "edgerouter"<br class=3D"">&nbsp;#<br class=3D"">&nbsp;# This sets=
 the default machine to be qemux86 if no other machine is selected:<br clas=
s=3D"">-MACHINE ??=3D "qemux86"<br class=3D"">+#MACHINE ??=3D "qemux86"<br =
class=3D"">+#MACHINE =3D "raspberrypi2"<br class=3D"">+MACHINE ??=3D "raspb=
errypi2"<br class=3D"">+GPU_MEM =3D "16"<br class=3D"">&nbsp;<br class=3D""=
>&nbsp;#<br class=3D"">&nbsp;# Where to place downloads<br class=3D"">@@ -4=
8,7 +70,7 @@<br class=3D"">&nbsp;# The default is a downloads directory und=
er TOPDIR which is the build directory.<br class=3D"">&nbsp;#<br class=3D""=
>&nbsp;#DL_DIR ?=3D "${TOPDIR}/downloads"<br class=3D"">-<br class=3D"">+DL=
_DIR ?=3D "/home/vidal/wkg/yocto/downloads"<br class=3D"">&nbsp;#<br class=
=3D"">&nbsp;# Where to place shared-state files<br class=3D"">&nbsp;#<br cl=
ass=3D""><br class=3D"">bitbake userland -c cleansstate<br class=3D""><br c=
lass=3D"">bitbake core-image-sato&nbsp; <br class=3D""><br class=3D"">WARNI=
NG: QA Issue: gstreamer1.0-plugins-bad: configure was passed unrecognised o=
ptions: --with-egl-window-system [unknown-configure-option]<br class=3D"">N=
OTE: Tasks Summary: Attempted 5356 tasks of which 4131 didn't need to be re=
run and all succeeded.<br class=3D""><br class=3D"">Summary: There was 1 WA=
RNING message shown.<br class=3D"">As root I created the SD <br class=3D"">=
<br class=3D""><br class=3D"">dd if=3Dtmp/deploy/images/raspberrypi2/core-i=
mage-sato-raspberrypi2.rpi-sdimg | pv | sudo dd of=3D/dev/sdb bs=3D16M<br c=
lass=3D""><br class=3D"">The Raspberry Pi 2 B boot to graphical sato interf=
ace.<br class=3D""><br class=3D"">Is there anything else that I can provide=
.<br class=3D"">How do you when to use -c cleansstate on a recipe?&nbsp; Th=
is appears to be a handy command.</span></div><div dir=3D"ltr"><span>Thanks=
 for all the help!!<br class=3D"">Regards<br class=3D""></span></div><div>&=
nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>9=
15-595-1613</div></div></div></body></html>

------=_Part_1119905_953788052.1437666811231--

------=_Part_1119906_1385641774.1437666811234
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=local.conf
Content-ID: <b99b4bba-ba23-d147-be8f-d7ee75195b09@yahoo.com>

IwojIFRoaXMgZmlsZSBpcyB5b3VyIGxvY2FsIGNvbmZpZ3VyYXRpb24gZmlsZSBhbmQgaXMgd2hl
cmUgYWxsIGxvY2FsIHVzZXIgc2V0dGluZ3MKIyBhcmUgcGxhY2VkLiBUaGUgY29tbWVudHMgaW4g
dGhpcyBmaWxlIGdpdmUgc29tZSBndWlkZSB0byB0aGUgb3B0aW9ucyBhIG5ldyB1c2VyCiMgdG8g
dGhlIHN5c3RlbSBtaWdodCB3YW50IHRvIGNoYW5nZSBidXQgcHJldHR5IG11Y2ggYW55IGNvbmZp
Z3VyYXRpb24gb3B0aW9uIGNhbgojIGJlIHNldCBpbiB0aGlzIGZpbGUuIE1vcmUgYWR2ZW50dXJv
dXMgdXNlcnMgY2FuIGxvb2sgYXQgbG9jYWwuY29uZi5leHRlbmRlZCAKIyB3aGljaCBjb250YWlu
cyBvdGhlciBleGFtcGxlcyBvZiBjb25maWd1cmF0aW9uIHdoaWNoIGNhbiBiZSBwbGFjZWQgaW4g
dGhpcyBmaWxlCiMgYnV0IG5ldyB1c2VycyBsaWtlbHkgd29uJ3QgbmVlZCBhbnkgb2YgdGhlbSBp
bml0aWFsbHkuCiMKIyBMaW5lcyBzdGFydGluZyB3aXRoIHRoZSAnIycgY2hhcmFjdGVyIGFyZSBj
b21tZW50ZWQgb3V0IGFuZCBpbiBzb21lIGNhc2VzIHRoZSAKIyBkZWZhdWx0IHZhbHVlcyBhcmUg
cHJvdmlkZWQgYXMgY29tbWVudHMgdG8gc2hvdyBwZW9wbGUgZXhhbXBsZSBzeW50YXguIEVuYWJs
aW5nCiMgdGhlIG9wdGlvbiBpcyBhIHF1ZXN0aW9uIG9mIHJlbW92aW5nIHRoZSAjIGNoYXJhY3Rl
ciBhbmQgbWFraW5nIGFueSBjaGFuZ2UgdG8gdGhlCiMgdmFyaWFibGUgYXMgcmVxdWlyZWQuClBS
RUZFUlJFRF9QUk9WSURFUl92aXJ0dWFsL2VnbCA/PSAidmMtZ3JhcGhpY3MtaGFyZGZwIgpQUkVG
RVJSRURfUFJPVklERVJfdmlydHVhbC9saWJnbGVzMiA/PSAidmMtZ3JhcGhpY3MtaGFyZGZwIgoj
CiMgUGFyYWxsZWxpc20gT3B0aW9ucwojCiMgVGhlc2UgdHdvIG9wdGlvbnMgY29udHJvbCBob3cg
bXVjaCBwYXJhbGxlbGlzbSBCaXRCYWtlIHNob3VsZCB1c2UuIFRoZSBmaXJzdCAKIyBvcHRpb24g
ZGV0ZXJtaW5lcyBob3cgbWFueSB0YXNrcyBiaXRiYWtlIHNob3VsZCBydW4gaW4gcGFyYWxsZWw6
CiMKQkJfTlVNQkVSX1RIUkVBRFMgPSAiMTIiCiMgCiMgVGhlIHNlY29uZCBvcHRpb24gY29udHJv
bHMgaG93IG1hbnkgcHJvY2Vzc2VzIG1ha2Ugc2hvdWxkIHJ1biBpbiBwYXJhbGxlbCB3aGVuCiMg
cnVubmluZyBjb21waWxlIHRhc2tzOgojClBBUkFMTEVMX01BS0UgPSAiLWogMTIiCiMKIyBGb3Ig
YSBxdWFkLWNvcmUgbWFjaGluZSwgQkJfTlVNQkVSX1RIUkVBRFMgPSAiNCIsIFBBUkFMTEVMX01B
S0UgPSAiLWogNCIgd291bGQKIyBiZSBhcHByb3ByaWF0ZSBmb3IgZXhhbXBsZS4KCiMKCiMKIyBN
YWNoaW5lIFNlbGVjdGlvbgojCiMgWW91IG5lZWQgdG8gc2VsZWN0IGEgc3BlY2lmaWMgbWFjaGlu
ZSB0byB0YXJnZXQgdGhlIGJ1aWxkIHdpdGguIFRoZXJlIGFyZSBhIHNlbGVjdGlvbgojIG9mIGVt
dWxhdGVkIG1hY2hpbmVzIGF2YWlsYWJsZSB3aGljaCBjYW4gYm9vdCBhbmQgcnVuIGluIHRoZSBR
RU1VIGVtdWxhdG9yOgojCiNNQUNISU5FID89ICJxZW11YXJtIgojTUFDSElORSA/PSAicWVtdWFy
bTY0IgojTUFDSElORSA/PSAicWVtdW1pcHMiCiNNQUNISU5FID89ICJxZW11cHBjIgojTUFDSElO
RSA/PSAicWVtdXg4NiIKI01BQ0hJTkUgPz0gInFlbXV4ODYtNjQiCiMKIyBUaGVyZSBhcmUgYWxz
byB0aGUgZm9sbG93aW5nIGhhcmR3YXJlIGJvYXJkIHRhcmdldCBtYWNoaW5lcyBpbmNsdWRlZCBm
b3IgCiMgZGVtb25zdHJhdGlvbiBwdXJwb3NlczoKIwojTUFDSElORSA/PSAiYmVhZ2xlYm9uZSIK
I01BQ0hJTkUgPz0gImdlbmVyaWN4ODYiCiNNQUNISU5FID89ICJnZW5lcmljeDg2LTY0IgojTUFD
SElORSA/PSAibXBjODMxNWUtcmRiIgojTUFDSElORSA/PSAiZWRnZXJvdXRlciIKIwojIFRoaXMg
c2V0cyB0aGUgZGVmYXVsdCBtYWNoaW5lIHRvIGJlIHFlbXV4ODYgaWYgbm8gb3RoZXIgbWFjaGlu
ZSBpcyBzZWxlY3RlZDoKI01BQ0hJTkUgPz89ICJxZW11eDg2IgojTUFDSElORSA9ICJyYXNwYmVy
cnlwaTIiCk1BQ0hJTkUgPz89ICJyYXNwYmVycnlwaTIiCkdQVV9NRU0gPSAiMTYiCgojCiMgV2hl
cmUgdG8gcGxhY2UgZG93bmxvYWRzCiMKIyBEdXJpbmcgYSBmaXJzdCBidWlsZCB0aGUgc3lzdGVt
IHdpbGwgZG93bmxvYWQgbWFueSBkaWZmZXJlbnQgc291cmNlIGNvZGUgdGFyYmFsbHMKIyBmcm9t
IHZhcmlvdXMgdXBzdHJlYW0gcHJvamVjdHMuIFRoaXMgY2FuIHRha2UgYSB3aGlsZSwgcGFydGlj
dWxhcmx5IGlmIHlvdXIgbmV0d29yawojIGNvbm5lY3Rpb24gaXMgc2xvdy4gVGhlc2UgYXJlIGFs
bCBzdG9yZWQgaW4gRExfRElSLiBXaGVuIHdpcGluZyBhbmQgcmVidWlsZGluZyB5b3UKIyBjYW4g
cHJlc2VydmUgdGhpcyBkaXJlY3RvcnkgdG8gc3BlZWQgdXAgdGhpcyBwYXJ0IG9mIHN1YnNlcXVl
bnQgYnVpbGRzLiBUaGlzIGRpcmVjdG9yeQojIGlzIHNhZmUgdG8gc2hhcmUgYmV0d2VlbiBtdWx0
aXBsZSBidWlsZHMgb24gdGhlIHNhbWUgbWFjaGluZSB0b28uCiMKIyBUaGUgZGVmYXVsdCBpcyBh
IGRvd25sb2FkcyBkaXJlY3RvcnkgdW5kZXIgVE9QRElSIHdoaWNoIGlzIHRoZSBidWlsZCBkaXJl
Y3RvcnkuCiMKI0RMX0RJUiA/PSAiJHtUT1BESVJ9L2Rvd25sb2FkcyIKRExfRElSID89ICIvaG9t
ZS92aWRhbC93a2cveW9jdG8vZG93bmxvYWRzIgojCiMgV2hlcmUgdG8gcGxhY2Ugc2hhcmVkLXN0
YXRlIGZpbGVzCiMKIyBCaXRCYWtlIGhhcyB0aGUgY2FwYWJpbGl0eSB0byBhY2NlbGVyYXRlIGJ1
aWxkcyBiYXNlZCBvbiBwcmV2aW91c2x5IGJ1aWx0IG91dHB1dC4KIyBUaGlzIGlzIGRvbmUgdXNp
bmcgInNoYXJlZCBzdGF0ZSIgZmlsZXMgd2hpY2ggY2FuIGJlIHRob3VnaHQgb2YgYXMgY2FjaGUg
b2JqZWN0cwojIGFuZCB0aGlzIG9wdGlvbiBkZXRlcm1pbmVzIHdoZXJlIHRob3NlIGZpbGVzIGFy
ZSBwbGFjZWQuCiMKIyBZb3UgY2FuIHdpcGUgb3V0IFRNUERJUiBsZWF2aW5nIHRoaXMgZGlyZWN0
b3J5IGludGFjdCBhbmQgdGhlIGJ1aWxkIHdvdWxkIHJlZ2VuZXJhdGUKIyBmcm9tIHRoZXNlIGZp
bGVzIGlmIG5vIGNoYW5nZXMgd2VyZSBtYWRlIHRvIHRoZSBjb25maWd1cmF0aW9uLiBJZiBjaGFu
Z2VzIHdlcmUgbWFkZQojIHRvIHRoZSBjb25maWd1cmF0aW9uLCBvbmx5IHNoYXJlZCBzdGF0ZSBm
aWxlcyB3aGVyZSB0aGUgc3RhdGUgd2FzIHN0aWxsIHZhbGlkIHdvdWxkCiMgYmUgdXNlZCAoZG9u
ZSB1c2luZyBjaGVja3N1bXMpLgojCiMgVGhlIGRlZmF1bHQgaXMgYSBzc3RhdGUtY2FjaGUgZGly
ZWN0b3J5IHVuZGVyIFRPUERJUi4KIwojU1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1j
YWNoZSIKCiMKIyBXaGVyZSB0byBwbGFjZSB0aGUgYnVpbGQgb3V0cHV0CiMKIyBUaGlzIG9wdGlv
biBzcGVjaWZpZXMgd2hlcmUgdGhlIGJ1bGsgb2YgdGhlIGJ1aWxkaW5nIHdvcmsgc2hvdWxkIGJl
IGRvbmUgYW5kCiMgd2hlcmUgQml0QmFrZSBzaG91bGQgcGxhY2UgaXRzIHRlbXBvcmFyeSBmaWxl
cyBhbmQgb3V0cHV0LiBLZWVwIGluIG1pbmQgdGhhdAojIHRoaXMgaW5jbHVkZXMgdGhlIGV4dHJh
Y3Rpb24gYW5kIGNvbXBpbGF0aW9uIG9mIG1hbnkgYXBwbGljYXRpb25zIGFuZCB0aGUgdG9vbGNo
YWluCiMgd2hpY2ggY2FuIHVzZSBHaWdhYnl0ZXMgb2YgaGFyZCBkaXNrIHNwYWNlLgojCiMgVGhl
IGRlZmF1bHQgaXMgYSB0bXAgZGlyZWN0b3J5IHVuZGVyIFRPUERJUi4KIwojVE1QRElSID0gIiR7
VE9QRElSfS90bXAiCgojCiMgRGVmYXVsdCBwb2xpY3kgY29uZmlnCiMKIyBUaGUgZGlzdHJpYnV0
aW9uIHNldHRpbmcgY29udHJvbHMgd2hpY2ggcG9saWN5IHNldHRpbmdzIGFyZSB1c2VkIGFzIGRl
ZmF1bHRzLgojIFRoZSBkZWZhdWx0IHZhbHVlIGlzIGZpbmUgZm9yIGdlbmVyYWwgWW9jdG8gcHJv
amVjdCB1c2UsIGF0IGxlYXN0IGluaXRpYWxseS4KIyBVbHRpbWF0ZWx5IHdoZW4gY3JlYXRpbmcg
Y3VzdG9tIHBvbGljeSwgcGVvcGxlIHdpbGwgbGlrZWx5IGVuZCB1cCBzdWJjbGFzc2luZyAKIyB0
aGVzZSBkZWZhdWx0cy4KIwpESVNUUk8gPz0gInBva3kiCiMgQXMgYW4gZXhhbXBsZSBvZiBhIHN1
YmNsYXNzIHRoZXJlIGlzIGEgImJsZWVkaW5nIiBlZGdlIHBvbGljeSBjb25maWd1cmF0aW9uCiMg
d2hlcmUgbWFueSB2ZXJzaW9ucyBhcmUgc2V0IHRvIHRoZSBhYnNvbHV0ZSBsYXRlc3QgY29kZSBm
cm9tIHRoZSB1cHN0cmVhbSAKIyBzb3VyY2UgY29udHJvbCBzeXN0ZW1zLiBUaGlzIGlzIGp1c3Qg
bWVudGlvbmVkIGhlcmUgYXMgYW4gZXhhbXBsZSwgaXRzIG5vdAojIHVzZWZ1bCB0byBtb3N0IG5l
dyB1c2Vycy4KIyBESVNUUk8gPz0gInBva3ktYmxlZWRpbmciCgojCiMgUGFja2FnZSBNYW5hZ2Vt
ZW50IGNvbmZpZ3VyYXRpb24KIwojIFRoaXMgdmFyaWFibGUgbGlzdHMgd2hpY2ggcGFja2FnaW5n
IGZvcm1hdHMgdG8gZW5hYmxlLiBNdWx0aXBsZSBwYWNrYWdlIGJhY2tlbmRzIAojIGNhbiBiZSBl
bmFibGVkIGF0IG9uY2UgYW5kIHRoZSBmaXJzdCBpdGVtIGxpc3RlZCBpbiB0aGUgdmFyaWFibGUg
d2lsbCBiZSB1c2VkIAojIHRvIGdlbmVyYXRlIHRoZSByb290IGZpbGVzeXN0ZW1zLgojIE9wdGlv
bnMgYXJlOgojICAtICdwYWNrYWdlX2RlYicgZm9yIGRlYmlhbiBzdHlsZSBkZWIgZmlsZXMKIyAg
LSAncGFja2FnZV9pcGsnIGZvciBpcGsgZmlsZXMgYXJlIHVzZWQgYnkgb3BrZyAoYSBkZWJpYW4g
c3R5bGUgZW1iZWRkZWQgcGFja2FnZSBtYW5hZ2VyKQojICAtICdwYWNrYWdlX3JwbScgZm9yIHJw
bSBzdHlsZSBwYWNrYWdlcwojIEUuZy46IFBBQ0tBR0VfQ0xBU1NFUyA/PSAicGFja2FnZV9ycG0g
cGFja2FnZV9kZWIgcGFja2FnZV9pcGsiCiMgV2UgZGVmYXVsdCB0byBycG06ClBBQ0tBR0VfQ0xB
U1NFUyA/PSAicGFja2FnZV9ycG0iCgojCiMgU0RLL0FEVCB0YXJnZXQgYXJjaGl0ZWN0dXJlCiMK
IyBUaGlzIHZhcmlhYmxlIHNwZWNpZmllcyB0aGUgYXJjaGl0ZWN0dXJlIHRvIGJ1aWxkIFNESy9B
RFQgaXRlbXMgZm9yIGFuZCBtZWFucwojIHlvdSBjYW4gYnVpbGQgdGhlIFNESyBwYWNrYWdlcyBm
b3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFuIHRoZSBtYWNoaW5lIHlvdSBhcmUgCiMgcnVubmlu
ZyB0aGUgYnVpbGQgb24gKGkuZS4gYnVpbGRpbmcgaTY4NiBwYWNrYWdlcyBvbiBhbiB4ODZfNjQg
aG9zdCkuCiMgU3VwcG9ydGVkIHZhbHVlcyBhcmUgaTY4NiBhbmQgeDg2XzY0CiNTREtNQUNISU5F
ID89ICJpNjg2IgoKIwojIEV4dHJhIGltYWdlIGNvbmZpZ3VyYXRpb24gZGVmYXVsdHMKIwojIFRo
ZSBFWFRSQV9JTUFHRV9GRUFUVVJFUyB2YXJpYWJsZSBhbGxvd3MgZXh0cmEgcGFja2FnZXMgdG8g
YmUgYWRkZWQgdG8gdGhlIGdlbmVyYXRlZCAKIyBpbWFnZXMuIFNvbWUgb2YgdGhlc2Ugb3B0aW9u
cyBhcmUgYWRkZWQgdG8gY2VydGFpbiBpbWFnZSB0eXBlcyBhdXRvbWF0aWNhbGx5LiBUaGUKIyB2
YXJpYWJsZSBjYW4gY29udGFpbiB0aGUgZm9sbG93aW5nIG9wdGlvbnM6CiMgICJkYmctcGtncyIg
ICAgICAgLSBhZGQgLWRiZyBwYWNrYWdlcyBmb3IgYWxsIGluc3RhbGxlZCBwYWNrYWdlcwojICAg
ICAgICAgICAgICAgICAgICAgKGFkZHMgc3ltYm9sIGluZm9ybWF0aW9uIGZvciBkZWJ1Z2dpbmcv
cHJvZmlsaW5nKQojICAiZGV2LXBrZ3MiICAgICAgIC0gYWRkIC1kZXYgcGFja2FnZXMgZm9yIGFs
bCBpbnN0YWxsZWQgcGFja2FnZXMKIyAgICAgICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91
IHdhbnQgdG8gZGV2ZWxvcCBhZ2FpbnN0IGxpYnMgaW4gdGhlIGltYWdlKQojICAicHRlc3QtcGtn
cyIgICAgIC0gYWRkIC1wdGVzdCBwYWNrYWdlcyBmb3IgYWxsIHB0ZXN0LWVuYWJsZWQgcGFja2Fn
ZXMKIyAgICAgICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gcnVuIHRoZSBw
YWNrYWdlIHRlc3Qgc3VpdGVzKQojICAidG9vbHMtc2RrIiAgICAgIC0gYWRkIGRldmVsb3BtZW50
IHRvb2xzIChnY2MsIG1ha2UsIHBrZ2NvbmZpZyBldGMuKQojICAidG9vbHMtZGVidWciICAgIC0g
YWRkIGRlYnVnZ2luZyB0b29scyAoZ2RiLCBzdHJhY2UpCiMgICJlY2xpcHNlLWRlYnVnIiAgLSBh
ZGQgRWNsaXBzZSByZW1vdGUgZGVidWdnaW5nIHN1cHBvcnQKIyAgInRvb2xzLXByb2ZpbGUiICAt
IGFkZCBwcm9maWxpbmcgdG9vbHMgKG9wcm9maWxlLCBleG1hcCwgbHR0bmcsIHZhbGdyaW5kKQoj
ICAidG9vbHMtdGVzdGFwcHMiIC0gYWRkIHVzZWZ1bCB0ZXN0aW5nIHRvb2xzICh0c19wcmludCwg
YXBsYXksIGFyZWNvcmQgZXRjLikKIyAgImRlYnVnLXR3ZWFrcyIgICAtIG1ha2UgYW4gaW1hZ2Ug
c3VpdGFibGUgZm9yIGRldmVsb3BtZW50CiMgICAgICAgICAgICAgICAgICAgICBlLmcuIHNzaCBy
b290IGFjY2VzcyBoYXMgYSBibGFuayBwYXNzd29yZAojIFRoZXJlIGFyZSBvdGhlciBhcHBsaWNh
dGlvbiB0YXJnZXRzIHRoYXQgY2FuIGJlIHVzZWQgaGVyZSB0b28sIHNlZQojIG1ldGEvY2xhc3Nl
cy9pbWFnZS5iYmNsYXNzIGFuZCBtZXRhL2NsYXNzZXMvY29yZS1pbWFnZS5iYmNsYXNzIGZvciBt
b3JlIGRldGFpbHMuCiMgV2UgZGVmYXVsdCB0byBlbmFibGluZyB0aGUgZGVidWdnaW5nIHR3ZWFr
cy4KRVhUUkFfSU1BR0VfRkVBVFVSRVMgPSAiZGVidWctdHdlYWtzIgoKIwojIEFkZGl0aW9uYWwg
aW1hZ2UgZmVhdHVyZXMKIwojIFRoZSBmb2xsb3dpbmcgaXMgYSBsaXN0IG9mIGFkZGl0aW9uYWwg
Y2xhc3NlcyB0byB1c2Ugd2hlbiBidWlsZGluZyBpbWFnZXMgd2hpY2gKIyBlbmFibGUgZXh0cmEg
ZmVhdHVyZXMuIFNvbWUgYXZhaWxhYmxlIG9wdGlvbnMgd2hpY2ggY2FuIGJlIGluY2x1ZGVkIGlu
IHRoaXMgdmFyaWFibGUgCiMgYXJlOgojICAgLSAnYnVpbGRzdGF0cycgY29sbGVjdCBidWlsZCBz
dGF0aXN0aWNzCiMgICAtICdpbWFnZS1ta2xpYnMnIHRvIHJlZHVjZSBzaGFyZWQgbGlicmFyeSBm
aWxlcyBzaXplIGZvciBhbiBpbWFnZQojICAgLSAnaW1hZ2UtcHJlbGluaycgaW4gb3JkZXIgdG8g
cHJlbGluayB0aGUgZmlsZXN5c3RlbSBpbWFnZQojICAgLSAnaW1hZ2Utc3dhYicgdG8gcGVyZm9y
bSBob3N0IHN5c3RlbSBpbnRydXNpb24gZGV0ZWN0aW9uCiMgTk9URTogaWYgbGlzdGluZyBta2xp
YnMgJiBwcmVsaW5rIGJvdGgsIHRoZW4gbWFrZSBzdXJlIG1rbGlicyBpcyBiZWZvcmUgcHJlbGlu
awojIE5PVEU6IG1rbGlicyBhbHNvIG5lZWRzIHRvIGJlIGV4cGxpY2l0bHkgZW5hYmxlZCBmb3Ig
YSBnaXZlbiBpbWFnZSwgc2VlIGxvY2FsLmNvbmYuZXh0ZW5kZWQKVVNFUl9DTEFTU0VTID89ICJi
dWlsZHN0YXRzIGltYWdlLW1rbGlicyBpbWFnZS1wcmVsaW5rIgoKIwojIFJ1bnRpbWUgdGVzdGlu
ZyBvZiBpbWFnZXMKIwojIFRoZSBidWlsZCBzeXN0ZW0gY2FuIHRlc3QgYm9vdGluZyB2aXJ0dWFs
IG1hY2hpbmUgaW1hZ2VzIHVuZGVyIHFlbXUgKGFuIGVtdWxhdG9yKQojIGFmdGVyIGFueSByb290
IGZpbGVzeXN0ZW1zIGFyZSBjcmVhdGVkIGFuZCBydW4gdGVzdHMgYWdhaW5zdCB0aG9zZSBpbWFn
ZXMuIFRvCiMgZW5hYmxlIHRoaXMgdW5jb21tZW50IHRoaXMgbGluZS4gU2VlIGNsYXNzZXMvdGVz
dGltYWdlKC1hdXRvKS5iYmNsYXNzIGZvcgojIGZ1cnRoZXIgZGV0YWlscy4KI1RFU1RfSU1BR0Ug
PSAiMSIKIwojIEludGVyYWN0aXZlIHNoZWxsIGNvbmZpZ3VyYXRpb24KIwojIFVuZGVyIGNlcnRh
aW4gY2lyY3Vtc3RhbmNlcyB0aGUgc3lzdGVtIG1heSBuZWVkIGlucHV0IGZyb20geW91IGFuZCB0
byBkbyB0aGlzIGl0IAojIGNhbiBsYXVuY2ggYW4gaW50ZXJhY3RpdmUgc2hlbGwuIEl0IG5lZWRz
IHRvIGRvIHRoaXMgc2luY2UgdGhlIGJ1aWxkIGlzIAojIG11bHRpdGhyZWFkZWQgYW5kIG5lZWRz
IHRvIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIG1vcmUgdGhhbiBvbmUgcGFyYWxs
ZWwKIyBwcm9jZXNzIG1heSByZXF1aXJlIHRoZSB1c2VyJ3MgYXR0ZW50aW9uLiBUaGUgZGVmYXVs
dCBpcyBpdGVyYXRlIG92ZXIgdGhlIGF2YWlsYWJsZQojIHRlcm1pbmFsIHR5cGVzIHRvIGZpbmQg
b25lIHRoYXQgd29ya3MuCiMKIyBFeGFtcGxlcyBvZiB0aGUgb2NjYXNpb25zIHRoaXMgbWF5IGhh
cHBlbiBhcmUgd2hlbiByZXNvbHZpbmcgcGF0Y2hlcyB3aGljaCBjYW5ub3QKIyBiZSBhcHBsaWVk
LCB0byB1c2UgdGhlIGRldnNoZWxsIG9yIHRoZSBrZXJuZWwgbWVudWNvbmZpZwojCiMgU3VwcG9y
dGVkIHZhbHVlcyBhcmUgYXV0bywgZ25vbWUsIHhmY2UsIHJ4dnQsIHNjcmVlbiwga29uc29sZSAo
S0RFIDMueCBvbmx5KSwgbm9uZQojIE5vdGU6IGN1cnJlbnRseSwgS29uc29sZSBzdXBwb3J0IG9u
bHkgd29ya3MgZm9yIEtERSAzLnggZHVlIHRvIHRoZSB3YXkKIyBuZXdlciBLb25zb2xlIHZlcnNp
b25zIGJlaGF2ZQojT0VfVEVSTUlOQUwgPSAiYXV0byIKIyBCeSBkZWZhdWx0IGRpc2FibGUgaW50
ZXJhY3RpdmUgcGF0Y2ggcmVzb2x1dGlvbiAodGFza3Mgd2lsbCBqdXN0IGZhaWwgaW5zdGVhZCk6
ClBBVENIUkVTT0xWRSA9ICJub29wIgoKIwojIERpc2sgU3BhY2UgTW9uaXRvcmluZyBkdXJpbmcg
dGhlIGJ1aWxkCiMKIyBNb25pdG9yIHRoZSBkaXNrIHNwYWNlIGR1cmluZyB0aGUgYnVpbGQuIElm
IHRoZXJlIGlzIGxlc3MgdGhhdCAxR0Igb2Ygc3BhY2Ugb3IgbGVzcwojIHRoYW4gMTAwSyBpbm9k
ZXMgaW4gYW55IGtleSBidWlsZCBsb2NhdGlvbiAoVE1QRElSLCBETF9ESVIsIFNTVEFURV9ESVIp
LCBncmFjZWZ1bGx5CiMgc2h1dGRvd24gdGhlIGJ1aWxkLiBJZiB0aGVyZSBpcyBsZXNzIHRoYXQg
MTAwTUIgb3IgMUsgaW5vZGVzLCBwZXJmb3JtIGEgaGFyZCBhYm9ydAojIG9mIHRoZSBidWlsZC4g
VGhlIHJlYXNvbiBmb3IgdGhpcyBpcyB0aGF0IHJ1bm5pbmcgY29tcGxldGVseSBvdXQgb2Ygc3Bh
Y2UgY2FuIGNvcnJ1cHQKIyBmaWxlcyBhbmQgZGFtYWdlcyB0aGUgYnVpbGQgaW4gd2F5cyB3aGlj
aCBtYXkgbm90IGJlIGVhc2lseSByZWNvdmVyYWJsZS4KQkJfRElTS01PTl9ESVJTID0gIlwKICAg
IFNUT1BUQVNLUywke1RNUERJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsJHtETF9ESVJ9LDFH
LDEwMEsgXAogICAgU1RPUFRBU0tTLCR7U1NUQVRFX0RJUn0sMUcsMTAwSyBcCiAgICBBQk9SVCwk
e1RNUERJUn0sMTAwTSwxSyBcCiAgICBBQk9SVCwke0RMX0RJUn0sMTAwTSwxSyBcCiAgICBBQk9S
VCwke1NTVEFURV9ESVJ9LDEwME0sMUsiIAoKIwojIFNoYXJlZC1zdGF0ZSBmaWxlcyBmcm9tIG90
aGVyIGxvY2F0aW9ucwojCiMgQXMgbWVudGlvbmVkIGFib3ZlLCBzaGFyZWQgc3RhdGUgZmlsZXMg
YXJlIHByZWJ1aWx0IGNhY2hlIGRhdGEgb2JqZWN0cyB3aGljaCBjYW4gCiMgdXNlZCB0byBhY2Nl
bGVyYXRlIGJ1aWxkIHRpbWUuIFRoaXMgdmFyaWFibGUgY2FuIGJlIHVzZWQgdG8gY29uZmlndXJl
IHRoZSBzeXN0ZW0KIyB0byBzZWFyY2ggb3RoZXIgbWlycm9yIGxvY2F0aW9ucyBmb3IgdGhlc2Ug
b2JqZWN0cyBiZWZvcmUgaXQgYnVpbGRzIHRoZSBkYXRhIGl0c2VsZi4KIwojIFRoaXMgY2FuIGJl
IGEgZmlsZXN5c3RlbSBkaXJlY3RvcnksIG9yIGEgcmVtb3RlIHVybCBzdWNoIGFzIGh0dHAgb3Ig
ZnRwLiBUaGVzZQojIHdvdWxkIGNvbnRhaW4gdGhlIHNzdGF0ZS1jYWNoZSByZXN1bHRzIGZyb20g
cHJldmlvdXMgYnVpbGRzIChwb3NzaWJseSBmcm9tIG90aGVyIAojIG1hY2hpbmVzKS4gVGhpcyB2
YXJpYWJsZSB3b3JrcyBsaWtlIGZldGNoZXIgTUlSUk9SUy9QUkVNSVJST1JTIGFuZCBwb2ludHMg
dG8gdGhlIAojIGNhY2hlIGxvY2F0aW9ucyB0byBjaGVjayBmb3IgdGhlIHNoYXJlZCBvYmplY3Rz
LgojIE5PVEU6IGlmIHRoZSBtaXJyb3IgdXNlcyB0aGUgc2FtZSBzdHJ1Y3R1cmUgYXMgU1NUQVRF
X0RJUiwgeW91IG5lZWQgdG8gYWRkIFBBVEgKIyBhdCB0aGUgZW5kIGFzIHNob3duIGluIHRoZSBl
eGFtcGxlcyBiZWxvdy4gVGhpcyB3aWxsIGJlIHN1YnN0aXR1dGVkIHdpdGggdGhlCiMgY29ycmVj
dCBwYXRoIHdpdGhpbiB0aGUgZGlyZWN0b3J5IHN0cnVjdHVyZS4KI1NTVEFURV9NSVJST1JTID89
ICJcCiNmaWxlOi8vLiogaHR0cDovL3NvbWVzZXJ2ZXIudGxkL3NoYXJlL3NzdGF0ZS9QQVRIO2Rv
d25sb2FkZmlsZW5hbWU9UEFUSCBcbiBcCiNmaWxlOi8vLiogZmlsZTovLy9zb21lL2xvY2FsL2Rp
ci9zc3RhdGUvUEFUSCIKCgojCiMgUWVtdSBjb25maWd1cmF0aW9uCiMKIyBCeSBkZWZhdWx0IHFl
bXUgd2lsbCBidWlsZCB3aXRoIGEgYnVpbHRpbiBWTkMgc2VydmVyIHdoZXJlIGdyYXBoaWNhbCBv
dXRwdXQgY2FuIGJlCiMgc2Vlbi4gVGhlIHR3byBsaW5lcyBiZWxvdyBlbmFibGUgdGhlIFNETCBi
YWNrZW5kIHRvby4gVGhpcyBhc3N1bWVzIHRoZXJlIGlzIGEKIyBsaWJzZGwgbGlicmFyeSBhdmFp
bGFibGUgb24geW91ciBidWlsZCBzeXN0ZW0uClBBQ0tBR0VDT05GSUdfYXBwZW5kX3BuLXFlbXUt
bmF0aXZlID0gIiBzZGwiClBBQ0tBR0VDT05GSUdfYXBwZW5kX3BuLW5hdGl2ZXNkay1xZW11ID0g
IiBzZGwiCkFTU1VNRV9QUk9WSURFRCArPSAibGlic2RsLW5hdGl2ZSIKCgojIENPTkZfVkVSU0lP
TiBpcyBpbmNyZWFzZWQgZWFjaCB0aW1lIGJ1aWxkL2NvbmYvIGNoYW5nZXMgaW5jb21wYXRpYmx5
IGFuZCBpcyB1c2VkIHRvCiMgdHJhY2sgdGhlIHZlcnNpb24gb2YgdGhpcyBmaWxlIHdoZW4gaXQg
d2FzIGdlbmVyYXRlZC4gVGhpcyBjYW4gc2FmZWx5IGJlIGlnbm9yZWQgaWYKIyB0aGlzIGRvZXNu
J3QgbWVhbiBhbnl0aGluZyB0byB5b3UuCkNPTkZfVkVSU0lPTiA9ICIxIgo=

------=_Part_1119906_1385641774.1437666811234
Content-Type: application/octet-stream
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=bblayers.conf
Content-ID: <027d21b5-fb6f-83fe-9c19-1e3f0fd5aed4@yahoo.com>

IyBMQVlFUl9DT05GX1ZFUlNJT04gaXMgaW5jcmVhc2VkIGVhY2ggdGltZSBidWlsZC9jb25mL2Ji
bGF5ZXJzLmNvbmYKIyBjaGFuZ2VzIGluY29tcGF0aWJseQpMQ09ORl9WRVJTSU9OID0gIjYiCgpC
QlBBVEggPSAiJHtUT1BESVJ9IgpCQkZJTEVTID89ICIiCgpCQkxBWUVSUyA/PSAiIFwKICAvaG9t
ZS92aWRhbC93a2cveW9jdG8vUmFzcGJlcnJ5UGkyL3Bva3kvbWV0YSBcCiAgL2hvbWUvdmlkYWwv
d2tnL3lvY3RvL1Jhc3BiZXJyeVBpMi9wb2t5L21ldGEteW9jdG8gXAogIC9ob21lL3ZpZGFsL3dr
Zy95b2N0by9SYXNwYmVycnlQaTIvcG9reS9tZXRhLXlvY3RvLWJzcCBcCiAgL2hvbWUvdmlkYWwv
d2tnL3lvY3RvL1Jhc3BiZXJyeVBpMi9wb2t5L21ldGEtcmFzcGJlcnJ5cGkgXAogICIKQkJMQVlF
UlNfTk9OX1JFTU9WQUJMRSA/PSAiIFwKICAvaG9tZS92aWRhbC93a2cveW9jdG8vUmFzcGJlcnJ5
UGkyL3Bva3kvbWV0YSBcCiAgL2hvbWUvdmlkYWwvd2tnL3lvY3RvL1Jhc3BiZXJyeVBpMi9wb2t5
L21ldGEteW9jdG8gXAogICIK

------=_Part_1119906_1385641774.1437666811234--
