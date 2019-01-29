Return-Path: <rajashekhar.sanda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E236E00CE5; Mon, 28 Jan 2019 23:01:24 -0800 (PST)
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
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5672CE00B9C
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 23:01:23 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id s13so17001677otq.4
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 23:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:reply-to:from:date:message-id:subject:to;
	bh=19+PL+bpCzjK0PbDFyNQ2KgqKng+KgiwsRhyTpUBu1s=;
	b=Zd2IJkloJjgtzlnF36jZc6BN5uEv0b4e8Kp2kFJAJwY+dOSnxCI/RSusA2YCam4bF3
	Mmcf1db2ZE5txRBqzqLhI/yexF0FILleWuhx7McwgDg7+a27mm6YmvFK4F5Yd29TsbFi
	m/lfUVipXIkWZZ4az5kFM5hoO/AFvI8VVvFIWgWp42HeVDeI3j009VPl2fo2g331NFVu
	62Ip55Ma1L4NhBNvJ3vuTNtblL74Sf+A0K/b/az97wDmPukA4Bj1Oe+J5Fq26G37BlbF
	NynTaYViLvP4VmoG4pG3f5AFuMsZT6YJqZc8aQ6yU+/zvppHi2SJbyDOjWFe8+mSHG5C
	qlmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:reply-to:from:date:message-id
	:subject:to;
	bh=19+PL+bpCzjK0PbDFyNQ2KgqKng+KgiwsRhyTpUBu1s=;
	b=EW+8jRZCGtdb4WlLS1A9bmnyeiJyHDG6cBZt8l6mB/U9049BS/3eYY6C5KGKc4EROL
	c41F9aedmmPX8lmFKQ2tNPY74ABenACR39qTd8d53Ac459jwf0dSdD1SeJZ8ynTJEW6+
	Ng20Du7DS66zwP+WOfb8bkZM+Ax4c6atEHiAqY72xqRRZVPZRanKC0IcmQHDBsbXoxS8
	PV69t8Gj2He4p/SPPd1nuBV8srvxO8XWgR6om/eUWDukEt8kZHJTfz285dDzkbZDzFbS
	47WN29wXOrsMqGs8oTqDdp7z73wauXgZMMYFlRBHgmvI6kUNXqnDdwYgYLR6JEjEeYsm
	rMJw==
X-Gm-Message-State: AJcUukcoM4W07qT9j6YriPghyl2/eyJIuLlfcBb5or7dOy/AgxD7pxJB
	W7v7RucFTHCoxW8UxHwYWMjMXhRCaSDbmk6YNyOueCK7
X-Google-Smtp-Source: ALg8bN50IhL4WUJ3GApTDxXXLk33JwOeNEgkSiiSzX1Nh8r52irbksomxTBvxeIngB9dfCqILlrhivHc4kNkdJb1TZw=
X-Received: by 2002:a9d:640d:: with SMTP id h13mr19119536otl.153.1548745282279;
	Mon, 28 Jan 2019 23:01:22 -0800 (PST)
MIME-Version: 1.0
From: rajshekharsanda <rajashekhar.sanda@gmail.com>
Date: Tue, 29 Jan 2019 12:31:09 +0530
Message-ID: <CADxnESvDfDAHKeLSv+Ba9mjOHuP+nr_oaiGs2Tcsx_9RXPnXGw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error: pulsar-image-14.0.0-r0 do_rootfs: Could not invoke dnf. Command
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
X-List-Received-Date: Tue, 29 Jan 2019 07:01:24 -0000
Content-Type: multipart/alternative; boundary="00000000000065ddf80580935c7f"

--00000000000065ddf80580935c7f
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

--00000000000065ddf80580935c7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div style=3D"font-family:sans-serif;font-size:12.8px" di=
r=3D"auto">Iam trying build an image for R-CAR H3 using GENIVI 14 (ROCKO).<=
/div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"><b=
r></div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"=
><b>My Native System:</b></div><div style=3D"font-family:sans-serif;font-si=
ze:12.8px" dir=3D"auto">OS: Ubuntu 16.04</div><div style=3D"font-family:san=
s-serif;font-size:12.8px" dir=3D"auto">RAM: 64 GB</div><div style=3D"font-f=
amily:sans-serif;font-size:12.8px" dir=3D"auto"><br></div><div style=3D"fon=
t-family:sans-serif;font-size:12.8px" dir=3D"auto"><br></div><div style=3D"=
font-family:sans-serif;font-size:12.8px" dir=3D"auto"><b><br></b></div><div=
 style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"><b>The buil=
d configuration is:</b></div><div style=3D"font-family:sans-serif;font-size=
:12.8px" dir=3D"auto"><br></div><div style=3D"font-family:sans-serif;font-s=
ize:12.8px" dir=3D"auto"><div>BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;1.36.0&quot;</div><div>BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING=C2=A0=
 =C2=A0 =C2=A0 =3D &quot;universal&quot;</div><div>TARGET_SYS=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64-poky-linux&quot;</div><div>MAC=
HINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;h3ulcb&quot;=
</div><div>DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 &quot;poky-ivi-systemd&quot;</div><div>DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;14.0.0&quot;</div><div>TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;aarch64 cortexa57-cortexa53&quot;</div><div>TARGET_FPU=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;</div><div>SOC_FAMILY=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;rcar-gen3:r8a7795&quot;<=
/div><div>meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div>meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div=
><div>meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-ivi=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-ivi-bsp=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-optee=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div>meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0</div><div>meta-rcar-gen3=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>=
meta-filesystems=C2=A0 =C2=A0 =C2=A0</div><div>meta-multimedia=C2=A0 =C2=A0=
 =C2=A0=C2=A0</div><div>meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
</div><div>meta-rtlwifi-master=C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&=
gt;&quot;</div></div><div style=3D"font-family:sans-serif;font-size:12.8px"=
 dir=3D"auto"><br></div><div style=3D"font-family:sans-serif;font-size:12.8=
px" dir=3D"auto"><b>NOTE</b>: All the above packages are available locally =
in my native System.</div><div style=3D"font-family:sans-serif;font-size:12=
.8px" dir=3D"auto"><br></div><div style=3D"font-family:sans-serif;font-size=
:12.8px" dir=3D"auto"><b><br></b></div><div style=3D"font-family:sans-serif=
;font-size:12.8px" dir=3D"auto"><b>The error details are as follows:</b></d=
iv><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"><b><=
br></b></div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"=
auto">when doing bitbake pulsar-image. iam getting the following errors.</d=
iv><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"><br>=
</div><div style=3D"font-family:sans-serif;font-size:12.8px" dir=3D"auto"><=
div>ERROR: pulsar-image-14.0.0-r0 do_rootfs: Could not invoke dnf. Command =
&#39;/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-im=
age/14.0.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /home/buildpc/Genivi1=
4/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs/etc/d=
nf/dnf.conf --setopt=3Dreposdir=3D/home/buildpc/Genivi14/poky/build/tmp/wor=
k/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs/etc/yum.repos.d --repofro=
mpath=3Doe-repo,/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linu=
x/pulsar-image/14.0.0-r0/oe-rootfs-repo --installroot=3D/home/buildpc/Geniv=
i14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/rootfs --s=
etopt=3Dlogdir=3D/home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-lin=
ux/pulsar-image/14.0.0-r0/temp --nogpgcheck install util-linux libopus0 scr=
een alsa-utils libx264-148 bluez5 dnf node-startup-controller libsdl-1.2-0 =
connman-client libgnome-keyring0 libsdl2-2.0-0 rpcbind libc6 perf libdrm2 a=
lsa-lib libc6-staticdev curl libjansson4 packagegroup-placeholder-component=
-p1 node-state-manager gstreamer1.0-libav usbutils gstreamer1.0-plugins-ugl=
y libinput10 wayland-ivi-extension make lame mesa strace libusbg libgupnp-1=
.0-4 cmake initscripts rtl8812au libusb-0.1-4 udev alsa-tools audiomanager =
node-health-monitor update-rc.d libmediaart-2.0-0 gstreamer1.0-plugins-base=
 weston liba52-0 libfontconfig1 mpeg2dec vala pkgconfig glibmm libfreeimage=
3 gstreamer1.0 libcommonapi-dbus3.1.12 packagegroup-abstract-component-p2 l=
ibgif7 autoconf wayland dbus-1 gstreamer1.0-omx gstreamer1.0-plugins-good s=
hadow sed gstreamer1.0-plugins-bad rpm run-postinsts base-passwd gcc libts-=
1.0-0 dlt-daemon openssh libflacdla-l2 flex wpa-supplicant packagegroup-spe=
cific-component-p2 libfreetype6 libgcc1 connman libsolv0 packagegroup-core-=
boot-genivi pulseaudio alsa-plugins openssl tzdata omx-user-module packageg=
roup-specific-component-p1 binutils libgee-0.8-2 packagegroup-abstract-comp=
onent-p1 g++ libsdl-ttf-2.0-0 gdb libalacdla-l2 perl systemtap&#39; returne=
d 1:</div><div>Added oe-repo repo from /home/buildpc/Genivi14/poky/build/tm=
p/work/h3ulcb-poky-linux/pulsar-image/14.0.0-r0/oe-rootfs-repo</div><div>La=
st metadata expiration check: 0:00:00 ago on Wed 23 Jan 2019 04:32:09 AM UT=
C.</div><div>No package alsa-lib available.</div><div>Error: Unable to find=
 a match</div><div><br></div><div>ERROR: pulsar-image-14.0.0-r0 do_rootfs: =
Function failed: do_rootfs</div><div>ERROR: Logfile of failure stored in: /=
home/buildpc/Genivi14/poky/build/tmp/work/h3ulcb-poky-linux/pulsar-image/14=
.0.0-r0/temp/log.do_rootfs.10547</div><div>ERROR: Task (/home/buildpc/Geniv=
i14/meta-ivi-14/meta-ivi/recipes-yocto-ivi/images/pulsar-image.bb:do_rootfs=
) failed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempte=
d 5089 tasks of which 5088 didn&#39;t need to be rerun and 1 failed.</div><=
div><br></div><div>Summary: 1 task failed:</div><div>=C2=A0 /home/buildpc/G=
enivi14/meta-ivi-14/meta-ivi/recipes-yocto-ivi/images/pulsar-image.bb:do_ro=
otfs</div><div>Summary: There were 2 ERROR messages shown, returning a non-=
zero exit code.</div></div><br></div>

--00000000000065ddf80580935c7f--
