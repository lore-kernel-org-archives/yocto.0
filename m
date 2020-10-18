Subject: Re: Which dts is being compiled?
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.14.60)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 18 Oct 2020 02:38:27 -0700
References: <CAGAf8LwuRymGnLoCbeDcumNZE1ffYqsLNPwTLyvPOPTNympNZA@mail.gmail.com>
In-Reply-To: <CAGAf8LwuRymGnLoCbeDcumNZE1ffYqsLNPwTLyvPOPTNympNZA@mail.gmail.com>
Message-ID: <9558.1603013907050026319@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r0W1kFshzIOgTdNd4zqV"

--r0W1kFshzIOgTdNd4zqV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

The kernel compiles every DTS exists in the Makefile which is located with=
 DTS files. (arch/arm/boot/dts/Makefile) or (arch/arm64/boot/dts/[VENDOR]/M=
akefile)

In order to see what device tree is deployed into your image, please see t=
he value of this variable : KERNEL_DEVICETREE:

$ bitbake -e | grep ^KERNEL_DEVICETREE=3D

You can specify your machine also : $ bitbake -e | grep ^KERNEL_DEVICETREE=
_[MACHINE]=3D

Generally this variable is used in your MACHINE configuration file.

If you want to understand how DTS is used in Yocto , you can take a look a=
t poky/meta/classes/devicetree.bbclass

Best Regards, Talel

--r0W1kFshzIOgTdNd4zqV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>The kernel compiles every DTS exists in the Makefile which is located w=
ith DTS files. (arch/arm/boot/dts/Makefile) or (arch/arm64/boot/dts/[VENDOR=
]/Makefile)<br /><br />In order to see what device tree is deployed into yo=
ur image, please see the value of this variable : KERNEL_DEVICETREE:<br /><=
br />$ bitbake -e | grep ^KERNEL_DEVICETREE=3D<br /><br />You can specify y=
our machine also : $ bitbake -e | grep ^KERNEL_DEVICETREE_[MACHINE]=3D<br /=
><br />Generally this variable is used in your MACHINE configuration file.<=
br /><br />If you want to understand how DTS is used in Yocto , you can tak=
e a look at poky/meta/classes/devicetree.bbclass<br /><br />Best Regards, T=
alel<br /><br /></p>

--r0W1kFshzIOgTdNd4zqV--
