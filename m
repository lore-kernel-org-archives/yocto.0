Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188B6E00498
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 15:14:47 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id o2so1860787lag.35
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 15:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dPnB2bPXy2gq3MQ3r/9Jhfdoq4VPTAB+3rhFSZ2K2o8=;
	b=Nx2i934ejShoXpETZpEHjhqVldqWOTgbc6XD5ti5h4Z9LaKIQPJ5NKwyXl7Ocg+r5Q
	rpoI8UnxRsVpdDABzMkuhcKK23qpnfAO3ynsNP+zmZt0+qiQUpdAarLufc7F8GXFaGZ4
	oYMA0Ej+DGtxJpEBXHLRS+8mFVqAVgOeCHTufNAZJdcgaNALAFoOKT9GHZosOEKYPfE7
	MEgTCuXPvVB2or3QFefX9Ciqn8cxP3rNyapzZRw+C5ju+ZKnYJJ4IVhz61lPXWOf6rQ7
	EEHny6wGvjcykrXiSwR5oyUm/D3e3/TkcYTdXqjg+HfOUCLwtGhEDsavGkliv507F0O3
	wi5A==
MIME-Version: 1.0
Received: by 10.152.47.112 with SMTP id c16mr2558598lan.50.1353021286380; Thu,
	15 Nov 2012 15:14:46 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Thu, 15 Nov 2012 15:14:46 -0800 (PST)
In-Reply-To: <50A1F05E.5080602@intel.com>
References: <CAKL3bWW5ieSi9g9G9QRx7u2rEkoOCqSF6kzLevOdG7LjYxc6=A@mail.gmail.com>
	<50A1F05E.5080602@intel.com>
Date: Thu, 15 Nov 2012 18:14:46 -0500
Message-ID: <CAHUNapQjLyVS-FWa914ty2Y+NAOLtZ3Y2njWQ1=AEaxX1SfhOg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Slides from the Yocto Developer Day
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Nov 2012 23:14:48 -0000
Content-Type: multipart/alternative; boundary=bcaec554082625f44a04ce90d146

--bcaec554082625f44a04ce90d146
Content-Type: text/plain; charset=ISO-8859-1

Thank you.

These are interesting slides. As I was not able to attend the sessions in
Barcelona, I decided to "follow along at home" with the information posted
in this thread.

The slides pdf (ypdd_2012_barcelona_intro_hands_on_lab.pdf) describes the
first line of the contents of the meta-ypdd/recipes-ypdd/images/
ypdd-image.bb as follows:

IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
${POKY_EXTRA_INSTALL} psplash dropbear"

The _worksheets.pdf modifies it as follows:

IMAGE_INSTALL = "task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
${CORE_IMAGE_EXTRA_INSTALL} psplash dropbear"


I tried both variations using both today's latest HEAD and denzil-7.0.1.
Neither variation worked in either release.

If anyone else is following along, I was able to get the latest HEAD to
work with the following first line:

IMAGE_INSTALL = "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \
${CORE_IMAGE_EXTRA_INSTALL} psplash dropbear"

For me "latest HEAD" is defined as:

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121115"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:9e0d3c0faa9cc80ce8f2ce0eb31dcd20ef875955"
meta-ypdd         = "<unknown>:<unknown>"

denzil-7.0.1 never worked for me in any way. At best it would fail with
some obscure perl problem:

| ERROR: Function failed: do_configure (see
/home/trevor/devel/yocto/denzil-7.0.1/ypdd/tmp/work/x86_64-linux/openssl-native-1.0.0i-r0.2/temp/log.do_configure.30074
for further information)
| Can't locate find.pl in @INC (@INC contains:
/usr/lib/perl5/site_perl/5.16.0/x86_64-linux-thread-multi
/usr/lib/perl5/site_perl/5.16.0
/usr/lib/perl5/vendor_perl/5.16.0/x86_64-linux-thread-multi
/usr/lib/perl5/vendor_perl/5.16.0
/usr/lib/perl5/5.16.0/x86_64-linux-thread-multi /usr/lib/perl5/5.16.0
/usr/lib/perl5/site_perl/5.16.0/x86_64-linux-thread-multi
/usr/lib/perl5/site_perl/5.16.0 /usr/lib/perl5/site_perl .) at
perlpath.plline 7.
NOTE: package openssl-native-1.0.0i-r0.2: task do_configure: Failed

--bcaec554082625f44a04ce90d146
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you.<br><br>These are interesting slides. As I was not able to attend=
 the sessions in Barcelona, I decided to &quot;follow along at home&quot; w=
ith the information posted in this thread.<br><br>The slides pdf (ypdd_2012=
_barcelona_intro_hands_on_lab.pdf) describes the first line of the contents=
 of the meta-ypdd/recipes-ypdd/images/<a href=3D"http://ypdd-image.bb">ypdd=
