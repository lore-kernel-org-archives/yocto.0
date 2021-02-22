Subject: Re: [yocto] Custom python location on target #python
To: yocto@lists.yoctoproject.org
From: felixn1996@gmail.com
X-Originating-Location: Halmstad, Halland County, SE (217.211.59.72)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Feb 2021 05:58:17 -0800
References: <CAEt6Nwo_x-VgG1kA9Y_yKLZymJQ+qD6W6Tf+Crg4m7UaoV-Cug@mail.gmail.com>
In-Reply-To: <CAEt6Nwo_x-VgG1kA9Y_yKLZymJQ+qD6W6Tf+Crg4m7UaoV-Cug@mail.gmail.com>
Message-ID: <21611.1614002297001885932@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="p1InEFp1BqhCNk1WuI90"

--p1InEFp1BqhCNk1WuI90
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 22, 2021 at 05:44 AM, Josef Holzmayr wrote:

>=20
> I personally would probably go with a build-in-build, and put some
> form of application rootfs on the emmc - this could either be a simple
> chroot or some more advanced form of container. This avoids nasty
> breakages and update problems when the filesystems go out of version
> sync. Other techniques might also apply depending on your software
> rollout process, like an addtional overlay fs, or a pivot-root with
> initrd, or.... it depends. But ripping out random packages and
> rearranging them at random locations certainly isn't a good idea. It
> already hurts when I think of the mount-and-deploy magic one would
> need for this to roll out in production.
>=20
> My $.02

Okay, that makes sense!
I'll look for a better solution.

KR,
Felix

--p1InEFp1BqhCNk1WuI90
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 22, 2021 at 05:44 AM, Josef Holzmayr wrote:<br />
<blockquote>I personally would probably go with a build-in-build, and put =
some<br />form of application rootfs on the emmc - this could either be a s=
imple<br />chroot or some more advanced form of container. This avoids nast=
y<br />breakages and update problems when the filesystems go out of version=
<br />sync. Other techniques might also apply depending on your software<br=
 />rollout process, like an addtional overlay fs, or a pivot-root with<br /=
>initrd, or.... it depends. But ripping out random packages and<br />rearra=
nging them at random locations certainly isn't a good idea. It<br />already=
 hurts when I think of the mount-and-deploy magic one would<br />need for t=
his to roll out in production.<br /><br />My $.02</blockquote>
Okay, that makes sense! <br />I'll look for a better solution.&nbsp;<br />=
<br />KR,<br />Felix&nbsp;

--p1InEFp1BqhCNk1WuI90--
