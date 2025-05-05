Return-Path: <omri.sarig13@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B46FC3ABB6
	for <webhook@archiver.kernel.org>; Mon,  5 May 2025 12:40:17 +0000 (UTC)
Subject: Styhead: openssh-9.8p1 sshd.socket does not work with tpm-provider enabled
To: yocto@lists.yoctoproject.org
From: "Omri Sarig" <omri.sarig13@gmail.com>
X-Originating-Location: =?UTF-8?B?TW90YWxhLCDDlnN0ZXJnw7Z0bGFuZCBDb3VudHksIFNF?= (81.216.59.226)
X-Originating-Platform: Linux Firefox 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 05 May 2025 05:40:13 -0700
Message-ID: <xa9G.1746448813120620239.tvXx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f4abrv0XziGkFBVmffTr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 May 2025 12:40:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65280

--f4abrv0XziGkFBVmffTr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a project where I have a Yocto system built over an RPi CM4.
My project was originally based over the Scarthgap release, and now I'm in =
the
process of upgrading it to the Styhead release of meta-poky.

After upgrading the relevant layers to the Styhead branch, I have problems =
with
accessing the device over SSH with the default settings available through
the recipe in meta-poky.

I've a solution, but I don't understand the problem, so I'd really apprecia=
te
some tips as to how to debug the problem further, if anyone experienced
anything similar.

The Setup:

The setup I'm using is based over a raspberry-pi compute module 4, where I =
have
TPM attached to it.

I have a tpm-provider enabled for openssl:

>=20
> --- a/apps/openssl.cnf
> +++ b/apps/openssl.cnf
> @@ -56,6 +56,7 @@ providers =3D provider_sect
> # List of providers to load
> [provider_sect]
> default =3D default_sect
> +tpm2provider =3D tpm2provider_sect
> # The fips section name should match the section name inside the
> # included fipsmodule.cnf.
> # fips =3D fips_sect
> @@ -69,8 +70,11 @@ default =3D default_sect
> # OpenSSL may not work correctly which could lead to significant system
> # problems including inability to remotely access the system.
> [default_sect]
> -# activate =3D 1
> +activate =3D 1
>=20
> +[tpm2provider_sect]
> +activate =3D 1
> +module =3D /usr/lib/ossl-modules/tpm2.so
>=20

And I'm using openssh version 9.8p1 (openssl version 3.3.1, but I don't thi=
nk
it is relevant), which is the enabled version from meta-poky.

The Problem:

When using the above setup, when I try to ssh into the device, the ssh proc=
ess
is blocked for 2 minutes, before it dies (without connection).

Workarounds:

I've found out that any of the following changes make the problem disappear=
:

* Downgrading openssh to version 9.7p1 (as available in commit 0c03d6aeb7 i=
n
meta-poky).
* Disabling the tpm-provider in openssl.cnf.
* Killing the sshd.socket service, and manually running `/usr/sbin/sshd` on=
 the
device.

The Current Solution:

I've seen there are 2 different ways to run sshd through systemd: either as=
 a
socket service, or run sshd directly.

By setting the PACKAGECONFIG of the recipe to run the sshd directly (instea=
d of
as a socket), this problem is being solved.

This results in the following addition to my machine.conf:

>=20
> PACKAGECONFIG:remove:pn-openssh =3D "systemd-sshd-socket-mode"
> PACKAGECONFIG:append:pn-openssh =3D " systemd-sshd-service-mode "
>=20

As I wrote above, I have a solution that works for my system. However, as I
don't understand the problem, I'm not confident that by doing the current f=
ix
I'm not creating future problems.

I couldn't find any other mention of such problems online, or any relevant
mention in the release-notes for openssh-9.8, and as the problem happens on=
ly
when the TPM provider is enabled, I'm not sure how many other people have
encountered/are affected by it.

It can be really helpful if anyone with any relevant experience and can poi=
nt
me in the right direction for more debugging or relevant documentation that=
 I
can do.

Thank you!
With Kind Regards,
Omri

--f4abrv0XziGkFBVmffTr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello,</div>
<div>&nbsp;</div>
<div>I have a project where I have a Yocto system built over an RPi CM4.<br=
 />My project was originally based over the Scarthgap release, and now I'm =
