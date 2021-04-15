Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.9377.1618502133642473877
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 08:55:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=flCcNr9J;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id n4-20020a05600c4f84b029013151278decso1433212wmq.4
        for <yocto@lists.yoctoproject.org>; Thu, 15 Apr 2021 08:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=k/3fseBXAmw6ZqUpXMf69qTe6MvpkWk0k5Z6mLkti+o=;
        b=flCcNr9J5T9C7LYPAmOhYPPb3OMPejzCwzo1G6SN+uwxftf3VdqlCoC870KLcSjg62
         SiyFIUpu2W+h3NGIQpAvIl1zW+FasD40EYxTtGMOcT6KSJG0oVcJksMquzrNpkrxUV3n
         qd3T/q3DRkqDIhfCbtoK7PjSecgkHE/qrZHL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=k/3fseBXAmw6ZqUpXMf69qTe6MvpkWk0k5Z6mLkti+o=;
        b=rc7oXHqASs8q0tUiW16EWQHuxa9M0py8NMqaobL2oC6ERA5GlQDG1jCjEJkrl1dbCo
         hZPx3FAAxnA0ydoDrNxFS7r2CphGpNl3ilbDV3+U4E2OjTOEOsHVm+qsTLsDOSMrCj49
         y4xm/zNi4e/F80Cyetsuf4a4R1MZGUKSQcRbCz/g4BTijb/tKWeiWKqGPExnk/fN5pdW
         yE0UjPY8KJoO7aywt+0utiArM7BDF9ASEzCtnJBDUJTATY9yXVTD4ioMyTTA7Ec3L/os
         ldril7xbowOV5QO6jez8y5RO9EU5d6kS8pt0W4AjGi6XyEYcdBsI4FMh870UeuNPnh0U
         3zow==
X-Gm-Message-State: AOAM530fxRmTYYz0uaMpXQrYuDj3yVUMia/FC6aZ6ZlTwTEga1BkN8JS
	lY3nua9+i+ZfMe/zqQ/tT++5lw==
X-Google-Smtp-Source: ABdhPJzsKZ+MX9y+ifxSyUdWcBa+ehmlzgfc6hEZofNe4SGRxZKJ78jBOfHAHUqf9ieMQRRQ4MYO7Q==
X-Received: by 2002:a05:600c:4ed1:: with SMTP id g17mr3819556wmq.67.1618502132005;
        Thu, 15 Apr 2021 08:55:32 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:b9e0:fe1a:1091:177b? ([2001:8b0:aba:5f3c:b9e0:fe1a:1091:177b])
        by smtp.gmail.com with ESMTPSA id 186sm3363186wme.10.2021.04.15.08.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 08:55:31 -0700 (PDT)
Message-ID: <8bf4023fa65e6e8fe6b4267b8f19afda13d8eb4a.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Sakib Sajal <sakib.sajal@windriver.com>, yocto@lists.yoctoproject.org
Date: Thu, 15 Apr 2021 16:55:30 +0100
In-Reply-To: <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
	 <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
	 <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-04-15 at 11:31 -0400, Sakib Sajal wrote:
> On 2021-04-15 9:52 a.m., Richard Purdie wrote:
> > [Please note: This e-mail is from an EXTERNAL e-mail address]
> > 
> > On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
> > > collect-data template can run arbitrary commands/scripts
> > > on a regular basis and logs the output in a file.
> > > 
> > > See oe-core for more details:
> > >      edb7098e9e buildstats.bbclass: add functionality to collect build system stats
> > > 
> > > Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> > > Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> > > ---
> > >   config.json | 7 +++++++
> > >   1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/config.json b/config.json
> > > index 5bfa240..c43d231 100644
> > > --- a/config.json
> > > +++ b/config.json
> > > @@ -87,6 +87,13 @@
> > >                   "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
> > >               }
> > >           },
> > > +     "collect-data" : {
> > > +            "extravars" : [
> > > +                "BB_HEARTBEAT_EVENT = '10'",
> > > +                "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
> > > +                "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
> > > +            ]
> > > +        },
> > Is the template used anywhere? I can't remember if we support nesting templates in which
> > case this is useful, or not?
> > 
> > Cheers,
> > 
> > Richard
> 
> The template is not used anywhere, yet, the initial patchset enables the 
> data collection by default.
> 
> I have left the template in case the data collection is removed from 
> defaults and need to be used on a case by case basis.
> 
> I am not entirely sure if nesting templates work. I have not seen any 
> examples of it, neither did i try it myself. If nesting does work, the 
> template should be useful.

I had a quick look at the code and sadly, it doesn't appear I implemented 
nesting so this wouldn't be that useful as things stand.

Cheers,

Richard


