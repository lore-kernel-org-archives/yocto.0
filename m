Subject: Re: How to select Linux kernel version?
To: yocto@lists.yoctoproject.org
From: kapllaj.elvis@gmail.com
X-Originating-Location: IT (5.90.205.9)
X-Originating-Platform: Linux Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Jan 2021 00:41:45 -0800
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
In-Reply-To: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
Message-ID: <32166.1610008905321916245@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="v0OSJ64TvHCr3NxW8xV0"

--v0OSJ64TvHCr3NxW8xV0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, it actually shouldn't be that hard to set the kernel.

IMX_DEFAULT_KERNEL is a variable that sets the kernel name (the recipe) an=
d not the version. I don't know on which yocto version you are working, and=
 also on which CPU.

On meta-freescale, you find this on meta-freescale-distro/conf/distro/incl=
ude/fsl-base.inc:

# Handle default kernel
IMX_DEFAULT_KERNEL =3D "linux-imx"
IMX_DEFAULT_KERNEL_mxs =3D "linux-fslc"
IMX_DEFAULT_KERNEL_mx5 =3D "linux-fslc"
IMX_DEFAULT_KERNEL_mx6 =3D "linux-fslc-imx"
IMX_DEFAULT_KERNEL_mx7 =3D "linux-fslc-imx"
IMX_DEFAULT_KERNEL_mx8 =3D "linux-imx"
IMX_DEFAULT_KERNEL_mx7ulp =3D "linux-imx"
IMX_DEFAULT_KERNEL_mx6sll =3D "linux-imx"
IMX_DEFAULT_KERNEL_mx6ul =3D "linux-fslc-imx"
IMX_DEFAULT_KERNEL_mx6ull =3D "linux-fslc-imx"
IMX_DEFAULT_KERNEL_use-mainline-bsp =3D "linux-fslc"

PREFERRED_PROVIDER_virtual/kernel ??=3D "${IMX_DEFAULT_KERNEL}"

That variable is only used if "PREFERRED_PROVIDER_virtual/kernel" variable=
 was never set (note the ??=3D assignment). And what this does is: if there=
 was not specified a kernel for this machine, set it to linux-imx (and note=
 that it is also overridden for different cpus!). For example, it selects l=
inux-fslc-imx for imx6 cpu.

Now, go to meta-freescale/recipes-kernel/linux folder, and take a look to =
see what kernels are available for your machine. Note that the linux-imx ke=
rnel provides currently on master branch the 5.4 version!
For you to select the 5.10 (assuming you are on master branch) you should =
set:

PREFERRED_PROVIDER_virtual/kernel =3D "linux-fslc"

Yocto will automatically select the highest available version, but if you =
would also like to fix the version, provide also that information:
PREFERRED_VERSION_linux-fslc =3D "5.%"

--v0OSJ64TvHCr3NxW8xV0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, it actually shouldn't be that hard to set the kernel.<br /><br />IMX_DE=
FAULT_KERNEL is a variable that sets the kernel name (the recipe) and not t=
he version. I don't know on which yocto version you are working, and also o=
n which CPU.<br /><br />On meta-freescale, you find this on meta-freescale-=
distro/conf/distro/include/fsl-base.inc:<br /><br />
<div># Handle default kernel</div>
<div>IMX_DEFAULT_KERNEL =3D "linux-imx"</div>
<div>IMX_DEFAULT_KERNEL_mxs =3D "linux-fslc"</div>
<div>IMX_DEFAULT_KERNEL_mx5 =3D "linux-fslc"</div>
<div>IMX_DEFAULT_KERNEL_mx6 =3D "linux-fslc-imx"</div>
<div>IMX_DEFAULT_KERNEL_mx7 =3D "linux-fslc-imx"</div>
<div>IMX_DEFAULT_KERNEL_mx8 =3D "linux-imx"</div>
<div>IMX_DEFAULT_KERNEL_mx7ulp =3D "linux-imx"</div>
<div>IMX_DEFAULT_KERNEL_mx6sll =3D "linux-imx"</div>
<div>IMX_DEFAULT_KERNEL_mx6ul =3D "linux-fslc-imx"</div>
<div>IMX_DEFAULT_KERNEL_mx6ull =3D "linux-fslc-imx"</div>
<div>IMX_DEFAULT_KERNEL_use-mainline-bsp =3D "linux-fslc"</div>
<div>&nbsp;</div>
<div>PREFERRED_PROVIDER_virtual/kernel ??=3D "${IMX_DEFAULT_KERNEL}"<br />=
<br />That variable is only used if "PREFERRED_PROVIDER_virtual/kernel" var=
iable was never set (note the ??=3D assignment). And what this does is: if =
there was not specified a kernel for this machine, set it to linux-imx (and=
 note that it is also overridden for different cpus!). For example, it sele=
cts linux-fslc-imx for imx6 cpu.<br /><br />Now, go to meta-freescale/recip=
es-kernel/linux folder, and take a look to see what kernels are available f=
or your machine. Note that the linux-imx kernel provides currently on maste=
r branch the 5.4 version!</div>
<div>For you to select the 5.10 (assuming you are on master branch) you sh=
ould set:<br /><br />PREFERRED_PROVIDER_virtual/kernel =3D "linux-fslc"<br =
/><br />Yocto will automatically select the highest available version, but =
if you would also like to fix the version, provide also that information:<b=
r />PREFERRED_VERSION_linux-fslc =3D "5.%"</div>

--v0OSJ64TvHCr3NxW8xV0--
