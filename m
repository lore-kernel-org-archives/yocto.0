Return-Path: <283982@ust.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B1EC36001
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 06:55:06 +0000 (UTC)
Subject: Re: [yocto] How to build a yocto image with two different python3 versions ? #yocto #python #scarthgap #sdk #toolchain
To: "Leon Anavi" <leon.anavi@konsulko.com>, yocto@lists.yoctoproject.org
From: 283982@ust.com
X-Originating-Location: US (136.226.242.122)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Mar 2025 23:55:02 -0700
References: <aa28d980-f0d2-47ad-8d46-003555b2a8fc@konsulko.com>
In-Reply-To: <aa28d980-f0d2-47ad-8d46-003555b2a8fc@konsulko.com>
Message-ID: <20431.1742453702008361364@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mvXENbiFT2G5urz8WLMX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 06:55:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64987

--mvXENbiFT2G5urz8WLMX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

The STM32MPU157F has limited RAM (386 MB) and an ARM A7 processor. When I t=
ry to install scipy via PyPI, it attempts to build from source, but since t=
here is no pre-built wheel file for ARMv7l, the build process consumes too =
much RAM and crashes the system. For this reason, we are switching to the R=
Z/V2L, which has an ARM A55 processor and 2GB of RAM.

The RZ/V2L Yocto image only includes Python 3.8 by default, but I need Pyth=
on 3.11 to run certain AI applications. Replacing the default Python versio=
n could lead to package conflicts, so I=E2=80=99m considering building a Yo=
cto image that includes both Python 3.8 (default) and Python 3.11 (for my a=
pplication).

Since it will take some time for me to receive the RZ/V2L board, I plan to =
first attempt building an image for the STM32MPU with both Python versions.=
 If successful, I can replicate the process for the RZ/V2L.

When I attempt to compile the scipy wheel file in a Docker container (with =
the platform set to ARMv7l), I encounter an issue with numpy distutils. Thi=
s is because numpy distutils is deprecated for Python 3.12 and onwards (sta=
rting with numpy 1.23), and using versions of numpy earlier than 1.23 is no=
t possible due to compatibility issues.

--mvXENbiFT2G5urz8WLMX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p data-start=3D"112" data-end=3D"115">Hi,</p>
<p data-start=3D"117" data-end=3D"472">The STM32MPU157F has limited RAM (38=
6 MB) and an ARM A7 processor. When I try to install <code data-start=3D"20=
6" data-end=3D"213">scipy</code> via PyPI, it attempts to build from source=
, but since there is no pre-built wheel file for ARMv7l, the build process =
consumes too much RAM and crashes the system. For this reason, we are switc=
hing to the RZ/V2L, which has an ARM A55 processor and 2GB of RAM.</p>
<p data-start=3D"474" data-end=3D"778">The RZ/V2L Yocto image only includes=
 Python 3.8 by default, but I need Python 3.11 to run certain AI applicatio=
ns. Replacing the default Python version could lead to package conflicts, s=
o I&rsquo;m considering building a Yocto image that includes both Python 3.=
8 (default) and Python 3.11 (for my application).</p>
<p data-start=3D"780" data-end=3D"989">Since it will take some time for me =
to receive the RZ/V2L board, I plan to first attempt building an image for =
the STM32MPU with both Python versions. If successful, I can replicate the =
process for the RZ/V2L.<br /><br />When I attempt to compile the <code data=
-start=3D"526" data-end=3D"533">scipy</code> wheel file in a Docker contain=
er (with the platform set to ARMv7l), I encounter an issue with <code data-=
start=3D"628" data-end=3D"645">numpy distutils</code>. This is because <cod=
e data-start=3D"663" data-end=3D"680">numpy distutils</code> is deprecated =
for Python 3.12 and onwards (starting with <code data-start=3D"738" data-en=
d=3D"745">numpy</code> 1.23), and using versions of <code data-start=3D"775=
" data-end=3D"782">numpy</code> earlier than 1.23 is not possible due to co=
mpatibility issues.</p>

--mvXENbiFT2G5urz8WLMX--

