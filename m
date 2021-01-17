Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web11.25287.1610922442161741803
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Jan 2021 14:27:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hNa16Cqx;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id x21so11138910iog.10
        for <yocto@lists.yoctoproject.org>; Sun, 17 Jan 2021 14:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o7TG/6yvT4EJ2kxmYpDCvmjwmXxYcfMzLhkZBwED0LU=;
        b=hNa16CqxIHED+ftnrNz/JyErWktqw2ehsHkB95EK4vBRTceU5pMLT8u1BKNm0qIBx/
         gV/CNn/q+VI471FONqqE7SxTfNfgNfWL7vXtwnNsnzgIPOcKbFY+53tSDoqafMnP+GPx
         SXQE49i28wzBuQrMSC+eVT6IrPm3uo+m6VPRfFkxP9x1rDw0c7lPnme1UbGz0vEFKOhN
         ihSqKTZJNnKXuVvzqxYxio5KameCXP+RPacQySriGAhuJL/fXVcd/wrYFI1/K4nS/n75
         ZrhPF4MgrmImReapi2nHVlM7iLp1OLHD5LrecCnR1Qy2drePiegL5lStnT6NL9624PpP
         HfZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o7TG/6yvT4EJ2kxmYpDCvmjwmXxYcfMzLhkZBwED0LU=;
        b=hrryNDTHIKYgPBtvpkJ0whN/KfBx1YT+T5JgtppKAqBYMGx12FrC6dwo0RDFT4XTQY
         iHpmE8CPFYpSdioz9Y1UpFVfpvU6pPBojb6LDfJ8XEVabUGZelzOsUiWvP143ZoofwNZ
         qCncFdqS0pyzkPo7pWQpF+kKSn+PYgKbMiySip1hf2toFwfAHpBXOKF6CowWGVAMWbAf
         XBN5X4vMj6NXP47RG9zTE4tfsDqUZSiJyEe4BACP6rVv6jt2v5t1vfGJws4GJRM0CPC9
         g6MI2P6qu4ecYsB9roswqEO1Q9tNy8kBgARBVtX3BnBPJoMJMK98H/SmD8+n9sLPm4gy
         yZQw==
X-Gm-Message-State: AOAM530XJ53eCgb8EptRIkTCTYotnLydFV7vGSpNWbnfCzr3HkYd49vP
	OgVJP7nh99byz1iZNHHxINEnAPc/1aNKrFfJpLA=
X-Google-Smtp-Source: ABdhPJyKsne6Zh4f9xVU1o7rnIWw92QrQqIfYKimTVuKIaWmD1TVVTtNeyEnpij60zgEtaDcCZecgLFf4Xa/rTiaNYc=
X-Received: by 2002:a5e:d717:: with SMTP id v23mr15286630iom.60.1610922441484;
 Sun, 17 Jan 2021 14:27:21 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
 <10291.1610886883719843020@lists.yoctoproject.org>
In-Reply-To: <10291.1610886883719843020@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sun, 17 Jan 2021 23:27:09 +0100
Message-ID: <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e2ad8c05b9201b91"

--000000000000e2ad8c05b9201b91
Content-Type: text/plain; charset="UTF-8"

> KERNEL_MODULE_AUTOLOAD += "ncm_driver"KERNEL_MODULE_PROBECONF
> += "ncm_driver"*cdc_ncm* = "options ncm_driver iProduct=
> USB_Host_Driver_for_Network_Control_Model iManufacturer=NCM"

> KERNEL_MODULE_AUTOLOAD += "wmc_device_managment"
> KERNEL_MODULE_PROBECONF += "wmc_device"*cdc_wdm* = "options wmc_device
> iProduct=USB_CDC_WCM_Device_Management iManufacturer=WMC"

> KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF +=
> "lte"*huawei_cdc_ncm* = "options lte iProduct=E3372h iManufacturer=Huawei"

Here is the exact loading order, outlined in target's /etc/modules :

debian@arm:~$ cat /etc/modules
# /etc/modules: kernel modules to load at boot time.
#
# This file contains the names of kernel modules that should be loaded
# at boot time, one per line. Lines beginning with "#" are ignored.

*cdc_ncm*
*cdc_wdm*
*huawei_cdc_ncm*

You need to, using YOCTO recipes, to modify /etc/modules file to look
as shown above, while bitbaking the target.

Zoran
_______


On Sun, Jan 17, 2021 at 1:34 PM Zoltan Kerenyi Nagy <
kerenyi.nagy.zoltan@gmail.com> wrote:

