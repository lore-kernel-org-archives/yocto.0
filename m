Return-Path: <fahad.usman@gmail.com>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A50AE013A5
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 00:58:14 -0700 (PDT)
Received: by mail-pd0-f173.google.com with SMTP id v14so6128132pde.18
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 00:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=fjfVrpMzE5nA/l+1c4XJxZZFT4e37RSiYNa4lAVQvb8=;
	b=ZBPpZChph0+BbyAtuhIvkk1Xyt9KrsDkbA0eQQGbjNGyu1ia5Gt/pg2/91Ebzc1SFt
	AvkvT8dwBrKM2ytxJHsveaw0pjbS+1pfT/rO8y4Xrg8j/HLmloM3Aeo8IpK8XZF6wJpl
	P7ret/lJIk1N58EW/fJo0fTk5Gx9WvFVsJC/pmBIHGoLGHOhkVMZxjWPuIslsml1j8cM
	xK4f5MwmY1m8xPPaNYMcPBudOirpSc6rMO/963aGGFo3AFcwkfAswKYM5F9fqgD5HS7j
	rVSUPIf2vhPk1IQVgm8yP6x+knI8X5eVzt2M662y/M9M3y2KdGK4PtYxJp0yHelrvVCw
	CROA==
X-Received: by 10.67.5.131 with SMTP id cm3mr32497762pad.80.1369727893584;
	Tue, 28 May 2013 00:58:13 -0700 (PDT)
MIME-Version: 1.0
Sender: fahad.usman@gmail.com
Received: by 10.70.25.162 with HTTP; Tue, 28 May 2013 00:57:43 -0700 (PDT)
In-Reply-To: <1369209603-29493-1-git-send-email-fahad_usman@mentor.com>
References: <1369209603-29493-1-git-send-email-fahad_usman@mentor.com>
From: Fahad Usman <fahad_usman@mentor.com>
Date: Tue, 28 May 2013 12:57:43 +0500
X-Google-Sender-Auth: SHxdmQXMKc7-yUAXbGHzadpqxEA
Message-ID: <CAHVMiV-RdhpmWgxzq5A2JNfERV3SbcrxutvJT2mpLDVniHSW6w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-ivi][RFC] packagegroups: restructure the yocto-ivi PGs
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
X-List-Received-Date: Tue, 28 May 2013 07:58:14 -0000
Content-Type: multipart/alternative; boundary=047d7b1600b189426404ddc2a0ad

--047d7b1600b189426404ddc2a0ad
Content-Type: text/plain; charset=ISO-8859-1

Hi all,
Kindly review the following change.

Thanks,
Fahad


On Wed, May 22, 2013 at 1:00 PM, Fahad Usman <fahad_usman@mentor.com> wrote:

