Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web11.14821.1584538182558955653
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 06:29:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=KtPr7Dgx;
 spf=pass (domain: konsulko.com, ip: 209.85.210.67, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f67.google.com with SMTP id 39so10047292otu.3
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 06:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HMP0qiIXL2CcHuEMqFyEjl5pJyZsHUhalZDxCLt//0k=;
        b=KtPr7Dgx/oxsTbYyHTQ92BZCDVbajxmRaSTs3nDFfIL1AgWPZgbS9Q6CKSU4HvDl01
         T/l4uC5Nl9XZ49i1zolphEOShzIA79GE1njfHY2tKNOED33xrK6dugYCp36EhfatQXcO
         I2Wlk9nm/UsKUEJrKYiIvKeRR1A5bwQVGR8wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HMP0qiIXL2CcHuEMqFyEjl5pJyZsHUhalZDxCLt//0k=;
        b=UoEzdpBw6ePYwgpnoRtqkxh79hfhqAElstDssnBVw9vwRO3lcFlgam4ut7q2ROWThw
         MUUpxQXSlmlhrS8kyWfLjks+3jfzvjviea4brhIuJOFPYLJkKZgxSfV9Qg2+0S4H1gDk
         doc46XvcxfKDnco6KspxXVCaZkMj9uf6v3OYuBucYauHc/FUGNM5VNvNidbls9JVJy16
         punADLXO/LchtHnZj7qkaXJKo3hWouFOeqbp+2LdHbcFJ+beWbPCavjmHsFO+zt4VBpM
         KN1dR3yxADhzU1QZwrr81j5qGMiN1blJ0DibniV5+w4AucN567Qe6uU+TvwOeBzGD8Qw
         U+PQ==
X-Gm-Message-State: ANhLgQ1rGdcP95ykMlfEYFOG/Kai9bXT8LRnluqDGdkx6t8lDYynmjA3
	efGdbgE3bkAdzjVujIlYGDC4OMdJhrwJ48SOMfvh4w==
X-Google-Smtp-Source: ADFU+vvC/jJRpZhvwYTvNaxEBoSmD+TDzc5wh24Ir8rREF1Rr5en3s+Av361FBMbfe93pGReX3lLc7Xe8WP/uhUQ55s=
X-Received: by 2002:a9d:7698:: with SMTP id j24mr3913283otl.370.1584538181875;
 Wed, 18 Mar 2020 06:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org> <20200318130126.GK104502@korppu>
In-Reply-To: <20200318130126.GK104502@korppu>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 18 Mar 2020 13:29:30 +0000
Message-ID: <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Mikko Rapeli <mikko.rapeli@bmw.de>
Cc: oliver.westermann@cognex.com, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 18 Mar 2020 at 13:01, Mikko Rapeli <mikko.rapeli@bmw.de> wrote:
>
> On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
> > Hey,
> >
> > We're currently using a VM on Windows and it's a lot slower than the native linux build (which is expected).
> > We're looking into getting a dedicated build server for our team (basically a self-build tower PC). Any suggestions what to put in that build to get the most out of it?
> >
> > Currently we're looking at a big Ryzen, 64G of RAM and one or multiple SSDs on a "consumer grade" board like the X570.
>
> Drop all virtualization and go for Linux on bare metal. Then make sure there
> is enough(tm) physical RAM for each CPU thread. For a "big Ryzen" the 64G of RAM sounds
> too little. I'd go higher there, but it all depends what kind of project
> is being compiled.
>
> I would also setup CPU, RAM, disk IO and network IO monitoring on the build machines
> and review and monitor the build times and results when the project evolves. There are
> times when most CPUs will be idling and there will be times when IO to disk is
> happening even when RAM is available. Linux kernel can be tuned to avoid disk IO if
> RAM is still available for example.

What Mikko said is excellent advice.

I'd recommend NVMe drives if you can. My build machine has two large
M.2 NVMe drives, one is used for the working directory and the other
for sstate, downloads and source checkouts to make the best use of the
available bandwidth. I find that XFS is a better fit than ext4 when
you've got fast drives and highly parallel I/O workloads.

Make sure you spread your RAM across the different memory channels on
your motherboard as this increases memory bandwidth - this usually
means either filling your RAM slots or half-filling them with RAM in
every 2nd slot but you'll need to check the motherboard manual to
confirm the channel layout.

Let me know if you need a detailed review of your proposed setup.

Thanks,
Paul
