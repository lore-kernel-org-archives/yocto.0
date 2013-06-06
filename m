Return-Path: <fahad.usman@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A12ADE01566
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 01:25:51 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp1so877427pab.35
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2013 01:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=ovj1jOZztQDBrnup86xNzG/2NK/M0qs3zAp5OgRPgow=;
	b=lL1SO6IysoUj8Br0eIIjxLA8qPjYMS6iX7vjLDKJrRnp2quo3oi37lgFfD4FNJup74
	SjbE4XVRSSBICHL2wxsY+/KMdg9Z9/Uxg+KVQTCle6elWxDX8AE38JAngf+Qp49kubHP
	eatBbtJdpGUx0M94ro3J76DZA1lA6930oO982oDYf9E/+qlAJM62RkX7SYiNlmz9AJEy
	xtjgVbxlpDO2NUr3azxCbx4xK/kk8kCofhKQX/5cwf0VTOkDa6vzUxkJxCW3mdRpLCbD
	KdMTnS1Aw1nuVfnztIv4Kah+YY88kKJECUksVYU9sgHQQwQSxTSogQCRW1DQ0DqoYIA7
	jv1w==
X-Received: by 10.68.224.1 with SMTP id qy1mr38170918pbc.85.1370507151288;
	Thu, 06 Jun 2013 01:25:51 -0700 (PDT)
MIME-Version: 1.0
Sender: fahad.usman@gmail.com
Received: by 10.70.25.162 with HTTP; Thu, 6 Jun 2013 01:25:21 -0700 (PDT)
In-Reply-To: <1370494441-20953-1-git-send-email-fahad_usman@mentor.com>
References: <1370494441-20953-1-git-send-email-fahad_usman@mentor.com>
From: Fahad Usman <fahad_usman@mentor.com>
Date: Thu, 6 Jun 2013 13:25:21 +0500
X-Google-Sender-Auth: PRrIcZELSa7_dxNcs7eXksgjKvU
Message-ID: <CAHVMiV-=vB1EsRRvLh-xCtpiv2V4L9BUJNE8Rbt3Jr7jx_VQMA@mail.gmail.com>
To: florin.sarbu@windriver.com, holger.behrens@windriver.com
Cc: yocto@yoctoproject.org
Subject: [meta-ivi][PATCH] packagegroups: restructure the yocto-ivi PGs
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
X-List-Received-Date: Thu, 06 Jun 2013 08:25:51 -0000
Content-Type: multipart/alternative; boundary=047d7b163241ea32c904de780f7c

--047d7b163241ea32c904de780f7c
Content-Type: text/plain; charset=ISO-8859-1

fyi

---------- Forwarded message ----------
From: Fahad Usman <fahad_usman@mentor.com>
Date: Thu, Jun 6, 2013 at 9:54 AM
Subject: [meta-ivi][PATCH] packagegroups: restructure the yocto-ivi PGs
To: yocto@yoctoproject.org
Cc: Fahad Usman <fahad_usman@mentor.com>


with the current implementation of packagegroups, it's not clear how a
particular recipe map to the GENIVI baseline document.

this scheme remove confusion about which packagegroup a certain recipe
belong
to. And provide guidance to the customers about modifying the image. For
instance customers should be careful about replacing specific-p1 components
if
they wish to maintain GENIVI compliance.

Signed-off-by: Fahad Usman <fahad_usman@mentor.com>
---
 recipes-yocto-ivi/images/foton-image.bb             |  8 +++++++-
 .../packagegroup-abstract-component-p1.bb           | 21
+++++++++++++++++++++
 ...-p2.bb => packagegroup-abstract-component-p2.bb} | 14 ++++++--------
 .../packagegroup-placeholder-component-p1.bb        | 20
++++++++++++++++++++
 ...-p1.bb => packagegroup-specific-component-p1.bb} | 21
+++++++--------------
 .../packagegroup-specific-component-p2.bb           | 19