> with the current implementation of packagegroups, it's not clear how a
> particular recipe map to the GENIVI baseline document.
>
> this scheme remove confusion about which packagegroup a certain recipe
> belong
> to. And provide guidance to the customers about modifying the image. For
> instance customers should be careful about replacing specific-p1
> components if
> they wish to maintain GENIVI compliance.
>
> Signed-off-by: Fahad Usman <fahad_usman@mentor.com>
> ---
>  recipes-yocto-ivi/images/foton-image.bb             |  8 +++++++-
>  .../packagegroup-foton-abstract-component-p1.bb     | 21
> +++++++++++++++++++++
>  ... => packagegroup-foton-abstract-component-p2.bb} | 14 ++++++--------
>  .../packagegroup-foton-placeholder-component-p1.bb  | 20
> ++++++++++++++++++++
>  ... => packagegroup-foton-specific-component-p1.bb} | 21
> +++++++--------------
>  .../packagegroup-foton-specific-component-p2.bb     | 19
> +++++++++++++++++++
>  6 files changed, 80 insertions(+), 23 deletions(-)
>  create mode 100644 recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p1.bb
>  rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p2.bb =>
> packagegroup-foton-abstract-component-p2.bb} (61%)
>  create mode 100644 recipes-yocto-ivi/packagegroups/
> packagegroup-foton-placeholder-component-p1.bb
>  rename recipes-yocto-ivi/packagegroups/{packagegroup-core-p1.bb =>
> packagegroup-foton-specific-component-p1.bb} (67%)
>  create mode 100644 recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p2.bb
>
> diff --git a/recipes-yocto-ivi/images/foton-image.bbb/recipes-yocto-ivi/images/
> foton-image.bb
> index 6532519..f83aaf9 100644
> --- a/recipes-yocto-ivi/images/foton-image.bb
> +++ b/recipes-yocto-ivi/images/foton-image.bb
> @@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc
>  PV = "4.0.0"
>  #PR = "r1"
>
> -IMAGE_INSTALL_append = " packagegroup-core-p1 packagegroup-core-p2"
> +IMAGE_INSTALL_append = " \
> +    packagegroup-foton-abstract-component-p1 \
> +    packagegroup-foton-placeholder-component-p1 \
> +    packagegroup-foton-specific-component-p2 \
> +    packagegroup-foton-abstract-component-p2 \
> +    packagegroup-foton-specific-component-p1 \
> +"
>
>  # Add image specific packages
> diff --git a/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p1.bbb/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p1.bb
> new file mode 100644
> index 0000000..9ff02b2
> --- /dev/null
> +++ b/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p1.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION = "GENIVI 4.0 (Foton) P1 Abstract components (AC)"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +PR = "r0"
> +
> +inherit packagegroup
> +
> +PACKAGES = "\
> +    packagegroup-foton-abstract-component-p1 \
> +    "
> +
> +ALLOW_EMPTY = "1"
> +
> +RDEPENDS_${PN} += "\
> +    bluez4 \
> +    bluez4-systemd \
> +    eglibc \
> +    layer-management \
> +    obex-client \
> +    obexd \
> +    "
> diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bbb/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p2.bb
> similarity index 61%
> rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
> rename to recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p2.bb
> index e9b7b86..ac6af13 100644
> --- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p2.bb
> +++ b/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-abstract-component-p2.bb
> @@ -1,4 +1,4 @@
> -DESCRIPTION = "P2 packages"
> +DESCRIPTION = "GENIVI 4.0 (Foton) P2 Abstract components (SC)"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM =
> "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>  PR = "r0"
> @@ -6,16 +6,14 @@ PR = "r0"
>  inherit packagegroup
>
>  PACKAGES = "\
> -    packagegroup-core-p2 \
> +    packagegroup-foton-abstract-component-p2 \
>      "
>
> -RDEPENDS_packagegroup-core-p2 = "\
> +ALLOW_EMPTY = "1"
> +
> +
> +RDEPENDS_${PN} += "\
>      node-state-manager \
>      ofono \
>      ofono-systemd \
> -    pulseaudio-server \
> -    wireless-tools \
>      "
> -
> -
> -
> diff --git a/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-placeholder-component-p1.bbb/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-placeholder-component-p1.bb
> new file mode 100644
> index 0000000..fd76884
> --- /dev/null
> +++ b/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-placeholder-component-p1.bb
> @@ -0,0 +1,20 @@
> +DESCRIPTION = "GENIVI 4.0 (Foton) P1 Placeholder components"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +PR = "r0"
> +
> +inherit packagegroup
> +
> +PACKAGES = "\
> +    packagegroup-foton-placeholder-component-p1 \
> +    "
> +
> +ALLOW_EMPTY = "1"
> +
> +
> +RDEPENDS_${PN} += "\
> +    "
> +
> +RRECOMMENDS_${PN} = "\
> +    packagegroup-xserver-ivi \
> +    "
> diff --git a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bbb/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p1.bb
> similarity index 67%
> rename from recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
> rename to recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p1.bb
> index f3ec738..06cf375 100644
> --- a/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
> +++ b/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p1.bb
> @@ -1,45 +1,38 @@
> -DESCRIPTION = "P1 packages"
> +DESCRIPTION = "GENIVI 4.0 (Foton) P1 Specific components (SC)"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM =
> "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> -PR = "r1"
> +PR = "r0"
>
>  inherit packagegroup
>
>  PACKAGES = "\
> -    packagegroup-core-p1 \
> +    packagegroup-foton-specific-component-p1 \
>      "
>
> -RDEPENDS_packagegroup-core-p1 = "\
> +ALLOW_EMPTY = "1"
> +
> +
> +RDEPENDS_${PN} += "\
>      kernel-modules \
>      audiomanager \
>      dlt-daemon \
>      dlt-daemon-systemd \
>      alsa-lib  \
>      alsa-utils \
> -    bluez4 \
> -    bluez4-systemd \
>      connman \
>      curl \
>      dbus \
>      ecryptfs-utils \
> -    eglibc \
>      fuse \
>      gstreamer \
>      gst-plugins-good \
>      gst-plugins-base \
> -    layer-management \
>      libusb1 \
>      nfs-utils \
>      node-startup-controller \
> -    obex-client \
> -    obexd \
>      openssl \
>      quota \
>      sqlite3 \
>      udev \
>      wpa-supplicant \
>      "
> -
> -RRECOMMENDS_${PN} = "\
> -    packagegroup-xserver-ivi \
> -    "
> diff --git a/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p2.bbb/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p2.bb
> new file mode 100644
> index 0000000..6348ba4
> --- /dev/null
> +++ b/recipes-yocto-ivi/packagegroups/
> packagegroup-foton-specific-component-p2.bb
> @@ -0,0 +1,19 @@
> +DESCRIPTION = "GENIVI 4.0 (Foton) P2 Specific components (SC)"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM =
> "file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +PR = "r0"
> +
> +inherit packagegroup
> +
> +PACKAGES = "\
> +    packagegroup-foton-specific-component-p2 \
> +    "
> +
> +ALLOW_EMPTY = "1"
> +
> +
> +RDEPENDS_${PN} += "\
> +    pulseaudio-server \
> +    wireless-tools \
> +    "
> +
> --
> 1.8.2.3
>
>

