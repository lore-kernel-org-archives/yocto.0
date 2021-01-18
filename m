Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web08.29872.1610947668678427646
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Jan 2021 21:27:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QtzSOJB8;
 spf=pass (domain: gmail.com, ip: 209.85.221.178, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id e27so3715212vkn.2
        for <yocto@lists.yoctoproject.org>; Sun, 17 Jan 2021 21:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vdr8cVQbPBD3pGmii8ECroK5kw2awXvFLz4YyjDd7wI=;
        b=QtzSOJB8UYfLqgV8n+6Q8qSckrMZwvBlv4Rp3w9dYkOoAVJlAgFxMedWts0336nHPE
         XssozSQhPvp91Nmv6pMixvVFBxkxB2Hjo+cib8mgVoV/hOyOs6SCXsGzuULSymMbZvsj
         5gFXxHBpIBzJopsGhWFjucHJy2TBYslszycFqUgUUdjoK9eXEUuOV3E+2o3/1MAHLF2Y
         S8ygkxiUKPjZtVHAC+DOyADjyOadc/B+6SnsofZCGteJRDgZjfr5C3vlzr7p+D/s39Wt
         3+8aR9tyqz55yyOLYQqY61lpd4BLC54ZdjI8TQPLDn/ERJy0r7/ilsSw2cE4Dd4ooNOG
         A6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vdr8cVQbPBD3pGmii8ECroK5kw2awXvFLz4YyjDd7wI=;
        b=cWOOUVZoXr3jY/kCPOppTceKS6uEWeGMqXL1nG8gNeXRAzKRHsiz4AZSWLc2ikfBND
         ncYeK/Fx41fZRPpMaR/+8Nt/uy+LRoOTt12gTV14aXvWf9ZJmC3rauly5NznN18mubcC
         w8KKEFiiomte1S4qcpM+Ty2z3ap63yvFq581o6CbwUo9zOOj+eZQSYm9PMBRKpcVilIV
         wmt3n5/w99cnPSrvcZMcBNyEVfVLHrB/PjD7Q5qjDP5V9VswHalN2GuKadXboOP1iP5l
         yS5ScuLViKYbR3Gh50b8s8yAk6ysYLJ7XFTfHKbDeFjBqz/Pcv4hq4Vh1CrkYDFHclFZ
         TMYg==
X-Gm-Message-State: AOAM533SAFXrYarpopEyJGHKQLGhqo0CVD9M9FaPDH5Pu3zaE7bzva+k
	+qiIn/J8qnAjDBpKRIUCrIdxOjVIR97XyGp3BsY=
X-Google-Smtp-Source: ABdhPJwv2BYJrScR4nWsRAaEFsuNXRcqiE79LrF3cS8kJBYBX0VSgZu09vJ5LOQ+ToNNmbqEDijdFGYGTTZ99pkvZtA=
X-Received: by 2002:a1f:198f:: with SMTP id 137mr17262661vkz.2.1610947667777;
 Sun, 17 Jan 2021 21:27:47 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LwLiKkWRawBqLMLAaBQq5Ly0rzJwvfY5yS0fLEce=sgEg@mail.gmail.com>
 <10291.1610886883719843020@lists.yoctoproject.org> <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
In-Reply-To: <CAGAf8LxnsGGjBvvVzBG90VFMoKwFt_bbSa50TGfeMhw5OPMZXw@mail.gmail.com>
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Mon, 18 Jan 2021 06:27:36 +0100
Message-ID: <CAHwRhWbxsWk7FC+56xb3++2RwsG55vCdAHGOriJyKWK3+FNajA@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007d5afe05b925fb17"

--0000000000007d5afe05b925fb17
Content-Type: text/plain; charset="UTF-8"

Thank you Zoran, I will do it :-)

On 2021. Jan 17., Sun at 23:27, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> > KERNEL_MODULE_AUTOLOAD += "ncm_driver"KERNEL_MODULE_PROBECONF
> > += "ncm_driver"*cdc_ncm* = "options ncm_driver iProduct=
> > USB_Host_Driver_for_Network_Control_Model iManufacturer=NCM"
>
> > KERNEL_MODULE_AUTOLOAD += "wmc_device_managment"
> > KERNEL_MODULE_PROBECONF += "wmc_device"*cdc_wdm* = "options wmc_device
> > iProduct=USB_CDC_WCM_Device_Management iManufacturer=WMC"
>
> > KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF +=
> > "lte"*huawei_cdc_ncm* = "options lte iProduct=E3372h
> iManufacturer=Huawei"
>
> Here is the exact loading order, outlined in target's /etc/modules :
>
> debian@arm:~$ cat /etc/modules
> # /etc/modules: kernel modules to load at boot time.
> #
> # This file contains the names of kernel modules that should be loaded
> # at boot time, one per line. Lines beginning with "#" are ignored.
>
> *cdc_ncm*
> *cdc_wdm*
> *huawei_cdc_ncm*
>
> You need to, using YOCTO recipes, to modify /etc/modules file to look
> as shown above, while bitbaking the target.
>
> Zoran
> _______
>
>
> On Sun, Jan 17, 2021 at 1:34 PM Zoltan Kerenyi Nagy <
> kerenyi.nagy.zoltan@gmail.com> wrote:
>
>> Hi,
>>
>> I contacted the kernel module (cdc_ncm) developper, and he suggested to
>> change/experiment the kernel module load order.
>>
>> I thought if I specify this way: KERNEL_MODULE_AUTOLOAD +=
>> "ncm_driver"KERNEL_MODULE_PROBECONF += "ncm_driver"cdc_ncm = "options
>> ncm_driver iProduct=USB_Host_Driver_for_Network_Control_Model
>> iManufacturer=NCM" KERNEL_MODULE_AUTOLOAD +=
>> "wmc_device_managment"KERNEL_MODULE_PROBECONF += "wmc_device"cdc_wdm =
>> "options wmc_device iProduct=USB_CDC_WCM_Device_Management
>> iManufacturer=WMC" KERNEL_MODULE_AUTOLOAD +=
>> "lte"KERNEL_MODULE_PROBECONF += "lte"huawei_cdc_ncm = "options lte
>> iProduct=E3372h iManufacturer=Huawei"
>> Than this means the order of loading too. Is there any additional feature
>> in Yocto that can interfere and set the exact kernel module loading order?
>>
>> Thanks,
>>
>>
>> --
>> Zolee
>> 
>>
>>

