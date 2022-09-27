Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6A5C6FA86
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 18:51:55 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.15007.1664304714086449154
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 11:51:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=EhMxoGYV;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.221.49,
 mailfrom: jdmason@kudzu.us)
Received: by mail-wr1-f49.google.com with SMTP id m4so2063377wrr.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 11:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=789B3Y1SivtMEw3LEni0NY6id4NV0cl7eq4bgFB65Bc=;
        b=EhMxoGYVN+IOo3RSN3ltItIe9A9oC9PcuM+7AMnscjDjqvYAKaB1BdgNuAJITuZFy/
         CZ8YQ6Hnt+Qm8WSYFaUCsmy0FLFdAPZbzUUYIGXSgEYpy6ktcCs8m1ZHfXFyORJp3WAP
         aCosNN8cjRRkCfNiBVyrPnPCEMX6Vc2+zB/XgZIOciFrGd4BhTZ14Jr0AnvAuMY1TLKE
         k52i6ENyJ9N+nyRH5bwpjcJAyvIHE0ZWl1AIV0U9cooM83Uk+osaNGZ8tzcrhr8zvZNJ
         KSqJxX8Fk0R/cO+6UCfY6yMPuR5WjGRQLXI/wMjx93rB1DFsLTVTISJDpdpuB9U2LoV2
         DdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=789B3Y1SivtMEw3LEni0NY6id4NV0cl7eq4bgFB65Bc=;
        b=g5tDPTv5PIFOGzjdTb2mi0nbjDq3H6EU0ZYhDvcOxZzugSzR4OPtWKC6AZuY8WHRft
         uQN6eAhQQlIdUYYmqMRkUXKgqj3JdCLyrEtIAiH05HMpGDSpQAXWl2m1XYP9H8eJmGzo
         R2HOw1YJzjHRU9CO1A8XRq3/J3GXZ+l9KD45NJFF39zqvahsMq86sUGuKmd9nd/zHt+v
         +APki2Z9CRL6PkiWFFArmFcTZ65ANFYB0Sq5hy6tzj2H2IIVPYO+ozaSJi4o7kxSUcTC
         aIkD/QPOBf/Ie68or5DojTVVXPy2/WIyVXv/IPl+bMyEO25Q0VQY4Z1OJ3pdp8edpJFE
         xSDQ==
X-Gm-Message-State: ACrzQf2kdPCYCI2UFQeBo2thfrV8jGV0u8wrLv5eTnr+uTPQWApazR5M
	HRn+r9e5fUxd8DQSva/MU1t4X0ZYJAMYrdI0IymRbQ==
X-Google-Smtp-Source: 
 AMsMyM5zi6VZ8v8GrGg8VtE4My0LBhD96h5zov8qsv+B4kZXNyuhYwWlL8RiRwzaQCuXlx7qjAOgsJno0BiK9KHtpSc=
X-Received: by 2002:a5d:5089:0:b0:229:3151:2865 with SMTP id
 a9-20020a5d5089000000b0022931512865mr17415043wrt.81.1664304712279; Tue, 27
 Sep 2022 11:51:52 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAPoiz9wdF=-sq8+QFyosW-KTbsLQiYmYXG=W=TaYS=1bWi4wiQ@mail.gmail.com>
 <CO1PR11MB5026A9584F6C99277F25D636C4559@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: 
 <CO1PR11MB5026A9584F6C99277F25D636C4559@CO1PR11MB5026.namprd11.prod.outlook.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 27 Sep 2022 14:51:41 -0400
Message-ID: 
 <CAPoiz9yJRb-SNvjU30OaYhD7A9x6_NuJhGEUkkJiXZVimWCTXA@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr] new qemu version breaking qemu-cortex-a53
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 18:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58188

On Tue, Sep 27, 2022 at 5:55 AM Saini, Naveen Kumar
<naveen.kumar.saini@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Jon Mason
> > Sent: Tuesday, September 27, 2022 3:11 AM
> > To: yocto@lists.yoctoproject.org
> > Cc: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
> > Subject: [yocto] [meta-zephyr] new qemu version breaking qemu-cortex-
> > a53
> >
> > The recently updated version of qemu (v7.1) is causing qemu-cortex-a53
> > tests to fail.  See
> > https://gitlab.com/jonmason00/meta-zephyr/-/jobs/3082086509
> >
> > I was able to bisect the issue to that commit.  I'm not certain of the cause
> > beyond that, but other issues are being seen with the new qemu and meta-
> > arm.  Let me know if you want me to open a bug.
>
> Yes, Jon, please open bug for this machine configuration.

Bug opened, https://bugzilla.yoctoproject.org/show_bug.cgi?id=14919

>
> >
> > Thanks,
> > Jon

