Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.7950.1605289907127870608
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 09:51:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=S8niGBh/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id p22so9045185wmg.3
        for <yocto@lists.yoctoproject.org>; Fri, 13 Nov 2020 09:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=4nOSIQ3x8qn3fbxZ/wIaOP5jf0QnZQV+vtuSB4qLL2s=;
        b=S8niGBh/XTfcafLTyTcRPsJAdgeo8lrlW3dIHXxECfT9qu14udTsWm9u+kf983RRqD
         OQ3bgh9n3wx/+jtvDVc13a58MTExjeWJkd7wfBYPdcfkiF9Whm1WIHpRKTgRl/nO31ZJ
         k/jQJUvjWfhKqtXb41hiYfgXve9wBXJspJRL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=4nOSIQ3x8qn3fbxZ/wIaOP5jf0QnZQV+vtuSB4qLL2s=;
        b=AYNNo8erpSFtCimh4iaCm13RKt5449VOKxJARFNvK4JBOcqwGbTGUQ6vYfZbDvU2d0
         /6mV4CnYcRAsAi8rGRUJdIolu+82ZK7MjbnPTn1zy/yPMxV5qSkm/iSUza8dXeFeZE/I
         AY6W3ihfose5+WO4HZZVwrxyAMelw6auonfHEJ0rDRU4qKOAIPa1+mqvEpPh2oENY7ZB
         VLp7EBQ779cCosL/bRwQ9edUCEM3WmtnK1AFLbtqp5WWH7vteFtcE3mUpfJsTyRHmpQF
         P/iYFE37PikQPahr9TePNu/2Pe8Ez7pRE5ZMwhwF+FOf119C+Ubzq8HZ/qUOi7MJYETM
         YwXg==
X-Gm-Message-State: AOAM533J8qLZbXxltTkNuBMS7mwtGLwJcQi/ZTEMMuEan97y141Ynvwl
	KASpKewIUwdFZzraIH3iwyD7rg==
X-Google-Smtp-Source: ABdhPJwX/hMlyND+sDjfvnIfr9INPjEs2eRTErtSr7jPkdhMGvoeBa1L7nP1KQsi56q+bXLZpK0N6Q==
X-Received: by 2002:a1c:e006:: with SMTP id x6mr3757114wmg.107.1605289903319;
        Fri, 13 Nov 2020 09:51:43 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (e.3.a.b.8.4.f.3.4.e.5.7.b.c.8.4.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:48cb:75e4:3f48:ba3e])
        by smtp.gmail.com with ESMTPSA id p10sm12235486wre.2.2020.11.13.09.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 09:51:42 -0800 (PST)
Message-ID: <6de317826cd5a4a944b4d08fd78688a6675b7dde.camel@linuxfoundation.org>
Subject: Re: [yocto] Reproducible builds and RPM packages
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Jate Sujjavanich <jatedev@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 13 Nov 2020 17:51:40 +0000
In-Reply-To: <27035.1605224608148078000@lists.yoctoproject.org>
References: <78CCF97C-A2F1-4755-AFCC-726ED8400D3B@iki.fi>
	 <27035.1605224608148078000@lists.yoctoproject.org>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-11-12 at 15:43 -0800, Jate Sujjavanich wrote:
> I have sussed out several behaviors of the image build having to do
> with reproducible builds. It seems like bitbake creates the rpm with
> the correct modification times per the reproducible_builds bbclass.
> When do_rootfs installs the packages, the timestamps seem correct.
> 
> The function reproducible_final_image_task sets all files in rootfs
> to be REPRODUCIBLE_TIMESTAMP_ROOTFS which is the last commit time in
> poky by default. This occurs after package installation and before
> image creation.
> 
> When the image creation code runs, it seems like each utility has
> different behavior on respecting SOURCE_DATE_EPOCH in the
> environment. The ext3 utility allowed mtime's beyond the default
> value of 0. The squashfs utility enforced the restriction of no
> mtime's being beyond 0 seconds since the epoch. Once I set this to
> the build timestamp (DATETIME) in the image recipe, the squashfs
> image had correct times.
> 
> So to get this working, you'd need to disable
> reproducible_final_image_task, and make sure the image creation
> utility is not wiping out the modification times of files created by
> rpm.
> 
> I'd argue that we'd want reproducible_final_image_task to not
> override all the mtime's of files. We probably have to check the
> other file system type to see their behavior with SOURCE_DATE_EPOCH
> as well.

Thanks for mentioning that, it does sound like that is doing something
we no longer should be doing now source_date_epoch is working in most
packages properly.

There are some files such as the rpm database and any other files not
under control of package management which would need this handling to
have the images be 100% reproducible so its not entirely
straightforward though.

Cheers,

Richard

