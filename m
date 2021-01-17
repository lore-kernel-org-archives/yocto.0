Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Budapest, HU (89.135.91.162)
X-Originating-Platform: Linux Firefox 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 17 Jan 2021 04:34:43 -0800
References: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
In-Reply-To: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
Message-ID: <10291.1610886883719843020@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eMnOtV5KpsoCdGdmqW0e"

--eMnOtV5KpsoCdGdmqW0e
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I contacted the kernel module (cdc_ncm) developper, and he suggested to ch=
ange/experiment the kernel module load order.

I thought if I specify this way: KERNEL_MODULE_AUTOLOAD +=3D "ncm_driver"K=
ERNEL_MODULE_PROBECONF +=3D "ncm_driver"cdc_ncm =3D "options ncm_driver iPr=
oduct=3DUSB_Host_Driver_for_Network_Control_Model iManufacturer=3DNCM" KERN=
EL_MODULE_AUTOLOAD +=3D "wmc_device_managment"KERNEL_MODULE_PROBECONF +=3D =
"wmc_device"cdc_wdm =3D "options wmc_device iProduct=3DUSB_CDC_WCM_Device_M=
anagement iManufacturer=3DWMC" KERNEL_MODULE_AUTOLOAD +=3D "lte"KERNEL_MODU=
LE_PROBECONF +=3D "lte"huawei_cdc_ncm =3D "options lte iProduct=3DE3372h iM=
anufacturer=3DHuawei"
Than this means the order of loading too. Is there any additional feature =
in Yocto that can interfere and set the exact kernel module loading order?

Thanks,

--
Zolee

--eMnOtV5KpsoCdGdmqW0e
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I contacted the kernel module (cdc_ncm) developper, and he s=
uggested to change/experiment the kernel module load order.<br /><br />I th=
ought if I specify this way:
<h6>KERNEL_MODULE_AUTOLOAD +=3D "ncm_driver"KERNEL_MODULE_PROBECONF +=3D "=
ncm_driver"cdc_ncm =3D "options ncm_driver iProduct=3DUSB_Host_Driver_for_N=
etwork_Control_Model iManufacturer=3DNCM"</h6>
<h6>KERNEL_MODULE_AUTOLOAD +=3D "wmc_device_managment"KERNEL_MODULE_PROBEC=
ONF +=3D "wmc_device"cdc_wdm =3D "options wmc_device iProduct=3DUSB_CDC_WCM=
_Device_Management iManufacturer=3DWMC"</h6>
<span id=3D"main"></span>
<h6>KERNEL_MODULE_AUTOLOAD +=3D "lte"KERNEL_MODULE_PROBECONF +=3D "lte"hua=
wei_cdc_ncm =3D "options lte iProduct=3DE3372h iManufacturer=3DHuawei"</h6>
<br />Than this means the order of loading too. Is there any additional fe=
ature in Yocto that can interfere and set the exact kernel module loading o=
rder?<br /><br />Thanks,<br /><br /><span id=3D"main"></span> <br />-- <br =
/>Zolee

--eMnOtV5KpsoCdGdmqW0e--