--0000000000007d5afe05b925fb17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you Zoran, I will do it :-)</div><div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On 2021. Jan 17., S=
un at 23:27, Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@=
gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204=
,204)"><div dir=3D"ltr"><div>&gt; KERNEL_MODULE_AUTOLOAD +=3D &quot;<span s=
tyle=3D"color:rgb(0,0,0)">ncm_driver</span>&quot;KERNEL_MODULE_PROBECONF</d=
iv><div>&gt; +=3D &quot;ncm_driver&quot;<span style=3D"color:rgb(255,0,0)">=
<i><b>cdc_ncm</b></i></span> =3D &quot;options ncm_driver iProduct=3D</div>=
<div>&gt; USB_Host_Driver_for_Network_Control_Model iManufacturer=3DNCM&quo=
t;</div><br><div>&gt; KERNEL_MODULE_AUTOLOAD +=3D &quot;wmc_device_managmen=
t&quot;</div><div>&gt; KERNEL_MODULE_PROBECONF +=3D &quot;wmc_device&quot;<=
span style=3D"color:rgb(255,0,0)"><i><b>cdc_wdm</b></i></span> =3D &quot;op=
tions wmc_device</div><div>&gt; iProduct=3DUSB_CDC_WCM_Device_Management iM=
anufacturer=3DWMC&quot;</div><br><div>&gt; KERNEL_MODULE_AUTOLOAD +=3D &quo=
t;lte&quot;KERNEL_MODULE_PROBECONF +=3D</div><div>&gt; &quot;lte&quot;<span=
 style=3D"color:rgb(255,0,0)"><i><b>huawei_cdc_ncm</b></i></span> =3D &quot=
;options lte iProduct=3DE3372h iManufacturer=3DHuawei&quot;</div><div><br><=
/div>Here is the exact loading order, outlined in target&#39;s /etc/modules=
 :<br><br>debian@arm:~$ cat /etc/modules<br># /etc/modules: kernel modules =
to load at boot time.<br>#<br># This file contains the names of kernel modu=
les that should be loaded<br># at boot time, one per line. Lines beginning =
with &quot;#&quot; are ignored.<br><br><div><span style=3D"color:rgb(255,0,=
0)"><i><b>cdc_ncm</b></i></span></div><div><span style=3D"color:rgb(255,0,0=
)"><i><b>cdc_wdm</b></i></span></div><span style=3D"color:rgb(255,0,0)"><i>=
<b>huawei_cdc_ncm</b></i></span><br><div><br></div><div>You need to, using =
YOCTO recipes, to modify /etc/modules file to look</div><div>as shown above=
, while bitbaking the target.</div><div><br></div><div>Zoran</div><div>____=
___<br></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sun, Jan 17, 2021 at 1:34 PM Zoltan Kerenyi Nagy &lt;<a=
 href=3D"mailto:kerenyi.nagy.zoltan@gmail.com" target=3D"_blank">kerenyi.na=
gy.zoltan@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-styl=
e:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">Hi,<br><br>I c=
ontacted the kernel module (cdc_ncm) developper, and he suggested to change=
/experiment the kernel module load order.<br><br>I thought if I specify thi=
s way:
<h6>KERNEL_MODULE_AUTOLOAD +=3D &quot;ncm_driver&quot;KERNEL_MODULE_PROBEC=
ONF +=3D &quot;ncm_driver&quot;cdc_ncm =3D &quot;options ncm_driver iProduc=
t=3DUSB_Host_Driver_for_Network_Control_Model iManufacturer=3DNCM&quot;</h6=
>
<h6>KERNEL_MODULE_AUTOLOAD +=3D &quot;wmc_device_managment&quot;KERNEL_MOD=
ULE_PROBECONF +=3D &quot;wmc_device&quot;cdc_wdm =3D &quot;options wmc_devi=
ce iProduct=3DUSB_CDC_WCM_Device_Management iManufacturer=3DWMC&quot;</h6>
<span id=3D"m_8344615311040977516gmail-m_3721590210847147979main"></span>
<h6>KERNEL_MODULE_AUTOLOAD +=3D &quot;lte&quot;KERNEL_MODULE_PROBECONF +=
=3D &quot;lte&quot;huawei_cdc_ncm =3D &quot;options lte iProduct=3DE3372h =
iManufacturer=3DHuawei&quot;</h6>
<br>Than this means the order of loading too. Is there any additional feat=
ure in Yocto that can interfere and set the exact kernel module loading ord=
er?<br><br>Thanks,<br><br><span id=3D"m_8344615311040977516gmail-m_37215902=
10847147979main"></span> <br>-- <br>Zolee
<br>
<br>
<br>
</blockquote></div>
</blockquote></div></div>
<br>-- <br>Zolee

--0000000000007d5afe05b925fb17--
