Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16645E00939; Tue, 21 Feb 2017 05:29:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 804F7E006C6
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 05:29:06 -0800 (PST)
Received: by mail-oi0-f42.google.com with SMTP id 2so28157448oif.0
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 05:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=evg3nIscTcaCSoPIaEAH80P1kJH6OD64O4uP8BV6gzE=;
	b=cx7WjJNdwmWYX2Ic+rOtjcrpnxKPInvHL/68hPvznnNqN1j29qQccOtQAEAyLXz6qr
	gIi7UqEd1kjNL6xsf5PRG4EAo37rbfvknvQtUQfbol/6x4s9fThp9EJN58U5lj60QhI7
	u0Ox3+Fabm5hWobcuQKC1eIF/trhrMJMoyNaBBQJKR8nMZN8z+JwwqL99N9/b+H2xmJ5
	b5s0c2AsK4MQTh9gLc4tDfC8+0nuDpHM1w6bL2azWBkqfvbGEcVg6YjIjyzE+QJrj5mi
	gSq2b1AAmRRYST1FRlAd1y/6g3BrWibxAkXQDDie8V1UVKkVwQd9WgQcsqh6yt6Ubtpu
	pnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=evg3nIscTcaCSoPIaEAH80P1kJH6OD64O4uP8BV6gzE=;
	b=VfsGFmFrmcfFyUZVWlbPUBJ420OIuIQyCWxEQnDjMYUtkNxOq2N19BqP5QS8+yZrvO
	CzkoPF91fF6DRDu0yJG3fIFBhgiTXzigUAl6VHkvS/WSpd3p6zgai0nXC2R9D1wW2xFE
	R6UrHFSC3Oqo/Q5jXLFrhlt9GWpTv66geGEyueNCxhK/UyZR5WE7IKpz3RoNCbiTNHPP
	0XRoHYjkq1UcVsv1yi0cSlMq3FX9VpQMfXsDcGpdnErfrQC8Sv23lnI+GfxzjBADQP18
	V0fRXmsiZp3M1HaoQ4kLNe3XD8MHpXDTx3p2GGtKWG8M/qiUdxtjldp/YX824xc3K1Ej
	zrzQ==
X-Gm-Message-State: AMke39lmK++jzcLUVKv1U6+pACnGIM9CVBe1lSsOrbeATnaXiAX2/3ljUd5+fku0umToIfEsp7KP6/lSNL00gA==
X-Received: by 10.202.76.146 with SMTP id z140mr14387333oia.68.1487683745386; 
	Tue, 21 Feb 2017 05:29:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.80.29 with HTTP; Tue, 21 Feb 2017 05:29:05 -0800 (PST)
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Tue, 21 Feb 2017 18:59:05 +0530
Message-ID: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: error while compiling external module in Krogoth branch
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
X-List-Received-Date: Tue, 21 Feb 2017 13:29:07 -0000
Content-Type: multipart/alternative; boundary=001a114770c02e955205490a5d4d

--001a114770c02e955205490a5d4d
Content-Type: text/plain; charset=UTF-8

Hi All,
I am using poky-krogoth source and meta-altera layer. I am building kernel
locally using externalsrc. while building external module i am getting
error.



ERROR: Task do_make_scripts in /home/praveenk/source/platform/build/../meta-
skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb depends upon
non-existent task do_shared_workdir in /home/praveenk/source/
platform/build/../meta-altera/recipes-kernel/linux/linux-
altera-ltsi_4.1.22.bb
ERROR: Command execution failed: 1

linux.bb contains

LINUX_VERSION = "4.1.22"
LINUX_VERSION_SUFFIX = "-ltsi"

include linux-altera.inc

SRC_URI = "file://${EXTERNALSRC}"

LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=d7810fab7487fb0aad327b76f1be7c
d7"

BUILD_DEFCONFIG = "socfpga_defconfig"
EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"

SRCREV_pn-${PN} = "${AUTOREV}"

S= "${EXTERNALSRC}"

hello-mod.bb  contains

SUMMARY = "Example of how to build an external Linux kernel module"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"

inherit module

SRC_URI = "file://Makefile \
           file://hello.c \
           file://COPYING \
          "


S = "${WORKDIR}"

# The inherit of module.bbclass will automatically name module packages with
# "kernel-module-" prefix as required by the oe-core build environment.
~


Am I missing anything?

Thanks,
Praveen.

--001a114770c02e955205490a5d4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi All,<br></div>I am using =
poky-krogoth=20
source and meta-altera layer. I am building kernel locally using=20
externalsrc. while building external module i am getting error.<br><br><br>=
<br><span style=3D"color:rgb(255,0,0)">ERROR: Task do_make_scripts in</span=
> /home/praveenk/source/<wbr>platform/build/../meta-<wbr>skeleton/recipes-k=
ernel/hello-<wbr>mod/<a href=3D"http://hello-mod_0.1.bb" target=3D"_blank">=
hello-mod_0.1.bb</a> <span style=3D"color:rgb(255,0,0)">depends upon non-ex=
istent task do_shared_workdir in</span> /home/praveenk/source/<wbr>platform=
/build/../meta-altera/<wbr>recipes-kernel/linux/<a href=3D"http://linux-alt=
era-ltsi_4.1.22.bb" target=3D"_blank">linux-<wbr>altera-ltsi_4.1.22.bb</a><=
br><span style=3D"color:rgb(255,0,0)">ERROR: Command execution failed: 1<br=
></span><br></div><a href=3D"http://linux.bb" target=3D"_blank">linux.bb</a=
> contains<br><br>LINUX_VERSION =3D &quot;4.1.22&quot;<br>LINUX_VERSION_SUF=
FIX =3D &quot;-ltsi&quot;<br><br>include linux-altera.inc<br><br>SRC_URI =
=3D &quot;file://${EXTERNALSRC}&quot;<br><br>LIC_FILES_CHKSUM =3D &quot;fil=
e://${S}/COPYING;md5=3D<wbr>d7810fab7487fb0aad327b76f1be7c<wbr>d7&quot;<br>=
<br>BUILD_DEFCONFIG =3D &quot;socfpga_defconfig&quot;<br>EXTERNALSRC =3D &q=
uot;${TOPDIR}/../meta-altera/<wbr>recipes-kernel/linux/files&quot;<br>EXTER=
NALSRC_BUILD =3D &quot;${TOPDIR}/../meta-altera/<wbr>recipes-kernel/linux/f=
iles&quot;<br><br>SRCREV_pn-${PN} =3D &quot;${AUTOREV}&quot;<br><br>S=3D &q=
uot;${EXTERNALSRC}&quot;<br><br></div><a href=3D"http://hello-mod.bb" targe=
t=3D"_blank">hello-mod.bb</a>=C2=A0 contains<br><br>SUMMARY =3D &quot;Examp=
le of how to build an external Linux kernel module&quot;<br>LICENSE =3D &qu=
ot;GPLv2&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<wbr>12f8=
84d2ae1ff87c09e5b7ccc2c4ca<wbr>7e&quot;<br><br>inherit module<br><br>SRC_UR=
I =3D &quot;file://Makefile \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 file://hello.c \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 file://COPYING \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<br><br><br>S =3D &quot;${WORKDIR}&quot;<br>=
<br># The inherit of module.bbclass will automatically name module packages=
 with<br># &quot;kernel-module-&quot; prefix as required by the oe-core bui=
ld environment.<br>~=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br><br></d=
iv>Am I missing anything?<br><br></div>Thanks,<br></div>Praveen.</div>

--001a114770c02e955205490a5d4d--
