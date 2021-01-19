Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web11.10996.1611062869103901438
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 05:27:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qHQo80Dd;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id e22so39455725iom.5
        for <yocto@lists.yoctoproject.org>; Tue, 19 Jan 2021 05:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=3Wk9vFAlRk8WRbbhtjbjio6/3/3kcyzfc2IihI/KeCE=;
        b=qHQo80DdNlZsRUnQN7xaNoY2hGu+ljdW01eLiSJufSWX10UTtVaw3It3uMNOL6FJy0
         XXgLHiBYrS2Php7KigToUFKgc8Knouhd+rTg1RbN2ryzbmYLo8fqGRFVT7WZSk8+1gvX
         ge0R4OyDoaUR31heh2ijBxhQPlyVPJq5lYXwEaOhJwLp7qDBTW0Q91ti0YTcOEGV54s1
         GnLJks/GeC8u4xf8IN+B2m5JZVJ6SBolbSYLElHVhifpskTzICy2f9C1rtB5MrsDUst4
         Z3olwZ7+NCOFV3kmpO9MSnUdsi7ilmD85xHys0BLxRAfXEOfJVwh4UlXEvpLZ7lGiX9a
         1Rcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=3Wk9vFAlRk8WRbbhtjbjio6/3/3kcyzfc2IihI/KeCE=;
        b=l4AtIyP/jnP5IC0FAg8+ob/6NfFg81rEc3RnRdrXn+mjXhtdOyq8sxGXfr0VtgZQ/n
         KaytXrKswmrTuAMUpPICbcVDbySMPRqpULGyZzUMYUTLJ8+s+AgjC3zw1LafbHh4XV7D
         afu0pM+tuKBfTIV2WWFw9zPnFe6sG5x5yRBDKSy1kHaptOzjwv6wguwfRWSQTRbxEDZ4
         YWklrrCLqr4PQoLTEFOtRGedGj06QDmPzhyGhyHdpVwd56Kjo9N1YaK/WMszK1dpwrya
         LhjghQNka5VrDcS3ywOxfZ4UiPp3Eo+/jCIvwxaaSDve+z7QPrPvnQ2t287CO1RoXW7O
         pSRg==
X-Gm-Message-State: AOAM531I/hl4rAKZDI57KpJTHNKO2fcuF3Y78BeeRDxVK7E1aif/pnFX
	4fjbLOdZPIy3gAdZ0nn8pbZJR4qncA3++ZJORJ4=
X-Google-Smtp-Source: ABdhPJxFVukir93ATEfyX44eHRtAZcNYW/j5FbjfDnVwQBOmcWbOY+KVV5kBGMYMFxmUV4BxGFOhfb3lrkSGYRgSVDg=
X-Received: by 2002:a02:b78e:: with SMTP id f14mr3325103jam.97.1611062868519;
 Tue, 19 Jan 2021 05:27:48 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
 <2283.1611061237885442892@lists.yoctoproject.org> <165BA4E49F808CA9.28472@lists.yoctoproject.org>
In-Reply-To: <165BA4E49F808CA9.28472@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 19 Jan 2021 14:27:36 +0100
Message-ID: <CAGAf8Ly7fty2KHjZWz-p0N_7OjcaWVXhhQuc1Dcrog96KYC36Q@mail.gmail.com>
Subject: [yocto] insmod - huawei E3372h kernel module
To: Ross Burton <ross@burtonini.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Forwarded to ross@burtonini.com .

Thank you,
Zoran/Zee

---------- Forwarded message ---------
From: Zoran via lists.yoctoproject.org
<zoran.stojsavljevic=gmail.com@lists.yoctoproject.org>
Date: Tue, Jan 19, 2021 at 2:23 PM
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>, Burton, Ross
<ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>

> As far as I understand the KERNEL_MODULE_AUTOLOAD directive will
> populate the /etc/modules file, however, after bitbaking, on the device there
> is no /etc/modules file or folder but another folder:
>
> root@barix-ipam400:~# ls /lib/modules/4.10.0/extra/
> cdc-ncm.ko         cdc-wdm.ko         hello.ko           huawei_cdc_ncm.ko

Hello Ross,

Any comment from you on the target module configuration?

My understanding is the same, the YOCTO building system should somehow
create targets' /etc/modules file, since every reboot should repeat
the order of modules loading (read from the same).

Thank you,
Zoran
_______

On Tue, Jan 19, 2021 at 2:00 PM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> I don have a recipie for /etc/modules
>
> To my understanding this order will cause the load:
>
> KERNEL_MODULE_AUTOLOAD += "ncm_driver"KERNEL_MODULE_PROBECONF += "ncm_driver"cdc_ncm = "options ncm_driver iProduct=USB_Host_Driver_for_Network_Control_Model iManufacturer=NCM"
>
> KERNEL_MODULE_AUTOLOAD += "wmc_device_managment"KERNEL_MODULE_PROBECONF += "wmc_device"cdc_wdm = "options wmc_device iProduct=USB_CDC_WCM_Device_Management iManufacturer=WMC"
>
> KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF += "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
>
> As far as I understand the KERNEL_MODULE_AUTOLOAD directive will populate the /etc/modules file, however, after bitbaking, on the device there is no /etc/modules file or folder but another folder:
>
> root@barix-ipam400:~# ls /lib/modules/4.10.0/extra/
> cdc-ncm.ko         cdc-wdm.ko         hello.ko           huawei_cdc_ncm.ko
>
>
>
> --
> Zolee
>
>


