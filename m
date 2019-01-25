Return-Path: <rajashekhar.sanda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 457CFE00C58; Thu, 24 Jan 2019 23:12:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rajashekhar.sanda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52C7BE0053F
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 23:12:26 -0800 (PST)
Received: by mail-ot1-f44.google.com with SMTP id n8so7659794otl.6
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 23:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:from:date:message-id:subject:to;
	bh=rGLx1GdtxEyIDQK0Cfm80zgmu5//i//3VmDKdbljkPQ=;
	b=AMkLga21DsNmfOM7rj45PqcV64VIrS3p7QZszJCZc4uSLUe7tanvV77eGopow4KdPf
	5CG+PvNT6jQCPgr5zrNeUZe9wnkNNzQ1t5jozqHb6wGyXUCb7DKKqYJeh+wNDFz3EUyb
	JeqMec2XluquQgw0ZBzThgnx2Yup/MAobPR7WalXNtChkzFtkD3kZOPrvc8X24Z0cKLC
	lpKUgG9tydGSOiB90J3z1ZPHYONi7EcvqSmvbu0Bm+9gk0EdVXJxtxyktJYyynoAdbL7
	IRiJ+Pd/uOkMuGuLesQk+HC4EQgcCiT/vXFL3JyXl1Ynv2q96iVjWvM+pY3yPpI9bLHP
	9BpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:from:date:message-id
	:subject:to;
	bh=rGLx1GdtxEyIDQK0Cfm80zgmu5//i//3VmDKdbljkPQ=;
	b=Gnodtgkk5opUA2y1c6KDQDt2ELm1IhgMmaRC+wjHzECAe2vDEOa5YPvr8rUezY5TKm
	IxTDG52vJMVsjWztaiYbaaP4RkFDWzgwNLBSko4xKrvY2vxU1bLudCI2J4UqBGVj0oQN
	92BaE0XzLIe9ObrDYn+bdIsZgH7LvKjzAWF7sPDbeUAfZllSCAe7yZC3Do331alw4PVl
	36YZs9v32OP4JhUyfzTj3bC8i2wpBE4N4DfGKKirdUtAbqj14MX26bPxA/9YOApdPryp
	Sw4EO3ceQZyIzRZIdEr9bwGDGQToTYJAcUEGk9IwII6gj7pIAtGN14zUHh6TZkO4a7Ei
	erTw==
X-Gm-Message-State: AJcUukenNZDZasdRDFpNZxlgF4Zj5eSGO0Eet4sWd1YC0xwGzlnE94T8
	0fnd6q/5w7cy/t4Ew5wxYmtZf3IQVT/fB8FGbLVBqyA+
X-Google-Smtp-Source: ALg8bN4L32HgFt+YyLJw3T8yKN3wp4mk+4ZhJiNzNINz+yl5kqOQkPjYAPi9jDfHKz2rpnjNnza8FPPPYijgkj3iIJ8=
X-Received: by 2002:a9d:6419:: with SMTP id h25mr7226433otl.34.1548400345425; 
	Thu, 24 Jan 2019 23:12:25 -0800 (PST)
MIME-Version: 1.0
From: rajshekharsanda <rajashekhar.sanda@gmail.com>
Date: Fri, 25 Jan 2019 12:42:11 +0530
Message-ID: <CADxnEStpXAgZHGVG884VMXa_HWV44yoMdZ+drUMthZJcbO+68w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_rootfs fails during bitbake pulsar-image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: rajashekharsanda@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Jan 2019 07:12:27 -0000
Content-Type: multipart/alternative; boundary="0000000000008f2aac0580430cd0"

--0000000000008f2aac0580430cd0
Content-Type: text/plain; charset="UTF-8"

Iam trying build an image for R-CAR H3 using GENIVI 14 (ROCKO).

*My Native System:*
OS: Ubuntu 16.04
RAM: 64 GB



*The build configuration is:*

BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "aarch64-poky-linux"
MACHINE              = "h3ulcb"
DISTRO               = "poky-ivi-systemd"
DISTRO_VERSION       = "14.0.0"
TUNE_FEATURES        = "aarch64 cortexa57-cortexa53"
TARGET_FPU           = ""
SOC_FAMILY           = "rcar-gen3:r8a7795"
meta
meta-poky
meta-yocto-bsp
meta-ivi
meta-ivi-bsp
meta-optee
meta-oe
meta-rcar-gen3
meta-filesystems
meta-multimedia
meta-python
meta-rtlwifi-master  = "<unknown>:<unknown>"

*NOTE*: All the above packages are available locally in my native System.


*The error details are as follows:*

when doing bitbake pulsar-image. iam getting the following errors.

ERROR: pulsar-image-14.0.0-r0 do_rootfs: Could not invoke dnf. Command
'/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/oe-rootfs-repo
--installroot=/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs
--setopt=logdir=/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/temp
--nogpgcheck install util-linux libopus0 screen alsa-utils libx264-148
bluez5 dnf node-startup-controller libsdl-1.2-0 connman-client
libgnome-keyring0 libsdl2-2.0-0 rpcbind libc6 perf libdrm2 alsa-lib
libc6-staticdev curl libjansson4 packagegroup-placeholder-component-p1
node-state-manager gstreamer1.0-libav usbutils gstreamer1.0-plugins-ugly
libinput10 wayland-ivi-extension make lame mesa strace libusbg
libgupnp-1.0-4 cmake initscripts rtl8812au libusb-0.1-4 udev alsa-tools
audiomanager node-health-monitor update-rc.d libmediaart-2.0-0
gstreamer1.0-plugins-base weston liba52-0 libfontconfig1 mpeg2dec vala
pkgconfig glibmm libfreeimage3 gstreamer1.0 libcommonapi-dbus3.1.12
packagegroup-abstract-component-p2 libgif7 autoconf wayland dbus-1
gstreamer1.0-omx gstreamer1.0-plugins-good shadow sed
gstreamer1.0-plugins-bad rpm run-postinsts base-passwd gcc libts-1.0-0
dlt-daemon openssh libflacdla-l2 flex wpa-supplicant
packagegroup-specific-component-p2 libfreetype6 libgcc1 connman libsolv0
packagegroup-core-boot-genivi pulseaudio alsa-plugins openssl tzdata
omx-user-module packagegroup-specific-component-p1 binutils libgee-0.8-2
packagegroup-abstract-component-p1 g++ libsdl-ttf-2.0-0 gdb libalacdla-l2
perl systemtap' returned 1:
Added oe-repo repo from
/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Wed 23 Jan 2019 04:32:09 AM
UTC.
No package alsa-lib available.
Error: Unable to find a match

