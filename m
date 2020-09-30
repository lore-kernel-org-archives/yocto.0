Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web12.10153.1601451495666389619
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 00:38:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o0ulgd+f;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id z25so771919iol.10
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 00:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/zglpKgRSxPE4cpACxoa+4NyxptEbJhlNkZNXKlRyQA=;
        b=o0ulgd+fr58fomaVZ4yW8Np6vuOzk8eRTOKUfgQTsZ888gXqIlQsqkC4MihDyqnn2Z
         JlIo5UCAZcmv11ltQziqmh9JY69reMSM+9tI5UDe11SMjlFUlW7ziJWLKBgRNHZ/1mb+
         S/SExoh5tq3kJY56lM68Uj9wKptlHA8fIRzWf5hAJkH7g1nzHZOgvd49jZwk7mqoAwJF
         niL+CySoOPSZnefM+mk1nPuwNv8lmNb7LXgdi6q0MYADEa5AyqVlF/M4RBrwkfIeUnQI
         tgQKHKitn6MhdZAi9Opn460NRPKyNuZhvbhCzw0HYhtyJ3g3jPdFQ0UhO+yX4Ga9ftZq
         5+Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/zglpKgRSxPE4cpACxoa+4NyxptEbJhlNkZNXKlRyQA=;
        b=UNi3mG/kClqt5u9XAmV4FzSeY0v31WHWCD5aoLjiF3wE/vhuT3W4QuGD1xCluT/RO4
         oijLT8DSM6mD0EZyeyP3j9XN7XnDYJSpHKlaPhz/SBAOqpJ0fmsFzj+h/jYR+4q4S9Nr
         oU7gDC177W9PU5F6RE/W6hlKE0y5DKL+k0Vxj2f6GrgDDfMkjhboctc/JrsTyYf2Zm3b
         HQFJMSMCSNNmO3gn605xQdHGck7W8DZptH67WTIWJdQAaeUsst/9ZBYNM3DGqnVn/xJ7
         a9YO4kBVeBmekNzESr/7hK8X44g9cZkQrslZt040tlTemaN11Xd1FtRKO+hkmJWtw25s
         SR9g==
X-Gm-Message-State: AOAM533R74YCiII5ivcunKVhBo1ylPBMdXFvlrTsO4GLLWdBQdYiNC2u
	c4DkOe8tOaiW1mhoUcSO+9WJ+iNCzM4G5DfdgLA=
X-Google-Smtp-Source: ABdhPJzGFXTQv5yedzNhHbFSDYNUhpHcESHLcnDXrayHJkJhkGzI/m3PSYZFMGgKOvmQzdp4kZfaS7Nb159BFP+SUfE=
X-Received: by 2002:a6b:650b:: with SMTP id z11mr848006iob.60.1601451494590;
 Wed, 30 Sep 2020 00:38:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200929155243.rheisspm7ouqfu5j@qschulz> <MADEUP.16394C4FC785B364.7275@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16394C4FC785B364.7275@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 30 Sep 2020 09:38:03 +0200
Message-ID: <CAGAf8LyKCpm7m9BCgA8wYiVUKVxpDo7cLpzDU-RkatHuCAx98Q@mail.gmail.com>
Subject: Re: [yocto] #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
To: steven.monsees@baesystems.com
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> Is there documentation on how to set this up ?

Please, try this:

https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-dunfell/local.conf

This is the systemd addendum in my BBB Dunfell local.conf :

## Add systemd service
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_dev_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = ""

With systemd added, you'll inherit timedatectl tool.

Best Regards,
Zoran
_______

On Tue, Sep 29, 2020 at 5:57 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=baesystems.com@lists.yoctoproject.org> wrote:
>
>
> Is there documentation on how to set this up ?
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On Behalf Of Quentin Schulz
> Sent: Tuesday, September 29, 2020 11:53 AM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
>
> *** WARNING ***
> EXTERNAL EMAIL -- This message originates from outside our organization.
>
>
> Hi Steve,
>
> On Tue, Sep 29, 2020 at 08:45:56AM -0700, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> > I currently have "ntpq" building and installing correctly...
> >
> > Can someone tell me what it takes to get the "timedatectl" command utility built into Yocto kernel image ?
> >
> > I see it referenced in both :
> >
> > openembedded-core/meta/recipes-core/systemd/systemd_234.bb:                ${bindir}/timedatectl \
> > poky/meta/recipes-core/systemd/systemd_234.bb:                ${bindir}/timedatectl \
> >
>
> It comes with systemd. Use it as your init system and then you'll have the command.
>
> Quentin
>
> 
>
