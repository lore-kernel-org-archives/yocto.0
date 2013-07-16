Return-Path: <maregt0@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8E1E013B0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 07:24:05 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id gw10so585206lab.16
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 07:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zmwn/iUPoqmbBPU1Od70gjIRiqn1CbRscCodjWDj1EU=;
	b=qZ5t+WN0E6RDDIo7RbqCdskWSsPSf8434zK4PgadSXxCtEurlAASB1Kxzby9kpJHwZ
	KUX6V+ehvy/aYXYZZ8x2AMrEjWh+DpJYKCh3nX5mJ7gTDkMPFXD6vcFLEvtnciSgftCS
	fIURBcCJmSEHA2tWmTce4HvZ7Rlgh+ZqplbAQgcNwfgz28nNDzbac4Qc9LRRI2NtsKoG
	kiVZ/9RMQ0iJ8v1bOPQ2dHOjs/XzUQvjiCqMacPv1keZb7801hwz7xgWcW1BPnMKT3kh
	lBEqnDvv6KbPp9B//W+kTw+PLXdmRI99ukh4uUaYv1ljZeVmR95UmaO+zr7IB/3saxav
	3ojQ==
MIME-Version: 1.0
X-Received: by 10.152.27.40 with SMTP id q8mr815159lag.75.1373984644030; Tue,
	16 Jul 2013 07:24:04 -0700 (PDT)
Received: by 10.114.70.50 with HTTP; Tue, 16 Jul 2013 07:24:03 -0700 (PDT)
Date: Tue, 16 Jul 2013 16:24:03 +0200
Message-ID: <CAC3ARNy1XTJ=fJCCGKRfRw_Jr0qePBVvOujWR3+Bo7sBKLw_Ag@mail.gmail.com>
From: Matthias Van Gestel <maregt0@gmail.com>
To: yocto@yoctoproject.org
Subject: SDK generation
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
X-List-Received-Date: Tue, 16 Jul 2013 14:24:07 -0000
Content-Type: multipart/alternative; boundary=089e0158c5aaa2671f04e1a1baaf

--089e0158c5aaa2671f04e1a1baaf
Content-Type: text/plain; charset=ISO-8859-1

Hi I'm having some trouble generating a Qt(4) SDK that I can use on a host
system. We generate our own image edna-image-minimal:

PR="2"
####################################################################
# Copied from meta/recipes-core/images/core-image-minibal.bb
####################################################################
DESCRIPTION = "A small image just capable of allowing a device to boot."

IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}
${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image

# remove not needed ipkg informations
ROOTFS_POSTPROCESS_COMMAND += "remove_packaging_data_files ; "
####################################################################
# Copied from meta/recipes-graphics/images/core-image-x11.bb
####################################################################
IMAGE_FEATURES += "splash package-management x11-base xserver-xf86-config"
####################################################################
# IMAGE_INSTALL += "qtbase qtbase-tools qtbase-plugins"
# qtbase-tools qtbase-plugins"

IMAGE_FEATURES += "qt4-pkgs"
IMAGE_INSTALL += "mini-x-session"
TOOLCHAIN_HOST_TASK += "nativesdk-qemu"
----------------------------------------------------------------------
Now when I try to generate a SDK with the following command:
MACHINE="qemuarm" bitbake edna-image-minimal -c populate_sdk
The SDK script gets generated, I execute it and it extracts itself.

Now I'd like to know where I can find the native tools to cross compile my
application, I have no qmake or cross-gcc.

Another issue is about the eclipse adt plugin, I installed the plugin
configured the sysroot path and the cross compiler path (it uses scripts
from /opt/poky/1.4.1) and then in the Qemu part I picked the kernel
generated in the build/tmp/deploy/images, but then it complains about a
pseudo and asks about qemu-extract-sdk. So to cut the story short I'm stuck
at generating a decent cross sdk.
(I used the official
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#configuring-the-eclipse-ide-juno
 guide).

How do I proceed, or are there other ways I can do to get a decent SDK
working?

--089e0158c5aaa2671f04e1a1baaf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi I&#39;m having some trouble generating a Qt(4) SDK that=
 I can use on a host system. We generate our own image edna-image-minimal:<=
div><br><div><div>PR=3D&quot;2&quot;</div><div>############################=
########################################</div>
<div># Copied from meta/recipes-core/images/<a href=3D"http://core-image-mi=
nibal.bb">core-image-minibal.bb</a></div><div>#############################=
#######################################</div><div>DESCRIPTION =3D &quot;A s=
mall image just capable of allowing a device to boot.&quot;</div>
<div><br></div><div>IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${ROOTFS=
_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}&quot;</div><div><br></div=
><div>IMAGE_LINGUAS =3D &quot; &quot;</div><div><br></div><div>LICENSE =3D =
&quot;MIT&quot;</div>
<div><br></div><div>inherit core-image</div><div><br></div><div># remove no=
t needed ipkg informations</div><div>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;=
remove_packaging_data_files ; &quot;</div><div>############################=
########################################</div>
<div># Copied from meta/recipes-graphics/images/<a href=3D"http://core-imag=
e-x11.bb">core-image-x11.bb</a></div><div>#################################=
###################################</div><div>IMAGE_FEATURES +=3D &quot;spl=
ash package-management x11-base xserver-xf86-config&quot;</div>
<div>####################################################################</=
div><div># IMAGE_INSTALL +=3D &quot;qtbase qtbase-tools qtbase-plugins&quot=
;=A0</div><div># qtbase-tools qtbase-plugins&quot;</div><div><br></div><div=
>
IMAGE_FEATURES +=3D &quot;qt4-pkgs&quot;<br></div><div>IMAGE_INSTALL +=3D &=
quot;mini-x-session&quot;</div><div>TOOLCHAIN_HOST_TASK +=3D &quot;nativesd=
k-qemu&quot;<br>-----------------------------------------------------------=
-----------</div>
</div><div>Now when I try to generate a SDK with the following command: MAC=
HINE=3D&quot;qemuarm&quot; bitbake edna-image-minimal -c populate_sdk</div>=
<div>The SDK script gets generated, I execute it and it extracts itself.</d=
iv>
<div><br></div><div>Now I&#39;d like to know where I can find the native to=
ols to cross compile my application, I have no qmake or cross-gcc.</div><di=
v><br></div><div>Another issue is about the eclipse adt plugin, I installed=
 the plugin configured the sysroot path and the cross compiler path (it use=
s scripts from /opt/poky/1.4.1) and then in the Qemu part I picked the kern=
el generated in the build/tmp/deploy/images, but then it complains about a =
pseudo and asks about qemu-extract-sdk. So to cut the story short I&#39;m s=
tuck at generating a decent cross sdk.</div>
<div>(I used the official=A0<span style=3D"color:rgb(0,0,255);font-family:&=
#39;Times New Roman&#39;"><a href=3D"http://www.yoctoproject.org/docs/curre=
nt/dev-manual/dev-manual.html#configuring-the-eclipse-ide-juno">http://www.=
yoctoproject.org/docs/current/dev-manual/dev-manual.html#configuring-the-ec=
lipse-ide-juno</a>=A0</span><span style=3D"font-family:&#39;Times New Roman=
&#39;"><font color=3D"#000000">guide).</font></span></div>
<div><br></div><div>How do I proceed, or are there other ways I can do to g=
et a decent SDK working?</div><div><br></div><div><br></div></div></div>

--089e0158c5aaa2671f04e1a1baaf--
