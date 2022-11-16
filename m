Return-Path: <frederic.martinsons@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE52CC4332F
	for <webhook@archiver.kernel.org>; Wed, 16 Nov 2022 11:20:43 +0000 (UTC)
Subject: Re: Ownership issue during do_image
To: yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Cugnaux, Occitanie, FR (88.163.88.103)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Nov 2022 03:20:41 -0800
References: <CANx9H-D0TLuDvHEvFwe=SL780=_szpk_rO9B9hhV8+7zTBiD_g@mail.gmail.com>
In-Reply-To: <CANx9H-D0TLuDvHEvFwe=SL780=_szpk_rO9B9hhV8+7zTBiD_g@mail.gmail.com>
Message-ID: <5009.1668597641945474046@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vPqzgPsHzB3UMI71Zpk2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Nov 2022 11:20:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58575

--vPqzgPsHzB3UMI71Zpk2
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Yes I do, I build under docker (ubuntu 20.04), I didn't mention that in my =
original post , sorry. Do you think it is related to my issue ?

On Tue, Nov 15, 2022 at 09:06 PM, Tim Orling wrote:

>
> Are you building with a docker/podman container?
>=20
> On Tue, Nov 15, 2022 at 9:24 AM Frederic Martinsons <
> frederic.martinsons@gmail.com> wrote:
>=20
> > Hello list,
> >
> > Doesn't ring a bell to anybody ? Even the slightest clue will help me t=
o
> > continue to track down this weird behavior , nobody have ever problem o=
f
> > files/directories rights during image generation ?
> >
> >=20
> >
> >
>

--vPqzgPsHzB3UMI71Zpk2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Yes I do, I build under docker (ubuntu 20.04), I didn't mention that in =
my original post , sorry. Do you think it is related to my issue ?</p>

<p>On Tue, Nov 15, 2022 at 09:06 PM, Tim Orling wrote:</p>

<blockquote>
<p>Are you building with a docker/podman container?</p>

<p>On Tue, Nov 15, 2022 at 9:24 AM Frederic Martinsons &lt;
frederic.martinsons@gmail.com&gt; wrote:</p>

<blockquote>
<p>Hello list,</p>

<p>Doesn't ring a bell to anybody ? Even the slightest clue will help me to
continue to track down this weird behavior , nobody have ever problem of
files/directories rights during image generation ?</p>
</blockquote>
</blockquote>

--vPqzgPsHzB3UMI71Zpk2--

