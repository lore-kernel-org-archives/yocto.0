Return-Path: <Markus.Lehmann@duagon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B95CC52D7F
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 06:58:19 +0000 (UTC)
Subject: Building #kernelmodule s, move from #kirkstone to #scarthgap but no RPMs created.
To: yocto@lists.yoctoproject.org
From: "Markus" <Markus.Lehmann@duagon.com>
X-Originating-Location: DE (91.26.240.82)
X-Originating-Platform: Windows Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Aug 2024 23:58:12 -0700
Message-ID: <Hrbg.1723618692163476393.NfW5@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r8CqonQWqE8nh1fffmZS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 06:58:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63696

--r8CqonQWqE8nh1fffmZS
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi,

I'm looking now already for a couple of weeks for a solution for this probl=
em.

In our system we have a recipe which loads from an GIT server our driver pa=
cket which contains some HW specific drivers which shall be used as kernel =
modules.
For this purpose we have our own do_configure(), do_compile(), do_install()=
.

Building to *.ko files still works fine, and I can see them in the image/ a=
nd package/ folder

kirkstone:

- image/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleon_pc=
itbl.ko
- package/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleon_=
pcitbl.ko

scarthgap:

- image/lib/modules/6.6.35-rt31-yocto-preempt-rt/misc/men_bb_chameleon_pcit=
bl.ko
- package/lib/modules/6.6.35-rt31-yocto-preempt-rt/misc/men_bb_chameleon_pc=
itbl.ko

But in kirkstone also something is created in packes-split/ and deploy-rpms=
/ folders (and also in some others like pkgdata* and target/OBJ ):

- packages-split/kernel-module-men-bb-chameleon-pcitbl-5.15.150-rt72-yocto-=
preempt-rt/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleon=
_pci
- deploy-rpms/f75p/kernel-module-men-bb-chameleon-pcitbl-5.15.150-rt72-yoct=
o-preempt-rt-1.0-r0.f75p.rpm

This is not the case for the scarthgap build.

So I guess something is missing in my recipe to get the build in scarthgap =
successful and to get a *.rpm file for every of my driver kernel-modules.

Happy for every hint :-)

Thx,
Markus



--r8CqonQWqE8nh1fffmZS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>

<p>I'm looking now already for a couple of weeks for a solution for this pr=
oblem.</p>

<p>In our system we have a recipe which loads from an GIT server our driver=
 packet which contains some HW specific drivers which shall be used as kern=
el modules.
For this purpose we have our own do_configure(), do_compile(), do_install()=
.</p>

<p>Building to *.ko files still works fine, and I can see them in the image=
/ and package/ folder</p>

<p>kirkstone:</p>

<ul>
<li>image/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleon_=
pcitbl.ko</li>
<li>package/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chameleo=
n_pcitbl.ko</li>
</ul>

<p>scarthgap:</p>

<ul>
<li>image/lib/modules/6.6.35-rt31-yocto-preempt-rt/misc/men_bb_chameleon_pc=
itbl.ko</li>
<li>package/lib/modules/6.6.35-rt31-yocto-preempt-rt/misc/men_bb_chameleon_=
pcitbl.ko</li>
</ul>

<p>But in kirkstone also something is created in packes-split/ and deploy-r=
pms/ folders (and also in some others like pkgdata* and target/OBJ ):</p>

<ul>
<li>packages-split/kernel-module-men-bb-chameleon-pcitbl-5.15.150-rt72-yoct=
o-preempt-rt/lib/modules/5.15.150-rt72-yocto-preempt-rt/misc/men_bb_chamele=
on_pci</li>
<li>deploy-rpms/f75p/kernel-module-men-bb-chameleon-pcitbl-5.15.150-rt72-yo=
cto-preempt-rt-1.0-r0.f75p.rpm</li>
</ul>

<p>This is not the case for the scarthgap build.</p>

<p>So I guess something is missing in my recipe to get the build in scarthg=
ap successful and to get a *.rpm file for every of my driver kernel-modules=
.</p>

<p>Happy for every hint :-)</p>

<p>Thx,
Markus</p>

--r8CqonQWqE8nh1fffmZS--

