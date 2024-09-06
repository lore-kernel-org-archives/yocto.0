Return-Path: <radoslav.pesek@microstep-mis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8C1CE7AFE
	for <webhook@archiver.kernel.org>; Fri,  6 Sep 2024 10:38:04 +0000 (UTC)
Subject: esdk devtool finish workflow
To: yocto@lists.yoctoproject.org
From: "Radoslav Pesek" <radoslav.pesek@microstep-mis.com>
X-Originating-Location: Galanta, Trnava, SK (62.168.101.66)
X-Originating-Platform: Windows Firefox 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Sep 2024 03:37:51 -0700
Message-ID: <Mqk8.1725619071816092089.4kMS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="i2bZlBxb2WiC7DOAGm2T"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Sep 2024 10:38:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63793

--i2bZlBxb2WiC7DOAGm2T
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to do the following (after generating and installing my esdk and=
 sourcing the environment script):
* devtool modify recipe
* do some coding and testing
* devtool finish recipe meta-custom -m srcrev

I want just to update SRCREV of the recipe, *not* to create source code pat=
ches (that's why i use -m srcrev) and *not* to create bbappend for the reci=
pe, but:
* if meta-custom is a layer under the esdk (esdk/layers/meta-custom), the i=
ssue is, it isn't git repo separate from the other layers under esdk/layers=
 (because whole esdk/layers directory is one git repo), so when i commit th=
e changes made by devtool finish (updated SRCREV), i don't make the commit =
in the original git commit history and am not sure how now to push the chan=
ges to the git server
* if meta-custom is git repo somewhere else on the my machine, cloned from =
the original git repo, devtool finish doesn't just update the recipe (with =
changed SRCREV), but creates an bbappend, which i don't like cause updating=
 recipe seems to me to be cleaner then having recipe and bbappend

So i'm not sure, how to accomplish this. Maybe i'm just missing something o=
r don't use esdk/devtool as it's intended. So, could somebody, please, expl=
ain to me the intended workflow or why what i'm trying to do isn't possible=
 (or how, if it is)? Cause what documentation/howtos regarding devtool fini=
sh i came across, either didn't use it within esdk or didn't use the workfl=
ow i'm trying to use. I also tried to search some explanation why sdk/layer=
s is one git repo (instead of having the layers under esdk/layers cloned as=
 separate git repos - as it actually works when you use devtool under yocto=
 build system) or why devtool finish does create bbappend (and doesn't simp=
ly update the recipe) when the layer you want to update isn't the original =
layer, where the recipe comes from (which i guess, within esdk, it's esdk/l=
ayers/meta-custom in my case) as for example mentioned here: https://www.op=
enembedded.org/pipermail/openembedded-core/2016-July/123873.html, but to no=
 avail.

I didn't try it yet, but the only thing that could probably help is adding =
my layer (cloned somewhere on my machine) to the esdk's bblayers.conf, but =
then, i would have the layer twice in the bblayers.conf (the one that was i=
nstalled with the esdk and the one added manually), or even try to remove t=
he one that was installed with esdk, which i'm not sure whether it would wo=
rk.

Currently i'm on scarthgap, if that makes any difference.

Thank you for any clarification, Rado.

--i2bZlBxb2WiC7DOAGm2T
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I'm trying to do the following (after generating and installing my esd=
k and sourcing the environment script):</div>
<div>* devtool modify recipe</div>
<div>* do some coding and testing</div>
<div>* devtool finish recipe meta-custom -m srcrev</div>
<div>&nbsp;</div>
<div>I want just to update SRCREV of the recipe, <strong>not </strong>to cr=
eate source code patches (that's why i use -m srcrev) and <strong>not</stro=
ng> to create bbappend for the recipe, but:</div>
<div>* if meta-custom is a layer under the esdk (esdk/layers/meta-custom), =
the issue is, it isn't git repo separate from the other layers under esdk/l=
ayers (because whole esdk/layers directory is one git repo), so when i comm=
it the changes made by devtool finish (updated SRCREV), i don't make the co=
mmit in the original git commit history and am not sure how now to push the=
 changes to the git server</div>
<div>* if meta-custom is git repo somewhere else on the my machine, cloned =
from the original git repo, devtool finish doesn't just update the recipe (=
with changed SRCREV), but creates an bbappend, which i don't like cause upd=
ating recipe seems to me to be cleaner then having recipe and bbappend</div=
>
<div>&nbsp;</div>
<div>So i'm not sure, how to accomplish this. Maybe i'm just missing someth=
ing or don't use esdk/devtool as it's intended. So, could somebody, please,=
 explain to me the intended workflow or why what i'm trying to do isn't pos=
sible (or how, if it is)? Cause what documentation/howtos regarding devtool=
 finish i came across, either didn't use it within esdk or didn't use the w=
orkflow i'm trying to use. I also tried to search some explanation why sdk/=
layers is one git repo (instead of having the layers under esdk/layers clon=
ed as separate git repos - as it actually works when you use devtool under =
yocto build system) or why devtool finish does create bbappend (and doesn't=
 simply update the recipe) when the layer you want to update isn't the orig=
inal layer, where the recipe comes from (which i guess, within esdk, it's e=
sdk/layers/meta-custom in my case) as for example mentioned here: https://w=
ww.openembedded.org/pipermail/openembedded-core/2016-July/123873.html, but =
to no avail.</div>
<div>&nbsp;</div>
<div>I didn't try it yet, but the only thing that could probably help is ad=
ding my layer (cloned somewhere on my machine) to the esdk's bblayers.conf,=
 but then, i would have the layer twice in the bblayers.conf (the one that =
was installed with the esdk and the one added manually), or even try to rem=
ove the one that was installed with esdk, which i'm not sure whether it wou=
ld work.</div>
<div>&nbsp;</div>
<div>Currently i'm on scarthgap, if that makes any difference.</div>
<div>&nbsp;</div>
<div>Thank you for any clarification, Rado.</div>
<div>&nbsp;</div>

--i2bZlBxb2WiC7DOAGm2T--