+++++++++++++++++++
 6 files changed, 80 insertions(+), 23 deletions(-)
 create mode 100644 recipes-yocto-ivi/packagegroups/
packagegroup-abstract-component-p1.bb
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p2.bb =>
packagegroup-abstract-component-p2.bb} (63%)
 create mode 100644 recipes-yocto-ivi/packagegroups/
packagegroup-placeholder-component-p1.bb
 rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p1.bb =>
packagegroup-specific-component-p1.bb} (67%)
 create mode 100644 recipes-yocto-ivi/packagegroups/
packagegroup-specific-component-p2.bb

diff --git a/recipes-yocto-ivi/images/foton-image.bbb/recipes-yocto-ivi/images/
foton-image.bb
index 6d3077e..0b9a04a 100644
--- a/recipes-yocto-ivi/images/foton-image.bb
+++ b/recipes-yocto-ivi/images/foton-image.bb
@@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc
 PV = "4.0.1"
 #PR = "r1"

-IMAGE_INSTALL_append = " packagegroup-core-p1 packagegroup-core-p2"
+IMAGE_INSTALL_append = " \
+    packagegroup-abstract-component-p1 \
+    packagegroup-placeholder-component-p1 \
+    packagegroup-specific-component-p2 \
+    packagegroup-abstract-component-p2 \
+    packagegroup-specific-component-p1 \
+"

 # Add image specific packages
diff --git a/recipes-yocto-ivi/packagegroups/
packagegroup-abstract-component-p1.bb b/recipes-yocto-ivi/packagegroups/
packagegroup-abstract-component-p1.bb
new file mode 100644
index 0000000..7730252
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p1.bb
@@ -0,0 +1,21 @@
+DESCRIPTION = "GENIVI P1 Abstract components (AC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM =
"file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-abstract-component-p1 \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+RDEPENDS_${PN} += "\
+    bluez4 \
+    bluez4-systemd \
+    eglibc \
+    layer-management \
+    obex-client \
+    obexd \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bbb/recipes-yocto-ivi/packagegroups/
packagegroup-abstract-component-p2.bb
similarity index 63%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
rename to recipes-yocto-ivi/packagegroups/
packagegroup-abstract-component-p2.bb
index e9b7b86..c9ca67b 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-abstract-component-p2.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "P2 packages"
+DESCRIPTION = "GENIVI P2 Abstract components (SC)"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM =
"file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 PR = "r0"
@@ -6,16 +6,14 @@ PR = "r0"
 inherit packagegroup

 PACKAGES = "\
-    packagegroup-core-p2 \
+    packagegroup-abstract-component-p2 \
     "

-RDEPENDS_packagegroup-core-p2 = "\
+ALLOW_EMPTY_${PN} = "1"
+
+
+RDEPENDS_${PN} += "\
     node-state-manager \
     ofono \
     ofono-systemd \
-    pulseaudio-server \
-    wireless-tools \
     "
-
-
-
diff --git a/recipes-yocto-ivi/packagegroups/
packagegroup-placeholder-component-p1.bb b/recipes-yocto-ivi/packagegroups/
packagegroup-placeholder-component-p1.bb
new file mode 100644
index 0000000..373266a
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/
packagegroup-placeholder-component-p1.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "GENIVI P1 Placeholder components (PC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM =
"file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-placeholder-component-p1 \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+
+RDEPENDS_${PN} += "\
+    "
+
+RRECOMMENDS_${PN} = "\
+    packagegroup-xserver-ivi \
+    "
diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bbb/recipes-yocto-ivi/packagegroups/
packagegroup-specific-component-p1.bb
similarity index 67%
rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
rename to recipes-yocto-ivi/packagegroups/
packagegroup-specific-component-p1.bb
index 657aa89..731813b 100644
--- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p1.bb
@@ -1,44 +1,37 @@
-DESCRIPTION = "P1 packages"
+DESCRIPTION = "GENIVI P1 Specific components (SC)"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM =
"file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r1"
+PR = "r0"

 inherit packagegroup

 PACKAGES = "\
-    packagegroup-core-p1 \
+    packagegroup-specific-component-p1 \
     "

