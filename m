Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web09.2646.1610107199772342230
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 03:59:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D6bWtLg+;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id n4so9438783iow.12
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 03:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FsplBe65dQ8TuRzoQIhTWUqEUyWwbonsOvF7i9DsXng=;
        b=D6bWtLg+w40jW5lqk/cJ8uYrzL0BkiTPcCKDGhgi6nMRRj8/8HW1ynX/gxJz9J1e78
         h3xpHZXjtSL7g/0jblXZxj///PcVK/kOT66j/cw0J8sNtuQf2lX57/P32m7Zj1BYbIbi
         hW3x7AWj0oeT20iXUbjD7DH/z0JeZa1WvOtdFApsGNOtiyiwMdoMb66XNgGKz/S8Lh4u
         MpfcynHHGfTvZXU0/h+KRlWGBGtnfjeln7zaLXaXe+L4OY4OSy6EC0310xtEyHoZ9js8
         3K5vorqEBPz6Yj1Aua34cPJVBRedIDFHnmRCnn9538WmmfazoqVjkzhmEiUFp0mnbJxs
         0whg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FsplBe65dQ8TuRzoQIhTWUqEUyWwbonsOvF7i9DsXng=;
        b=mVoYn1FkVJoSCB+Khz6X9eZxoDgNo4ionjzrhiZgsk/BVGwISZC9IeyWjlepYl2k81
         4i53xjHkp20PUandrxtrtvv3LTqFrQlsvTDDPXhdU/uA5wn3JLBY7hNhCzscEtiTBn9o
         7QtFvWj4hLkf3dAdmNfbm9lCUxgEms5pjsSMY6wWSclrRv3w7DC36TZXa8khYEDga5Z8
         BOxhfVSEiufSCrvxzAqXOXXHH13eR7SdEj/ClVStV5lAvV8mnq6Wofccse4r5gAhBbOL
         jsMfadyGgDk+gHbSGlSXBaMu05kQehOg3SE4kZJwaqkegYSCcjYIf32wV49JcpFL0IhN
         +KWQ==
X-Gm-Message-State: AOAM5313x55pCf4efYEm8mbOpAAFUDx+QUt8JRJuNjdiJ7gVXtyiub/x
	SLKn0GPyBo68Ch5mpZRY95E35cH/5HZeuKgSI2A=
X-Google-Smtp-Source: ABdhPJyqK+O5RnNbkYvx3Ib4lmsNDnklywVl6LYi4ztQeLBykIWFDkdb5RHG5LmtiuOhuurlXWwcHt2r6VRVZS79zPk=
X-Received: by 2002:a5d:9641:: with SMTP id d1mr5002035ios.123.1610107199098;
 Fri, 08 Jan 2021 03:59:59 -0800 (PST)
MIME-Version: 1.0
References: <11979.1610102160066147591@lists.yoctoproject.org> <26578.1610104942162892163@lists.yoctoproject.org>
In-Reply-To: <26578.1610104942162892163@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 8 Jan 2021 12:59:46 +0100
Message-ID: <CAGAf8LyEXerytTB_YGmpMcZOu3MOaSdA_vYv8nvk6qMOoPUc5Q@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a7126f05b8624bcd"

--000000000000a7126f05b8624bcd
Content-Type: text/plain; charset="UTF-8"

> insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': *unknown
symbol in module, or unknown parameter*

On my target (Pocket Bone):

debian@arm:/lib/modules/5.8.18-bone24/kernel$ find . -name huawei_cdc_ncm*
./drivers/net/usb/huawei_cdc_ncm.ko.xz
debian@arm:/lib/modules/5.8.18-bone24/kernel$ cd ./drivers/net/usb/






*debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/sudo insmod
huawei_cdc_ncm.ko.xz[ 6554.826591] huawei_cdc_ncm: Unknown symbol
cdc_ncm_tx_fixup (err -2)[ 6554.833115] huawei_cdc_ncm: Unknown symbol
cdc_ncm_bind_common (err -2)[ 6554.841745] huawei_cdc_ncm: Unknown symbol
usb_cdc_wdm_register (err -2)[ 6554.849680] huawei_cdc_ncm: Unknown symbol
cdc_ncm_unbind (err -2)[ 6554.857042] huawei_cdc_ncm: Unknown symbol
cdc_ncm_rx_fixup (err -2)insmod: ERROR: could not insert module
huawei_cdc_ncm.ko.xz: Unknown symbol in module*
debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$ uname -a
Linux arm 5.8.18-bone24 #1 PREEMPT Sun Dec 13 19:15:04 CET 2020 armv7l
GNU/Linux
debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$ cat
/etc/debian_version
10.7
debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$

Good Luck!
Zoran
_______


On Fri, Jan 8, 2021 at 12:22 PM Zoltan Kerenyi Nagy <
kerenyi.nagy.zoltan@gmail.com> wrote:

> No success :-(
>
> insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': *unknown
> symbol in module, or unknown parameter*
>
> --
> Zolee
> 
>
>

--000000000000a7126f05b8624bcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-im">&gt; insmod /lib/modules/4.10.0/e=
xtra/huawei_cdc_ncm.ko<br>&gt; insmod: can&#39;t insert &#39;/lib/modules/4=
.10.0/extra/huawei_cdc_ncm.ko&#39;: <strong>unknown symbol in module, or un=
known parameter</strong></span><br><div><br></div><div>On my target (Pocket=
 Bone):</div><br>debian@arm:/lib/modules/5.8.18-bone24/kernel$ find . -name=
 huawei_cdc_ncm*<br>./drivers/net/usb/huawei_cdc_ncm.ko.xz<br>debian@arm:/l=
ib/modules/5.8.18-bone24/kernel$ cd ./drivers/net/usb/<br><span style=3D"co=
lor:rgb(255,0,0)"><i><b>debian@arm:/lib/modules/5.8.18-bone24/kernel/driver=
s/net/sudo insmod huawei_cdc_ncm.ko.xz<br>[ 6554.826591] huawei_cdc_ncm: Un=
known symbol cdc_ncm_tx_fixup (err -2)<br>[ 6554.833115] huawei_cdc_ncm: Un=
known symbol cdc_ncm_bind_common (err -2)<br>[ 6554.841745] huawei_cdc_ncm:=
 Unknown symbol usb_cdc_wdm_register (err -2)<br>[ 6554.849680] huawei_cdc_=
ncm: Unknown symbol cdc_ncm_unbind (err -2)<br>[ 6554.857042] huawei_cdc_nc=
m: Unknown symbol cdc_ncm_rx_fixup (err -2)<br>insmod: ERROR: could not ins=
ert module huawei_cdc_ncm.ko.xz: Unknown symbol in module</b></i></span><br=
>debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$ uname -a<br>=
Linux arm 5.8.18-bone24 #1 PREEMPT Sun Dec 13 19:15:04 CET 2020 armv7l GNU/=
Linux<br>debian@arm:/lib/modules/5.8.18-bone24/kernel/drivers/net/usb$ cat =
/etc/debian_version<br>10.7<br><div>debian@arm:/lib/modules/5.8.18-bone24/k=
ernel/drivers/net/usb$</div><div><br></div><div>Good Luck!</div><div>Zoran<=
/div><div>_______<br></div></div><br><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Jan 8, 2021 at 12:22 PM Zoltan Keren=
yi Nagy &lt;<a href=3D"mailto:kerenyi.nagy.zoltan@gmail.com">kerenyi.nagy.z=
oltan@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">No success :-(<br><br>insmod /lib/modules/4.10.0/extra/huawe=
i_cdc_ncm.ko<br>insmod: can&#39;t insert &#39;/lib/modules/4.10.0/extra/hua=
wei_cdc_ncm.ko&#39;: <strong>unknown symbol in module, or unknown parameter=
</strong><br><br>-- <br>Zolee
<br>
<br>
<br>
</blockquote></div>

--000000000000a7126f05b8624bcd--
