Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
 by mx.groups.io with SMTP id smtpd.web10.13299.1586068681741052245
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Apr 2020 23:38:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=PSwEsyU0;
 spf=pass (domain: amarulasolutions.com, ip: 209.85.221.65, mailfrom: michael@amarulasolutions.com)
Received: by mail-wr1-f65.google.com with SMTP id h9so13477294wrc.8
        for <yocto@lists.yoctoproject.org>; Sat, 04 Apr 2020 23:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dtd9g7pClapeh6/AY1CuyPOF8XTud0nY9GIdKy574DM=;
        b=PSwEsyU05z10eVR1+zwC/0qbr1pz/YxfboLOgulkeya/75Yd3d1SjVKZg1ITWyxApk
         P4/5gvqN0sIkp4yk2iZxCDkH1qiR9yDcIXCqRigaRlKUA3Y5O5naZJeifSoTcA2PB3+c
         KIlZNw53l3LLCllKCG/VlbM9DjkdlZSSSIGxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dtd9g7pClapeh6/AY1CuyPOF8XTud0nY9GIdKy574DM=;
        b=t6doqO2Cc3R9R2Bg8+jBu0y29VBMGW0l+xGngkPLsOEExLz/3LPh2BGPoQg5nZIGxo
         HkWd6Z4f1E/oYjzrQ9dnJpfqOKhfxjTlAFJoaG+B38M+JzJtJrPlkLWBWyCN28Y+Y1Fj
         vokpMeVWOosfhd6TPAv5kOSFxAQcmoaJAkkoDBFW3k4ouL/AVKFZusg+aHFaARrtlg3H
         ClGwPYPTIw2Tclv/di7ceJ31XeEPrQ7zmvECO/+Qwg0/3RahDbxhNf9oEwzvcwmvPD7e
         TYw8knOpemX607Uh86EOdsdnRId7kdD7TXbsnqmFsRjtiz0XuHqVXTdt+xH3e4fc5yEr
         +9Gg==
X-Gm-Message-State: AGi0Puax+4I5sZ8HW09CbqA4a1rldIYYQ+AKbAq3Vu+SDPSTIMEhHfJV
	ycm9aotB8MQWfTcoBZM6509iHQn2suTaUkY2kJx+hg==
X-Google-Smtp-Source: APiQypKKi5adVKvQpRt0njMa8T9DFn8R5yg2BSibDyzx3EynqnoSfOefmdZengeIA7RXHp39amswBcHAKCsVlgaxVCg=
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr3580133wrm.140.1586068680098;
 Sat, 04 Apr 2020 23:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
 <20200323111421.GA20231@xn--80adja5bqm.su> <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
 <20200323214537.GA24482@linux-uys3> <15FF0D3ABE30F2B0.31066@lists.yoctoproject.org>
In-Reply-To: <15FF0D3ABE30F2B0.31066@lists.yoctoproject.org>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Sun, 5 Apr 2020 08:37:48 +0200
Message-ID: <CAOf5uwk74fN45hEtiLAWO4LiLW4=xi92FfxP_mTAmcFh9d8NQA@mail.gmail.com>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Cc: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi

On Mon, Mar 23, 2020 at 10:49 PM Michael Nazzareno Trimarchi via
Lists.Yoctoproject.Org
<michael=amarulasolutions.com@lists.yoctoproject.org> wrote:
>
> Hi
>
> On Mon, Mar 23, 2020 at 10:45 PM Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > On Mon 2020-03-23 @ 10:31:05 PM, Michael Nazzareno Trimarchi wrote:
> > > What about the status of qt layer using panfrost? and mainline
> >
> > Thanks to JPEW, mesa with panfrost is enabled/working with relevant boards.
> > I've tested it, running, on both the rock-pi-4 and tinkerboard (so it *should*
> > be working with your vyasa-rk3288 board too, although I haven't run-tested it
> > lately). Therefore most anything sitting on top of mesa *should* work.
> >
> > Of course... the panfrost project is a "work-in-progress", so there are
> > probably some cases that might not work.
>
> Technically I can include meta-qt and build on top of mesa using
> wayland and some
> mainline kernel. I'm working right now on tinker-s board and figure
> out to move legacy
> project on mainline solution.  I will try to compile it and give a try
>

I get some experience and get working the tinker board on meta-rockchip layer.

I should start to play with maniline soon and test vyasa board to have
the same level
of support

Michael

> Michael
>
> >
> > Best regards,
> >         Trevor
>
>
>
> --
> | Michael Nazzareno Trimarchi                     Amarula Solutions BV |
> | COO  -  Founder                                      Cruquiuskade 47 |
> | +31(0)851119172                                 Amsterdam 1018 AM NL |
> |                  [`as] http://www.amarulasolutions.com               |
> 



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
