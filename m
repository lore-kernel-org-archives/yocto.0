Return-Path: <boguszbrodzinski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 527EAE00823; Tue, 24 Jan 2017 07:16:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (boguszbrodzinski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DABFE003DB
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 07:16:49 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id l66so137385495ioi.1
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 07:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=eDcJkPdIrc8EkdmFasDTcPn06XXkUSoJQj6n8uf3LLE=;
	b=ZCUvrLLMxwiWjR4LXuZaZK1esd4cRvmX7Nj8y06oZpONpC/Jr6wHCmsSl7j3V0g6lL
	j5sF44EHeH1omd6mT3x8p+maM4yDwbDgzCgdDWdRilS2MyBi8YM4JsNphsw2U6EFftJj
	rjaj52O4OV8oaLb8X5kvrbzj+kB7j/oiq8lkxY/WeMRIUub8LmDq43qs4e9dkmQ42fV4
	9PQiSc1dkckmhnYP6ttdssiw6xeuAJ3ceMb776vsjXqdVthPs5EaC171SthpnnY1yO20
	6L769WEKG74tED5R7oiQwDFUzYignTuk1VLkI8xf8VQ5WxvCOcAoi5YbD9T3T6AYwafT
	oYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=eDcJkPdIrc8EkdmFasDTcPn06XXkUSoJQj6n8uf3LLE=;
	b=T0fzdbmricGY4SriTbuL49V6WKM0g+jk5sBC1zJyZEqaRvz3dDrXpwLRVYGfX//Q+g
	MGJ/CQqp0cFgKMjEHNa58GGdLM8KpwJoeZ9PRDcdEtRGN9L3ynmtdABL0rEJBV6NzpeR
	3Mo1YpEPEqXN1BCB4ADXKySHwWbMfCD6Uyqdef3DT42tFxo8w6r9kDhK2HPP4c+dG5P2
	j4RXFs74Obf7FbTFiyzQSYhoUw44azkl/t8f2Oe/IzIEy0baflU57CAd0KpgRXiAwIAQ
	wOemd7D04htivBLbVSCalC0kZBmDR0wNCTIuydmOmSSddg5q9txoTsscm6ynbh0d02Bp
	C5Ng==
X-Gm-Message-State: AIkVDXKXbOz0JQqMoOANlErmXFkQUF02FZDYX62Or9BQHoLT1hNJMIvC4Rajps04UegYvpRIpxi/j5XCOwG8pQ==
X-Received: by 10.107.32.199 with SMTP id g190mr27994572iog.178.1485271008477; 
	Tue, 24 Jan 2017 07:16:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.8.156 with HTTP; Tue, 24 Jan 2017 07:16:27 -0800 (PST)
From: =?UTF-8?Q?Bogusz_Brodzi=C5=84ski?= <boguszbrodzinski@gmail.com>
Date: Tue, 24 Jan 2017 16:16:27 +0100
Message-ID: <CANCRmL5xrZ+XYfcVG+V-77JFk8D-1s5PA+MDZeU9KedTEAbtEQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problems with building out-of-tree modules in morty
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
X-List-Received-Date: Tue, 24 Jan 2017 15:16:53 -0000
Content-Type: multipart/alternative; boundary=001a1140338adb0bdf0546d89a5d

--001a1140338adb0bdf0546d89a5d
Content-Type: text/plain; charset=UTF-8

Hi,

TL;DR after migrating from jethro to morty my out-of-tree modules do not
load.

Long version:
Im developing uio driver for a custom FPGA. The base is xilinx zu15 (note:
as the explanation will go on I *think* it will be clear that this is not
related to meta-xilinx).
It's basically a debug interface that generates IRQ-like events on files
(poll) for newly developed/tested features. The initial structure was poky
jethro, meta-xilinx with linux-xlnx 4.4 for aarch64. The module is
basically uio driver, but creates individual uio for each signal. The
makefile is straight from
https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html and the
recipee inherits from module.
When using jethro the module got built out-of-tree with no problem and I
could load it. After migrating to morty (I also bumped meta-xilinx rev, but
I use the same kernel SRCREV and project layer) I still can build the
module, but when loading it I get:

$ modprobe uio_pdrv_testirq
[   79.059558] module uio_pdrv_testirq: unsupported RELA relocation: 275
modprobe: can't load module uio_pdrv_testirq (testirq/uio_pdrv_testirq.ko):
invalid module format

$ modinfo uio_pdrv_testirq
filename:       testirq/uio_pdrv_testirq.ko
license:        GPL v2
author:         BB
description:    Userspace I/O test driver irq handler
depends:
vermagic:       4.4.0-xilinx SMP preempt mod_unload modversions aarch64

I looked for a solution and found this
http://lists.infradead.org/pipermail/linux-arm-kernel/2015-October/375429.html
thread
I checked that I have all the ERRATUM enabled (with emphasys on
ARM64_ERRATUM_843419):
CONFIG_ARM64_ERRATUM_826319=y
CONFIG_ARM64_ERRATUM_827319=y
CONFIG_ARM64_ERRATUM_824069=y
CONFIG_ARM64_ERRATUM_819472=y
CONFIG_ARM64_ERRATUM_832075=y
CONFIG_ARM64_ERRATUM_845719=y
CONFIG_ARM64_ERRATUM_843419=y

and I added
CFLAGS_MODULE  += -mcmodel=large

Result: no change; testirq still fails to load.

I would be grateful for any suggestions where to look or what to do next.

Best regards,
Bogusz Brodzinski

--001a1140338adb0bdf0546d89a5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>TL;DR after migrating fr=
om jethro to morty my out-of-tree modules do not load.</div><div><br></div>=
<div>Long version:</div><div>Im developing uio driver for a custom FPGA. Th=
e base is xilinx zu15 (note: as the explanation will go on I *think* it wil=
l be clear that this is not related to meta-xilinx).</div><div>It&#39;s bas=
ically a debug interface that generates IRQ-like events on files (poll) for=
 newly developed/tested features. The initial structure was poky jethro, me=
ta-xilinx with linux-xlnx 4.4 for aarch64. The module is basically uio driv=
er, but creates individual uio for each signal. The makefile is straight fr=
om <a href=3D"https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.h=
tml">https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html</a> a=
nd the recipee inherits from module.</div><div>When using jethro the module=
 got built out-of-tree with no problem and I could load it. After migrating=
 to morty (I also bumped meta-xilinx rev, but I use the same kernel SRCREV =
and project layer) I still can build the module, but when loading it I get:=
</div><div><br></div><div>$ modprobe uio_pdrv_testirq</div><div>[ =C2=A0 79=
.059558] module uio_pdrv_testirq: unsupported RELA relocation: 275</div><di=
v>modprobe: can&#39;t load module uio_pdrv_testirq (testirq/uio_pdrv_testir=
q.ko): invalid module format</div><div><br></div><div>$ modinfo uio_pdrv_te=
stirq</div><div>filename: =C2=A0 =C2=A0 =C2=A0 testirq/uio_pdrv_testirq.ko<=
/div><div>license: =C2=A0 =C2=A0 =C2=A0 =C2=A0GPL v2</div><div>author: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 BB</div><div>description: =C2=A0 =C2=A0Userspace I=
/O test driver irq handler</div><div>depends:</div><div>vermagic: =C2=A0 =
=C2=A0 =C2=A0 4.4.0-xilinx SMP preempt mod_unload modversions aarch64</div>=
<div><br></div><div>I looked for a solution and found this <a href=3D"http:=
//lists.infradead.org/pipermail/linux-arm-kernel/2015-October/375429.html">=
http://lists.infradead.org/pipermail/linux-arm-kernel/2015-October/375429.h=
tml</a> thread</div><div>I checked that I have all the ERRATUM enabled (wit=
h emphasys on ARM64_ERRATUM_843419):</div><div>CONFIG_ARM64_ERRATUM_826319=
=3Dy</div><div>CONFIG_ARM64_ERRATUM_827319=3Dy</div><div>CONFIG_ARM64_ERRAT=
UM_824069=3Dy</div><div>CONFIG_ARM64_ERRATUM_819472=3Dy</div><div>CONFIG_AR=
M64_ERRATUM_832075=3Dy</div><div>CONFIG_ARM64_ERRATUM_845719=3Dy</div><div>=
CONFIG_ARM64_ERRATUM_843419=3Dy</div><div><br></div><div>and I added</div><=
div>CFLAGS_MODULE =C2=A0+=3D -mcmodel=3Dlarge</div><div><br></div><div>Resu=
lt: no change; testirq still fails to load.</div><div><br></div><div>I woul=
d be grateful for any suggestions where to look or what to do next.</div><d=
iv><br></div><div>Best regards,</div><div>Bogusz Brodzinski</div><div><br><=
/div></div>

--001a1140338adb0bdf0546d89a5d--
