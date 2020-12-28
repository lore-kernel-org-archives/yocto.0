Subject: Re: How to develop kernel modules on the target?
To: yocto@lists.yoctoproject.org
From: p32@tuta.io
X-Originating-Location: Graben-Neudorf, Baden-Württemberg, DE (129.13.134.208)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Dec 2020 11:06:11 -0800
References: <73579e95-a544-3e43-ca92-d70e665609a0@windriver.com>
In-Reply-To: <73579e95-a544-3e43-ca92-d70e665609a0@windriver.com>
Message-ID: <7844.1609182371890093229@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1fm7sDTuRbcW23x27oXE"

--1fm7sDTuRbcW23x27oXE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

The execution of "make scripts prepare" did actually solve the issue, than=
k you very much for your help!

However, the need to manually execute this command on the target platform =
made me look into the kernel-devsrc recipe ( https://git.yoctoproject.org/c=
git/cgit.cgi/poky/tree/meta/recipes-kernel/linux/kernel-devsrc.bb?h=3Dzeus =
) to see if it is possible to let the build host execute this step. Some co=
mments imply that this is the case. Consider, for instance, the one in line=
 257:

>=20
> Ensure we don't race against "make scripts" during cpio

Unfortunately, I was unable to figure out how to do this. Is there a way t=
o let the recipe trigger this step automatically?

Thanks!

--1fm7sDTuRbcW23x27oXE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />The execution of "make scripts prepare" did actually solv=
e the issue, thank you very much for your help!<br /><br />However, the nee=
d to manually execute this command on the target platform made me look into=
 the kernel-devsrc recipe (<a href=3D"https://git.yoctoproject.org/cgit/cgi=
t.cgi/poky/tree/meta/recipes-kernel/linux/kernel-devsrc.bb?h=3Dzeus" target=
=
=3D"_blank" rel=3D"noopener">https://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/tree/meta/recipes-kernel/linux/kernel-devsrc.bb?h=3Dzeus</a>) to see if =
it is possible to let the build host execute this step. Some comments imply=
 that this is the case. Consider, for instance, the one in line 257:<br />
<blockquote>Ensure we don't race against "make scripts" during cpio</block=
quote>
Unfortunately, I was unable to figure out how to do this. Is there a way t=
o let the recipe trigger this step automatically?<br /><br />Thanks!

--1fm7sDTuRbcW23x27oXE--
