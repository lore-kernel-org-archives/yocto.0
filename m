Return-Path: <ryan.a.lovelett@saic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB503C282C5
	for <webhook@archiver.kernel.org>; Fri, 28 Feb 2025 21:56:36 +0000 (UTC)
Subject: linux-intel-rt: TUN/TAP Driver Config Not Being Applied #kernel #kernelmodule #linux
To: yocto@lists.yoctoproject.org
From: "Ryan Lovelett" <ryan.a.lovelett@saic.com>
X-Originating-Location: Merritt Island, Florida, US (72.239.251.203)
X-Originating-Platform: Mac Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Feb 2025 13:56:31 -0800
Message-ID: <Lv3T.1740779791779161515.ZO6F@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IJxoun7RkC96aOo170IG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Feb 2025 21:56:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64895

--IJxoun7RkC96aOo170IG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm having trouble getting the linux-intel-rt kernel to compile the TUN/TAP=
 device driver support directly into the kernel.

What I've tried...

* Ran bitbake -c kernel_configme -f virtual/kernel to generate the base con=
fig.
* Manually enabled the Universal TUN/TAP device driver support: bitbake -c =
menuconfig virtual/kernel

* -> Device Drivers

* -> Network device support (NETDEVICES [=3Dy])

* -> Network core driver support (NET_CORE [=3Dy])

* -> Universal TUN/TAP device driver support (TUN [=3Dy])

* Ran bitbake -c diffconfig virtual/kernel , which generated fragment.cfg c=
ontaining: CONFIG_TUN=3Dy
* Copied this into enable-tap-tun.cfg and added it to linux-intel-rt_%.bbap=
pend : FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:" =20

SRC_URI:prepend =3D " \ =20
 file://enable-can.cfg \ =20
 file://enable-tap-tun.cfg \ =20
" =20

After building when I try to do modprobe tun the module is not found. I bel=
ieve my config fragments are being processed because it seems enable-can.cf=
g is being applied correctly. Is there some kind of conflict, precedence is=
sue, or override preventing my TUN/TAP configuration from being applied?

Would appreciate any insight.

--IJxoun7RkC96aOo170IG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'm having trouble getting the <code>linux-intel-rt</code> kernel to com=
pile the TUN/TAP device driver support directly into the kernel.</p>
<p>What I've tried...</p>
<ol>
<li>Ran <code>bitbake -c kernel_configme -f virtual/kernel</code> to genera=
te the base config.</li>
<li>Manually enabled the Universal TUN/TAP device driver support:<code>bitb=
ake -c menuconfig virtual/kernel =20
</code>
<ul>
<li><code>-&gt; Device Drivers</code>
<ul>
<li><code>-&gt; Network device support (NETDEVICES [=3Dy])</code>
<ul>
<li><code>-&gt; Network core driver support (NET_CORE [=3Dy])</code>
<ul>
<li><code>-&gt; Universal TUN/TAP device driver support (TUN [=3Dy])</code>=
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
</ul>
</li>
<li>Ran <code>bitbake -c diffconfig virtual/kernel</code>, which generated =
<code>fragment.cfg</code> containing: <code>CONFIG_TUN=3Dy =20
</code></li>
<li>Copied this into <code>enable-tap-tun.cfg</code> and added it to <code>=
linux-intel-rt_%.bbappend</code>:
<pre><code>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:" =20

SRC_URI:prepend =3D " \ =20
  file://enable-can.cfg \ =20
  file://enable-tap-tun.cfg \ =20
" =20
</code></pre>
</li>
</ol>
<h3>&nbsp;</h3>
<div>After building when I try to do <code>modprobe tun</code> the module i=
s not found. I believe my config fragments are being processed because it s=
eems <code>enable-can.cfg</code> is being applied correctly. Is there some =
kind of conflict, precedence issue, or override preventing my TUN/TAP confi=
guration from being applied?</div>
<div>&nbsp;</div>
<p>Would appreciate any insight.</p>

--IJxoun7RkC96aOo170IG--

