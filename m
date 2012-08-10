Return-Path: <linux.mrjimorg@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 257D8E003C8
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 13:03:43 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so2379452yhf.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 13:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=CzHFdWjvEQ2a/HWT1G1IN1I+fpnoOEDtvVW75LEBfvo=;
	b=R/xljR71pzVG9vyomOYIRd0DhPdDmOyXxuFk7l13GV1dQ0XycZJ4J3L6v53eUGc77r
	ORhfqZQhknLDhc9OaPF+8sx8UMhw9pZgMgO3RWGqTKF9IRJIcq//m1FoyWSwj1o/CwTD
	vzLzWMqGPLPu/pgfwdCC2AMsDvFE4FDNZGUoJaHsz7MmRxtABpSNycYv/jPrmpuSI81U
	2eRcQWp6WrZiYxT/eXVe0n004Sr9LkNsC3JyejzDPdZKNyTMqO3wTYj/FHwdfnqmYW8l
	054CW1qRXPzlwV2MB6A7JAmqjyS7ixpvak1ROg0vUSKPCPdOyCTiF3vfr1cnwZ5RlqZD
	jAYQ==
MIME-Version: 1.0
Received: by 10.50.222.231 with SMTP id qp7mr2016363igc.40.1344629022044; Fri,
	10 Aug 2012 13:03:42 -0700 (PDT)
Received: by 10.50.53.206 with HTTP; Fri, 10 Aug 2012 13:03:41 -0700 (PDT)
Date: Fri, 10 Aug 2012 15:03:41 -0500
Message-ID: <CAH6UwN19VfGzj-kig80cCuwk-SWBsnkcOWacFVHpG3kJdyeqVg@mail.gmail.com>
From: Jim Rucker <linux.mrjimorg@gmail.com>
To: yocto@yoctoproject.org
Subject: do_deploy[sstate-inputdirs]
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
X-List-Received-Date: Fri, 10 Aug 2012 20:03:43 -0000
Content-Type: multipart/alternative; boundary=14dae934089f36b2d704c6eed78d

--14dae934089f36b2d704c6eed78d
Content-Type: text/plain; charset=ISO-8859-1

I've been trying to figure out why I've had such trouble getting my
tmp/deploy/uImage files to update after performing a "bitbake -f -c compile
virtual/kernel", and I've come across something I I don't understand. In
deploy.bbclass, we have:

*do_deploy[sstate-inputdirs] = "${DEPLOYDIR}"*

However, the only place DEPLOYDIR is ever used is as a install
*destination* within
the kernel_do_deploy functions. Therefore, from what I can tell, DEPLOYDIR
is never updated and therefore do_deploy is never called - even if you run
"bitbake -f -c deploy virtual/kernel" (note that I'm using the 6.0.2 poky
release, not top of tree). From what I understand, the best way to fix this
is to make the following changes:

kernel.bbclass:
OUTPUTDIR ?= "arch/${ARCH}/boot
KERNEL_OUTPUT ?= "${OUTPUTDIR}/${KERNEL_IMAGETYPE}

deploy.bblass
do_deploy[sstate-inputdirs] = "${OUTPUT_DIR}"
do_deploy[sstate-outputdirs] = "${DEPLOYDIR}

Am I barking up the right or wrong tree here?

--14dae934089f36b2d704c6eed78d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;ve been trying to figure out why I&#39;ve had such trouble getting my=
 tmp/deploy/uImage files to update after performing a &quot;bitbake -f -c c=
ompile virtual/kernel&quot;, and I&#39;ve come across something I I don&#39=
;t understand. In deploy.bbclass, we have:<div>
<br></div><div><b>do_deploy[sstate-inputdirs] =3D &quot;${DEPLOYDIR}&quot;<=
/b></div><div><br></div><div>However, the only place DEPLOYDIR is ever used=
 is as a=A0install=A0<b>destination</b>=A0within the kernel_do_deploy funct=
ions. Therefore, from what I can tell, DEPLOYDIR is never updated and there=
fore do_deploy is never called - even if you run &quot;bitbake -f -c deploy=
 virtual/kernel&quot; (note that I&#39;m using the 6.0.2 poky release, not =
top of tree). From what I understand, the best way to fix this is to make t=
he following changes:</div>
<div><br></div><div>kernel.bbclass:</div><div>OUTPUTDIR ?=3D &quot;arch/${A=
RCH}/boot</div><div>KERNEL_OUTPUT ?=3D &quot;${OUTPUTDIR}/${KERNEL_IMAGETYP=
E}</div><div><br></div><div>deploy.bblass</div><div>do_deploy[sstate-inputd=
irs] =3D &quot;${OUTPUT_DIR}&quot;</div>
<div>do_deploy[sstate-outputdirs] =3D &quot;${DEPLOYDIR}</div><div><br></di=
v><div>Am I barking up the right or wrong tree here?</div><br class=3D"Appl=
e-interchange-newline">

--14dae934089f36b2d704c6eed78d--
