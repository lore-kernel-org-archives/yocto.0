Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515DFCEF15E
	for <webhook@archiver.kernel.org>; Tue,  8 Oct 2024 12:09:41 +0000 (UTC)
Subject: Re: [yocto] Yocto Binary Distro
To: "Mikko Rapeli" <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.73)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Oct 2024 05:09:33 -0700
References: <ZwTy7wiOzHJcVNjn@nuoska>
In-Reply-To: <ZwTy7wiOzHJcVNjn@nuoska>
Message-ID: <13803.1728389373850401480@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8fwkLY2kkreuRnComoxx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Oct 2024 12:09:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63971

--8fwkLY2kkreuRnComoxx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 10:53 AM, Mikko Rapeli wrote:

>=20
> Hi,
>=20
> Why is one compilation of the released recipe different from another? Who
> maintains the toolchains and dependencies?

It's not, the layers would remain the same, meaning the toolchains and depe=
ndencies don't change. However, due to custom layers we use (but not mainta=
in) we can't ensure reproducible builds, meaning if we rebuild packages, we=
 can't be sure the built binaries are always the same (bit per bit)... and =
some coworkers don't like that (even though IMO it makes little to no diffe=
rence at all).

>=20
> Yocto is for building from sources. It doesn't really have ABI checks and
> layers
> which would easily enable to freeze an ABI and integrate binaries on top
> of that. Every rebuild can change the ABIs in significant ways.
> The approach in bitbake is to rebuild full dependency tree if something
> changes.
> Compilers, glibc etc get updated all the time and it's important to know
> if something
> fails to compile, also to make sure that needed features are enabled,
> correct
> compile flags applied etc.
>=20
> It is possible to integrate binaries into yocto builds but then it must
> be understood that there are no ABI compatibility checks. The binary
> may start failing at any time. The recompilations may be costly but
> that's how yocto is. sstate cache helps but doesn't take away the
> full tree rebuilds when something e.g. native recipe changes.

Thanks for these points, I didn't know Yocto doesn't have ABI checks and th=
is is a very valid point why building from sources is the way to go and why=
 updating the whole OS and not single packages is important.

>=20
> IMO it is tricky to fight against this and it's better to accept it.
> If developers want stable ABIs and integrate binaries then other distros
> could be better but they come with different problems. Debian is hard to
> optimize for the full stack, e.g. distro and machine features. OBS
> may help building only subset of packages from scratch, but even there
> ABI checks may not exist and user need to rely on test automation to
> detect
> breakage.
>=20
> Yocto can build an SDK which can be used to generate 'golden' binaries bu=
t
>=20
> again compatibility of different SDK builds needs to be checked
> to know when binaries may start breaking. At various points ABIs change s=
o
>=20
> much that all binarees need to be recompiled. Think of a security update
> which brings a new openssl version with incompatible ABI.

To build from the SDK occurred to us as well, but is there a offical/stable=
 Yocto way to integrate those binaries back into the image? I don't like th=
e idea of building a base image in Yocto, then building binaries separately=
 in SDK and installing them back into the image with a custom script, as th=
is for sure will be unstable and error-prone. Add atomic updates to that an=
d it might become a nightmare to maintain for multiple products.

Cheers,
Aleksandar

>=20
> Cheers,
>=20
> -Mikko

--8fwkLY2kkreuRnComoxx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Tue, Oct 8, 2024 at 10:53 AM, Mikko Rapeli wrote:</div>
<div>
<blockquote>Hi,<br /><br />Why is one compilation of the released recipe di=
fferent from another? Who<br />maintains the toolchains and dependencies?</=
blockquote>
It's not, the layers would remain the same, meaning the toolchains and depe=
ndencies don't change. However, due to custom layers we use (but not mainta=
in) we can't ensure reproducible builds, meaning if we rebuild packages, we=
 can't be sure the built binaries are always the same (bit per bit)... and =
some coworkers don't like that (even though IMO it makes little to no diffe=
rence at all).</div>
<div>&nbsp;</div>
<div>
<blockquote>Yocto is for building from sources. It doesn't really have ABI =
checks and layers<br />which would easily enable to freeze an ABI and integ=
rate binaries on top<br />of that. Every rebuild can change the ABIs in sig=
nificant ways.<br />The approach in bitbake is to rebuild full dependency t=
ree if something changes.<br />Compilers, glibc etc get updated all the tim=
e and it's important to know if something<br />fails to compile, also to ma=
ke sure that needed features are enabled, correct<br />compile flags applie=
d etc.<br /><br />It is possible to integrate binaries into yocto builds bu=
t then it must<br />be understood that there are no ABI compatibility check=
s. The binary<br />may start failing at any time. The recompilations may be=
 costly but<br />that's how yocto is. sstate cache helps but doesn't take a=
way the<br />full tree rebuilds when something e.g. native recipe changes.<=
/blockquote>
<div>Thanks for these points, I didn't know Yocto doesn't have ABI checks a=
nd this is a very valid point why building from sources is the way to go an=
d why updating the whole OS and not single packages is important.</div>
<div>&nbsp;</div>
<blockquote>IMO it is tricky to fight against this and it's better to accep=
t it.<br />If developers want stable ABIs and integrate binaries then other=
 distros<br />could be better but they come with different problems. Debian=
 is hard to<br />optimize for the full stack, e.g. distro and machine featu=
res. OBS<br />may help building only subset of packages from scratch, but e=
ven there<br />ABI checks may not exist and user need to rely on test autom=
ation to detect<br />breakage.<br /><br />Yocto can build an SDK which can =
be used to generate 'golden' binaries but<br />again compatibility of diffe=
rent SDK builds needs to be checked<br />to know when binaries may start br=
eaking. At various points ABIs change so<br />much that all binarees need t=
o be recompiled. Think of a security update<br />which brings a new openssl=
 version with incompatible ABI.</blockquote>
To build from the SDK occurred to us as well, but is there a offical/stable=
 Yocto way to integrate those binaries back into the image? I don't like th=
e idea of building a base image in Yocto, then building binaries separately=
 in SDK and installing them back into the image with a custom script, as th=
is for sure will be unstable and error-prone. Add atomic updates to that an=
d it might become a nightmare to maintain for multiple products.</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Aleksandar</div>
<div><br />
<blockquote>Cheers,<br /><br />-Mikko</blockquote>
</div>

--8fwkLY2kkreuRnComoxx--