--047d7b1600b189426404ddc2a0ad
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>Kindly review the following change.=A0</div><d=
iv><br></div><div>Thanks,</div><div>Fahad<br><div class=3D"gmail_extra"><br=
><br><div class=3D"gmail_quote">On Wed, May 22, 2013 at 1:00 PM, Fahad Usma=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:fahad_usman@mentor.com" target=3D=
"_blank">fahad_usman@mentor.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">with=
 the current implementation of packagegroups, it&#39;s not clear how a<br>
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
=A0.../<a href=3D"http://packagegroup-foton-abstract-component-p1.bb" targe=
t=3D"_blank">packagegroup-foton-abstract-component-p1.bb</a> =A0 =A0 | 21 +=
++++++++++++++++++++<br>
=A0... =3D&gt; <a href=3D"http://packagegroup-foton-abstract-component-p2.b=
b" target=3D"_blank">packagegroup-foton-abstract-component-p2.bb</a>} | 14 =
++++++--------<br>
=A0.../<a href=3D"http://packagegroup-foton-placeholder-component-p1.bb" ta=
rget=3D"_blank">packagegroup-foton-placeholder-component-p1.bb</a> =A0| 20 =
++++++++++++++++++++<br>
=A0... =3D&gt; <a href=3D"http://packagegroup-foton-specific-component-p1.b=
b" target=3D"_blank">packagegroup-foton-specific-component-p1.bb</a>} | 21 =
+++++++--------------<br>
=A0.../<a href=3D"http://packagegroup-foton-specific-component-p2.bb" targe=
t=3D"_blank">packagegroup-foton-specific-component-p2.bb</a> =A0 =A0 | 19 +=
++++++++++++++++++<br>
=A06 files changed, 80 insertions(+), 23 deletions(-)<br>
=A0create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://pac=
kagegroup-foton-abstract-component-p1.bb" target=3D"_blank">packagegroup-fo=
ton-abstract-component-p1.bb</a><br>
=A0rename recipes-yocto-ivi/packagegroups/{<a href=3D"http://packagegroup-c=
ore-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a> =3D&gt; <a href=3D=
"http://packagegroup-foton-abstract-component-p2.bb" target=3D"_blank">pack=
agegroup-foton-abstract-component-p2.bb</a>} (61%)<br>


=A0create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://pac=
kagegroup-foton-placeholder-component-p1.bb" target=3D"_blank">packagegroup=
-foton-placeholder-component-p1.bb</a><br>
=A0rename recipes-yocto-ivi/packagegroups/{<a href=3D"http://packagegroup-c=
ore-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a> =3D&gt; <a href=3D=
"http://packagegroup-foton-specific-component-p1.bb" target=3D"_blank">pack=
agegroup-foton-specific-component-p1.bb</a>} (67%)<br>


