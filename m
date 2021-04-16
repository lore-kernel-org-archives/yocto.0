Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web08.6452.1618563956195790915
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Apr 2021 02:05:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BU6ObwKY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id s7so25842055wru.6
        for <yocto@lists.yoctoproject.org>; Fri, 16 Apr 2021 02:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=1O0J4eNmCxgEVFCaLI3qAD2qoISQHJfj2S5+4x6Y3C4=;
        b=BU6ObwKYLscYZb9rEgcBHHaUbmn/Bi0YpJx5sei3o5MLnfNO5/KNPrceXr26Eay67M
         03kaMedq3q0hZwbSwS60CEiWq4y8cQz0BQxKxp1HuPKauh9Du+FcmXYppcSHttGCNPAF
         8AkFdsKs/SayO8PKP+ao+3OFysyg3Qm4osKbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=1O0J4eNmCxgEVFCaLI3qAD2qoISQHJfj2S5+4x6Y3C4=;
        b=AOGCqtuJ7cmPEGISwK1tON9OdSkSZ5b+xjavMM2LMGVpHiGjUl9gj2Ru6WBH/Jb/XX
         aYmENPo3VH5Pe0SUlJF2z1KOUXvwarS/2F9F5tgH0ViQ8bLJyf6KQOTMOVpMKdZX08+r
         +9JPpEPqDTcANqwGXn9Ga267YklCy+h15qVLtmVSxTVtyUrm60NSL4XEcW/c8mI/eJxs
         xIIPxmvd1cCFoE/9bdF2O8N4JCmPR5UR86mCCSO/YYvi3dcsbI6fDc4o7bu1xtpfwGUs
         edA8SF8pSMZjAEiPPZRr7g5QQiAwajBCYPL1j7ib1mIERldfaDbx+Aa3PsqRaj9NdDvs
         2RtQ==
X-Gm-Message-State: AOAM532Pk8Tng1kPeo712Rta56SQzSEe9hCofTElp2lH/dTIn/tR1tql
	pkeTklS/euUzIfqkHNvZfIaoQg==
X-Google-Smtp-Source: ABdhPJzdjG0nvV8cGN7AoHufjY7nvz6KIHDB//DPmstzKI4yuVBSu6LVfWTmvBzlQpV1ll8cf6g+yg==
X-Received: by 2002:adf:f150:: with SMTP id y16mr7811797wro.186.1618563954636;
        Fri, 16 Apr 2021 02:05:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:b9e0:fe1a:1091:177b? ([2001:8b0:aba:5f3c:b9e0:fe1a:1091:177b])
        by smtp.gmail.com with ESMTPSA id m17sm10420029wrq.63.2021.04.16.02.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 02:05:54 -0700 (PDT)
Message-ID: <af59671a31a8ffcdbdeefd60a47cc018f30a926d.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/4] config.json: collect data by default
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: sakib.sajal@windriver.com, yocto@lists.yoctoproject.org, Randy MacLeod
	 <randy.macleod@windriver.com>
Cc: Alejandro Hernandez Samaniego <alhe@linux.microsoft.com>
Date: Fri, 16 Apr 2021 10:05:53 +0100
In-Reply-To: <1676495329CC3E3C.31742@lists.yoctoproject.org>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
	 <20210413170210.72845-2-sakib.sajal@windriver.com>
	 <1676495329CC3E3C.31742@lists.yoctoproject.org>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-04-16 at 09:28 +0100, Richard Purdie via lists.yoctoproject.org wrote:
> On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
> > add the variables required to collect data to "defaults"
> > so that data is collected on all builds.
> > 
> > Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> > Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> > ---
> >  config.json | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/config.json b/config.json
> > index c43d231..cd82047 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -55,7 +55,10 @@
> >              "SDK_INCLUDE_TOOLCHAIN = '1'",
> >              "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
> >              "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
> > -            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'"
> > +            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
> > +            "BB_HEARTBEAT_EVENT = '10'",
> > +            "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
> > +            "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
> >          ]
> >      },
> >      "templates" : {
> 
> I merged 2-4 of this series, unfortunately this resulted in a few issues overnight:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/85/builds/1393
> 
> which is due to the non-executable script which there is a patch for, it just
> wasn't in master due to the release. I've fixed that by merging the patches.
> 
> The bigger issue is the performance metrics which this broke:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/91/builds/4427
> https://autobuilder.yoctoproject.org/typhoon/#/builders/92/builds/4453
> 
> We're going to need to disable these events on the performance metrics
> targets...

There is also another issue as BB_HEARTBEAT_EVENT defaults to 1, the change to 10 
changes the default timings for buildstats and other pieces of code. In particular
I suspect this is breaking:

https://autobuilder.yoctoproject.org/typhoon/#/builders/80/builds/1993

and again in:

https://autobuilder.yoctoproject.org/typhoon/#/builders/79/builds/2014

in the disk monitoring selftest...

Cheers,

Richard



