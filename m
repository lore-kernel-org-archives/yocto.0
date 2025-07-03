Return-Path: <akarnil@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC199C83030
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 11:00:35 +0000 (UTC)
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on e-cores)
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Alen Karnil" <akarnil@witekio.com>
X-Originating-Location: Derby, England, GB (62.232.152.46)
X-Originating-Platform: Linux Firefox 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 03 Jul 2025 04:00:27 -0700
References: <CANNYZj-6mE-j=cOUfbDuFb2She1OQzmmeWX048v-yo+eAKqGSQ@mail.gmail.com>
In-Reply-To: <CANNYZj-6mE-j=cOUfbDuFb2She1OQzmmeWX048v-yo+eAKqGSQ@mail.gmail.com>
Message-ID: <6459.1751540427875724875@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jxTB68WQC14kBdLYxD9q"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 11:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65603

--jxTB68WQC14kBdLYxD9q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This is what it says (note that BB_ENV_EXTRAWHITE has been replaced with BB=
_ENV_PASSTHROUGH_ADDITIONS)

>=20
>=20
>=20
> The line BB_ENV_EXTRAWHITE +=3D "TASKSET" in a Yocto local.conf file is u=
sed
> to specify environment variables that should be preserved and passed to
> the BitBake tasks when they are executed. Here's a breakdown of its
> components:
>=20
>=20
>=20
> *=20
>=20
> *BB_ENV_EXTRAWHITE* : This is a BitBake variable that defines a list of
> environment variable names that should be exported to the environment of
> the tasks being executed. By default, BitBake only exports a limited set
> of environment variables to the tasks. This variable allows you to extend
> that list.
>=20
>=20
> *=20
>=20
> *+=3D* : This operator appends the specified value to the existing value =
of
> the variable. If BB_ENV_EXTRAWHITE already contains some variables, this
> will add "TASKSET" to the end of that list.
>=20
>=20
> *=20
>=20
> *"TASKSET"* : This is the name of the environment variable you want to
> preserve. In this context, it refers to the taskset command, which is use=
d
> to set or retrieve the CPU affinity of a process.
>=20
>=20
>=20
>=20
>=20
>=20
> By adding TASKSET to BB_ENV_EXTRAWHITE , you ensure that when BitBake run=
s
> tasks, it includes the TASKSET variable in the environment. This allows y=
ou
> to use taskset to control which CPU cores the BitBake tasks can run on,
> enabling you to manage CPU affinity effectively.
>=20
>=20
>=20

Comparing with the manual, https://docs.yoctoproject.org/bitbake/bitbake-us=
er-manual/bitbake-user-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_AD=
DITIONS

It looks to match up, the only thing I can't figure out where TASKSET is de=
fined or how it knows what to do with it

Alen

--jxTB68WQC14kBdLYxD9q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>This is what it says (note that BB_ENV_EXTRAWHITE has been replaced wi=
th BB_ENV_PASSTHROUGH_ADDITIONS)<br /><br /></div>
<blockquote>
<div>
<p>The line <code class=3D"qlv4I7skMF6Meluz0u8c wZ4JdaHxSAhGy1HoNVja _dJ357=
tkKXSh_Sup5xdW">BB_ENV_EXTRAWHITE +=3D "TASKSET"</code> in a Yocto <code cl=
ass=3D"qlv4I7skMF6Meluz0u8c wZ4JdaHxSAhGy1HoNVja _dJ357tkKXSh_Sup5xdW">loca=
l.conf</code> file is used to specify environment variables that should be =
preserved and passed to the BitBake tasks when they are executed. Here's a =
breakdown of its components:</p>
<ul>
<li>
<p><strong>BB_ENV_EXTRAWHITE</strong>: This is a BitBake variable that defi=
nes a list of environment variable names that should be exported to the env=
ironment of the tasks being executed. By default, BitBake only exports a li=
mited set of environment variables to the tasks. This variable allows you t=
o extend that list.</p>
</li>
<li>
<p><strong>+=3D</strong>: This operator appends the specified value to the =
existing value of the variable. If <code class=3D"qlv4I7skMF6Meluz0u8c wZ4J=
daHxSAhGy1HoNVja _dJ357tkKXSh_Sup5xdW">BB_ENV_EXTRAWHITE</code> already con=
tains some variables, this will add "TASKSET" to the end of that list.</p>
</li>
<li>
<p><strong>"TASKSET"</strong>: This is the name of the environment variable=
 you want to preserve. In this context, it refers to the <code class=3D"qlv=
4I7skMF6Meluz0u8c wZ4JdaHxSAhGy1HoNVja _dJ357tkKXSh_Sup5xdW">taskset</code>=
 command, which is used to set or retrieve the CPU affinity of a process.</=
p>
</li>
</ul>
<p>By adding <code class=3D"qlv4I7skMF6Meluz0u8c wZ4JdaHxSAhGy1HoNVja _dJ35=
7tkKXSh_Sup5xdW">TASKSET</code> to <code class=3D"qlv4I7skMF6Meluz0u8c wZ4J=
daHxSAhGy1HoNVja _dJ357tkKXSh_Sup5xdW">BB_ENV_EXTRAWHITE</code>, you ensure=
 that when BitBake runs tasks, it includes the <code class=3D"qlv4I7skMF6Me=
luz0u8c wZ4JdaHxSAhGy1HoNVja _dJ357tkKXSh_Sup5xdW">TASKSET</code> variable =
in the environment. This allows you to use <code class=3D"qlv4I7skMF6Meluz0=
u8c wZ4JdaHxSAhGy1HoNVja _dJ357tkKXSh_Sup5xdW">taskset</code> to control wh=
ich CPU cores the BitBake tasks can run on, enabling you to manage CPU affi=
nity effectively.</p>
</div>
</blockquote>
<div><br />Comparing with the manual, <a href=3D"https://docs.yoctoproject.=
org/bitbake/bitbake-user-manual/bitbake-user-manual-ref-variables.html#term=
-BB_ENV_PASSTHROUGH_ADDITIONS" target=3D"_blank" rel=3D"noopener">https://d=
ocs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-ref-va=
riables.html#term-BB_ENV_PASSTHROUGH_ADDITIONS</a><br /><br />It looks to m=
atch up, the only thing I can't figure out where TASKSET is defined or how =
it knows what to do with it<br /><br />Alen</div>

--jxTB68WQC14kBdLYxD9q--