-RDEPENDS_packagegroup-core-p1 = "\
+ALLOW_EMPTY_${PN} = "1"
+
+
+RDEPENDS_${PN} += "\
     kernel-modules \
     audiomanager \
     dlt-daemon \
     dlt-daemon-systemd \
     alsa-lib  \
     alsa-utils \
-    bluez4 \
-    bluez4-systemd \
     connman \
     curl \
     dbus \
     ecryptfs-utils \
-    eglibc \
     fuse \
     gstreamer \
     gst-plugins-good \
     gst-plugins-base \
-    layer-management \
     libusb1 \
     node-startup-controller \
-    obex-client \
-    obexd \
     openssl \
     quota \
     sqlite3 \
     udev \
     wpa-supplicant \
     "
-
-RRECOMMENDS_${PN} = "\
-    packagegroup-xserver-ivi \
-    "
diff --git a/recipes-yocto-ivi/packagegroups/
packagegroup-specific-component-p2.bb b/recipes-yocto-ivi/packagegroups/
packagegroup-specific-component-p2.bb
new file mode 100644
index 0000000..18a2abb
--- /dev/null
+++ b/recipes-yocto-ivi/packagegroups/packagegroup-specific-component-p2.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "GENIVI P2 Specific components (SC)"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM =
"file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+inherit packagegroup
+
+PACKAGES = "\
+    packagegroup-specific-component-p2 \
+    "
+
+ALLOW_EMPTY_${PN} = "1"
+
+
+RDEPENDS_${PN} += "\
+    pulseaudio-server \
+    wireless-tools \
+    "
+
--
1.8.2.3

--047d7b163241ea32c904de780f7c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">fyi<br><br><div class=3D"gmail_quote">---------- Forwarded=
 message ----------<br>From: <b class=3D"gmail_sendername">Fahad Usman</b> =
<span dir=3D"ltr">&lt;<a href=3D"mailto:fahad_usman@mentor.com">fahad_usman=
@mentor.com</a>&gt;</span><br>

Date: Thu, Jun 6, 2013 at 9:54 AM<br>Subject: [meta-ivi][PATCH] packagegrou=
ps: restructure the yocto-ivi PGs<br>To: <a href=3D"mailto:yocto@yoctoproje=
ct.org">yocto@yoctoproject.org</a><br>Cc: Fahad Usman &lt;<a href=3D"mailto=
:fahad_usman@mentor.com">fahad_usman@mentor.com</a>&gt;<br>

<br><br>with the current implementation of packagegroups, it&#39;s not clea=
r how a<br>
particular recipe map to the GENIVI baseline document.<br>
<br>
this scheme remove confusion about which packagegroup a certain recipe belo=
ng<br>
to. And provide guidance to the customers about modifying the image. For<br=
>
instance customers should be careful about replacing specific-p1 components=
 if<br>
