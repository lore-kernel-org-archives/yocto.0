Subject: Re: #yocto llvm support
To: yocto@lists.yoctoproject.org
From: "Anton Antonov" <anton.antonov@arm.com>
X-Originating-Location: GB (217.140.99.251)
X-Originating-Platform: Mac Firefox 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 20 Apr 2021 06:51:19 -0700
References: <MADEUP.1677926D36628F94.782@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1677926D36628F94.782@lists.yoctoproject.org>
Message-ID: <5768.1618926679380653163@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Lz9aYUcbY92Tsm8Yu0gd"

--Lz9aYUcbY92Tsm8Yu0gd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Steven,

I used meta-clang in my recipes and I noticed that:
1. The current release of poky uses LLVM v11.1.0 by default (poky/meta/rec=
ipes-devtools/llvm/llvm_git.bb)
2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf defines LL=
VMVERSION =3D "12.0.0")

As a result just including meta-clang into bblayers.conf will require bitb=
ake to build a new version of LLVM and rebuild everything which uses it

Anton

--Lz9aYUcbY92Tsm8Yu0gd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Steven,<br /><br />&nbsp; I used meta-clang in my recipes and I noticed =
that:<br />1. The current release of poky uses LLVM v11.1.0 by default (pok=
y/meta/recipes-devtools/llvm/llvm_git.bb)<br />2. Meta-clang requires LLVM =
v12.0.0 (meta-clang/conf/layer.conf defines LLVMVERSION =3D "12.0.0")<br />=
<br />As a result just including meta-clang into bblayers.conf will require=
 bitbake to build a new version of LLVM and rebuild everything which uses i=
t<br class=3D"Apple-interchange-newline" /><br />Anton

--Lz9aYUcbY92Tsm8Yu0gd--
