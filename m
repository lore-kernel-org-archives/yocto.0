Return-Path: <panyu2000@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 013B7E0033F
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 02:23:35 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so8816687pbb.35
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 02:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FOdFXa3RS1BCSWxYol+tuet7zSOOr1f1RBIq+F+gCyE=;
	b=PFsHKtWGihg8RD3p2M0QcrVIsHSXiWHxHYp/e6TUKp8BH8kavDRPK3kmxQ/viGjGu6
	Rw60TsuS/nimUKbKGygWQM+/O+6b6x2jj1rNaMgAtVZhYZuLAZ4Nym6tL6LSEqKaK69a
	d712B66KpiY0SU/6wmbPJKH/2qMDLLQThc8jdBkUsnvEs6Gp6PqP2ZzwvDoL9cXXkia2
	edNQhPB05Tk+oz92X/8PBercR9Xbbe2O65qwUZjsTtRHyR7JDVUFgEcf/evSK/xfNQha
	jq42ba51ggHROjWeUo5L2kv/9Hjm2hLFuXRL53bYLOGdZdyxFC6Sh+3OQzB+A9oYltOB
	Go9A==
MIME-Version: 1.0
Received: by 10.68.247.134 with SMTP id ye6mr46747938pbc.69.1354011815718;
	Tue, 27 Nov 2012 02:23:35 -0800 (PST)
Received: by 10.66.192.65 with HTTP; Tue, 27 Nov 2012 02:23:35 -0800 (PST)
Date: Tue, 27 Nov 2012 18:23:35 +0800
Message-ID: <CAPeyoXbwyKCE2r3R24D5UW2zHTcqkAS1Po+ZKRUqaG4PsJoqOA@mail.gmail.com>
From: Yu Pan <panyu2000@gmail.com>
To: yocto@yoctoproject.org
Subject: Preempt-rt kernel build for beagleboard
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
X-List-Received-Date: Tue, 27 Nov 2012 10:23:36 -0000
Content-Type: multipart/alternative; boundary=047d7b2e11014c2f3604cf7771d1

--047d7b2e11014c2f3604cf7771d1
Content-Type: text/plain; charset=ISO-8859-1

I started looking at Yocto 2 weeks back. Despite the complexity in kernel
building, I found it quite hard to locate information on preempt-rt build.
I was trying to build linux-yocto-rt for beagleboard from "danny" and the
linux-yocto-3.4 kernel, and it seems to be working. I'd like to share how
one can do that in this thread.

Since the kernel does not include an official preempt-rt branch for
beagleboard yet, I choose to directly use the standard/preempt-rt/base
branch. I guess this should work for the preempt-rt kernel, from the fact
that the standard kernel (non preempt-rt) used for beagleboard from the
standard/beagleboard branch is basically identical to that from the
standard/base branch.

Here is what I did.
1. Under poky/meta-yocto-bsp/recipes-kernel/linux, I added a
linux-yocto-rt_3.4.bbappend recipe containing the following lines. The
SRCREV value used is the same as the one in the base
linux-yocto-rt_3.4.bbunder poky/meta/recipes/kernel.

  KBRANCH_beagleboard = "standard/preempt-rt/base"
  SRCREV_machine_beagleboard ?= "5705c8037d2c47938034ead87c70ae3ebef552f7"
  COMPATIBLE_MACHINE_beagleboard = "beagleboard"

2. Modified the PREFERRED_PROVIDER_virtual/kernel variable in
poky/meta-yocto-bsp/conf/machine/beagleboard.conf to "linux-yocto-rt".

3. "bitbake linux-yocto-rt -c menuconfig" to set the Preemption Model to
"Fully Preemptible Kernel (RT)".

4. "bitbake linux-yocto-rt"

5. "bitbake core-image-rt" which includes some realtime test programs on
top of core-image-minimal.

I did some cyclictest on beagleboard using the generated kernel and image
with "/usr/bin/cyclictest -p95 -m". The results did show huge improvement
on max latency especially under load.

Hope it helps.

Cheers
Pan Yu

--047d7b2e11014c2f3604cf7771d1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I started looking at Yocto 2 weeks back. Despite the complexity in ker=
nel building, I found it quite hard to locate information on preempt-rt bui=
ld. I was trying to build linux-yocto-rt for beagleboard from &quot;danny&q=
uot; and the linux-yocto-3.4 kernel, and it seems to be working. I&#39;d li=
ke to share how one can do that in this thread.</div>
<div><br></div><div>Since the kernel does not include an official preempt-r=
t branch for beagleboard yet, I choose to directly use the standard/preempt=
-rt/base branch. I guess this should work for the preempt-rt kernel, from t=
he fact that the standard kernel (non preempt-rt) used for beagleboard from=
 the standard/beagleboard branch is basically identical to that from the st=
andard/base branch.</div>
<div><br></div><div>Here is what I did.</div><div>1. Under poky/meta-yocto-=
bsp/recipes-kernel/linux, I added a linux-yocto-rt_3.4.bbappend recipe cont=
aining the following lines. The SRCREV value used is the same as the one in=
 the base <a href=3D"http://linux-yocto-rt_3.4.bb">linux-yocto-rt_3.4.bb</a=
> under poky/meta/recipes/kernel.</div>
<div><br></div><div><span style=3D"color:rgb(72,72,72);font-family:Verdana,=
sans-serif;font-size:11.818181991577148px;font-style:italic">=A0 KBRANCH_be=
agleboard =3D &quot;standard/preempt-rt/base&quot;=A0</span><br style=3D"co=
lor:rgb(72,72,72);font-family:Verdana,sans-serif;font-size:11.8181819915771=
48px;font-style:italic">
<span style=3D"color:rgb(72,72,72);font-family:Verdana,sans-serif;font-size=
:11.818181991577148px;font-style:italic">=A0 SRCREV_machine_beagleboard ?=
=3D &quot;5705c8037d2c47938034ead87c70ae3ebef552f7&quot;=A0</span><br style=
=3D"color:rgb(72,72,72);font-family:Verdana,sans-serif;font-size:11.8181819=
91577148px;font-style:italic">
<span style=3D"color:rgb(72,72,72);font-family:Verdana,sans-serif;font-size=
:11.818181991577148px;font-style:italic">=A0 COMPATIBLE_MACHINE_beagleboard=
 =3D &quot;beagleboard&quot;</span><br></div><div><br></div><div>2. Modifie=
d the PREFERRED_PROVIDER_virtual/kernel variable in poky/meta-yocto-bsp/con=
f/machine/beagleboard.conf to &quot;linux-yocto-rt&quot;.</div>
<div><br></div><div>3. &quot;bitbake linux-yocto-rt -c menuconfig&quot; to =
set the Preemption Model to &quot;Fully Preemptible Kernel (RT)&quot;.</div=
><div><br></div><div>4. &quot;bitbake linux-yocto-rt&quot;</div><div><br>
</div><div>5. &quot;bitbake core-image-rt&quot; which includes some realtim=
e test programs on top of core-image-minimal.</div><div><br></div><div>I di=
d some cyclictest on beagleboard using the generated kernel and image with =
&quot;/usr/bin/cyclictest -p95 -m&quot;. The results did show huge improvem=
ent on max latency especially under load.<br>
</div><div><br></div><div>Hope it helps.</div><div><br></div><div>Cheers</d=
iv>Pan Yu<br>

--047d7b2e11014c2f3604cf7771d1--