they wish to maintain GENIVI compliance.<br>
<br>
Signed-off-by: Fahad Usman &lt;<a href=3D"mailto:fahad_usman@mentor.com">fa=
had_usman@mentor.com</a>&gt;<br>
---<br>
=A0recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"_bl=
ank">foton-image.bb</a> =A0 =A0 =A0 =A0 =A0 =A0 | =A08 +++++++-<br>
=A0.../<a href=3D"http://packagegroup-abstract-component-p1.bb" target=3D"_=
blank">packagegroup-abstract-component-p1.bb</a> =A0 =A0 =A0 =A0 =A0 | 21 +=
++++++++++++++++++++<br>
=A0...-<a href=3D"http://p2.bb" target=3D"_blank">p2.bb</a> =3D&gt; <a href=
=3D"http://packagegroup-abstract-component-p2.bb" target=3D"_blank">package=
group-abstract-component-p2.bb</a>} | 14 ++++++--------<br>
=A0.../<a href=3D"http://packagegroup-placeholder-component-p1.bb" target=
=3D"_blank">packagegroup-placeholder-component-p1.bb</a> =A0 =A0 =A0 =A0| 2=
0 ++++++++++++++++++++<br>
=A0...-<a href=3D"http://p1.bb" target=3D"_blank">p1.bb</a> =3D&gt; <a href=
=3D"http://packagegroup-specific-component-p1.bb" target=3D"_blank">package=
group-specific-component-p1.bb</a>} | 21 +++++++--------------<br>
=A0.../<a href=3D"http://packagegroup-specific-component-p2.bb" target=3D"_=
blank">packagegroup-specific-component-p2.bb</a> =A0 =A0 =A0 =A0 =A0 | 19 +=
++++++++++++++++++<br>
=A06 files changed, 80 insertions(+), 23 deletions(-)<br>
=A0create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://pac=
kagegroup-abstract-component-p1.bb" target=3D"_blank">packagegroup-abstract=
-component-p1.bb</a><br>
=A0rename recipes-yocto-ivi/packagegroups/{<a href=3D"http://packagegroup-c=
ore-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a> =3D&gt; <a href=3D=
"http://packagegroup-abstract-component-p2.bb" target=3D"_blank">packagegro=
up-abstract-component-p2.bb</a>} (63%)<br>


=A0create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://pac=
kagegroup-placeholder-component-p1.bb" target=3D"_blank">packagegroup-place=
holder-component-p1.bb</a><br>
=A0rename recipes-yocto-ivi/packagegroups/{<a href=3D"http://packagegroup-c=
ore-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a> =3D&gt; <a href=3D=
"http://packagegroup-specific-component-p1.bb" target=3D"_blank">packagegro=
up-specific-component-p1.bb</a>} (67%)<br>


=A0create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://pac=
kagegroup-specific-component-p2.bb" target=3D"_blank">packagegroup-specific=
-component-p2.bb</a><br>
<br>
diff --git a/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" tar=
get=3D"_blank">foton-image.bb</a> b/recipes-yocto-ivi/images/<a href=3D"htt=
p://foton-image.bb" target=3D"_blank">foton-image.bb</a><br>
index 6d3077e..0b9a04a 100644<br>
--- a/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"=
_blank">foton-image.bb</a><br>
+++ b/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"=
_blank">foton-image.bb</a><br>
@@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc<br>
=A0PV =3D &quot;4.0.1&quot;<br>
=A0#PR =3D &quot;r1&quot;<br>
<br>
-IMAGE_INSTALL_append =3D &quot; packagegroup-core-p1 packagegroup-core-p2&=
quot;<br>
+IMAGE_INSTALL_append =3D &quot; \<br>
+ =A0 =A0packagegroup-abstract-component-p1 \<br>
+ =A0 =A0packagegroup-placeholder-component-p1 \<br>
+ =A0 =A0packagegroup-specific-component-p2 \<br>
+ =A0 =A0packagegroup-abstract-component-p2 \<br>
+ =A0 =A0packagegroup-specific-component-p1 \<br>
+&quot;<br>
<br>
=A0# Add image specific packages<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-abstract-component-p1.bb" target=3D"_blank">packagegroup-abstract-componen=
t-p1.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegrou=
p-abstract-component-p1.bb" target=3D"_blank">packagegroup-abstract-compone=
nt-p1.bb</a><br>


