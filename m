Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Jan 2021 02:23:40 -0800
References: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
In-Reply-To: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
Message-ID: <7853.1610360620942037379@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3HB1bHQzetzvPoMWkTqU"

--3HB1bHQzetzvPoMWkTqU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, Im doing this:

KERNEL_MODULE_AUTOLOAD +=3D "ncm_driver"KERNEL_MODULE_PROBECONF +=3D "ncm_=
driver"cdc_ncm =3D "options ncm_driver iProduct=3DUSB_Host_Driver_for_Netwo=
rk_Control_Model iManufacturer=3DNCM" KERNEL_MODULE_AUTOLOAD +=3D "wmc_devi=
ce_managment"KERNEL_MODULE_PROBECONF +=3D "wmc_device"cdc_wdm =3D "options =
wmc_device iProduct=3DUSB_CDC_WCM_Device_Management iManufacturer=3DWMC" KE=
RNEL_MODULE_AUTOLOAD +=3D "lte"KERNEL_MODULE_PROBECONF +=3D "lte"huawei_cdc=
_ncm =3D "options lte iProduct=3DE3372h iManufacturer=3DHuawei"

Im very curious. I think the *cdc_ncm* and *cdc_wdm should* be inserted be=
fore *huawei_cdc_ncm* --
Zolee

--3HB1bHQzetzvPoMWkTqU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<h6>Hi, Im doing this:<br /><br />KERNEL_MODULE_AUTOLOAD +=3D "ncm_driver"K=
ERNEL_MODULE_PROBECONF +=3D "ncm_driver"cdc_ncm =3D "options ncm_driver iPr=
oduct=3DUSB_Host_Driver_for_Network_Control_Model iManufacturer=3DNCM"</h6>
<h6>KERNEL_MODULE_AUTOLOAD +=3D "wmc_device_managment"KERNEL_MODULE_PROBEC=
ONF +=3D "wmc_device"cdc_wdm =3D "options wmc_device iProduct=3DUSB_CDC_WCM=
_Device_Management iManufacturer=3DWMC"</h6>
<h6>KERNEL_MODULE_AUTOLOAD +=3D "lte"KERNEL_MODULE_PROBECONF +=3D "lte"hua=
wei_cdc_ncm =3D "options lte iProduct=3DE3372h iManufacturer=3DHuawei"<br /=
><br />Im very curious. I think the <strong>cdc_ncm</strong> and <strong>cd=
c_wdm should </strong>be inserted before <strong>huawei_cdc_ncm</strong></h=
6>
<h6>&nbsp;</h6>
-- <br />Zolee

--3HB1bHQzetzvPoMWkTqU--
