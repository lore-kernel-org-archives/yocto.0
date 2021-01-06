Subject: Re: How to select Linux kernel version?
To: yocto@lists.yoctoproject.org
From: kapllaj.elvis@gmail.com
X-Originating-Location: IT (5.90.193.71)
X-Originating-Platform: Android Phone Samsung
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Jan 2021 04:18:38 -0800
References: <CAA=hcWT_1VcVaNHQChDvuDURL3j5hu_g6muF8_tssG4PDhrdkg@mail.gmail.com>
In-Reply-To: <CAA=hcWT_1VcVaNHQChDvuDURL3j5hu_g6muF8_tssG4PDhrdkg@mail.gmail.com>
Message-ID: <25055.1609935518791150987@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ojwtYmC0xii3UfMOkxZU"

--ojwtYmC0xii3UfMOkxZU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It also may be overridden by some conf file. For example, if you are using =
a i.MX cpus, you may have some conf file on meta-freescale that override th=
is variable with something like: PREFERRED_PROVIDER_virtual/kernel_imx =3D =
"some kernel"

I had a situation like this on a imx6 xpu, and had to specify the "_imx" o=
verride in order to make it work.

"bitbake - e virtual/kernel | grep PREFERRED_PROVIDER_virtual/kernel" is y=
our friend.
It will show you the current variable selected, and also the different ove=
rrides available.

--ojwtYmC0xii3UfMOkxZU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It also may be overridden by some conf file. For example, if you are using =
a i.MX cpus, you may have some conf file on meta-freescale that override th=
is variable with something like: PREFERRED_PROVIDER_virtual/kernel_imx =3D =
"some kernel"<br /><br />I had a situation like this on a imx6 xpu, and had=
 to specify the "_imx" override in order to make it work.<br /><br />"bitba=
ke - e virtual/kernel | grep PREFERRED_PROVIDER_virtual/kernel" is your fri=
end.&nbsp;<br />It will show you the current variable selected, and also th=
e different overrides available.

--ojwtYmC0xii3UfMOkxZU--
