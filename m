Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D080C76188
	for <webhook@archiver.kernel.org>; Wed,  5 Apr 2023 10:46:28 +0000 (UTC)
Subject: How to remove Rust (and other packages) from yocto build #bitbake
To: yocto@lists.yoctoproject.org
From: Jesus.JimenezSanchez@verifone.com
X-Originating-Location: Athlone, Leinster, IE (83.70.152.76)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Apr 2023 03:46:23 -0700
Message-ID: <GBPi.1680691583503538113.G0b9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="neMgvkL8uJDPVP8e41nz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 10:46:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59614

--neMgvkL8uJDPVP8e41nz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to remove a series of packages from my yocto build but what I've=
 tried hasn't worked so far. This is what I have:

```
PACKAGE_EXCLUDE +=3D "\
avahi \
apt \
apt-native \
cmake \
cmake-native \
cracklib \
crda \
cryptodev-linux \
dpkg \
dpkg-native \
elfutils \
elfutils-native \
fftw \
gawk \
gcc-runtime \
gnupg \
hdparm \
icu \
kbd \
libassuan \
libatomic-ops \
libavahi-client \
libavahi-common \
libavahi-core \
libcap-ng \
libdaemon \
libgcc \
libgcc-initial \
libgcrypt \
libgpg-error \
libical \
libidn2 \
libksba \
libmnl \
libogg \
libtirpc \
libtool \
libtool-cross \
libubootenv \
libunistring \
libxcrypt \
linux-libc-headers \
lz4 \
lzo \
npth \
pinentry \
pulseaudio \
qemuwrapper-cross \
resize-helper \
rust \
rust-llvm \
rust-llvm-native \
rust-native \
systemd \
systemd-compat-units \
systemd-conf \
systemd-mount-partitions \
tar \
vala \
xxhash \
zstd \
"
```

The main one I want to remove is Rust, but I still see it building in the l=
og.

I have also tried using `IMAGE_INSTALL:remove` (in fact, I have both at the=
 same time at the moment in my `local.conf` file), but it doesn't seem to w=
ork either. I have also tried both options in my `bbappend` file with no su=
ccess either.

What am I doing wrong here? Is removing Rust even possible?

Some other packages I'm trying to remove are also appearing in the build lo=
g, like `dpkg-native` or `cmake`.

Thank you.

--neMgvkL8uJDPVP8e41nz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm trying to remove a series of packages from my yocto build but what=
 I've tried hasn't worked so far. This is what I have:</div>
<div>&nbsp;</div>
<div>```</div>
<div>PACKAGE_EXCLUDE +=3D "\</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>ava=
hi \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>apt=
 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>apt=
-native \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>cma=
ke \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>cma=
ke-native \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>cra=
cklib \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>crd=
a \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>cry=
ptodev-linux \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>dpk=
g \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>dpk=
g-native \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>elf=
utils \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>elf=
utils-native \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>fft=
w \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>gaw=
k \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>gcc=
-runtime \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>gnu=
pg \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>hdp=
arm \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>icu=
 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>kbd=
 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
assuan \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
atomic-ops \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
avahi-client \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
avahi-common \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
avahi-core \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
cap-ng \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
daemon \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
gcc \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
gcc-initial \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
gcrypt \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
gpg-error \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
ical \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
idn2 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
ksba \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
mnl \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
ogg \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
tirpc \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
tool \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
tool-cross \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
ubootenv \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
unistring \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lib=
xcrypt \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lin=
ux-libc-headers \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lz4=
 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>lzo=
 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>npt=
h \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>pin=
entry \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>pul=
seaudio \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>qem=
uwrapper-cross \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>res=
ize-helper \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>rus=
t \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>rus=
t-llvm \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>rus=
t-llvm-native \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>rus=
t-native \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>sys=
temd \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>sys=
temd-compat-units \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>sys=
temd-conf \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>sys=
temd-mount-partitions \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>tar=
 \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>val=
a \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>xxh=
ash \</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space: pre;"> </span>zst=
d \</div>
<div>"</div>
<div>```</div>
<div>&nbsp;</div>
<div>The main one I want to remove is Rust, but I still see it building in =
the log.</div>
<div>&nbsp;</div>
<div>I have also tried using `IMAGE_INSTALL:remove` (in fact, I have both a=
t the same time at the moment in my `local.conf` file), but it doesn't seem=
 to work either. I have also tried both options in my `bbappend` file with =
no success either.</div>
<div>&nbsp;</div>
<div>What am I doing wrong here? Is removing Rust even possible?<br /><br /=
>Some other packages I'm trying to remove are also appearing in the build l=
og, like `dpkg-native` or `cmake`.</div>
<div>&nbsp;</div>
<div>Thank you.</div>

--neMgvkL8uJDPVP8e41nz--