new file mode 100644<br>
index 0000000..7730252<br>
--- /dev/null<br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-abstra=
ct-component-p1.bb" target=3D"_blank">packagegroup-abstract-component-p1.bb=
</a><br>
@@ -0,0 +1,21 @@<br>
+DESCRIPTION =3D &quot;GENIVI P1 Abstract components (AC)&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=
=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+inherit packagegroup<br>
+<br>
+PACKAGES =3D &quot;\<br>
+ =A0 =A0packagegroup-abstract-component-p1 \<br>
+ =A0 =A0&quot;<br>
+<br>
+ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;\<br>
+ =A0 =A0bluez4 \<br>
+ =A0 =A0bluez4-systemd \<br>
+ =A0 =A0eglibc \<br>
+ =A0 =A0layer-management \<br>
+ =A0 =A0obex-client \<br>
+ =A0 =A0obexd \<br>
+ =A0 =A0&quot;<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-core-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a> b/recipes-yocto-=
ivi/packagegroups/<a href=3D"http://packagegroup-abstract-component-p2.bb" =
target=3D"_blank">packagegroup-abstract-component-p2.bb</a><br>


similarity index 63%<br>
rename from recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-=
core-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a><br>
rename to recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-ab=
stract-component-p2.bb" target=3D"_blank">packagegroup-abstract-component-p=
2.bb</a><br>
index e9b7b86..c9ca67b 100644<br>
--- a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-core-p=
2.bb" target=3D"_blank">packagegroup-core-p2.bb</a><br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-abstra=
ct-component-p2.bb" target=3D"_blank">packagegroup-abstract-component-p2.bb=
</a><br>
@@ -1,4 +1,4 @@<br>
-DESCRIPTION =3D &quot;P2 packages&quot;<br>
+DESCRIPTION =3D &quot;GENIVI P2 Abstract components (SC)&quot;<br>
=A0LICENSE =3D &quot;MIT&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;m=
d5=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
=A0PR =3D &quot;r0&quot;<br>
@@ -6,16 +6,14 @@ PR =3D &quot;r0&quot;<br>
=A0inherit packagegroup<br>
<br>
=A0PACKAGES =3D &quot;\<br>
- =A0 =A0packagegroup-core-p2 \<br>
+ =A0 =A0packagegroup-abstract-component-p2 \<br>
=A0 =A0 =A0&quot;<br>
<br>
-RDEPENDS_packagegroup-core-p2 =3D &quot;\<br>
+ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
+<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;\<br>
=A0 =A0 =A0node-state-manager \<br>
=A0 =A0 =A0ofono \<br>
=A0 =A0 =A0ofono-systemd \<br>
- =A0 =A0pulseaudio-server \<br>
- =A0 =A0wireless-tools \<br>
=A0 =A0 =A0&quot;<br>
-<br>
-<br>
-<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-placeholder-component-p1.bb" target=3D"_blank">packagegroup-placeholder-co=
mponent-p1.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packa=
gegroup-placeholder-component-p1.bb" target=3D"_blank">packagegroup-placeho=
lder-component-p1.bb</a><br>


new file mode 100644<br>
index 0000000..373266a<br>
--- /dev/null<br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-placeh=
older-component-p1.bb" target=3D"_blank">packagegroup-placeholder-component=
-p1.bb</a><br>
@@ -0,0 +1,20 @@<br>
+DESCRIPTION =3D &quot;GENIVI P1 Placeholder components (PC)&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=
=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+inherit packagegroup<br>
+<br>
+PACKAGES =3D &quot;\<br>
+ =A0 =A0packagegroup-placeholder-component-p1 \<br>
+ =A0 =A0&quot;<br>
+<br>
+ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
+<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;\<br>
+ =A0 =A0&quot;<br>
+<br>
+RRECOMMENDS_${PN} =3D &quot;\<br>
+ =A0 =A0packagegroup-xserver-ivi \<br>
+ =A0 =A0&quot;<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-core-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a> b/recipes-yocto-=
ivi/packagegroups/<a href=3D"http://packagegroup-specific-component-p1.bb" =
target=3D"_blank">packagegroup-specific-component-p1.bb</a><br>


