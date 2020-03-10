Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
 by mx.groups.io with SMTP id smtpd.web11.3385.1583840278472462646
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 04:37:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=J1r8N37u;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.65, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f65.google.com with SMTP id n2so967377wmc.3
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2020 04:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=aoRjuRzgButkA2zWI/kI3Y64Limrd5Otmp5/ccH+dMI=;
        b=J1r8N37uBAhlXeTKl6eQAdVrZ6+/6xD8oHFFPbwe5zaT5Aui8kOAl9vMtfY7ORcXrF
         U2aFjRrGVsG315hE1CEPVoZQ/A5dFwfoX66va0a+SFIwluGS55AinmZWlwFrhLY7GkNu
         0u7ua+ZRKoWLdFZhiKopApW1xS4gQpzuumGm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=aoRjuRzgButkA2zWI/kI3Y64Limrd5Otmp5/ccH+dMI=;
        b=MtX4AuHK7TF7R+LS/iBkJBXy982vSML6R8SSdJtsc/WPo1Eb6TGfwoIgOlaS2DU8IB
         ekp3PQyX/z5qhp/x+5fbRjBYhC7qx4L5kjc0EXN9wlS5/yayk7Di9pBvibJ9w+6XIL0y
         5CDomJSx+VSOXqRXG123N4rBgSv41IyRbhJicYJe4prqWHXDCeOVOB+EGYrgKOxUkyE3
         egys3rRbMGq1Iw5Wjzv++Q1zdGew5/53iUEnOBohReJQD3CIi8tH5DY4lcFG3HwtWHGT
         3gakPcjmjOcgzJa2y0fX7TDg35j2NXoKhH2ruvRKfNqyxZrS5aHc1cYuuFL8ybZ2L8j9
         Hjkw==
X-Gm-Message-State: ANhLgQ0Hum4WqTGb3tGfz8e/keuBedbbYiRQXzsqt53/g9FRpomNgGBT
	FuK8lHwKrvv2wgu74s6u5Hj7vA==
X-Google-Smtp-Source: ADFU+vuBwuRcz7vBCnJO0xkjo0FtIC6JrFNtGA/wzHN+OTympUfugmldP70TxztX0LnSJIz8R6032Q==
X-Received: by 2002:a05:600c:1007:: with SMTP id c7mr1766399wmc.158.1583840276942;
        Tue, 10 Mar 2020 04:37:56 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id i21sm3887886wmb.23.2020.03.10.04.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 04:37:56 -0700 (PDT)
Message-ID: <da7cd1ba55525b1f63884bd83286555d1dd72218.camel@linuxfoundation.org>
Subject: Re: [yocto] Should changing a task in the .bb file cause the task to be rerun?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mikko.Rapeli@bmw.de
Cc: sean.mckay@hpe.com, yocto@lists.yoctoproject.org
Date: Tue, 10 Mar 2020 11:37:55 +0000
In-Reply-To: <20200310113348.GT104502@korppu>
References: 
	<TU4PR8401MB115177E1CDF301758DE3E72A82E80@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
	 <18c5d510bec23fbb83c7d82e9ea7e2594b58d44f.camel@linuxfoundation.org>
	 <20200310113348.GT104502@korppu>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2020-03-10 at 11:33 +0000, Mikko.Rapeli@bmw.de wrote:
> On Fri, Feb 28, 2020 at 11:25:59PM +0000, Richard Purdie wrote:
> > On Fri, 2020-02-28 at 22:51 +0000, Sean McKay wrote:
> > > This is probably a fairly short question (I hope):
> > > I’m working on a branch based on zeus. I found a bug in the way that
> > > one of our recipes was handling something during do_configure (which
> > > caused an error to pop up in a do_compile task). When I modified the
> > > do_configure task (do_configure_append, actually) to behave properly
> > > (which involved changing the actual commands run in that function)
> > > and reran bitbake -c compile <recipe>, the do_configure task wasn’t
> > > rerun despite the change to the function’s code.
> > >  
> > > Is it safe to assume this means we’ve done something to mess up the
> > > way our system is processing things? Or is that expected behavior
> > 
> > Its not expected behaviour and yes, it sounds like something is messed
> > up...
> 
> This is what I've come to expect with yocto 2.0 jethro, 2.5 sumo and
> 3.0 zeus.
> 
> That's why I always write:
> 
> $ bitbake -c clean recipe && bitbake -c cleansstate && bitbake -c compile recipe
> 
> when debugging changes in recipes to_compile and other dependent tasks.
> I'm also cleaning up sstate to be sure it's not corrupt or filled with
> somehow bad data.

This is bad and shouldn't be happening. Can anyone provide some
examples I can look at?

You shouldn't ever need to run cleansstate in particular. If you have
to, there is another underlying bug that should get fixed.

Cheers,

Richard

