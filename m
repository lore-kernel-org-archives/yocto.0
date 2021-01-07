Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web09.9683.1610032642424236744
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 07:17:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GpOaNcUS;
 spf=pass (domain: gmail.com, ip: 209.85.222.49, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id y21so2363508uag.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 07:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QmVpV34xt8MLYkAP1Ja/RKs9TOnIpaH4USbjnGldgwk=;
        b=GpOaNcUSLG9hoG9smtxSs6TqWNKnWNl8XOd7LDkmGSWTA4zgwN5FF7qRZOhL+Glip+
         kVyrAG4qV7G6ygcsro7N54uA0EDxW2PAOIQXhc9f6YQByINmmz+jEBSOGr/jpIGwOJJ/
         0eydgxdpps0VEHjsQc8ERdI3GPu/Mmu3e252WKlUqmuemBeADq+f+3TuuyZB+D7y7zsM
         cPBnQ70dKlpCUWfW5gq5vLBzFYeaxLzQ1LqPSx86I3bJaqHi8yUDUcrRo0vA7iNB8uAb
         Sx7e8D3l/NvvKXB8zSFtFxjDl6ryitAT19+cnoCGXW8Jy5k3ARxzjmyr2aKqmfr30rBY
         rQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QmVpV34xt8MLYkAP1Ja/RKs9TOnIpaH4USbjnGldgwk=;
        b=dMLvpxc6LEDgDTIA1SkBXDKK7S9J2DsSrbCxz1QeLmMjU/z0j+2sGvwpLd69T6OWZS
         dNjxYMJ4g0bRy+QYw2DteuPoWbX/cKn3BI+lqOoiggkhO4p+A9K7FQCQK7PjeeFkmYdn
         BWqbHhrlG7OKkuToQH7o6sv1D/WEL5CviwGZ2hEAT34YCMNWZPaiqY5XjkVTO5pgoXz4
         nCvZdZIKXGJGRW2FdKrMeqbPzAcW9+ot/Hf20uI0AShQi4+upczRFh8AuWeaaF77eLff
         8tNoDCpAfrk25nKobORYLmI2XagczkKUkj5Tom5ZZUAvHA/4wrD/ZnXOnwcWl0GroapS
         r+Vw==
X-Gm-Message-State: AOAM5306V2T7RVnNusgz0QSoz0iLuSRcgmc8BffYxvUVUofzd21gd+gB
	eCiLFpHJfspUG9w7WMqr76CL7PpSzSEY7Dv+HNE=
X-Google-Smtp-Source: ABdhPJxQ9wluDhQ4Rs98xhe1USGjN3CRoqlhReXtx6Q17SJC/jz68OHC5aRHwWKCkKMjwAFiNo4JcGG2RaPxONXQHqE=
X-Received: by 2002:ab0:3b59:: with SMTP id o25mr8057403uaw.62.1610032641575;
 Thu, 07 Jan 2021 07:17:21 -0800 (PST)
MIME-Version: 1.0
References: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
 <CAGAf8Lz+_aWxJSrEEVWKtzitD1kCy+BO0BrapWGhtpRVJJYHCA@mail.gmail.com>
In-Reply-To: <CAGAf8Lz+_aWxJSrEEVWKtzitD1kCy+BO0BrapWGhtpRVJJYHCA@mail.gmail.com>
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Thu, 7 Jan 2021 16:16:45 +0100
Message-ID: <CAHwRhWanj0AnPWRQcXCku6ZxnBeDWRueCO=U4BDxH8ZxFQyYrg@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ad8d5305b850ef38"

--000000000000ad8d5305b850ef38
Content-Type: text/plain; charset="UTF-8"

Hi Zoran,

Thanks, I modified the Makefile:

obj-m := huawei_cdc_ncm.o
Kconfig (obj-y := huawei_cdc_ncm.o)
SRC := $(shell pwd)
all:
$(MAKE) -C $(KERNEL_SRC) M=$(SRC)
modules_install:
$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
clean:
rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
rm -f Module.markers Module.symvers modules.order
rm -rf .tmp_versions Modules.symvers

but this is the error:

ERROR: huawei-1.1-r0 do_configure: oe_runmake failed
ERROR: huawei-1.1-r0 do_configure: Function failed: do_configure (log file
is located at
/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
ERROR: Logfile of failure stored in:
/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488
Log data follows:
| DEBUG: Executing shell function do_configure
| NOTE: make
KERNEL_SRC=/home/kerenyiz/oe-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-source
clean
| ERROR: oe_runmake failed
| Makefile:2: *** empty variable name.  Stop.
| ERROR: Function failed: do_configure (log file is located at
/home/kerenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/temp/log.do_configure.4488)
ERROR: Task
(/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-z/kernel-modules/huawei/huawei_1.1.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3880 tasks of which 3873 didn't need to be
rerun and 1 failed.

On Thu, 7 Jan 2021 at 16:03, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Zoltan,
>
> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko':
> unknown symbol in module, or unknown parameter
>
> Please, try to set Kconfig (obj-y := huawei_cdc_ncm.o) to y, I guess
> 99.9% that the kernel compilation (actually, driver compilation) will
> pass.
>
> I think YOCTO (recipe) behaves perfectly correctly.
>
> Other approach: try to compile the same module with Makefile above on
> the target.
>
> (my two cent thoughts)
>
> Zoran
> _______
>
> On Thu, Jan 7, 2021 at 2:46 PM Zoltan Kerenyi Nagy
> <kerenyi.nagy.zoltan@gmail.com> wrote:
> >
> > Hi Folks,
> >
> > I bitbaked a Huawei E3372h driver into the distro with this recipe file:
> >
> > SUMMARY = "Huawei Stick kernel module"
> > LICENSE = "CLOSED"
> >
> > inherit module
> >
> > SRC_URI = "file://Makefile \
> >            file://huawei_cdc_ncm.c \
> >           "
> >
> > S = "${WORKDIR}"
> >
> > The makefile looks like this:
> >
> > obj-m := huawei_cdc_ncm.o
> >
> > SRC := $(shell pwd)
> >
> > all:
> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
> >
> > modules_install:
> > $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
> >
> > clean:
> > rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> > rm -f Module.markers Module.symvers modules.order
> > rm -rf .tmp_versions Modules.symvers
> >
> > The source file is the one that matches the kernel:
> >
> >
> https://elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c
> >
> > I included this into the conf file:
> > KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF +=
> "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
> >
> > Bitbake runs without error, however when I insert the SD card into the
> hardware ( barix ipam 400)
> > and boot the hardware this is the error message:
> >
> > root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> > insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko':
> unknown symbol in module, or unknown parameter
> >
> > To me it looks like that there was an error during the bitbake, or the
> header files included in the driver doesn't match the kernel.
> >
> > Do you have any idea how to procede?
> >
> > Thanks,
> >
> >
> >
> > --
> > Zolee
> > 
> >
>

--000000000000ad8d5305b850ef38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399">Hi Zo=
ran,</div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><d=
iv class=3D"gmail_default" style=3D"color:#333399">Thanks, I modified the M=
akefile:</div><div class=3D"gmail_default" style=3D"color:#333399"><br></di=
v><div class=3D"gmail_default" style=3D"color:#333399"><font size=3D"1">obj=
-m :=3D huawei_cdc_ncm.o<br>Kconfig (obj-y :=3D huawei_cdc_ncm.o)<br>SRC :=
=3D $(shell pwd)<br>all:<br>	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)<br>module=
s_install:<br>	$(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install<br>clean=
:<br>	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c<br>	rm -f Module.marker=
s Module.symvers modules.order<br>	rm -rf .tmp_versions Modules.symvers<br>=
</font></div><div class=3D"gmail_default" style=3D"color:#333399"><br></div=
><div class=3D"gmail_default" style=3D"color:#333399">but this is the error=
:</div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><div =
class=3D"gmail_default" style=3D"color:#333399"><font size=3D"1">ERROR: hua=
wei-1.1-r0 do_configure: oe_runmake failed<br>ERROR: huawei-1.1-r0 do_confi=
gure: Function failed: do_configure (log file is located at /home/kerenyiz/=
oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1.1-r0/t=
emp/log.do_configure.4488)<br>ERROR: Logfile of failure stored in: /home/ke=
renyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/1=
.1-r0/temp/log.do_configure.4488<br>Log data follows:<br>| DEBUG: Executing=
 shell function do_configure<br>| NOTE: make KERNEL_SRC=3D/home/kerenyiz/oe=
-core/build/tmp-glibc/work-shared/barix-ipam400/kernel-source clean<br>| ER=
ROR: oe_runmake failed<br>| Makefile:2: *** empty variable name.=C2=A0 Stop=
.<br>| ERROR: Function failed: do_configure (log file is located at /home/k=
erenyiz/oe-core/build/tmp-glibc/work/barix_ipam400-oe-linux-gnueabi/huawei/=
1.1-r0/temp/log.do_configure.4488)<br>ERROR: Task (/home/kerenyiz/oe-core/b=
uild/../stuff/meta-barix-sdk/recipes-z/kernel-modules/huawei/huawei_1.1.bb:=
do_configure) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Att=
empted 3880 tasks of which 3873 didn&#39;t need to be rerun and 1 failed.</=
font><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 7 Jan 2021 at 16:03, Zoran Stojsavljevic &lt;<a hr=
ef=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">He=
llo Zoltan,<br>
<br>
&gt; root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm=
.ko<br>
&gt; insmod: can&#39;t insert &#39;/lib/modules/4.10.0/extra/huawei_cdc_nc=
m.ko&#39;: unknown symbol in module, or unknown parameter<br>
<br>
Please, try to set Kconfig (obj-y :=3D huawei_cdc_ncm.o) to y, I guess<br>
99.9% that the kernel compilation (actually, driver compilation) will<br>
pass.<br>
<br>
I think YOCTO (recipe) behaves perfectly correctly.<br>
<br>
Other approach: try to compile the same module with Makefile above on<br>
the target.<br>
<br>
(my two cent thoughts)<br>
<br>
Zoran<br>
_______<br>
<br>
On Thu, Jan 7, 2021 at 2:46 PM Zoltan Kerenyi Nagy<br>
&lt;<a href=3D"mailto:kerenyi.nagy.zoltan@gmail.com" target=3D"_blank">ker=
enyi.nagy.zoltan@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Folks,<br>
&gt;<br>
&gt; I bitbaked a Huawei E3372h driver into the distro with this recipe fi=
le:<br>
&gt;<br>
&gt; SUMMARY =3D &quot;Huawei Stick kernel module&quot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt;<br>
&gt; inherit module<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://Makefile \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://huawei_cdc_ncm.c \<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt;<br>
&gt; The makefile looks like this:<br>
&gt;<br>
&gt; obj-m :=3D huawei_cdc_ncm.o<br>
&gt;<br>
&gt; SRC :=3D $(shell pwd)<br>
&gt;<br>
&gt; all:<br>
&gt; $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)<br>
&gt;<br>
&gt; modules_install:<br>
&gt; $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install<br>
&gt;<br>
&gt; clean:<br>
&gt; rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c<br>
&gt; rm -f Module.markers Module.symvers modules.order<br>
&gt; rm -rf .tmp_versions Modules.symvers<br>
&gt;<br>
&gt; The source file is the one that matches the kernel:<br>
&gt;<br>
&gt; <a href=3D"https://elixir.bootlin.com/linux/v4.0/source/drivers/net/u=
sb/huawei_cdc_ncm.c" rel=3D"noreferrer" target=3D"_blank">https://elixir.bo=
otlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c</a><br>
&gt;<br>
&gt; I included this into the conf file:<br>
&gt; KERNEL_MODULE_AUTOLOAD +=3D &quot;lte&quot;KERNEL_MODULE_PROBECONF +=
=3D &quot;lte&quot;huawei_cdc_ncm =3D &quot;options lte iProduct=3DE3372h =
iManufacturer=3DHuawei&quot;<br>
&gt;<br>
&gt; Bitbake runs without error, however when I insert the SD card into th=
e hardware ( barix ipam 400)<br>
&gt; and boot the hardware this is the error message:<br>
&gt;<br>
&gt; root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm=
.ko<br>
&gt; insmod: can&#39;t insert &#39;/lib/modules/4.10.0/extra/huawei_cdc_nc=
m.ko&#39;: unknown symbol in module, or unknown parameter<br>
&gt;<br>
&gt; To me it looks like that there was an error during the bitbake, or th=
e header files included in the driver doesn&#39;t match the kernel.<br>
&gt;<br>
&gt; Do you have any idea how to procede?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Zolee<br>
&gt; <br>
&gt;<br>
</blockquote></div>
<br>-- <br>Zolee

--000000000000ad8d5305b850ef38--
