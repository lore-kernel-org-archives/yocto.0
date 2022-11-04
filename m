Return-Path: <frederic.martinsons@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 298ADC433FE
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 10:07:50 +0000 (UTC)
Subject: Re: #dunfell
To: yocto@lists.yoctoproject.org
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
X-Originating-Location: Cugnaux, Occitanie, FR (88.163.88.103)
X-Originating-Platform: Linux Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Nov 2022 03:07:47 -0700
References: <CAGAf8LyhunVRKcPoq51Gttp20H_i8CYWHT8e3TFSXVP4rf8DBQ@mail.gmail.com>
In-Reply-To: <CAGAf8LyhunVRKcPoq51Gttp20H_i8CYWHT8e3TFSXVP4rf8DBQ@mail.gmail.com>
Message-ID: <7446.1667556467778377078@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kJDbsCJZIZXrLobB3VRv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 10:07:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58486

--kJDbsCJZIZXrLobB3VRv
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

On Thu, Nov  3, 2022 at 11:38 PM, Zoran wrote:

>
> >>> - for imageType in ${KERNEL_IMAGETYPES} ; do
> >>> + for imageType in ${KERNEL_IMAGETYPE_FOR_MAKE} ; do
>=20
> Interesting... What is the difference between variables
> ${KERNEL_IMAGETYPES} and ${KERNEL_IMAGETYPE_FOR_MAKE} ?
>=20

In my setup I have:

* KERNEL_IMAGETYPES=3DfitImage (coming from KERNEL_IMAGETYPE of my machine =
configuration)=20
* KERNEL_IMAGETYPE_FOR_MAKE=3DImage (used only internally by kernel.bbclass=
 and setting to Image because of [this line](https://github.com/openembedde=
d/openembedded-core/blob/dunfell/meta/classes/kernel-fitimage.bbclass#L29)


--kJDbsCJZIZXrLobB3VRv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>On Thu, Nov  3, 2022 at 11:38 PM, Zoran wrote:</p>

<blockquote>
<blockquote>
<blockquote>
<blockquote>
<ul>
<li>for imageType in ${KERNEL_IMAGETYPES} ; do</li>
<li>for imageType in ${KERNEL_IMAGETYPE_FOR_MAKE} ; do</li>
</ul>
</blockquote>
</blockquote>
</blockquote>

<p>Interesting... What is the difference between variables
${KERNEL_IMAGETYPES} and ${KERNEL_IMAGETYPE_FOR_MAKE} ?</p>
</blockquote>

<p>In my setup I have:</p>

<ul>
<li>KERNEL_IMAGETYPES=3DfitImage (coming from KERNEL_IMAGETYPE of my machin=
e configuration)</li>
<li>KERNEL_IMAGETYPE_FOR_MAKE=3DImage (used only internally by kernel.bbcla=
ss and setting to Image because of <a href=3D"https://github.com/openembedd=
ed/openembedded-core/blob/dunfell/meta/classes/kernel-fitimage.bbclass#L29"=
 target=3D"_blank">this line</a></li>
</ul>

--kJDbsCJZIZXrLobB3VRv--

