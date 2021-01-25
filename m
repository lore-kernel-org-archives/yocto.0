Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Jan 2021 05:39:47 -0800
References: <8262.1611223206317986190@lists.yoctoproject.org>
In-Reply-To: <8262.1611223206317986190@lists.yoctoproject.org>
Message-ID: <7001.1611581987337811698@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4u3Br4FjW7RMPhE35PZy"

--4u3Br4FjW7RMPhE35PZy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

If I intentionally typo in the defconfig file:

USB_NET_HUAWEI_CDC_NCM_cat=3Dy
USB_NET_DRIVERS=3Dy
USB_USBNET=3Dy

The bitbake -f linux command doesn't recognize the change. It means to me =
that any change in this will not have an effect.

--
Zolee

--4u3Br4FjW7RMPhE35PZy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />If I intentionally typo in the defconfig file:<br /><br /><s=
pan id=3D"main">USB_NET_HUAWEI_CDC_NCM_cat=3Dy<br />USB_NET_DRIVERS=3Dy<br =
/>USB_USBNET=3Dy<br /><br />The bitbake -f linux command doesn't recognize =
the change. It means to me that any change in this will not have an effect.=
<br /></span><br />-- <br />Zolee

--4u3Br4FjW7RMPhE35PZy--
