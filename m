Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web11.4413.1611616260115064514
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jan 2021 15:11:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+C4rc9u;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id d81so30075395iof.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Jan 2021 15:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nswr7Gvi8V+qPJQ5eibCW8RliR/nwQ3l821l+h9+UeY=;
        b=r+C4rc9u3UStcIboYpSmDFFSeWYHXdKu4HHDBdfA5/WhlFdnix6S3KZiRJ7o/m9SCo
         JEoUpV1UmTYJBAUyp+6PNa+g1x3FnyIeL5+GkvMk/XdEc4+0SHut5gbqCXIH9+2bNIuo
         JjVT/6eJOv8PeSOsq3WDEoigO8cCrMOkoveHhoTFYtNreJMscAUv6YA/iwrVzQ6m0Vap
         crO46bcoVg0J6ARk7fMcPN/3QiwPEFIDxW7UEw2RPQrz97EmvBm54b8Y8S183BqnRN9q
         1j9erjZAZx1QwagGDtpy4bwVin56cY7r+53fbkqyd4os60VOoghb5rRVK0F3NU1fch04
         Cnvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nswr7Gvi8V+qPJQ5eibCW8RliR/nwQ3l821l+h9+UeY=;
        b=XSYYaeSW80ti73Tsvi7kd5nhZd6EwBp9C/S48IV5pgI6f90TvQm96Pow8Oyu9duvTQ
         cat0rC1pPhBdGuWCqdDf7DQi+Qum0UkF5QxVxBnsbiCOuCIYo9u0vge5mvXT0NdClzI5
         6LexyGDFPy6MqVujXG/bMo+WQ6E0iqdeNXKJ/dTFl/YEefIa7QHhVbuyh5v+vtAEpl+j
         j0RTVBaE1pnXT/Uu3FycYQj21ZZmwADH76mpKADWjUc+aI/R5POxyNbjaz8ahkJP37GA
         HZNNefx5BBqZ1o87GRZW8hwzuPJrIubTgCQ3iqHMWd6BHS2OUfwRq76pES7LPJft94kI
         +uPQ==
X-Gm-Message-State: AOAM533hTx0AniZTTY2NF7tkkbt4mhiV5sJNWGl1C0L9yf3xwpaLIB85
	WiF4YX9N00nY14vFw9TTj80=
X-Google-Smtp-Source: ABdhPJzkT3iBMsuIXMqZrl4rwFuaWnO3oTG8isQAuo3oHLgWv/z2qxYvq9FAjarQtxAneUOac5wCRA==
X-Received: by 2002:a92:1f9b:: with SMTP id f27mr2380145ilf.190.1611616259573;
        Mon, 25 Jan 2021 15:10:59 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id t14sm11725139iof.23.2021.01.25.15.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 15:10:58 -0800 (PST)
Date: Mon, 25 Jan 2021 18:10:56 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] linux-yocto: Remove Rock Pi 4 patch for serial
Message-ID: <20210125231056.GA23113@localhost>
References: <20210123210525.20237-1-JPEWhacker@gmail.com>
 <20210125223438.GA20348@localhost>
 <798f685e-6961-92fb-18b1-0d120cac015a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <798f685e-6961-92fb-18b1-0d120cac015a@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Mon 2021-01-25 @ 04:42:35 PM, Joshua Watt wrote:
> 
> On 1/25/21 4:34 PM, Trevor Woerner wrote:
> > On Sat 2021-01-23 @ 03:05:25 PM, Joshua Watt wrote:
> > > Upstream OE Core has moved to Kernel 5.10 which fixed this problem, so
> > > remove the patch for 5.8
> > Thanks, I've already pushed a patch for this one.
> 
> Ya, I saw that. We should probably remove the .patch file also.

D'oh! Thanks.
