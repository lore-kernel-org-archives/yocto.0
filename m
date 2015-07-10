Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E92D7E009A7; Fri, 10 Jul 2015 09:58:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE198E00793
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 09:58:00 -0700 (PDT)
Received: by qgef3 with SMTP id f3so82145409qge.0
	for <yocto@yoctoproject.org>; Fri, 10 Jul 2015 09:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dLaqpUqVDlN7z82oczHTzy0YAJS3xWXQuZYN3S/FBKE=;
	b=YDhfgotyghLymzHNLczFPZeuZ+H6m9AK/BXOWhYPQBiCNdqtTdlhYtqGcXyqPU+M2y
	sK9RCwEvloUnptDLISO3r2SxMBUhrRX1SvROSLixDvxl+AlY7B4vz/fYvkQ3VhRzNM93
	pqEd9i/ugS7PPuYgNWORiGH/wNPdfZb5LCHtEaGi66IM3GuZS9KvL1U6OGY/7qmKeVZK
	MYYbAYlN8crIalR5mmb14RqVNzoha2mi1NM29PjLK529f/Kbr31Zh/VjHULi6MXv6vA3
	VvXzxLlLJ9dd9iZ8A7XCIVahAkSxEthQ7LqJ6TyDYAg3zvsxdv6MQpuBr9RVOUuKvzw7
	fDNA==
MIME-Version: 1.0
X-Received: by 10.140.149.208 with SMTP id 199mr35910382qhv.72.1436547479652; 
	Fri, 10 Jul 2015 09:57:59 -0700 (PDT)
Received: by 10.97.1.2 with HTTP; Fri, 10 Jul 2015 09:57:59 -0700 (PDT)
Date: Fri, 10 Jul 2015 09:57:59 -0700
Message-ID: <CAEKp-abiRBRtnneq6zmZTyZKig0eEQdsLTRcxR+LJMzNQ9giYA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Unexpected behavior with custom Linux kernel build
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
X-List-Received-Date: Fri, 10 Jul 2015 16:58:02 -0000
Content-Type: multipart/alternative; boundary=001a11376b563a5016051a8846de

--001a11376b563a5016051a8846de
Content-Type: text/plain; charset=UTF-8

I am using this recipe to build a very latest kernel from kernel.org:

>>>>>>
DESCRIPTION = "Linux Kernel from Tarball"
SECTION = "kernel"
LICENSE = "GPLv2"

inherit kernel

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

LINUX_VERSION ?= "4.2"
LINUX_VERSION_EXTENSION ?= "-custom"
PR = "rc1"
PV = "${LINUX_VERSION}"

SRC_URI = "
https://www.kernel.org/pub/linux/kernel/v4.x/testing/linux-${LINUX_VERSION}-${PR}.tar.xz;name=kernel
"
SRC_URI += "file://defconfig"

SRC_URI[kernel.md5sum] = "3e8331759af56ddd621528b2c7015ae1"
SRC_URI[kernel.sha256sum] =
"3c524ee0446b4ea8288708fa30acd28647317b9724f2d336052130e164c83f29"

S = "${WORKDIR}/linux-${LINUX_VERSION}-${PR}"

COMPATIBLE_MACHINE = "qemux86|qemux86-64"
<<<<<

Yes, that is the somewhat traditional method of building the kernel. The
kernel builds and works fine.

Now I would like to enable Yocto tooling for the kernel so that I can use
configuration fragments by adding

require recipes-kernel/linux/linux-yocto.inc

to the recipe. That worked just fine in the past. The kernel builds and
boots but then in userspace some unexpected things happen: avahi does not
start and login does not work. Reason being:

setgid: Function not implemeted

Why would that change in tooling cause this error?

Build Configuration:
BB_VERSION        = "1.27.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-21"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8+snapshot-20150710"
TUNE_FEATURES     = "m64 core2"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:20a3a36547831349d5d8b429cb35f1415a856bda"


The effect is the same when using this recipe to build from kernel.org git
repo:

>>>>>
DESCRIPTION = "Linux Kernel from kernel.org Git Repository"
SECTION = "kernel"
LICENSE = "GPLv2"

require recipes-kernel/linux/linux-yocto.inc

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

LINUX_VERSION ?= "4.2"
LINUX_VERSION_EXTENSION ?= "-custom"
PR = "rc1"
PV = "${LINUX_VERSION}+git${SRCPV}"

SRC_URI = "git://
git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=git;nocheckout=1;name=machine
"
SRC_URI += "file://defconfig"

SRCREV_machine="d770e558e21961ad6cfdf0ff7df0eb5d7d4f0754"

COMPATIBLE_MACHINE = "qemux86|qemux86-64"
<<<<<<<

Thanks,
Rudi
-- 
*Rudolf J. Streif*