ERROR: pulsar-image-14.0.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/temp/log.do_rootfs.10547
ERROR: Task
(/home/buildpc/Genivi14/meta-ivi-14/meta-ivi/recipes-yocto-ivi/images/pulsar-image.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 5089 tasks of which 5088 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/buildpc/Genivi14/meta-ivi-14/meta-ivi/recipes-yocto-ivi/images/pulsar-image.bb:
do_rootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

--0000000000008f2aac0580430cd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><br><div>Iam trying build an image for R-CAR H3 using GENIVI 14 =
(ROCKO).</div><div><br></div><div><b>My Native System:</b></div><div>OS: Ub=
untu 16.04</div><div>RAM: 64 GB</div><div><br></div><div><br></div><div><b>=
<br></b></div><div><b>The build configuration is:</b></div><div><br></div><=
div><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.36.=
0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;aarch64-poky-linux&quot;</div><div>MACHINE=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;h3ulcb&quot;</div><div>DISTRO=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky-ivi-syst=
emd&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;14.0=
.0&quot;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch=
64 cortexa57-cortexa53&quot;</div><div>TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>SOC_FAMILY=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;rcar-gen3:r8a7795&quot;</div><div>meta=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-poky=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-yocto-bsp=C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-ivi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</div><div>meta-ivi-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<=
/div><div>meta-optee=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>met=
a-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-r=
car-gen3=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-filesystems=C2=A0 =C2=A0=
 =C2=A0</div><div>meta-multimedia=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-=
python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-rtlwifi-maste=
r=C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div></div><div><br=
></div><div><b>NOTE</b>: All the above packages are available locally in my=
 native System.</div><div><br></div><div><b><br></b></div><div><b>The error=
 details are as follows:</b></div><div><b><br></b></div><div>when doing bit=
bake pulsar-image. iam getting the following errors.</div><div><br></div><d=
iv><div>ERROR: pulsar-image-14.0.0-r0 do_rootfs: Could not invoke dnf. Comm=
and &#39;/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsa=
r-image/14.0.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /home/buildpc/Gen=
ivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs/e=
tc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/buildpc/Genivi14/poky/build/tmp=
/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs/etc/yum.repos.d --rep=
ofrompath=3Doe-repo,/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-=
linux/pulsar-image/14.0.0-r0/oe-rootfs-repo --installroot=3D/home/buildpc/G=
enivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs=
 --setopt=3Dlogdir=3D/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky=
-linux/pulsar-image/14.0.0-r0/temp --nogpgcheck install util-linux libopus0=
 screen alsa-utils libx264-148 bluez5 dnf node-startup-controller libsdl-1.=
2-0 connman-client libgnome-keyring0 libsdl2-2.0-0 rpcbind libc6 perf libdr=
m2 alsa-lib libc6-staticdev curl libjansson4 packagegroup-placeholder-compo=
nent-p1 node-state-manager gstreamer1.0-libav usbutils gstreamer1.0-plugins=
-ugly libinput10 wayland-ivi-extension make lame mesa strace libusbg libgup=
np-1.0-4 cmake initscripts rtl8812au libusb-0.1-4 udev alsa-tools audiomana=
ger node-health-monitor update-rc.d libmediaart-2.0-0 gstreamer1.0-plugins-=
base weston liba52-0 libfontconfig1 mpeg2dec vala pkgconfig glibmm libfreei=
mage3 gstreamer1.0 libcommonapi-dbus3.1.12 packagegroup-abstract-component-=
p2 libgif7 autoconf wayland dbus-1 gstreamer1.0-omx gstreamer1.0-plugins-go=
od shadow sed gstreamer1.0-plugins-bad rpm run-postinsts base-passwd gcc li=
bts-1.0-0 dlt-daemon openssh libflacdla-l2 flex wpa-supplicant packagegroup=
-specific-component-p2 libfreetype6 libgcc1 connman libsolv0 packagegroup-c=
ore-boot-genivi pulseaudio alsa-plugins openssl tzdata omx-user-module pack=
agegroup-specific-component-p1 binutils libgee-0.8-2 packagegroup-abstract-=
component-p1 g++ libsdl-ttf-2.0-0 gdb libalacdla-l2 perl systemtap&#39; ret=
urned 1:</div><div>Added oe-repo repo from /home/buildpc/Genivi14/poky/buil=
d/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/oe-rootfs-repo</div><di=
v>Last metadata expiration check: 0:00:00 ago on Wed 23 Jan 2019 04:32:09 A=
M UTC.</div><div>No package alsa-lib available.</div><div>Error: Unable to =
find a match</div><div><br></div><div>ERROR: pulsar-image-14.0.0-r0 do_root=
fs: Function failed: do_rootfs</div><div>ERROR: Logfile of failure stored i=
n: /home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-imag=
e/14.0.0-r0/temp/log.do_rootfs.10547</div><div>ERROR: Task (/home/buildpc/G=
enivi14/meta-ivi-14/meta-ivi/recipes-yocto-ivi/images/pulsar-image.bb:do_ro=
otfs) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Atte=
mpted 5089 tasks of which 5088 didn&#39;t need to be rerun and 1 failed.</d=
iv><div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /home/build=
pc/Genivi14/meta-ivi-14/meta-ivi/recipes-yocto-ivi/images/pulsar-image.bb:d=
o_rootfs</div><div>Summary: There were 2 ERROR messages shown, returning a =
non-zero exit code.</div></div><div><br></div><div><br></div><div><br></div=
><div><br></div><div><br></div></div></div></div></div></div>

--0000000000008f2aac0580430cd0--
