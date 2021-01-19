Subject: Re: insmod - huawei E3372h kernel module
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Kiskunhalas, Bács-Kiskun, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 73
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 19 Jan 2021 05:00:37 -0800
References: <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
In-Reply-To: <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
Message-ID: <2283.1611061237885442892@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Jx6uSazypAlrWjsegkbC"

--Jx6uSazypAlrWjsegkbC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I don have a recipie for /etc/modules

To my understanding this order will cause the load:
KERNEL_MODULE_AUTOLOAD +=3D "ncm_driver"KERNEL_MODULE_PROBECONF +=3D "ncm_=
driver"cdc_ncm =3D "options ncm_driver iProduct=3DUSB_Host_Driver_for_Netwo=
rk_Control_Model iManufacturer=3DNCM" KERNEL_MODULE_AUTOLOAD +=3D "wmc_devi=
ce_managment"KERNEL_MODULE_PROBECONF +=3D "wmc_device"cdc_wdm =3D "options =
wmc_device iProduct=3DUSB_CDC_WCM_Device_Management iManufacturer=3DWMC" KE=
RNEL_MODULE_AUTOLOAD +=3D "lte"KERNEL_MODULE_PROBECONF +=3D "lte"huawei_cdc=
_ncm =3D "options lte iProduct=3DE3372h iManufacturer=3DHuawei"

As far as I understand the KERNEL_MODULE_AUTOLOAD directive will populate =
the /etc/modules file, however, after bitbaking, on the device there is no =
/etc/modules file or folder but another folder:

root@barix-ipam400:~# ls /lib/modules/4.10.0/extra/
cdc-ncm.ko=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cdc-wdm.ko=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hello.ko=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 huawei_cdc_ncm.ko --
Zolee

--Jx6uSazypAlrWjsegkbC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I don have a recipie for /etc/modules<br /><br />To my understanding this o=
rder will cause the load:<br />
<h6>KERNEL_MODULE_AUTOLOAD +=3D "ncm_driver"KERNEL_MODULE_PROBECONF +=3D "=
ncm_driver"cdc_ncm =3D "options ncm_driver iProduct=3DUSB_Host_Driver_for_N=
etwork_Control_Model iManufacturer=3DNCM"</h6>
<h6>KERNEL_MODULE_AUTOLOAD +=3D "wmc_device_managment"KERNEL_MODULE_PROBEC=
ONF +=3D "wmc_device"cdc_wdm =3D "options wmc_device iProduct=3DUSB_CDC_WCM=
_Device_Management iManufacturer=3DWMC"</h6>
<h6>KERNEL_MODULE_AUTOLOAD +=3D "lte"KERNEL_MODULE_PROBECONF +=3D "lte"hua=
wei_cdc_ncm =3D "options lte iProduct=3DE3372h iManufacturer=3DHuawei"<br /=
><br />As far as I understand the KERNEL_MODULE_AUTOLOAD directive will pop=
ulate the /etc/modules file, however, after bitbaking, on the device there =
is no /etc/modules file or folder but another folder:<br /><br />root@barix=
-ipam400:~# ls /lib/modules/4.10.0/extra/<br />cdc-ncm.ko&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cdc-wdm.ko&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; hello.ko&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; huawei_cdc_ncm.ko</h6>
<h6>&nbsp;</h6>
-- <br />Zolee

--Jx6uSazypAlrWjsegkbC--