=A0create mode 100644 recipes-yocto-ivi/packagegroups/<a href=3D"http://pac=
kagegroup-foton-specific-component-p2.bb" target=3D"_blank">packagegroup-fo=
ton-specific-component-p2.bb</a><br>
<br>
diff --git a/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" tar=
get=3D"_blank">foton-image.bb</a> b/recipes-yocto-ivi/images/<a href=3D"htt=
p://foton-image.bb" target=3D"_blank">foton-image.bb</a><br>
index 6532519..f83aaf9 100644<br>
--- a/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"=
_blank">foton-image.bb</a><br>
+++ b/recipes-yocto-ivi/images/<a href=3D"http://foton-image.bb" target=3D"=
_blank">foton-image.bb</a><br>
@@ -4,6 +4,12 @@ include recipes-yocto-ivi/images/ivi-image.inc<br>
=A0PV =3D &quot;4.0.0&quot;<br>
=A0#PR =3D &quot;r1&quot;<br>
<br>
-IMAGE_INSTALL_append =3D &quot; packagegroup-core-p1 packagegroup-core-p2&=
quot;<br>
+IMAGE_INSTALL_append =3D &quot; \<br>
+ =A0 =A0packagegroup-foton-abstract-component-p1 \<br>
+ =A0 =A0packagegroup-foton-placeholder-component-p1 \<br>
+ =A0 =A0packagegroup-foton-specific-component-p2 \<br>
+ =A0 =A0packagegroup-foton-abstract-component-p2 \<br>
+ =A0 =A0packagegroup-foton-specific-component-p1 \<br>
+&quot;<br>
<br>
=A0# Add image specific packages<br>
diff --git a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup=
-foton-abstract-component-p1.bb" target=3D"_blank">packagegroup-foton-abstr=
act-component-p1.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http:/=
/packagegroup-foton-abstract-component-p1.bb" target=3D"_blank">packagegrou=
p-foton-abstract-component-p1.bb</a><br>


new file mode 100644<br>
index 0000000..9ff02b2<br>
--- /dev/null<br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-foton-=
abstract-component-p1.bb" target=3D"_blank">packagegroup-foton-abstract-com=
ponent-p1.bb</a><br>
@@ -0,0 +1,21 @@<br>
+DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P1 Abstract components (AC)&quot;=
<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=
=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+inherit packagegroup<br>
+<br>
+PACKAGES =3D &quot;\<br>
+ =A0 =A0packagegroup-foton-abstract-component-p1 \<br>
+ =A0 =A0&quot;<br>
+<br>
+ALLOW_EMPTY =3D &quot;1&quot;<br>
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
ivi/packagegroups/<a href=3D"http://packagegroup-foton-abstract-component-p=
2.bb" target=3D"_blank">packagegroup-foton-abstract-component-p2.bb</a><br>


similarity index 61%<br>
rename from recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-=
core-p2.bb" target=3D"_blank">packagegroup-core-p2.bb</a><br>
rename to recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-fo=
ton-abstract-component-p2.bb" target=3D"_blank">packagegroup-foton-abstract=
-component-p2.bb</a><br>
index e9b7b86..ac6af13 100644<br>
--- a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-core-p=
2.bb" target=3D"_blank">packagegroup-core-p2.bb</a><br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-foton-=
abstract-component-p2.bb" target=3D"_blank">packagegroup-foton-abstract-com=
ponent-p2.bb</a><br>
@@ -1,4 +1,4 @@<br>
-DESCRIPTION =3D &quot;P2 packages&quot;<br>
+DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P2 Abstract components (SC)&quot;=
<br>
=A0LICENSE =3D &quot;MIT&quot;<br>
=A0LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;m=
d5=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
=A0PR =3D &quot;r0&quot;<br>
@@ -6,16 +6,14 @@ PR =3D &quot;r0&quot;<br>
=A0inherit packagegroup<br>
<br>
=A0PACKAGES =3D &quot;\<br>
- =A0 =A0packagegroup-core-p2 \<br>
+ =A0 =A0packagegroup-foton-abstract-component-p2 \<br>
=A0 =A0 =A0&quot;<br>
<br>
-RDEPENDS_packagegroup-core-p2 =3D &quot;\<br>
+ALLOW_EMPTY =3D &quot;1&quot;<br>
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
-foton-placeholder-component-p1.bb" target=3D"_blank">packagegroup-foton-pl=
aceholder-component-p1.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"=
http://packagegroup-foton-placeholder-component-p1.bb" target=3D"_blank">pa=
ckagegroup-foton-placeholder-component-p1.bb</a><br>


