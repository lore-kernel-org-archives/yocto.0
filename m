Subject: Re: Building a different GCC version in SDK vs GCC used to build the rootfs/image
To: yocto@lists.yoctoproject.org
From: greghwang@gmail.com
X-Originating-Location: Billerica, Massachusetts, US (192.58.132.250)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Jun 2021 10:57:43 -0700
References: <8500de35-ca62-b86b-bff8-b95fe9595ab2@gmail.com>
In-Reply-To: <8500de35-ca62-b86b-bff8-b95fe9595ab2@gmail.com>
Message-ID: <14774.1623347863654474513@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="m6vefddmL1BuX0Rl5m4l"

--m6vefddmL1BuX0Rl5m4l
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> I think this will be hard to support unless your applications are self
> contained and will bring its own runtime as well in that case you can
> build a SDK from newer releases which matches compiler you need and let
> them use it, if you want to mix and match then it will require a bit of
> extra work e.g. check if runtime from newer compiler will still work wit=
h
> older libs/binaries or find a way to package two versions seprately and
> ensure that existing packages on image can keep using older libs

So our application might be able to be self contained and bring in all of =
it's own libs and runtime that it needs.=C2=A0 If that case I wouldn't have=
 to supply the sysroot that comes as part of the SDK; I'd just provide the =
compiled toolchain/compiler with the updated gcc 8.2, right?

--m6vefddmL1BuX0Rl5m4l
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"white-space: pre-wrap;">I think this will be har=
d to support unless your applications are self contained and will bring its=
 own runtime as well in that case you can build a SDK from newer releases w=
hich matches compiler you need and let them use it, if you want to mix and =
match then it will require a bit of extra work e.g. check if runtime from n=
ewer compiler will still work with older libs/binaries or find a way to pac=
kage two versions seprately and ensure that existing packages on image can =
keep using older libs</span></blockquote>
So our application might be able to be self contained and bring in all of =
it's own libs and runtime that it needs.&nbsp; If that case I wouldn't have=
 to supply the sysroot that comes as part of the SDK; I'd just provide the =
compiled toolchain/compiler with the updated gcc 8.2, right?

--m6vefddmL1BuX0Rl5m4l--