similarity index 67%<br>
rename from recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-=
core-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a><br>
rename to recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-sp=
ecific-component-p1.bb" target=3D"_blank">packagegroup-specific-component-p=
1.bb</a><br>
index 657aa89..731813b 100644<br>
--- a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-core-p=
1.bb" target=3D"_blank">packagegroup-core-p1.bb</a><br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-specif=
ic-component-p1.bb" target=3D"_blank">packagegroup-specific-component-p1.bb=
</a><br>
@@ -1,44 +1,37 @@<br>
-DESCRIPTION =3D &quot;P1 packages&quot;<br>
+DESCRIPTION =3D &quot;GENIVI P1 Specific components (SC)&quot;<br>
=A0LICENSE =3D &quot;MIT&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;m=
d5=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
-PR =3D &quot;r1&quot;<br>
+PR =3D &quot;r0&quot;<br>
<br>
=A0inherit packagegroup<br>
<br>
=A0PACKAGES =3D &quot;\<br>
- =A0 =A0packagegroup-core-p1 \<br>
+ =A0 =A0packagegroup-specific-component-p1 \<br>
=A0 =A0 =A0&quot;<br>
<br>
-RDEPENDS_packagegroup-core-p1 =3D &quot;\<br>
+ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
+<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;\<br>
=A0 =A0 =A0kernel-modules \<br>
=A0 =A0 =A0audiomanager \<br>
=A0 =A0 =A0dlt-daemon \<br>
=A0 =A0 =A0dlt-daemon-systemd \<br>
=A0 =A0 =A0alsa-lib =A0\<br>
=A0 =A0 =A0alsa-utils \<br>
- =A0 =A0bluez4 \<br>
- =A0 =A0bluez4-systemd \<br>
=A0 =A0 =A0connman \<br>
=A0 =A0 =A0curl \<br>
=A0 =A0 =A0dbus \<br>
=A0 =A0 =A0ecryptfs-utils \<br>
- =A0 =A0eglibc \<br>
=A0 =A0 =A0fuse \<br>
=A0 =A0 =A0gstreamer \<br>
=A0 =A0 =A0gst-plugins-good \<br>
=A0 =A0 =A0gst-plugins-base \<br>
- =A0 =A0layer-management \<br>
=A0 =A0 =A0libusb1 \<br>
=A0 =A0 =A0node-startup-controller \<br>
- =A0 =A0obex-client \<br>
- =A0 =A0obexd \<br>
=A0 =A0 =A0openssl \<br>
=A0 =A0 =A0quota \<br>
=A0 =A0 =A0sqlite3 \<br>
=A0 =A0 =A0udev \<br>
=A0 =A0 =A0wpa-supplicant \<br>
=A0 =A0 =A0&quot;<br>
-<br>
-RRECOMMENDS_${PN} =3D &quot;\<br>
- =A0 =A0packagegroup-xserver-ivi \<br>
- =A0 =A0&quot;<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-specific-component-p2.bb" target=3D"_blank">packagegroup-specific-componen=
t-p2.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegrou=
p-specific-component-p2.bb" target=3D"_blank">packagegroup-specific-compone=
nt-p2.bb</a><br>


new file mode 100644<br>
index 0000000..18a2abb<br>
--- /dev/null<br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-specif=
ic-component-p2.bb" target=3D"_blank">packagegroup-specific-component-p2.bb=
</a><br>
@@ -0,0 +1,19 @@<br>
+DESCRIPTION =3D &quot;GENIVI P2 Specific components (SC)&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=
=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+inherit packagegroup<br>
+<br>
+PACKAGES =3D &quot;\<br>
+ =A0 =A0packagegroup-specific-component-p2 \<br>
+ =A0 =A0&quot;<br>
+<br>
+ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
+<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;\<br>
+ =A0 =A0pulseaudio-server \<br>
+ =A0 =A0wireless-tools \<br>
+ =A0 =A0&quot;<br>
+<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.2.3<br>
<br>
</font></span></div><br></div>

--047d7b163241ea32c904de780f7c--