--001a11376b563a5016051a8846de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am using this recipe to build a very latest kernel from =
<a href=3D"http://kernel.org">kernel.org</a>:<div><br></div><div>&gt;&gt;&g=
t;&gt;&gt;&gt;</div><div><div>DESCRIPTION =3D &quot;Linux Kernel from Tarba=
ll&quot;</div><div>SECTION =3D &quot;kernel&quot;</div><div>LICENSE =3D &qu=
ot;GPLv2&quot;</div><div><br></div><div>inherit kernel</div><div><br></div>=
<div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b=
76f1be7cd7&quot;</div><div><br></div><div>LINUX_VERSION ?=3D &quot;4.2&quot=
;</div><div>LINUX_VERSION_EXTENSION ?=3D &quot;-custom&quot;</div><div>PR =
=3D &quot;rc1&quot;</div><div>PV =3D &quot;${LINUX_VERSION}&quot;</div><div=
><br></div><div>SRC_URI =3D &quot;<a href=3D"https://www.kernel.org/pub/lin=
ux/kernel/v4.x/testing/linux-${LINUX_VERSION}-${PR}.tar.xz;name=3Dkernel">h=
ttps://www.kernel.org/pub/linux/kernel/v4.x/testing/linux-${LINUX_VERSION}-=
${PR}.tar.xz;name=3Dkernel</a>&quot;</div><div>SRC_URI +=3D &quot;file://de=
fconfig&quot;</div><div><br></div><div>SRC_URI[kernel.md5sum] =3D &quot;3e8=
331759af56ddd621528b2c7015ae1&quot;</div><div>SRC_URI[kernel.sha256sum] =3D=
 &quot;3c524ee0446b4ea8288708fa30acd28647317b9724f2d336052130e164c83f29&quo=
t;</div><div><br></div><div>S =3D &quot;${WORKDIR}/linux-${LINUX_VERSION}-$=
{PR}&quot;</div><div><br></div><div>COMPATIBLE_MACHINE =3D &quot;qemux86|qe=
mux86-64&quot;</div><div>&lt;&lt;&lt;&lt;&lt;</div><div><br></div><div>Yes,=
 that is the somewhat traditional method of building the kernel. The kernel=
 builds and works fine.</div><div><br></div><div>Now I would like to enable=
 Yocto tooling for the kernel so that I can use configuration fragments by =
adding</div><div><br></div><div><div>require recipes-kernel/linux/linux-yoc=
to.inc</div></div><div><br></div><div>to the recipe. That worked just fine =
in the past. The kernel builds and boots but then in userspace some unexpec=
ted things happen: avahi does not start and login does not work. Reason bei=
ng:</div><div><br></div><div>setgid: Function not implemeted</div><div><br>=
</div><div>Why would that change in tooling cause this error?</div><div><br=
></div><div><div>Build Configuration:</div><div>BB_VERSION =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;1.27.0&quot;</div><div>BUILD_SYS =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div>NATIVELSBSTRING =C2=A0 =
=3D &quot;Fedora-21&quot;</div><div>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;x86_64-poky-linux&quot;</div><div>MACHINE =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;qemux86-64&quot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =C2=
=A0 =C2=A0=3D &quot;1.8+snapshot-20150710&quot;</div><div>TUNE_FEATURES =C2=
=A0 =C2=A0 =3D &quot;m64 core2&quot;</div><div>TARGET_FPU =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;&quot;</div><div>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0</div><div>meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><di=
v>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;master:20a3a36547831349d5d8b429cb35=
f1415a856bda&quot;</div></div><div><br></div><div><br></div><div>The effect=
 is the same when using this recipe to build from <a href=3D"http://kernel.=
org">kernel.org</a> git repo:</div><div><br></div><div>&gt;&gt;&gt;&gt;&gt;=
</div><div><div>DESCRIPTION =3D &quot;Linux Kernel from <a href=3D"http://k=
ernel.org">kernel.org</a> Git Repository&quot;</div><div>SECTION =3D &quot;=
kernel&quot;</div><div>LICENSE =3D &quot;GPLv2&quot;</div><div><br></div><d=
iv>require recipes-kernel/linux/linux-yocto.inc</div><div><br></div><div>LI=
C_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7=
cd7&quot;</div><div><br></div><div>LINUX_VERSION ?=3D &quot;4.2&quot;</div>=
<div>LINUX_VERSION_EXTENSION ?=3D &quot;-custom&quot;</div><div>PR =3D &quo=
t;rc1&quot;</div><div>PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;</div>=
<div><br></div><div>SRC_URI =3D &quot;git://<a href=3D"http://git.kernel.or=
g/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=3Dgit;nocheckout=3D1=
;name=3Dmachine">git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
;protocol=3Dgit;nocheckout=3D1;name=3Dmachine</a>&quot;</div><div>SRC_URI +=
=3D &quot;file://defconfig&quot;</div><div><br></div><div>SRCREV_machine=3D=
&quot;d770e558e21961ad6cfdf0ff7df0eb5d7d4f0754&quot;</div><div><br></div><d=
iv>COMPATIBLE_MACHINE =3D &quot;qemux86|qemux86-64&quot;</div></div><div>&l=
t;&lt;&lt;&lt;&lt;&lt;&lt;</div><div><br></div><div>Thanks,</div><div>Rudi<=
/div>-- <br><div class=3D"gmail_signature"><font face=3D"arial, helvetica, =
sans-serif"><b>Rudolf J. Streif</b></font><div><font face=3D"garamond, seri=
f"><br></font></div></div>
</div></div>

--001a11376b563a5016051a8846de--
