Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web09.7518.1620297801969379020
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 May 2021 03:43:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JNAbx/+N;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id z6so5079550wrm.4
        for <yocto@lists.yoctoproject.org>; Thu, 06 May 2021 03:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=IIff6XLlbn9oRmGWV3Qc0wvqVhZ0ZCmrzlhZSRBvzmE=;
        b=JNAbx/+NKWsLCfsAUrTvZV/49iSwQHtX8U2NZl0tc3xuWxYL+S4MXKUdQaLYWSbLV0
         hPT1KKg9yXURBuxLgcSBchRch73lheERkSO5JksM6vyLWR/7shVhhaWaIZPQu1uLJuww
         4B3Rlb43aUeusguyVOaQ68+iZdLZhxwWCdb20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=IIff6XLlbn9oRmGWV3Qc0wvqVhZ0ZCmrzlhZSRBvzmE=;
        b=ZODpfu4Ayo6/qE6kjV7heXtLBoVtUDhOga36WavZkT4ZCCMZGrpHUMBv7GE1TjpRyA
         tCKWVID7qiMEt5GyHODzBpnuShXh+wccPJWh8FU5sxYhtT/qRbj/7TNTCwzFBR0pIn3d
         9pYcktd4MgjIg+cqLQXujVjqan5/2nZ5TdN51mK9jaow24zWARutH4fjTB5gqMLrYwl5
         qhNR4/Y9l28aJ1F8bnnmt4jVvyG8jT5rZw6PkBGhi7Uo5kiQFG/4CdeK9A/5KXmo+YMN
         WsQbRCp9qz3zMzM72+xiwaLL+/nbM1SJQJAOHIQG3tT53PQYDALsA/sXt+woHb/46DSC
         Xhvw==
X-Gm-Message-State: AOAM533OogsD5lTkHiJPvBl9sug/AuvdoX3rpFqPOlt5caNrRJTntQ0S
	7s/OH/YDQka1FT0KKmLzHpsCLQ==
X-Google-Smtp-Source: ABdhPJzxrTNKS+zCBp4tjazclsaX5pF/9GzPJvfi3P8kmYf2TQk17x3oZt4GRDc5Fr4msqOUdt905w==
X-Received: by 2002:adf:fa50:: with SMTP id y16mr4425817wrr.63.1620297800594;
        Thu, 06 May 2021 03:43:20 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:d0ab:d9f1:6e0d:9f6e? ([2001:8b0:aba:5f3c:d0ab:d9f1:6e0d:9f6e])
        by smtp.gmail.com with ESMTPSA id y14sm3663690wrs.64.2021.05.06.03.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 May 2021 03:43:19 -0700 (PDT)
Message-ID: <d209a19b717689a9b86cbb98cf489d2af7b5a0a2.camel@linuxfoundation.org>
Subject: Re: [yocto] Hardknott - pseudo excluded from intercept_scripts
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Chuck Wolber <chuckwolber@gmail.com>, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>, "Mittal, Anuj" <anuj.mittal@intel.com>
Date: Thu, 06 May 2021 11:43:16 +0100
In-Reply-To: <CAB=6tBRLvBS4ZKBWQP02ZJvxAK3aqEYgKTevtKCC5U=VpcRZFQ@mail.gmail.com>
References: <167C0F53B19DFD83.28940@lists.yoctoproject.org>
	 <CAB=6tBRLvBS4ZKBWQP02ZJvxAK3aqEYgKTevtKCC5U=VpcRZFQ@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-05-05 at 00:56 -0700, Chuck Wolber wrote:
> The following code is an effective workaround. It must be added after the core-image is inherited.
> 
> python () {
>      pseudo_ignore_paths = d.getVar('PSEUDO_IGNORE_PATHS')
>      result = ','.join([x for x in pseudo_ignore_paths.split(',') if "intercept_scripts" not in x])
>      d.setVar('PSEUDO_IGNORE_PATHS', result)
> }
> 
> ..Ch:W..
> 
> On Tue, May 4, 2021 at 8:53 PM Chuck Wolber via lists.yoctoproject.org < 
> chuckwolber=gmail.com@lists.yoctoproject.org> wrote:
> > 
> > I was attempting an image build with Yocto Hardknott, and I ran into a chown problem during do_rootfs(). I
> > traced it down to ${WORKDIR}/intercept_scripts showing up in the PSEUDO_IGNORE_PATHS environment variable.
> > 
> > This commit made the change:
> > https://git.openembedded.org/openembedded-core/commit/meta/classes/image.bbclass?id=9463be2292b942a1072eea88881b9644e55aadb9
> > 
> > I continued down the rabbit hole until I got here:
> > https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__init__.py#n173
> > 
> > Line 192 specifically is the smoking gun. The files are being copied from poky/scripts/postinst-intercepts
> > into the ${WORKDIR}/intercept_scripts directory and immediately failing when the copyFile utility attempts
> > to do a chown.
> > 
> > Is there any logical explanation for this? Is this a bug or am I doing something wrong? Is there a
> > workaround?

This should be fixed in master, the issue was triggered by a checkout 
owned by root/root:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=eff192abe2ee43ebf981bafbb7fca8602ebdcf0c

Steve/Anuj: We'll likely want to backport that one.

Cheers,

Richard



