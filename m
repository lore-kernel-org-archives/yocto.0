Return-Path: <pello.heriz@alumni.mondragon.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74091E00B53; Wed, 31 May 2017 00:22:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_SORBS_SPAM autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56375E00B47
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 00:21:56 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id w10so5276402oif.0
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 00:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=alumni.mondragon.edu; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=+7fAtMuAZ49E2QzCgPskcjhjYdfXQCavmSUZZkBNQd4=;
	b=MKQp6orYjgoaaE1N4KKtZmHehU9+avprZWm5UmdQMQnFEtJi4fCxIPxPTsIc+SEK3R
	YhX+R3bHaSJLvXiASl0AfjFN1ZH1B0tw4UZDSiXie5keis6lqVw/vfqvXf4Z9wps5trq
	y1CA0g84tUm6KsRmsGu9NFN1izvoMVeJPK19g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+7fAtMuAZ49E2QzCgPskcjhjYdfXQCavmSUZZkBNQd4=;
	b=Bd/GBBPPUNBY/CduMaEz9nn6tsdHjL0nEvLC7u/R1W3zQkK6vOYpZH6r7OSAN+yyjA
	w9RtNRwBEatJI5JqdyqLIbHdfrEL2jhycmzpUdKbqq7Yda/q1UqxtbB4IOXC3C0TFf17
	SqfnXhB1EzUyzoebOQMlJhB7clhiOL2VkinhN9MCtsJORNM+Gb7Q0h0X4Y23por59Q1o
	pz5vm/Rl9tr623PbjrfErOq0tu3m4kelA8RpswBc5JKDzTzed8pM3t4uIDrxYMg8Lh+A
	7F98qWTNOx0NH2IfiBh4kVEU0m8XUTnwTA1ZqPJzpS2lO5mX5RJGHUFA/XSKsNmBTe5v
	JqEA==
X-Gm-Message-State: AODbwcCsrzKHF3AdrS0H/JN0/UawmEOjK64o4D0qMMY/Jzxfgp2InVd0
	zTH8YRZhbrREYdriU37VGXcUdCv0y+YvQws=
X-Received: by 10.157.43.180 with SMTP id u49mr5253576ota.182.1496215315456;
	Wed, 31 May 2017 00:21:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.29.8 with HTTP; Wed, 31 May 2017 00:21:55 -0700 (PDT)
From: Pello Heriz <pello.heriz@alumni.mondragon.edu>
Date: Wed, 31 May 2017 09:21:55 +0200
Message-ID: <CAFL6qn7k=4mZ2on8DES+f7Brfr24Hhq3u=x9ZXaVEsYeczAX4g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problems to build xen-guest-image-minimal
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
X-List-Received-Date: Wed, 31 May 2017 07:22:03 -0000
Content-Type: multipart/alternative; boundary="001a1145c5906334410550ccc6f2"

--001a1145c5906334410550ccc6f2
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build xen-guest-image-minimal with master branch of Yocto,
but I keep stuck in the next error:

bitbake xen-guest-image-minimal
NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/qtbase_git.bb:
base_contains is deprecated, please use bb.utils.contains instead.
NOTE: /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/qtbase_git.bb:
base_contains is deprecated, please use bb.utils.contains instead.
WARNING:
/opt/yocto_GE/poky/meta-petalinux/recipes-external/external-xilinx-toolchain/
libgcc-xilinx.bb: LICENSE_libgcov-dev includes licenses (GPL-3.0) that are
not listed in LICENSE
Parsing recipes: 100% |##########################################| Time:
0:04:34
Parsing of 2477 .bb files complete (0 cached, 2477 parsed). 3310 targets,
312 skipped, 0 masked, 0 errors.
WARNING: No recipes available for:

/opt/yocto_GE/poky/meta-petalinux/recipes-devtools/python/python-smartpm_%.bbappend
WARNING: No bb files matched BBFILE_PATTERN_gpe-layer
'^/opt/yocto_GE/poky/meta-openembedded/meta-gpe/'
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'rpmresolve-native'. Close matches:
  meson-native
  rpm-native
  perl-native
ERROR: Required build target 'xen-guest-image-minimal' has no buildable
providers.
Missing or unbuildable dependency chain was: ['xen-guest-image-minimal',
'rpmresolve-native']


The bblayers that I have included to the project are the next ones:

