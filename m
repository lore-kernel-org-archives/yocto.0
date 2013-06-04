Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 835F8E006C2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 12:41:33 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id c4so190334eek.29
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 12:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZmQUQBmrgt781GKxXj55zQMjHr5+b7eACVCQOpmlDAY=;
	b=kOUKEjRWaEwef8DHRszUt9NTv8GeZZiwoGpBuE6PidQFTG0ogIpzFahc/6/kwScdHJ
	P7sEueA9gvIIj1f9+gPA1DM0Vkbah3MmACv/OmL9ZRzb8/2NbW4YYrAP9zICHpWc/1Sb
	pGvYteqOUWkVZ5PFvSPGyYsO18lG6046NkTtHw04meegfzb+9S1078nF9PPnPpq2OSIW
	AXGxpv/FT7S12KFfBzb8ifzq7uTkSZgGvqhyD4F8ypyXaDtRAnzAWVzHkpbuIXywTjdg
	xtn63mZiEIRX35eTfrVcqqZI5VNvI2qv6+eKZOh/aP+vYDKxeyKLbgTZuenUMU6K/uKG
	rA7g==
MIME-Version: 1.0
X-Received: by 10.14.99.198 with SMTP id x46mr27077003eef.38.1370374892121;
	Tue, 04 Jun 2013 12:41:32 -0700 (PDT)
Received: by 10.223.165.200 with HTTP; Tue, 4 Jun 2013 12:41:32 -0700 (PDT)
Date: Tue, 4 Jun 2013 13:41:32 -0600
Message-ID: <CANwz6nzC4O8bN92q2YCCLtmGKK1S9LwYPLyWR0VZZBY+EiAUtg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: yocto with meta-ti
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
X-List-Received-Date: Tue, 04 Jun 2013 19:41:33 -0000
Content-Type: multipart/alternative; boundary=001a11c392c6a790d604de5944d2

--001a11c392c6a790d604de5944d2
Content-Type: text/plain; charset=ISO-8859-1

Michael wrote

Hi,

As a quick hack you can mask out recipes-misc by adding the following line
to your conf/local.conf :

BBMASK = "meta-ti/recipes-misc"

It seem to mask out everything in meta-ti/recipes-misc.

This was a suggestion I found on the net. The better way would be if
meta-ti would be split into multiple layers where one of them is a
meta-ti-bsp layer.

Best regards
Michael

I build with yocto and meta-ti for the beaglebone and pandaboard.

This is what I add to local.conf
MACHINE ?= "beaglebone"
MACHINE ?= "pandaboard"
BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/"

and in bblayers.conf
BBLAYERS ?= " \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-ti \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-oe/meta-oe \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto-bsp \
  "
BBLAYERS_NON_REMOVABLE ?= " \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta \
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto \

This works okay see the post
[yocto] beaglebone beagleboard pandaboard
<https://lists.yoctoproject.org/pipermail/yocto/2013-June/016393.html>
*Edward Vidal
*

*Let me know if this helps I am  using dylan branch with an older
version of meta-ti
commit d61bfa88ed3df9190ac9fd5643c27f77b34c5f01
Author: Denys Dmytriyenko <denys@ti.com>
Date:   Mon Feb 25 22:48:33 2013 -0500

    linux-omapl138: fix alignment issue of 2.6.37 kernel with gcc-4.7

    Patch by Steve Sakoman

    Signed-off-by: Denys Dmytriyenko <denys@ti.com>
*

*I hope this helps
*

*Ed Vidal
*

--001a11c392c6a790d604de5944d2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Michael wrote<br><pre>Hi,

As a quick hack you can mask out recipes-misc by adding the following line
to your conf/local.conf :

BBMASK =3D &quot;meta-ti/recipes-misc&quot;

It seem to mask out everything in meta-ti/recipes-misc.

This was a suggestion I found on the net. The better way would be if
meta-ti would be split into multiple layers where one of them is a
meta-ti-bsp layer.

Best regards
Michael
<br></pre><pre>I build with yocto and meta-ti for the beaglebone and pandab=
oard.<br></pre><pre>This is what I add to local.conf<br>MACHINE ?=3D &quot;=
beaglebone&quot;<br>MACHINE ?=3D &quot;pandaboard&quot;<br>BBMASK ?=3D &quo=
t;.*/meta-ti/recipes-(misc|bsp/formfactor|graphics/mesa)/&quot;<br>
</pre><pre>and in bblayers.conf<br>BBLAYERS ?=3D &quot; \<br>  /home/vidal/=
POKY/build060213_dylan_panda/poky/meta \<br>  /home/vidal/POKY/build060213_=
dylan_panda/poky/meta-yocto \<br>  /home/vidal/POKY/build060213_dylan_panda=
/poky/meta-ti \<br>
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-oe/meta-oe \<br>  /hom=
e/vidal/POKY/build060213_dylan_panda/poky/meta-yocto-bsp \<br>  &quot;<br>B=
BLAYERS_NON_REMOVABLE ?=3D &quot; \<br>  /home/vidal/POKY/build060213_dylan=
_panda/poky/meta \<br>
  /home/vidal/POKY/build060213_dylan_panda/poky/meta-yocto \<br><br></pre><=
pre>This works okay see the post <br><a href=3D"https://lists.yoctoproject.=
org/pipermail/yocto/2013-June/016393.html">[yocto] beaglebone beagleboard p=
andaboard
</a><a name=3D"16393">=A0</a>
<i>Edward Vidal<br></i></pre><pre><i>Let me know if this helps I am  using =
dylan branch with an older version of meta-ti<br>commit d61bfa88ed3df9190ac=
9fd5643c27f77b34c5f01<br>Author: Denys Dmytriyenko &lt;<a href=3D"mailto:de=
nys@ti.com">denys@ti.com</a>&gt;<br>
Date:   Mon Feb 25 22:48:33 2013 -0500<br><br>    linux-omapl138: fix align=
ment issue of 2.6.37 kernel with gcc-4.7<br>    <br>    Patch by Steve Sako=
man<br>    <br>    Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"mailto:d=
enys@ti.com">denys@ti.com</a>&gt;<br>
</i></pre><pre><i>I hope this helps<br></i></pre><pre><i>Ed Vidal <br></i><=
/pre></div>

--001a11c392c6a790d604de5944d2--
