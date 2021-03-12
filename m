Subject: Re: How can I create a truly minimal distribution that runs entirely from RAM?
To: yocto@lists.yoctoproject.org
From: p32@tuta.io
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (46.223.162.21)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Mar 2021 13:49:20 -0800
References: <CAGAf8Lxw9Rs2YAyemcdzsHQAEGP9aLyRGovJawAaiA_LP6dydA@mail.gmail.com>
In-Reply-To: <CAGAf8Lxw9Rs2YAyemcdzsHQAEGP9aLyRGovJawAaiA_LP6dydA@mail.gmail.com>
Message-ID: <29498.1615585760727204439@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9oJfLcuFxjoALv3GM5dV"

--9oJfLcuFxjoALv3GM5dV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for your help on the second issue! I was unaware of the=
 fact that another mkimage call is necessary. After taking a look at the th=
e references you provided, I was able to boot the system from an initramfs.

However, my current approach requires two manual steps after running Yocto=
: I need to call mkimage on the cpio.xz file and to extend/configure the U-=
Boot environment in the running system. Is there a way to automate this?

More specifically, is it possible to...
* have Yocto generate an initramfs.cpio.xz.uboot file instead of just an i=
nitramfs.cpio.xz file and to
* modify the default environment that Yocto will compile into the U-Boot b=
inary?

--9oJfLcuFxjoALv3GM5dV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much for your help on the second issue! I was unaware of the=
 fact that another mkimage call is necessary. After taking a look at the th=
e references you provided, I was able to boot the system from an initramfs.=
<br /><br />However, my current approach requires two manual steps after ru=
nning Yocto: I need to call mkimage on the cpio.xz file and to extend/confi=
gure the U-Boot environment in the running system. Is there a way to automa=
te this?<br /><br />More specifically, is it possible to...<br />
<ol>
<li>have Yocto generate an initramfs.cpio.xz.uboot file instead of just an=
 initramfs.cpio.xz file and to</li>
<li>modify the default environment that Yocto will compile into the U-Boot=
 binary?</li>
</ol>

--9oJfLcuFxjoALv3GM5dV--
