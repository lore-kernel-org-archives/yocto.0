Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.7848.1595286420174219443
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 16:07:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o3+/LUoC;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id k18so17512916qke.4
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jul 2020 16:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=kjFq4+xb7HUMCE04INpD6pmMyggTbs6WBxmgoo2QwtQ=;
        b=o3+/LUoC+oUvHn53yjpi4bMj+Fyqq09TG8bK4x7Jt+P7ajir7vY7O8Ca3Mg59q0H+R
         fsggZ5FOTgMFVES2XbbIoYm/Vytc8neMUClJ0XjQftLLiGVKz7KpjxOSGzlpE3r5Tl2I
         bZcWBDCVcIczofA+iqITzMU38U0lbPaooiECHKemcH+I5GK9dCJX1whpjUSHbdAv6Hru
         JnnS5jhA7Us9zm36u1cki9cyUvbE5GH2Rl/U3M1/l6yNRRwlLxgNM/p33B63CJXc2NGK
         m9/qIslFbEfApIVTE3yRoSmIfj71CL/Ho/9nYR4grVUMlDliP4L7vNSr3Gs6eguKIzF+
         04PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=kjFq4+xb7HUMCE04INpD6pmMyggTbs6WBxmgoo2QwtQ=;
        b=DYzniSHDKwc9mjhC2/LN+bMNLgCLyS2WYSkCytH6kPmqi4Z8t/8pxv86F2LvPnhyHc
         WyhGGryCsZgM28UTEAGTmc0LeJ+IidY4hnezy4SjR0l3UbtxIL4JYYVy86nfgvIOIBiI
         tN6qyLymlP6fCmuA/C5jb+/wGu8IrabgssihdeZ9ADBPO/e1kVbGa0hVYQiqhRJu/j+n
         tsKIYdLn+35gPNqVa/K8vBAQudZKPlZw2VsZaDGGOVuDbmGYbobsvwkVfmYwGaZ1g05f
         0iJoQYxViciFUTf0TtCahCvmvnxJYLLDBq6yySBTf/YUWi9q+m7TZl+LF9Yj4exrZPae
         WOkg==
X-Gm-Message-State: AOAM533QgD87bAjtAB4FZ9fYf0o03MIFkQ4huDp7XWhdIQUnuQlrt6j6
	gtDawTQzEOvTG4UHO0GtgP2/Kdbl
X-Google-Smtp-Source: ABdhPJybjl8/LBsTvexCLIaf5KoOHBf3xQ66T1rXdvzcRgtFaLHr+LKxbpsputf0SoAVoFtSxmhqZw==
X-Received: by 2002:a37:a09:: with SMTP id 9mr10961620qkk.290.1595286419401;
        Mon, 20 Jul 2020 16:06:59 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id w28sm847344qkw.92.2020.07.20.16.06.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 16:06:58 -0700 (PDT)
Date: Mon, 20 Jul 2020 19:06:56 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH][meta-rockchip] arm-none-eabi toolchain
Message-ID: <20200720230656.GA937@linux-uys3>
References: <20200720223426.17416-1-twoerner@gmail.com>
 <CAMKF1srHZV1yv+vE-STbPkBcSypaznqi8W-h0dT4Eb+NB5ORTw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srHZV1yv+vE-STbPkBcSypaznqi8W-h0dT4Eb+NB5ORTw@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon 2020-07-20 @ 03:50:16 PM, Khem Raj wrote:
> On Mon, Jul 20, 2020 at 3:34 PM Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > We now have a dependency on meta-arm/meta-arm in order to build tf-a (there's
> > no point carrying our own recipe when there's a common, consolidated one to
> > use in meta-arm).
> >
> > meta-arm/meta-arm now has a dependency on meta-arm/meta-arm-toolchain.
> > meta-arm-toolchain now also has a recipe for arm-none-eabi, so we might as
> > well use that too, and remove our own version.
> >
> 
> this also means you should add meta-arm-toolchain to layer dependencies.

Thanks… and I could do a better subject line as well.
