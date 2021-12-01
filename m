Return-Path: <schnitzeltony@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20CE9C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 21:25:45 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.3055.1638393943763762193
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 13:25:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jaPb8XlI;
 spf=pass (domain: gmail.com, ip: 209.85.210.179,
 mailfrom: schnitzeltony@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id n85so25878457pfd.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 13:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0db17Tn3Rz9mlMa0dFIxAJl170Jv07N5z5MhCEb9FtQ=;
        b=jaPb8XlIgG3F/fx7QLSxqgSYGWsIeDByZdWjer/xXNgBzDkVxeQwELXiVFUc4L3xJI
         UEcyjjpJBBSIG5XmjiIXwOdnSbloA9j1fSxNaOXEjw1YjFsbKtwLBD44EUrtzgqqgR6d
         ZHhSM3yVEBG6/ekthUHD8ynufVosaByIScOsqonAIrCPtQC8dehJQVuzz7dzM/xxHjfd
         qXTz71A2OwQGpBziu86GoAVdtqQXX41n35vUs/Pt2kVHE4mH2/Fb3zvJQf/TG5oT7nXI
         HqDvrqb5vf7+WS5Ia3l8vQvidvc2YqQc4fNrExXvL+XeQMmmfigZpvToE2M3Rl0o1bcg
         Sk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0db17Tn3Rz9mlMa0dFIxAJl170Jv07N5z5MhCEb9FtQ=;
        b=ItmxSnd+kBTs9b63o0nChu2ktfqY8U3iBbujBQQbsGCd3RmypOfysBLLVHxHGjiSHr
         U90BjKPOLSygpVI8FVaLt8A6ENZxZkxlBQ4l6Vwn70eEpanVjR9+vH20jPe8IaP+WlcS
         aqirKdzskyeOl+dUEurn5UbZOPYvkNiScpzkOSgFMHZCU4nbRM1ZmfW8P1YRcHHGt24D
         F5kj6FC30abrc2TE3xP3sDbJV6aVV+ujgWkgzZiCso0WBOOQfl0LoWJICAw+gF1AABwS
         VrpgTFMaoO6FvkztnrG9snMOyJ2Hg0UsfgzSwPABwUw5/mc/J5iKgQmoH4tFef51/reg
         EHEg==
X-Gm-Message-State: AOAM532wqY5bHQJ1Kaa+cORv44BgaliQvQ0P1JO00swIgCluN+PyQcaT
	gorcA07zZp7IVB/LkNkkWC0jauS19lzoLIhN62Q=
X-Google-Smtp-Source: 
 ABdhPJyynSsYZs/gD/Hpso8MUCUMdLi/qGTiLsbvTkZpPAP4mFZSYvedDe0sbUl+NlcSKh8WwCwqQqtghbuqwdRbue0=
X-Received: by 2002:a63:8ac1:: with SMTP id
 y184mr6433664pgd.523.1638393943239;
 Wed, 01 Dec 2021 13:25:43 -0800 (PST)
MIME-Version: 1.0
References: 
 <CALbNGRSHUSdJMr3ZEVFO9NoktSspSJLdkuE3yTbr32+WErEEhQ@mail.gmail.com>
 <CAOSpxdYyoSafAe+fhCsQJnpshpYCbZYd19AEGBJNM0TLsTxsbg@mail.gmail.com>
 <CALbNGRSw2Ax2hFzi2nb9SzOqzEoGv4R-GrqJKgEjomFgwtezNA@mail.gmail.com>
 <CADfgfobQG34iV3-SzytS6XbDiFdQxdz4JF3M9T9wAG57yAHM5w@mail.gmail.com>
In-Reply-To: 
 <CADfgfobQG34iV3-SzytS6XbDiFdQxdz4JF3M9T9wAG57yAHM5w@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 1 Dec 2021 22:25:31 +0100
Message-ID: 
 <CALbNGRT+wzT_tvFB+eX2e+4yjki9dWzswRug3WDxjOK6yZ98qg@mail.gmail.com>
Subject: Re: [yocto] downloads.yoctoproject.org down?
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Steve Sakoman <steve@sakoman.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 21:25:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55464

On Wed, Dec 1, 2021 at 10:00 PM Michael Halstead
<mhalstead@linuxfoundation.org> wrote:
>
> downloads.yoctoproject.org is back online with additional redundancy.
>
> The cause of the outage will take some time to investigate as the drive with the logs is not accessible currently.
Yes download worked for me. You saved my life for today :)

Thanks

Andreas

