Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD519C433FE
	for <webhook@archiver.kernel.org>; Thu, 29 Sep 2022 14:17:16 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web11.10939.1664461028423000236
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:17:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=ImB4P0L8;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.170,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f170.google.com with SMTP id w2so823529qtv.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 07:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=thQwQM4L8ADlHQ7MX2XSyj02Nyt6Sg3nYBh183xZ0sc=;
        b=ImB4P0L8yiJ7Bw9a3FfXJov9GP8+mOkkBUNM0ihCDutKZfD8NlAhSrU4jhmnFWIc5Q
         6wYNnHCqzsz1sw9fFk/JMUcStKPgEGweqqY+kJDVjEqxQ1vFGgG4NsDBkgybB6WpO046
         6jgeH4Hl6IzLDenYbKhinyKaDPqDanIbPrT0yA35K1iddls4fgjJiiSXsM6r4gEaxb7J
         cHr3INccRTwsavK7ML/i05HwDfUOlsKdXz2SCO7wmUeNQTgbvzWAcz2R8U2xiJOi33ku
         a/BNd1M6LFU9UJvBHVbCAPJgzEh7hBb+OVeKzlad6AXticFqQcQlDg1aWfYmg6HH+Yp+
         +Eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=thQwQM4L8ADlHQ7MX2XSyj02Nyt6Sg3nYBh183xZ0sc=;
        b=3kVukA66XOmJjHj5/U7PY/rP+IaRnAq84LoH4yyGA4eIrkMtDbqm53hP6HDAJaDA/b
         vHdDqtBQ5EhpeNqGfJZsJesINJG1EYR/EdaSfiadOVZAeKic4waFa2SwjnpU+SxiTqFL
         n3VYazpzjj5q+lK7l1Te2oxTTKvU4CduxsMkHphJdakN5r68B6YEM8LQVN9uQzzRnC1D
         gAa0isGsmtWrxIZJmDXwyh9Ven21fCQFY9yn7jzl0/BrGfCX+KuQ6xI40N/Tg06/Fal0
         DuQCS+uIWFP0qJVaFr/QHGwZg1YK3VZhZsSWqD1ouzPjsA+NIWoFKT07zjavU9ubXpWb
         Q6ow==
X-Gm-Message-State: ACrzQf0SrQbD48nNWyd4kAywdKbIpkRN4dLeCY5Qx2GkXtPdTEqaLZbN
	l+ssBHRFTaAYIk86EzPmmwT3XA==
X-Google-Smtp-Source: 
 AMsMyM4thi1Ia14V+Js+lsJOXkNFw7pts2H8eOMaxpVUasn0wq0n4+NN0eklY+GjuwAz1fWc3zuYJQ==
X-Received: by 2002:ac8:59cd:0:b0:35c:e1f8:3382 with SMTP id
 f13-20020ac859cd000000b0035ce1f83382mr2579724qtf.304.1664461027188;
        Thu, 29 Sep 2022 07:17:07 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id
 dm12-20020a05620a1d4c00b006ceda7a9283sm6696552qkb.48.2022.09.29.07.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 07:17:06 -0700 (PDT)
Date: Thu, 29 Sep 2022 10:17:04 -0400
From: Jon Mason <jdmason@kudzu.us>
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-zephyr] new qemu version breaking qemu-cortex-a53
Message-ID: <YzWo4OqzC6TlN6dv@kudzu.us>
References: 
 <CAPoiz9wdF=-sq8+QFyosW-KTbsLQiYmYXG=W=TaYS=1bWi4wiQ@mail.gmail.com>
 <CO1PR11MB5026A9584F6C99277F25D636C4559@CO1PR11MB5026.namprd11.prod.outlook.com>
 <CAPoiz9yJRb-SNvjU30OaYhD7A9x6_NuJhGEUkkJiXZVimWCTXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <CAPoiz9yJRb-SNvjU30OaYhD7A9x6_NuJhGEUkkJiXZVimWCTXA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Sep 2022 14:17:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58214

On Tue, Sep 27, 2022 at 02:51:41PM -0400, Jon Mason wrote:
> On Tue, Sep 27, 2022 at 5:55 AM Saini, Naveen Kumar
> <naveen.kumar.saini@intel.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > > Behalf Of Jon Mason
> > > Sent: Tuesday, September 27, 2022 3:11 AM
> > > To: yocto@lists.yoctoproject.org
> > > Cc: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> > > Subject: [yocto] [meta-zephyr] new qemu version breaking qemu-cortex-
> > > a53
> > >
> > > The recently updated version of qemu (v7.1) is causing qemu-cortex-a53
> > > tests to fail.  See
> > > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3082086509
> > >
> > > I was able to bisect the issue to that commit.  I'm not certain of the cause
> > > beyond that, but other issues are being seen with the new qemu and meta-
> > > arm.  Let me know if you want me to open a bug.
> >
> > Yes, Jon, please open bug for this machine configuration.
> 
> Bug opened, https://bugzilla.yoctoproject.org/show_bug.cgi?id=14919

FYI, issue has been resolved upstream

> 
> >
> > >
> > > Thanks,
> > > Jon
> 