in the<br />process of upgrading it to the Styhead release of meta-poky.</d=
iv>
<div>&nbsp;</div>
<div>After upgrading the relevant layers to the Styhead branch, I have prob=
lems with<br />accessing the device over SSH with the default settings avai=
lable through<br />the recipe in meta-poky.</div>
<div><br />I've a solution, but I don't understand the problem, so I'd real=
ly appreciate<br />some tips as to how to debug the problem further, if any=
one experienced<br />anything similar.</div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">The Setup:</span></div>
<div>&nbsp;</div>
<div>The setup I'm using is based over a raspberry-pi compute module 4, whe=
re I have<br />TPM attached to it.</div>
<div>&nbsp;</div>
<div>I have a tpm-provider enabled for openssl:</div>
<div>&nbsp;</div>
<blockquote>
<div>--- a/apps/openssl.cnf<br />+++ b/apps/openssl.cnf<br />@@ -56,6 +56,7=
 @@ providers =3D provider_sect<br />&nbsp;# List of providers to load<br /=
>&nbsp;[provider_sect]<br />&nbsp;default =3D default_sect<br />+tpm2provid=
er =3D tpm2provider_sect<br />&nbsp;# The fips section name should match th=
e section name inside the<br />&nbsp;# included fipsmodule.cnf.<br />&nbsp;=
# fips =3D fips_sect<br />@@ -69,8 +70,11 @@ default =3D default_sect<br />=
&nbsp;# OpenSSL may not work correctly which could lead to significant syst=
em<br />&nbsp;# problems including inability to remotely access the system.=
<br />&nbsp;[default_sect]<br />-# activate =3D 1<br />+activate =3D 1<br /=
>&nbsp;<br />+[tpm2provider_sect]<br />+activate =3D 1<br />+module =3D /us=
r/lib/ossl-modules/tpm2.so</div>
</blockquote>
<div>&nbsp;</div>
<div>And I'm using openssh version 9.8p1 (openssl version 3.3.1, but I don'=
t think<br />it is relevant), which is the enabled version from meta-poky.<=
/div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">The Problem:</span></div>
<div>&nbsp;</div>
<div>When using the above setup, when I try to ssh into the device, the ssh=
 process<br />is blocked for 2 minutes, before it dies (without connection)=
.</div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">Workarounds:</span></div>
<div>&nbsp;</div>
<div>I've found out that any of the following changes make the problem disa=
ppear:</div>
<div>&nbsp;</div>
<div>* Downgrading openssh to version 9.7p1 (as available in commit 0c03d6a=
eb7 in<br />meta-poky).<br />* Disabling the tpm-provider in openssl.cnf.<b=
r />* Killing the sshd.socket service, and manually running `/usr/sbin/sshd=
` on the<br />&nbsp; device.</div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">The Current Solution:</spa=
n></div>
<div>&nbsp;</div>
<div>I've seen there are 2 different ways to run sshd through systemd: eith=
er as a<br />socket service, or run sshd directly.</div>
<div>&nbsp;</div>
<div>By setting the PACKAGECONFIG of the recipe to run the sshd directly (i=
nstead of<br />as a socket), this problem is being solved.</div>
<div>&nbsp;</div>
<div>This results in the following addition to my machine.conf:</div>
<div>&nbsp;</div>
<blockquote>
<div>PACKAGECONFIG:remove:pn-openssh =3D "systemd-sshd-socket-mode"<br />PA=
CKAGECONFIG:append:pn-openssh =3D " systemd-sshd-service-mode "</div>
</blockquote>
<div>&nbsp;</div>
<div><hr /></div>
<div>&nbsp;</div>
<div>As I wrote above, I have a solution that works for my system. However,=
 as I<br />don't understand the problem, I'm not confident that by doing th=
e current fix<br />I'm not creating future problems.</div>
<div>&nbsp;</div>
<div>I couldn't find any other mention of such problems online, or any rele=
vant<br />mention in the release-notes for openssh-9.8, and as the problem =
happens only<br />when the TPM provider is enabled, I'm not sure how many o=
ther people have<br />encountered/are affected by it.</div>
<div>&nbsp;</div>
<div>It can be really helpful if anyone with any relevant experience and ca=
n point<br />me in the right direction for more debugging or relevant docum=
entation that I<br />can do.</div>
<div>&nbsp;</div>
<div>Thank you!</div>
<div>With Kind Regards,<br />Omri</div>
</div>

--f4abrv0XziGkFBVmffTr--

