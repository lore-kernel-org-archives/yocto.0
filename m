Return-Path: <karprzy7@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 279D0C83F22
	for <webhook@archiver.kernel.org>; Sun, 20 Jul 2025 19:11:57 +0000 (UTC)
Subject: Issue running GUI application on stm32mp257 due to Vulkan error
To: yocto@lists.yoctoproject.org
From: "Karol P" <karprzy7@gmail.com>
X-Originating-Location: Wroclaw, Lower Silesia, PL (83.168.79.145)
X-Originating-Platform: Linux Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 20 Jul 2025 12:11:56 -0700
Message-ID: <BkCs.1753038716632461263.NP2P@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ojx0OD2RVlM7HmZyC7UB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 20 Jul 2025 19:11:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65685

--ojx0OD2RVlM7HmZyC7UB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone, for learning purposes, I=E2=80=99m trying to build meta-doom (=
 https://github.com/JPEWdev/meta-doom ) for stm32mp257 DK. I previously tri=
ed it for RPi4 and after some minor fixes I was able to do it for nanbield/=
mickledore poky version. I chose those versions since meta-doom is only com=
patible with them. What I established it is possible to run it and it still=
 works.

My setup for stm32mp2 version is that I cloned mickledore repo manifest and=
 integrated meta-doom layer. Doom wouldn=E2=80=99t build for wayland, so I =
had to change my display manager to X11. It=E2=80=99s not directly supporte=
d but still possible (source: https://community.st.com/t5/stm32-mpus-embedd=
ed-software-and/how-to-setup-x11-in-the-distro-instead-of-wayland-on-stm32m=
p1/td-p/741125 )

Now gzdoom builds, and I=E2=80=99m able to execute on target. However, afte=
r uploading proper WAD I get this error:

>=20
>=20
>=20
> no vulkan device found supports minimum requirements of this application
>=20
>=20

I installed vulkan-loader and vulkan-tools into the image and vulkaninfo gi=
ves me following information:

>=20
>=20
>=20
> root@stm32mp25-disco:~# vulkaninfo WARNING: [Loader Message] Code 0 :
> loader_scanned_icd_add: Driver /vendor/lib/libvulkan_VSI.so.1.3.3 support=
s
> Vulkan 1.3, but only supports loader interface version 2. Interface
> version 5 or newer required to support this version of Vulkan (Policy
> #LDP_DRIVER_7) WARNING: [Loader Message] Code 0 :
> terminator_CreateInstance: Driver /vendor/lib/libvulkan_VSI.so.1.3.3
> supports interface version 2 but still exposes VkSurfaceKHR create/destro=
y
> entrypoints
>=20
>=20

I=E2=80=99m at a loss on what to do at this point. There seems to be some v=
ersion mismatch but I can=E2=80=99t figure out how to solve it. And since i=
t worked flawlessly for RPI4 I think this is some configuration related iss=
ue, but I couldn=E2=80=99t pinpoint it.

--ojx0OD2RVlM7HmZyC7UB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<p>Hi everyone, for learning purposes, I&rsquo;m trying to build meta-doom =
(<a href=3D"https://github.com/JPEWdev/meta-doom" target=3D"_blank" rel=3D"=
noopener">https://github.com/JPEWdev/meta-doom</a>) for stm32mp257 DK. I pr=
eviously tried it for RPi4 and after some minor fixes I was able to do it f=
or nanbield/mickledore poky version. I chose those versions since meta-doom=
 is only compatible with them. What I established it is possible to run it =
and it still works.</p>
<p>My setup for stm32mp2 version is that I cloned mickledore repo manifest =
and integrated meta-doom layer. Doom wouldn&rsquo;t build for wayland, so I=
 had to change my display manager to X11. It&rsquo;s not directly supported=
 but still possible (source: <a href=3D"https://community.st.com/t5/stm32-m=
pus-embedded-software-and/how-to-setup-x11-in-the-distro-instead-of-wayland=
-on-stm32mp1/td-p/741125">https://community.st.com/t5/stm32-mpus-embedded-s=
oftware-and/how-to-setup-x11-in-the-distro-instead-of-wayland-on-stm32mp1/t=
d-p/741125</a>)</p>
<p>Now gzdoom builds, and I&rsquo;m able to execute on target. However, aft=
er uploading proper WAD I get this error:</p>
<blockquote>
<p>no vulkan device found supports minimum requirements of this application=
</p>
</blockquote>
<p>I installed vulkan-loader and vulkan-tools into the image and vulkaninfo=
 gives me following information:</p>
<blockquote>
<p>root@stm32mp25-disco:~# vulkaninfo WARNING: [Loader Message] Code 0 : lo=
ader_scanned_icd_add: Driver /vendor/lib/libvulkan_VSI.so.1.3.3 supports Vu=
lkan 1.3, but only supports loader interface version 2. Interface version 5=
 or newer required to support this version of Vulkan (Policy #LDP_DRIVER_7)=
 WARNING: [Loader Message] Code 0 : terminator_CreateInstance: Driver /vend=
or/lib/libvulkan_VSI.so.1.3.3 supports interface version 2 but still expose=
s VkSurfaceKHR create/destroy entrypoints</p>
</blockquote>
<p>I&rsquo;m at a loss on what to do at this point. There seems to be some =
version mismatch but I can&rsquo;t figure out how to solve it. And since it=
 worked flawlessly for RPI4 I think this is some configuration related issu=
e, but I couldn&rsquo;t pinpoint it.</p>
<!-- notionvc: d6254d87-5118-4ae9-8e2d-6412610b8c7d --></div>

--ojx0OD2RVlM7HmZyC7UB--