new file mode 100644<br>
index 0000000..fd76884<br>
--- /dev/null<br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-foton-=
placeholder-component-p1.bb" target=3D"_blank">packagegroup-foton-placehold=
er-component-p1.bb</a><br>
@@ -0,0 +1,20 @@<br>
+DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P1 Placeholder components&quot;<b=
r>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=
=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+inherit packagegroup<br>
+<br>
+PACKAGES =3D &quot;\<br>
+ =A0 =A0packagegroup-foton-placeholder-component-p1 \<br>
+ =A0 =A0&quot;<br>
+<br>
+ALLOW_EMPTY =3D &quot;1&quot;<br>
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
ivi/packagegroups/<a href=3D"http://packagegroup-foton-specific-component-p=
1.bb" target=3D"_blank">packagegroup-foton-specific-component-p1.bb</a><br>


similarity index 67%<br>
rename from recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-=
core-p1.bb" target=3D"_blank">packagegroup-core-p1.bb</a><br>
rename to recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-fo=
ton-specific-component-p1.bb" target=3D"_blank">packagegroup-foton-specific=
-component-p1.bb</a><br>
index f3ec738..06cf375 100644<br>
--- a/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-core-p=
1.bb" target=3D"_blank">packagegroup-core-p1.bb</a><br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-foton-=
specific-component-p1.bb" target=3D"_blank">packagegroup-foton-specific-com=
ponent-p1.bb</a><br>
@@ -1,45 +1,38 @@<br>
-DESCRIPTION =3D &quot;P1 packages&quot;<br>
+DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P1 Specific components (SC)&quot;=
<br>
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
+ =A0 =A0packagegroup-foton-specific-component-p1 \<br>
=A0 =A0 =A0&quot;<br>
<br>
-RDEPENDS_packagegroup-core-p1 =3D &quot;\<br>
+ALLOW_EMPTY =3D &quot;1&quot;<br>
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
=A0 =A0 =A0nfs-utils \<br>
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
-foton-specific-component-p2.bb" target=3D"_blank">packagegroup-foton-speci=
fic-component-p2.bb</a> b/recipes-yocto-ivi/packagegroups/<a href=3D"http:/=
/packagegroup-foton-specific-component-p2.bb" target=3D"_blank">packagegrou=
p-foton-specific-component-p2.bb</a><br>


new file mode 100644<br>
index 0000000..6348ba4<br>
--- /dev/null<br>
+++ b/recipes-yocto-ivi/packagegroups/<a href=3D"http://packagegroup-foton-=
specific-component-p2.bb" target=3D"_blank">packagegroup-foton-specific-com=
ponent-p2.bb</a><br>
@@ -0,0 +1,19 @@<br>
+DESCRIPTION =3D &quot;GENIVI 4.0 (Foton) P2 Specific components (SC)&quot;=
<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://${IVI_COREBASE}/meta-ivi/COPYING.MIT;md5=
=3D3da9cfbcb788c80a0384361b4de20420&quot;<br>
+PR =3D &quot;r0&quot;<br>
+<br>
+inherit packagegroup<br>
+<br>
+PACKAGES =3D &quot;\<br>
+ =A0 =A0packagegroup-foton-specific-component-p2 \<br>
+ =A0 =A0&quot;<br>
+<br>
+ALLOW_EMPTY =3D &quot;1&quot;<br>
+<br>
+<br>
+RDEPENDS_${PN} +=3D &quot;\<br>
+ =A0 =A0pulseaudio-server \<br>
+ =A0 =A0wireless-tools \<br>
+ =A0 =A0&quot;<br>
+<br>
--<br>
1.8.2.3<br>
<br>
</div></div></blockquote></div><br></div></div></div>

--047d7b1600b189426404ddc2a0ad--
