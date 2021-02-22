Subject: Re: Custom python location on target #python
To: yocto@lists.yoctoproject.org
From: felixn1996@gmail.com
X-Originating-Location: Halmstad, Halland County, SE (217.211.59.72)
X-Originating-Platform: Linux Chrome 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Feb 2021 05:42:59 -0800
References: <CAEt6Nwqm8w-Bc+kNueCbuZhbDWP_ueycTXDefOJxeA-fq+pb4g@mail.gmail.com>
In-Reply-To: <CAEt6Nwqm8w-Bc+kNueCbuZhbDWP_ueycTXDefOJxeA-fq+pb4g@mail.gmail.com>
Message-ID: <17670.1614001379235079392@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="geFNFnObTY2DeNWTCR2h"

--geFNFnObTY2DeNWTCR2h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 22, 2021 at 04:57 AM, Josef Holzmayr wrote:

>=20
> Whats the reasoning behind this? If its meant to be a work-around for
> "my custom software totally wants it in that location", then you're
> probably better off fixing your custom software to stick to canonical
> paths. If its about partitioning schemes, other techniques might
> apply. If its about being able to upgrade/modify python independently
> from the system, then you probably want some root-in-root or container
> build. But randomly picing a complex package that has system-wide
> implications and saying "I want it here, screw the FHS" is not a good
> idea usually.

Hi
I am aware that what I am asking for is a bit ugly.

The reason is that I have a small amount of memory at my disposal.=C2=A0 I=
'm working with a setup with two partitions, a root-fs and an overlayed app=
lication file system. None of them has enough space for python.
Therefore I want to install it on the eMMC, which has plenty of space.
So instead of /usr which is on the root/app file system, I would install i=
t under /media/<somewhere> on the mounted eMMC.

But maybe there exists a more elegant solution?

Kind regards,
Felix

--geFNFnObTY2DeNWTCR2h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 22, 2021 at 04:57 AM, Josef Holzmayr wrote:<br />
<blockquote>Whats the reasoning behind this? If its meant to be a work-aro=
und for<br />"my custom software totally wants it in that location", then y=
ou're<br />probably better off fixing your custom software to stick to cano=
nical<br />paths. If its about partitioning schemes, other techniques might=
<br />apply. If its about being able to upgrade/modify python independently=
<br />from the system, then you probably want some root-in-root or containe=
r<br />build. But randomly picing a complex package that has system-wide<br=
 />implications and saying "I want it here, screw the FHS" is not a good<br=
 />idea usually.</blockquote>
<div>Hi</div>
<div>I am aware that what I am asking for is a bit ugly.&nbsp;</div>
<div>&nbsp;</div>
<div>The reason is that I have a small amount of memory at my disposal.&nb=
sp; I'm working with a setup with two partitions, a root-fs and an overlaye=
d application file system. None of them has enough space for python.</div>
<div>Therefore I want to install it on the eMMC, which has plenty of space=
.</div>
<div>So instead of /usr which is on the root/app file system, I would inst=
all it under /media/&lt;somewhere&gt; on the mounted eMMC.&nbsp;</div>
<div>&nbsp;</div>
<div>But maybe there exists a more elegant solution?&nbsp;</div>
<div>&nbsp;</div>
<div>Kind regards,&nbsp;</div>
<div>Felix</div>

--geFNFnObTY2DeNWTCR2h--
