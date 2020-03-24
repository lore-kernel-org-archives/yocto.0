Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com [209.85.217.68])
 by mx.groups.io with SMTP id smtpd.web12.160.1585082704822648647
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 13:45:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lICrI5bd;
 spf=pass (domain: gmail.com, ip: 209.85.217.68, mailfrom: karthik.poduval@gmail.com)
Received: by mail-vs1-f68.google.com with SMTP id x206so167453vsx.5
        for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 13:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4FfAC840QBWpJyfZrEp/EAqL4sm5C1e4NxVhFO1qiCs=;
        b=lICrI5bd5X0FtUpS+geEJ2SC8N8Y/r1JaLTnzC1La7zC6tn1Ei+UwVuWNhaFumVHYC
         TQAcHmu7xAV+28YofJ9+AOT0LgSr3kRPr/FfXAafbPKhDTsWjAL4T/uVg4nx9zIIpx0p
         4OYQHZ9u/ImfJFheIaR/Jl9A1wEqIXPl4AA7/927Dk6YbkZ49jDWb/KxnkLHAkpwApwU
         /lnS/U/5VBWexEvdy+4xrfVH5GsJynrMZFIseLomz6f3EBJgU/uBIJiI6LX71LxL+9mV
         hxLOjSDtK1bC+HUPttj+uneXV57dHya0StlJgJd8weZmJ/oe8Xx24mWrZRTN2GCCEjhf
         ++Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4FfAC840QBWpJyfZrEp/EAqL4sm5C1e4NxVhFO1qiCs=;
        b=sxsIxsKfjvRBA330hYLx7JhUpfg5jsBGT7xaNMFb/lMT4QKDTl/2i89ukGCKvwO+fU
         LsoxqUToWLnEb7rguG1OR39+HE/fcyf2B45GNtf+oaokhPgeuvytDxV+Pz2SGDDqbqgl
         tx1oV+PU2XS2ZiGONvCcSNFMLopq2Q0AyTj1zBubE7waKNu8/+zGy/83mTfhI5rjPRXu
         4tAhqX0Bja7TKij9mlfsmhXg0QJp1lD+S3UD5E9cJxNFXD5lOWVlnqAawKkHZ2ckXFsS
         4nJqMuzAYem5Fm84xkw4MhGuv8WkUhrq+joxpRmzOyaBeAXE4gf16CDP4bzexcOd/0F8
         Fgcw==
X-Gm-Message-State: ANhLgQ0Jh2f46qght8R6tZcgJLLvNbHCT5574TKIEI5HAPQ83wY5fx4w
	//QJJ4aUOiPfFxtiSJuU2OD/KmNXD2CS4lWg3tM=
X-Google-Smtp-Source: ADFU+vu2la59DKYxtHbIgASBPBDESw+1dDel+rgFLLmupKicNJd0tev5fhqrR0yui9PH3gsqHkP8OdYo4XFtltppRlE=
X-Received: by 2002:a67:e881:: with SMTP id x1mr94644vsn.221.1585082703662;
 Tue, 24 Mar 2020 13:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
 <20200323111421.GA20231@xn--80adja5bqm.su> <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
 <20200323214537.GA24482@linux-uys3> <CAOf5uw=4XW=7rm5WdGUYbGoiv7M24NdwSOMYW65BqkFvvQSx6w@mail.gmail.com>
 <15FF12CB62D1AFA0.10617@lists.yoctoproject.org>
In-Reply-To: <15FF12CB62D1AFA0.10617@lists.yoctoproject.org>
From: "Karthik Poduval" <karthik.poduval@gmail.com>
Date: Tue, 24 Mar 2020 13:44:51 -0700
Message-ID: <CAFP0Ok8SKi-3LM-txVG8XuQuyvtHHwNaVOmP+XZzCMtVi+0_Kw@mail.gmail.com>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Trevor Woerner <twoerner@gmail.com>
Cc: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Trevor,

I was trying to enable the WiFi on tinker-board which is RTL8723BS
chipset. Although the driver for the chip is in the mainline
kernel(staging). Its isn't enabled in the defconfig which appears to
be multi_v7_defconfig for rk3288.
So I tried adding it via kernel config fragment as.
rtl8723bs-wlan.cfg:
CONFIG_WIRELESS_EXT=y
CONFIG_WEXT_CORE=y
CONFIG_WEXT_PROC=y
CONFIG_WEXT_PRIV=y
CONFIG_RTL8723BS=m

I tried adding this fragment to linux-mutual.inc as
SRC_URI_append-tinker-board = "file://rtl8723bs-wlan.cfg"

However it didn't apply the kernel config fragment. I suspect its
because of the following lines in linux-mutual.inc.
KCONF_BSP_AUDIT_LEVEL = "0"
deltask kernel_configme

removing those lines causes a build failure. Are those lines causing
the fragment to not apply. How to resolve this issue ?

I could do a patch on defconfig but that may not work for the long
term as def configs change.
Other option is to provide a config file with wireless enabled for
tiner-board but don't want to go there until I know why fragments
can't be applied.


--
Regards,
Karthik Poduval

On Mon, Mar 23, 2020 at 4:31 PM Karthik Poduval via
Lists.Yoctoproject.Org
<karthik.poduval=gmail.com@lists.yoctoproject.org> wrote:
>
> Thanks for the tip Joshua,
>
> Like you suggested it was power supply related, I am able to boot the
> board now with a 3A power supply.
>
> Hi Tever,
>
> Yes I have my console connected to UART2 and it seems to work fine for
> the yocto build. For the tinkerOS image neither UART1 or UART2 had a
> console output but the board booted successfully over HDMI (I didn't
> test it any further).
>
> Appreciate all the help everyone.
>
> --
> Regards,
> Karthik Poduval
>
> On Mon, Mar 23, 2020 at 2:48 PM Michael Nazzareno Trimarchi
> <michael@amarulasolutions.com> wrote:
> >
> > Hi
> >
> > On Mon, Mar 23, 2020 at 10:45 PM Trevor Woerner <twoerner@gmail.com> wrote:
> > >
> > > On Mon 2020-03-23 @ 10:31:05 PM, Michael Nazzareno Trimarchi wrote:
> > > > What about the status of qt layer using panfrost? and mainline
> > >
> > > Thanks to JPEW, mesa with panfrost is enabled/working with relevant boards.
> > > I've tested it, running, on both the rock-pi-4 and tinkerboard (so it *should*
> > > be working with your vyasa-rk3288 board too, although I haven't run-tested it
> > > lately). Therefore most anything sitting on top of mesa *should* work.
> > >
> > > Of course... the panfrost project is a "work-in-progress", so there are
> > > probably some cases that might not work.
> >
> > Technically I can include meta-qt and build on top of mesa using
> > wayland and some
> > mainline kernel. I'm working right now on tinker-s board and figure
> > out to move legacy
> > project on mainline solution.  I will try to compile it and give a try
> >
> > Michael
> >
> > >
> > > Best regards,
> > >         Trevor
> >
> >
> >
> > --
> > | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> > | COO  -  Founder                                      Cruquiuskade 47 |
> > | +31(0)851119172                                 Amsterdam 1018 AM NL |
> > |                  [`as] http://www.amarulasolutions.com               |
>
>
>
> --
> Regards,
> Karthik Poduval
> 



-- 
Regards,
Karthik Poduval