-image.bb</a> as follows:<br>
<br><div style=3D"margin-left:40px"><span style=3D"font-family:courier new,=
monospace">IMAGE_INSTALL =3D &quot;task-core-boot ${ROOTFS_PKGMANAGE_BOOTST=
RAP} \<br></span><div style=3D"margin-left:40px"><span style=3D"font-family=
:courier new,monospace">${POKY_EXTRA_INSTALL} psplash dropbear&quot;</span>=
<br>
</div></div><br>The _worksheets.pdf modifies it as follows:<br><br><div sty=
le=3D"margin-left:40px"><span style=3D"font-family:courier new,monospace">I=
MAGE_INSTALL =3D &quot;task-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP} \<br></=
span><div style=3D"margin-left:40px">
<span style=3D"font-family:courier new,monospace">${CORE_IMAGE_EXTRA_INSTAL=
L} psplash dropbear&quot;</span><br></div></div><br><br><span class=3D""></=
span><span class=3D""></span><span class=3D""></span><span class=3D"">I tri=
ed both variations using both today&#39;s latest HEAD and denzil-7.0.1. Nei=
ther variation worked in either release.<br>
<br>If anyone else is following along, I was able to get the latest HEAD to=
 work with the following first line:<br><br></span><div style=3D"margin-lef=
t:40px"><span class=3D""><span style=3D"font-family:courier new,monospace">=
IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP=
} \</span></span><br>
<div style=3D"margin-left:40px"><span class=3D""><span style=3D"font-family=
:courier new,monospace">${CORE_IMAGE_EXTRA_INSTALL} psplash dropbear&quot;<=
/span></span><br></div><span class=3D""></span></div><span class=3D""><br>F=
or me &quot;latest HEAD&quot; is defined as:<br>
<br></span><div style=3D"margin-left:40px"><span class=3D""><span style=3D"=
font-family:courier new,monospace">Build Configuration:</span></span><br><s=
pan class=3D""><span style=3D"font-family:courier new,monospace">BB_VERSION=
=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.16.0&quot;</span></span><br>
<span class=3D""><span style=3D"font-family:courier new,monospace">TARGET_A=
RCH=A0=A0=A0=A0=A0=A0 =3D &quot;i586&quot;</span></span><br><span class=3D"=
"><span style=3D"font-family:courier new,monospace">TARGET_OS=A0=A0=A0=A0=
=A0=A0=A0=A0 =3D &quot;linux&quot;</span></span><br>
<span class=3D""><span style=3D"font-family:courier new,monospace">MACHINE=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;qemux86&quot;</span></span><br><sp=
an class=3D""><span style=3D"font-family:courier new,monospace">DISTRO=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;</span></span><br>
<span class=3D""><span style=3D"font-family:courier new,monospace">DISTRO_V=
ERSION=A0=A0=A0 =3D &quot;1.3+snapshot-20121115&quot;</span></span><br><spa=
n class=3D""><span style=3D"font-family:courier new,monospace">TUNE_FEATURE=
S=A0=A0=A0=A0 =3D &quot;m32 i586&quot;</span></span><br>
<span class=3D""><span style=3D"font-family:courier new,monospace">TARGET_F=
PU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;&quot;</span></span><br><span class=3D"">=
<span style=3D"font-family:courier new,monospace">meta=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 </span></span><br><span class=3D""><span style=3D"font-f=
amily:courier new,monospace">meta-yocto=A0=A0=A0=A0=A0=A0=A0 </span></span>=
<br>
<span class=3D""><span style=3D"font-family:courier new,monospace">meta-yoc=
to-bsp=A0=A0=A0 =3D &quot;master:9e0d3c0faa9cc80ce8f2ce0eb31dcd20ef875955&q=
uot;</span></span><br><span class=3D""><span style=3D"font-family:courier n=
ew,monospace">meta-ypdd=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;&lt;unknown&gt;:&=
lt;unknown&gt;&quot;</span></span><br>
<span class=3D""></span></div><span class=3D""><br>denzil-7.0.1 never worke=
d for me in any way. At best it would fail with some obscure perl problem:<=
br><br></span><div style=3D"margin-left:40px"><span class=3D""><span style=
=3D"font-family:courier new,monospace">| ERROR: Function failed: do_configu=
re (see /home/trevor/devel/yocto/denzil-7.0.1/ypdd/tmp/work/x86_64-linux/op=
enssl-native-1.0.0i-r0.2/temp/log.do_configure.30074 for further informatio=
n)</span></span><br>
<span class=3D""><span style=3D"font-family:courier new,monospace">| Can&#3=
9;t locate <a href=3D"http://find.pl">find.pl</a> in @INC (@INC contains: /=
usr/lib/perl5/site_perl/5.16.0/x86_64-linux-thread-multi /usr/lib/perl5/sit=
e_perl/5.16.0 /usr/lib/perl5/vendor_perl/5.16.0/x86_64-linux-thread-multi /=
usr/lib/perl5/vendor_perl/5.16.0 /usr/lib/perl5/5.16.0/x86_64-linux-thread-=
multi /usr/lib/perl5/5.16.0 /usr/lib/perl5/site_perl/5.16.0/x86_64-linux-th=
read-multi /usr/lib/perl5/site_perl/5.16.0 /usr/lib/perl5/site_perl .) at <=
a href=3D"http://perlpath.pl">perlpath.pl</a> line 7.</span></span><br>
<span class=3D""><span style=3D"font-family:courier new,monospace">NOTE: pa=
ckage openssl-native-1.0.0i-r0.2: task do_configure: Failed</span></span><b=
r><span class=3D""></span></div>

--bcaec554082625f44a04ce90d146--
