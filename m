Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.13707.1599067960853398546
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 10:32:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFzWD7qZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id x7so2593912qvi.5
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2020 10:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BtaWeGJ7RlZQKxxk24v22033B7jAi2rVzBaCy+0SycU=;
        b=BFzWD7qZr+tYXNYFPcSXPwO8oBQvPCNL58b8WSn8EfEjX4AXqP5Z589nHfQJPtkgIT
         HEJk9nGiF0elfiM+avXgcEcv5DT3UPL4ICzfgf5hdWQoSBGmLZJ2kwpZ6Ls1n5aqPOLM
         t+g4+uLYTsT/Yfi3ATnsXgabOFqrwWg+aXj6hfZ1OsIgI66+MN/HqBrujrhkXzJTKoiZ
         5ZLW4QlqVECdqs8GcfLzs1LiFQBoiuoWOeu+vRMVkZFxDNgtc04j0ZFYchfRThOwQSK/
         6KNYHfrTaaJnKFqvhNobW+9xrj+QwsZYFyqj8EYMC3qUQJIh7rMsbQT57KQntxJBPbfh
         BmQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BtaWeGJ7RlZQKxxk24v22033B7jAi2rVzBaCy+0SycU=;
        b=PnBc6SSCwIEjsF9W01IBX3fFD8Ljb+O77y9hcJYyZYFJ+XLuOTF1UTsecjpIS+WfYi
         xuG6ZJck+p/PPfrmOa9fLv6sCiy/Sguy9QJ3Htj++7gUfleDCyQ90/r4LQn8E/2x6kP3
         6kg5cbpcduZA4OuzhMDJATARexzSVGP6FXFUk8PYv74GutLztAfp1kwHrw4rM2KJ0EvU
         TQw8z+iaNIoug+P/Hz2Hvw/+Xx4SBIzovJ7AE92NlLQuPU1bavQedxfRmYZChMBpCfNT
         btB6opN+aDGLoEyUCBz13TVVEhjjjL/EhFybcivPN6YNkeJ149ax0m931Egz5m9dud98
         48Pw==
X-Gm-Message-State: AOAM531Eym1jqhccvjnANXgArJb33vrcqXICisC/6IAMJ45Kg4or75v8
	0SG3KGe5uXJNRx92yLY/fsRdDHU0D1bD7f5eQGU=
X-Google-Smtp-Source: ABdhPJznWDIBiRABnFpw+9A/YjvhIMy0EpVcB9GV+vs4GQ6mWvRFa0ea0lbTWYsAzxHv1bHok+RAlFR9AibBuPG9u+E=
X-Received: by 2002:a0c:e783:: with SMTP id x3mr7891752qvn.114.1599067959907;
 Wed, 02 Sep 2020 10:32:39 -0700 (PDT)
MIME-Version: 1.0
References: <9QZb.1599045228761498654.9opf@lists.yoctoproject.org> <CAAfyv37uHzbqhCCV0tKCbKp4AfOm6VLGFQ0WRYV-vOiueOZ7tg@mail.gmail.com>
In-Reply-To: <CAAfyv37uHzbqhCCV0tKCbKp4AfOm6VLGFQ0WRYV-vOiueOZ7tg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 2 Sep 2020 10:32:13 -0700
Message-ID: <CAMKF1somZ-N0nEGxbixbF6oDD4P2F=ez8MHS4wdUu8uN4Djohg@mail.gmail.com>
Subject: Re: [yocto] How to integrate kernel-module in yocto-dunfell? #yocto #dunfell #apt #tx2 #kernel
To: Marek Belisko <marek.belisko@gmail.com>
Cc: kilian.brandt@tu-dresden.de, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 2, 2020 at 4:32 AM Marek Belisko <marek.belisko@gmail.com> wrot=
e:
>
> On Wed, Sep 2, 2020 at 1:13 PM <kilian.brandt@tu-dresden.de> wrote:
> >
> > Hey community,
> >
> > I'm trying to use this library [can-isotp][1] on a Jetson TX2 Board. T=
he version of the running OS is: 0.0.8 (dunfell).
> >
> > From the docs of the library I get the following instructions:
> >
> > ```
> >
> > DOWNLOAD and BUILD
> >
> > 1. Download repository and enter the repositories root directory
> >
> >       git clone https://github.com/hartkopp/can-isotp.git
> >
> >       cd can-isotp
> >
> > 2. Build ISO-TP kernel module
> >
> >    Ensure build dependencies are installed. E.g. for Debian (or Ubuntu=
):
> >
> >       sudo apt-get install build-essential linux-headers-$(uname -r)
> >
> >    To build:
> >
> >       (you need to be in the repositories root path)
> >
> >       make
> >
> >    To install (optional):
> >
> >       sudo make modules_install
> >
> >
> > 3. When the PF_CAN core module is loaded ('modprobe can') the ISO-TP m=
odule
> >    can be loaded into the kernel with
> >
> >        insmod ./net/can/can-isotp.ko
> >
> >    When the can-isotp.ko module has been installed into the Linux Kern=
els
> >    modules directory (e.g. with 'make modules_install') the module sho=
uld
> >    load automatically when opening a CAN_ISOTP socket.
> >
> > ```
> >
> > I have some questions about that procedure. Can anybody give me an hin=
t on how to install this module? Do I have to create a completly new yocto =
image or is there any way to install kernel modules afterwards? I tried to =
copy the folder onto the TX2 and install it by hand, but (as to be expected=
) the make command is not found.
> PLease take a look at :
> https://www.yoctoproject.org/docs/2.6/kernel-dev/kernel-dev.html#working=
-with-out-of-tree-modules
> where it is described how to compile out of tree modules.
> >

in this case you might be lucky we already have recipe
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extend=
ed/socketcan/can-isotp_git.bb?h=3Dmaster
its blacklisted because it needs work to fix build on 5.2+ kernel

> > I would really appreciate any help ! Best regards,
> >
> >
> >   [1]: https://github.com/hartkopp/can-isotp
> >
>
> marek
>=20