BBLAYERS ?= " \
    ${MY_META_DIR}/meta \
    ${MY_META_DIR}/meta-poky \
    ${MY_META_DIR}/meta-yocto-bsp \
    ${MY_META_DIR}/meta-openembedded/meta-perl \
    ${MY_META_DIR}/meta-openembedded/meta-systemd \
    ${MY_META_DIR}/meta-openembedded/meta-gpe \
    ${MY_META_DIR}/meta-openembedded/meta-python \
    ${MY_META_DIR}/meta-openembedded/meta-efl \
    ${MY_META_DIR}/meta-openembedded/meta-ruby \
    ${MY_META_DIR}/meta-openembedded/meta-filesystems \
    ${MY_META_DIR}/meta-openembedded/meta-gnome \
    ${MY_META_DIR}/meta-openembedded/meta-multimedia \
    ${MY_META_DIR}/meta-openembedded/meta-networking \
    ${MY_META_DIR}/meta-openembedded/meta-webserver \
    ${MY_META_DIR}/meta-openembedded/meta-xfce \
    ${MY_META_DIR}/meta-openembedded/meta-initramfs \
    ${MY_META_DIR}/meta-openembedded/meta-oe \
    ${MY_META_DIR}/meta-qt5 \
    ${MY_META_DIR}/meta-selftest \
    ${MY_META_DIR}/meta-skeleton \
    ${MY_META_DIR}/meta-xilinx \
    ${MY_META_DIR}/meta-xilinx-tools \
    ${MY_META_DIR}/meta-petalinux \
    ${MY_META_DIR}/meta-virtualization \
    ${MY_META_DIR}/meta-xzd \
  "

How can I solve this issue?

Regards,
Pello

--001a1145c5906334410550ccc6f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I&#39;m trying to build xen-gue=
st-image-minimal with master branch of Yocto, but I keep stuck in the next =
error:<br><br>bitbake xen-guest-image-minimal<br>NOTE: /opt/yocto_GE/poky/m=
eta-qt5/recipes-qt/qt5/<a href=3D"http://qtbase_git.bb">qtbase_git.bb</a>: =
base_contains is deprecated, please use bb.utils.contains instead.<br>NOTE:=
 /opt/yocto_GE/poky/meta-qt5/recipes-qt/qt5/<a href=3D"http://qtbase_git.bb=
">qtbase_git.bb</a>: base_contains is deprecated, please use bb.utils.conta=
ins instead.<br>WARNING: /opt/yocto_GE/poky/meta-petalinux/recipes-external=
/external-xilinx-toolchain/<a href=3D"http://libgcc-xilinx.bb">libgcc-xilin=
x.bb</a>: LICENSE_libgcov-dev includes licenses (GPL-3.0) that are not list=
ed in LICENSE<br>Parsing recipes: 100% |###################################=
#######| Time: 0:04:34<br>Parsing of 2477 .bb files complete (0 cached, 247=
7 parsed). 3310 targets, 312 skipped, 0 masked, 0 errors.<br>WARNING: No re=
cipes available for:<br>=C2=A0 /opt/yocto_GE/poky/meta-petalinux/recipes-de=
vtools/python/python-smartpm_%.bbappend<br>WARNING: No bb files matched BBF=
ILE_PATTERN_gpe-layer &#39;^/opt/yocto_GE/poky/meta-openembedded/meta-gpe/&=
#39;<br>NOTE: Resolving any missing task queue dependencies<br>ERROR: Nothi=
ng PROVIDES &#39;rpmresolve-native&#39;. Close matches:<br>=C2=A0 meson-nat=
ive<br>=C2=A0 rpm-native<br>=C2=A0 perl-native<br>ERROR: Required build tar=
get &#39;xen-guest-image-minimal&#39; has no buildable providers.<br>Missin=
g or unbuildable dependency chain was: [&#39;xen-guest-image-minimal&#39;, =
&#39;rpmresolve-native&#39;]<br><br><br></div>The bblayers that I have incl=
uded to the project are the next ones:<br><br>BBLAYERS ?=3D &quot; \<br>=C2=
=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/=
meta-poky \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-yocto-bsp \<br>=C2=A0=
=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-perl \<br>=C2=A0=C2=A0=
=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-systemd \<br>=C2=A0=C2=A0=C2=
=A0 ${MY_META_DIR}/meta-openembedded/meta-gpe \<br>=C2=A0=C2=A0=C2=A0 ${MY_=
META_DIR}/meta-openembedded/meta-python \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_D=
IR}/meta-openembedded/meta-efl \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-=
openembedded/meta-ruby \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembe=
dded/meta-filesystems \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembed=
ded/meta-gnome \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/met=
a-multimedia \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-=
networking \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-we=
bserver \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-xfce =
\<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-initramfs \<b=
r>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-openembedded/meta-oe \<br>=C2=A0=
=C2=A0=C2=A0 ${MY_META_DIR}/meta-qt5 \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}=
/meta-selftest \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-skeleton \<br>=
=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-xilinx \<br>=C2=A0=C2=A0=C2=A0 ${MY_=
META_DIR}/meta-xilinx-tools \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-pet=
alinux \<br>=C2=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-virtualization \<br>=C2=
=A0=C2=A0=C2=A0 ${MY_META_DIR}/meta-xzd \<br>=C2=A0 &quot;<br><div><br></di=
v><div>How can I solve this issue?<br><br></div><div>Regards,<br></div><div=
>Pello<br></div><div><br><br><br><br></div></div>

--001a1145c5906334410550ccc6f2--
