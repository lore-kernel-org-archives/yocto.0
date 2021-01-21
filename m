Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 21 Jan 2021 02:00:06 -0800
References: <CAGAf8Lyyi-p987gPYe+Z_yA7Jp5ALFCaOHZmOkgm5AX3iAtqSQ@mail.gmail.com>
In-Reply-To: <CAGAf8Lyyi-p987gPYe+Z_yA7Jp5ALFCaOHZmOkgm5AX3iAtqSQ@mail.gmail.com>
Message-ID: <8262.1611223206317986190@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sZpKfwy3iVAdG9YmjuxQ"

--sZpKfwy3iVAdG9YmjuxQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Im experimenting with the kernel's defconfig.

Added these:
USB_NET_HUAWEI_CDC_NCM=3Dm
USB_NET_DRIVERS=3Dy
USB_USBNET=3Dy

and I'm recompiling the kernel: bitbake -f linux

Takes some time...
--
Zolee

--sZpKfwy3iVAdG9YmjuxQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Im experimenting with the kernel's defconfig.<br /><br />Added these:<br />=
USB_NET_HUAWEI_CDC_NCM=3Dm<br />USB_NET_DRIVERS=3Dy<br />USB_USBNET=3Dy<br =
/><br />and I'm recompiling the kernel: bitbake -f linux<br /><br />Takes s=
ome time...<br />-- <br />Zolee

--sZpKfwy3iVAdG9YmjuxQ--
