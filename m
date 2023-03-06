Return-Path: <yudai.yamashita@soft-service.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F2A2C678D4
	for <webhook@archiver.kernel.org>; Mon,  6 Mar 2023 07:17:12 +0000 (UTC)
Subject: Re: Reggarding POSIX
To: yocto@lists.yoctoproject.org
From: yudai.yamashita@soft-service.co.jp
X-Originating-Location: Fukuoka, JP (114.160.244.96)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Mar 2023 23:17:07 -0800
References: <5b2e0987-8bb2-1c2a-de72-b972e770432c@bootlin.com>
In-Reply-To: <5b2e0987-8bb2-1c2a-de72-b972e770432c@bootlin.com>
Message-ID: <11490.1678087027155072801@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="d38zjbekrWKrVfDO09MD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Mar 2023 07:17:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59345

--d38zjbekrWKrVfDO09MD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2023 at 07:20 PM, Michael Opdenacker wrote:

>=20
> Hi Yudai,
>=20
> On 03.03.23 at 10:37, yudai.yamashita@soft-service.co.jp wrote:
>=20
>> On Fri, Mar 3, 2023 at 04:23 PM, Alexander Kanavin wrote:
>>=20
>> Yocto first builds its own toolchain, then uses the toolchain to build
>> the actual software stack for the target. So the host environment can
>> be any Linux distribution.
>>=20
>> If you can say what the other OS is, we can discuss specifically if
>> it's going to work.
>>=20
>> Alex
>>=20
>> On Fri, 3 Mar 2023 at 08:17, <yudai.yamashita@soft-service.co.jp>
>> wrote:
>>=20
>>=20
>> Hi All
>>=20
>> I am trying to build an application using POSIX on Ubuntu
>> (Yocto 4.1.2).
>> Even if the development host environment required for the
>> build has been changed to an OS other than Ubuntu, is it
>> possible to build by only changing the Yocto configuration
>> file without changing the application source?
>>=20
>> Thanks
>> Yudai
>>=20
>>=20
>> Thanks for reply
>> Will it work if I use Fedora, CentOS, AlmaLinux, Debian, OpenSUSE?
>=20
>=20
> We support most of them, yes. See
> https://docs.yoctoproject.org/ref-manual/system-requirements.html
> Cheers,
> Michael.
>=20
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

Appreciate it.
thanks!

--d38zjbekrWKrVfDO09MD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2023 at 07:20 PM, Michael Opdenacker wrote:<br />
<blockquote>Hi Yudai,<br /><br />On 03.03.23 at 10:37, yudai.yamashita@soft=
-service.co.jp wrote:<br />
<blockquote>On Fri, Mar 3, 2023 at 04:23 PM, Alexander Kanavin wrote:<br />=
<br />Yocto first builds its own toolchain, then uses the toolchain to buil=
d<br />the actual software stack for the target. So the host environment ca=
n<br />be any Linux distribution.<br /><br />If you can say what the other =
OS is, we can discuss specifically if<br />it's going to work.<br /><br />A=
lex<br /><br />On Fri, 3 Mar 2023 at 08:17, &lt;yudai.yamashita@soft-servic=
e.co.jp&gt;<br />wrote:<br /><br /><br />Hi All<br /><br />I am trying to b=
uild an application using POSIX on Ubuntu<br />(Yocto 4.1.2).<br />Even if =
the development host environment required for the<br />build has been chang=
ed to an OS other than Ubuntu, is it<br />possible to build by only changin=
g the Yocto configuration<br />file without changing the application source=
?<br /><br />Thanks<br />Yudai<br /><br /><br />Thanks for reply<br />Will =
it work if I use Fedora, CentOS, AlmaLinux, Debian, OpenSUSE?</blockquote>
<br />We support most of them, yes. See <br /><a href=3D"https://docs.yocto=
project.org/ref-manual/system-requirements.html" target=3D"_blank" rel=3D"n=
oopener">https://docs.yoctoproject.org/ref-manual/system-requirements.html<=
/a><br />Cheers,<br />Michael.<br /><br />-- <br />Michael Opdenacker, Boot=
lin<br />Embedded Linux and Kernel engineering<br /><a href=3D"https://boot=
lin.com" target=3D"_blank" rel=3D"noopener">https://bootlin.com</a></blockq=
uote>
<p><span style=3D"white-space: pre-wrap;">Appreciate it.<br /></span><span =
style=3D"white-space: pre-wrap;">thanks!</span></p>

--d38zjbekrWKrVfDO09MD--

