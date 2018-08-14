Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C46B5E0049F; Tue, 14 Aug 2018 09:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55275E0049F
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 09:09:15 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id z8-v6so21676989qto.9
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 09:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rbxYDKWO4VpPak80nX6om80YAd10Ix7RoF+R1s24MS0=;
	b=gzJkhRnPAak7EXWgHcsrHxLAcfgoHWd+gprWncOW3wHSQS+1ghSYRdgnibNyz7q80Y
	YArb6IxbMDeHbbxZScxHJjeYyopFmR5LAqn/qWrRnOjIrDbW1RRICkW6zdIlx8G8yY0O
	VjnTZ9wn5Izn5eJjfYBY30HwOw5BRxl23ub7wgVp0C0a+ecCYjMqmmnv8zGBZbE5HV0f
	TcIoECGaU6LDToHQvGHeACJphEjj6M5ZNjTuaApDO2ebJkpyZuVstccX4wK9BYM6lENQ
	uSdroQSMNxCGKLTGm6Ni3j2A6JW0cTEUPGzaPmkSALRID6tmeW01Z/YKMTcRMpbm/+/w
	8Kfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rbxYDKWO4VpPak80nX6om80YAd10Ix7RoF+R1s24MS0=;
	b=inWBpgEPD5HMKywMMduUDHpX2JcBg8WLh+PlYfPsBOeP4lwb2c3P9VaoApeC5WDJf4
	ENi1MxhHVrEOr45ZlDI5CWb+NkKCY/VQ+Thz8JXj3g5HgL/fpQeJJyTAnVlTTgrjyF7k
	Z42fM/eynQHilsktTwVvnXdl4IHZFouuSehhwMQ0k7J8UnMguNnHtAkTlt3whCEuz+nK
	Ji97L3VpY7HL/etnq4scrm6UXMfyBgVZFLcQYPBPQCj21cR7bKe3h80U0u2KBGw/+G/+
	dLy84VUiWYhCrVy5JduEiAleXZh91WkNTQPFjGyKB3s2/vsFIzmvI/U55rdqjUlACIBS
	CrHA==
X-Gm-Message-State: AOUpUlEMKmmPT0FqPst2Tr9xK4KKP6hx05anjkxfqMREg/+buIa2E8O/
	DpkOxzI6a2Kf+ewZS7o7RfJxMjTJHX5N6GQIjRU=
X-Google-Smtp-Source: AA+uWPzTD81hMqw/Nbq8Ok0+k4TZR5MgwblBmcfF5hw93aWCTMqhVVd3B9p/PyxOCkr4GxUcb7dhlX9IBuI++MoXvvM=
X-Received: by 2002:ac8:25f1:: with SMTP id
	f46-v6mr22573771qtf.20.1534262954405; 
	Tue, 14 Aug 2018 09:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
	<CAJTo0LZdRG+McpEEvmwxdsQRtX-UF7V3DySuOCyH+15SzsEDew@mail.gmail.com>
	<CAPybu_2rqfLYQFN33tnytvaiUz-UCnw-x4u5Z+4wUgjtRDJ2Hg@mail.gmail.com>
	<77d0ac5b-d5ec-4a7e-2b4c-f1880ffcd4c8@iseg-hv.de>
	<CAPybu_0Buce9dVoFCMMtauM+Q1Vv8zS7raEN0eG6iQ9a7oFS6w@mail.gmail.com>
In-Reply-To: <CAPybu_0Buce9dVoFCMMtauM+Q1Vv8zS7raEN0eG6iQ9a7oFS6w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Aug 2018 09:08:47 -0700
Message-ID: <CAMKF1sqJF=U7FiVh303_mktbqTwxqqdkUiv0QXccDuLWVtf0GA@mail.gmail.com>
To: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: custom splash screen using psplash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2018 16:09:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 14, 2018 at 3:16 AM Ricardo Ribalda Delgado
<ricardo.ribalda@gmail.com> wrote:
>
> Hello Rajesh
>
> On Tue, Aug 14, 2018 at 11:01 AM Yuvarajesh Valleru <yv@iseg-hv.de> wrote:
> >
> > Hi Ricardo,
> >
> > We already use systemd, but didn't use psplash before (so you had the
> > pure console messages on screen).
> >
> > We didn't think about progress bar so far, but maybe it would be nice.
> >
> > Can you think about a way to use a progress bar with a custom picture?
>
> In our case systemd boots so fast that there is no point for a progress bar.
> And image on grub is enough to satisfy the impatient clients ;)
>
> If you find out a good solution with systemd and progressbar please share it
>

you can use dietsplash or plymouth