> Hi,
>
> I contacted the kernel module (cdc_ncm) developper, and he suggested to
> change/experiment the kernel module load order.
>
> I thought if I specify this way: KERNEL_MODULE_AUTOLOAD +=
> "ncm_driver"KERNEL_MODULE_PROBECONF += "ncm_driver"cdc_ncm = "options
> ncm_driver iProduct=USB_Host_Driver_for_Network_Control_Model
> iManufacturer=NCM" KERNEL_MODULE_AUTOLOAD +=
> "wmc_device_managment"KERNEL_MODULE_PROBECONF += "wmc_device"cdc_wdm =
> "options wmc_device iProduct=USB_CDC_WCM_Device_Management
> iManufacturer=WMC" KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF
> += "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
> Than this means the order of loading too. Is there any additional feature
> in Yocto that can interfere and set the exact kernel module loading order?
>
> Thanks,
>
>
> --
> Zolee
> 
>
>

--000000000000e2ad8c05b9201b91
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; KERNEL_MODULE_AUTOLOAD +=3D &quot;<span style=3D=
"color:rgb(0,0,0)">ncm_driver</span>&quot;KERNEL_MODULE_PROBECONF</div><div=
>&gt; +=3D &quot;ncm_driver&quot;<span style=3D"color:rgb(255,0,0)"><i><b>c=
dc_ncm</b></i></span> =3D &quot;options ncm_driver iProduct=3D</div><div>&g=
t; USB_Host_Driver_for_Network_Control_Model iManufacturer=3DNCM&quot;</div=
><br><div>&gt; KERNEL_MODULE_AUTOLOAD +=3D &quot;wmc_device_managment&quot;=
</div><div>&gt; KERNEL_MODULE_PROBECONF +=3D &quot;wmc_device&quot;<span st=
yle=3D"color:rgb(255,0,0)"><i><b>cdc_wdm</b></i></span> =3D &quot;options w=
mc_device</div><div>&gt; iProduct=3DUSB_CDC_WCM_Device_Management iManufact=
urer=3DWMC&quot;</div><br><div>&gt; KERNEL_MODULE_AUTOLOAD +=3D &quot;lte&q=
uot;KERNEL_MODULE_PROBECONF +=3D</div><div>&gt; &quot;lte&quot;<span style=
=3D"color:rgb(255,0,0)"><i><b>huawei_cdc_ncm</b></i></span> =3D &quot;opti=
ons lte iProduct=3DE3372h iManufacturer=3DHuawei&quot;</div><div><br></div>=
Here is the exact loading order, outlined in target&#39;s /etc/modules :<br=
><br>debian@arm:~$ cat /etc/modules<br># /etc/modules: kernel modules to lo=
ad at boot time.<br>#<br># This file contains the names of kernel modules t=
hat should be loaded<br># at boot time, one per line. Lines beginning with =
&quot;#&quot; are ignored.<br><br><div><span style=3D"color:rgb(255,0,0)"><=
i><b>cdc_ncm</b></i></span></div><div><span style=3D"color:rgb(255,0,0)"><i=
><b>cdc_wdm</b></i></span></div><span style=3D"color:rgb(255,0,0)"><i><b>hu=
awei_cdc_ncm</b></i></span><br><div><br></div><div>You need to, using YOCTO=
 recipes, to modify /etc/modules file to look</div><div>as shown above, whi=
le bitbaking the target.</div><div><br></div><div>Zoran</div><div>_______<b=
r></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Sun, Jan 17, 2021 at 1:34 PM Zoltan Kerenyi Nagy &lt;<a href=
=
=3D"mailto:kerenyi.nagy.zoltan@gmail.com">kerenyi.nagy.zoltan@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,=
<br><br>I contacted the kernel module (cdc_ncm) developper, and he suggeste=
d to change/experiment the kernel module load order.<br><br>I thought if I =
specify this way:
<h6>KERNEL_MODULE_AUTOLOAD +=3D &quot;ncm_driver&quot;KERNEL_MODULE_PROBEC=
ONF +=3D &quot;ncm_driver&quot;cdc_ncm =3D &quot;options ncm_driver iProduc=
t=3DUSB_Host_Driver_for_Network_Control_Model iManufacturer=3DNCM&quot;</h6=
>
<h6>KERNEL_MODULE_AUTOLOAD +=3D &quot;wmc_device_managment&quot;KERNEL_MOD=
ULE_PROBECONF +=3D &quot;wmc_device&quot;cdc_wdm =3D &quot;options wmc_devi=
ce iProduct=3DUSB_CDC_WCM_Device_Management iManufacturer=3DWMC&quot;</h6>
<span id=3D"gmail-m_3721590210847147979main"></span>
<h6>KERNEL_MODULE_AUTOLOAD +=3D &quot;lte&quot;KERNEL_MODULE_PROBECONF +=
=3D &quot;lte&quot;huawei_cdc_ncm =3D &quot;options lte iProduct=3DE3372h =
iManufacturer=3DHuawei&quot;</h6>
<br>Than this means the order of loading too. Is there any additional feat=
ure in Yocto that can interfere and set the exact kernel module loading ord=
er?<br><br>Thanks,<br><br><span id=3D"gmail-m_3721590210847147979main"></sp=
an> <br>-- <br>Zolee
<br>
<br>
<br>
</blockquote></div>

--000000000000e2ad8c05b9201b91--
