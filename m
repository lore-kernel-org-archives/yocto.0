Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web08.11034.1611062593278594810
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 05:23:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4vZb+WG;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id x21so21246658iog.10
        for <yocto@lists.yoctoproject.org>; Tue, 19 Jan 2021 05:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v1ZeRhXQMiIQYAV+XUz2WSB/cIOB4n+iPC67aDlrX5s=;
        b=j4vZb+WGQf5tbJPRYSOR3EJk19RekbexxsTq0SonPnONITgirpD1Pd5UyiO6PSO6u0
         GNDp778DlK9wmTc/EzGYqd54xrSCvGyrO0nmxcbGEsWs1m4qos9ZOlkUPCIV+khMhn2h
         W+jTOuC5Whst41P7tnfSb9cKaN5GDGF/ifRLdRhYZOFzmgdtxgTL6pcV/qIhmak0ygIG
         0N/gQ+3VZ63O2Rfv5RzfnoQ5mSx2ett9Q5BFPz/PLK1qsbpyQCsal+OhHjosDaykS63q
         ip64mjgZLR+C/28lwv6iEqGe8SBWk1Pcmq1Y70mW8rXiIdcLXBy9XWUFCcynDIu//OmB
         Wdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v1ZeRhXQMiIQYAV+XUz2WSB/cIOB4n+iPC67aDlrX5s=;
        b=hpwclf/vPeu2RGFNYQnDnCJuzjsUn3LvqTocqW9UkUJjxCTGm4caV+DKpmM9i6CL9F
         yGGb2L3qVClMY8ey5G3dUH6/ObdxuH9TRcGqa3xVyrksCwHlCV2FqRmch4UucT0G7OJ2
         wzlwgXiBYioLT3vZNFq4P4XtRrrGT2Pbw19cxQifSHei4V/6ff2nIg7KMoFkiN9Bs/4c
         jkqU2K5RKhtscB3Daee79uFRbD4IiLs5ln8XKwGis5QC93DSohHLYL2iXqb6hi7Uc16f
         TzpZyjdCeTnZpEqS4tWRbcVd6Dkk50Ttxg6zPJAH5ppw20sYMezohxqOU9iWYLlquW++
         sHxQ==
X-Gm-Message-State: AOAM531e5DIGf9fyojhoukpXB8a+6CGmhK/BFtvnK8nsmytWnvRG+1Tx
	vg12MN5JYXsKlTH8U3XNpKN6VA1LwnA5KO0tiJE=
X-Google-Smtp-Source: ABdhPJxhmFobhjc5YFu/HMTegKAF+druKZgfceiy1NLfoQ4G+dBREQoUs60E2EXo6D34q7ImZoeiDEk8lnpo+R7mg5o=
X-Received: by 2002:a05:6e02:5d1:: with SMTP id l17mr3274939ils.154.1611062592407;
 Tue, 19 Jan 2021 05:23:12 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
 <2283.1611061237885442892@lists.yoctoproject.org>
In-Reply-To: <2283.1611061237885442892@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 19 Jan 2021 14:23:01 +0100
Message-ID: <CAGAf8LzcJds3MaX9Mcsao0bYO=LfGrJhtgHTtvPqPbzd0pHOOw@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

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
