Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.132.1626205949235196659
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 12:52:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ItQc+kFQ;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id q190so22911586qkd.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 12:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PWu3DbeA5bk0Qg0A57T1k1sbP6XPTBwGv7ltr1WDwuw=;
        b=ItQc+kFQiXKa+FCerwYxEcbslaU1HGKN0hhLAUsXPdmQLaOWeI8vcWdKhgyqFRzlgr
         ZPFtDfZOWkNmzi2lTtY374b2QOtIqgZcYiP70bZlfnhMTBo+5sVso97N9v3LX9E0tqrM
         Vpoxal8XgKb2qoQe6TV5ZhOldMqpN6MVZftJEhNoX780NrLo8164P3F4tcqU7Ui0VDUX
         4AycIWRzW7/uGZMuR63ieFxSV73qPQyhPZU4f8bCBdZD2YUMVD4MvX5mzA/UNP1NZCto
         P9vOJAw4J3WawxIc6bRSpi3CNdHD8Xu4oObl3WBOErDczDsTvNLrJ4A02WvizLOhJl5i
         6K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PWu3DbeA5bk0Qg0A57T1k1sbP6XPTBwGv7ltr1WDwuw=;
        b=aB09Yk4TBhdcP764TGS0MiG0XW3WMwWhJEXxDHCGm62YZIo2BOguFdcuQPOpDq/OI+
         59Cz2HjRlc2mglU5TWNvD/4f2AB7Aw2KpHO2kY/+tOaiH/UvtGXzC7euBWcizAmwZH2G
         GWMueBIhpn9F2Bwwm8Gw93nRXeMIppV8FiGM9kxhAY1xYzzemCGPutpw+Bj7dNFv3tMw
         CqIzdpcW9r2fuAg9AvAeD+G5we0TzgVxyrFVYei+7KzMY+Y47VLGoatE2EFU5zE5Kjwx
         vVsvMy97X3ZY4CeUKvLsJ76R3ybMn1kHOKzNaU9yk4PTI6d+gGrf3AOc+mtILqfZGvYt
         4r1w==
X-Gm-Message-State: AOAM531zZw6IqHm79phDUvwGUWcOFeX9NuhvOUUkO7dEebRQmBqL+AG6
	cActeJOHyvpfyI7lbX94X15C6pe5mHbLQ7sCrxI=
X-Google-Smtp-Source: ABdhPJz/Fvxj+rUZufkgjUd7R6oyqpmcAxRs2NkhyX/lZdMq2YEvVOXVVM10OpNg/Y0afWxzzOpBQ7Vnhiv+eEu1cSs=
X-Received: by 2002:a37:58b:: with SMTP id 133mr5959992qkf.125.1626205948337;
 Tue, 13 Jul 2021 12:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <cd34.1626162159704093084.9UH1@lists.yoctoproject.org>
In-Reply-To: <cd34.1626162159704093084.9UH1@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 13 Jul 2021 12:52:02 -0700
Message-ID: <CAMKF1so2jA1ue9X=8==z=mVBN3e4MB3t6nm24M5cv5a=o5uQqQ@mail.gmail.com>
Subject: Re: [yocto] Per recipes simple smoke tests
To: Samuel Dolt <samuel.dolt@foxtron.ch>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Samuel

Please look at insane.bbclass and perhaps a new check can be added there ?

On Tue, Jul 13, 2021 at 12:42 AM Samuel Dolt <samuel.dolt@foxtron.ch> wrote:
>
> Hi everyone,
>
> I was asked to add some basic tests to an internal recipe in order to improve our CI system.
>
> The purpose would be to produce an error if some check doesn't pass like
> - a file is not present
> - the generated file is of size 0
> - the generated file is bigger than x bytes
>
> I'm thinking to add the functionality to a class, in order to be able to use these tests in more than one recipe. Something like that: https://gist.github.com/samdolt/cf1c557f73f4f2098a19ba7ad6bc092f
>
> Does something like that already exists? And if not, would it be useful to have this contributed upstream? Maybe as an addition to insane.bbclass?
>
> Cheers,
> Samuel
> 
>
