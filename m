Return-Path: <yudai.yamashita@soft-service.co.jp>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60700C678D4
	for <webhook@archiver.kernel.org>; Fri,  3 Mar 2023 09:37:15 +0000 (UTC)
Subject: Re: Reggarding POSIX
To: yocto@lists.yoctoproject.org
From: yudai.yamashita@soft-service.co.jp
X-Originating-Location: Fukuoka, JP (114.160.244.96)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Mar 2023 01:37:06 -0800
References: <CANNYZj9aDXTeQaQyofAL5mtXRj0M4ZDVcEkChU4ea7cVhv_tWA@mail.gmail.com>
In-Reply-To: <CANNYZj9aDXTeQaQyofAL5mtXRj0M4ZDVcEkChU4ea7cVhv_tWA@mail.gmail.com>
Message-ID: <3840.1677836226674001704@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YclVIEmXNJY3yQMzvKNZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Mar 2023 09:37:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59339

--YclVIEmXNJY3yQMzvKNZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2023 at 04:23 PM, Alexander Kanavin wrote:

>=20
> Yocto first builds its own toolchain, then uses the toolchain to build
> the actual software stack for the target. So the host environment can
> be any Linux distribution.
>=20
> If you can say what the other OS is, we can discuss specifically if
> it's going to work.
>=20
> Alex
>=20
> On Fri, 3 Mar 2023 at 08:17, <yudai.yamashita@soft-service.co.jp> wrote:
>=20
>>=20
>> Hi All
>>=20
>> I am trying to build an application using POSIX on Ubuntu (Yocto 4.1.2).
>> Even if the development host environment required for the build has been
>> changed to an OS other than Ubuntu, is it possible to build by only
>> changing the Yocto configuration file without changing the application
>> source?
>>=20
>> Thanks
>> Yudai
>>=20
>>=20
>>=20
>=20
>=20

Thanks for reply

Will it work if I use Fedora, CentOS, AlmaLinux, Debian, OpenSUSE?

--YclVIEmXNJY3yQMzvKNZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 3, 2023 at 04:23 PM, Alexander Kanavin wrote:<br />
<blockquote>Yocto first builds its own toolchain, then uses the toolchain t=
o build<br />the actual software stack for the target. So the host environm=
ent can<br />be any Linux distribution.<br /><br />If you can say what the =
other OS is, we can discuss specifically if<br />it's going to work.<br /><=
br />Alex<br /><br />On Fri, 3 Mar 2023 at 08:17, &lt;yudai.yamashita@soft-=
service.co.jp&gt; wrote:<br />
<blockquote><br />Hi All<br /><br />I am trying to build an application usi=
ng POSIX on Ubuntu (Yocto 4.1.2).<br />Even if the development host environ=
ment required for the build has been changed to an OS other than Ubuntu, is=
 it possible to build by only changing the Yocto configuration file without=
 changing the application source?<br /><br />Thanks<br />Yudai<br /><br /><=
br /></blockquote>
</blockquote>
<div>Thanks for reply</div>
<div>&nbsp;</div>
<div>Will it work if I use Fedora, CentOS, AlmaLinux, Debian, OpenSUSE?</di=
v>

--YclVIEmXNJY3yQMzvKNZ--

