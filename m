Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web10.1523.1579292121610362053
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 12:15:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=as1QBtye;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: schnitzeltony@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id g12so22295559ild.2
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2020 12:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kpov2c6/Z3LMWbBb9CFKaRc+bfjeEm1KjGZKAS0xzMg=;
        b=as1QBtye93oXQNPZEsUd3vavVjhLRlB+fuV2etH0VbKxlrAvkHO1k2Sn4+GCXTes38
         MHURMwIspfkZSPp7ffzuH9WLQ1ru8Hle3YkaD9b3FMz/PMTROnuz1Y25sBg4kDB42QNj
         waJvdTyBQjbgLU/Drivhm4XV1GlziVrfCuNMUGTlM4607jNxyA2HKkdTbwozsrr+duXF
         cWXhPbEi9ZviEpqHbUVfdF2sFgrZdlvpA4SUYF73BTgRJET2unUu11VBU9kqY3ttjZMW
         92U6u7hZXiN85sGAj2pGUPa2grbo5M76swpF/TuaXp8Yw308d1ZBBQTtV9ZfcBYUrUIf
         OCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kpov2c6/Z3LMWbBb9CFKaRc+bfjeEm1KjGZKAS0xzMg=;
        b=hjabyqJ0tGztzsIQHPLRJwje61dROpgZ1s8hXppnauomoGnpZbzBpQUZ1vijlH6P3/
         TDbjuO3sDnyzfjkrqubz9mRiwqwHaGuOtuTgvR7Hixp9150hDHTmL8tegOULUJK+dW8P
         DfDENfeT9SB49MtFFi3bSuKaBRrIcrenbZ3cqRlVDgA9VcHIa+OBPb/HWc1NPMAsnb5B
         9P+PzgAbwktE3Y9HHsO4xPOL7HMDSdx47b3l42QLUKE1PD4zFVZVsbTe5ZRpLl5ytlzr
         6Gqx44rWryTsdSsx890Y5hPUzgVvU+8zJtwxRPeV0+GmTs63SPxyCySE0d0yAi2YHFGB
         FE6g==
X-Gm-Message-State: APjAAAW+gY84CJE7NQryta+9EJCXCY05lHmzaPkX7p7sUEnhLwR0pkbm
	kpESgCQFq2na2ap9idG071hkkKc696a7RoT1rVE=
X-Google-Smtp-Source: APXvYqxR3cfHUOSvcENswIClExT9dCad5EsGnPd+mclDrTIstRDv0626iVxYHM8CvAHJwXQpRKrO95XnIodjjnVPvTc=
X-Received: by 2002:a92:3b98:: with SMTP id n24mr266888ilh.108.1579292121008;
 Fri, 17 Jan 2020 12:15:21 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
In-Reply-To: <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
From: "Andreas M?ller" <schnitzeltony@gmail.com>
Date: Fri, 17 Jan 2020 21:15:09 +0100
Message-ID: <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On 1/17/20 6:16 AM, Ross Burton wrote:
> > Python 2 ceased being maintained on the 1st January 2020.  We've already
> > removed all users of it from oe-core so the final step is to move the
> > recipe and supporting classes to meta-python2.
> >
> > The following are removed in this commit:
> > - python and python-native 2.7.17
> > - python-setuptools
> > - The classes pythonnative, pythondir, distutils, setuptools
> >
>
> perhaps add them to meta-py2 first before this lands
Just a question: What is the plan with all those recipes which are
going to fail (most headaches I have with old waf): Will meta-oe /
meta-networking..., depend on meta-py2 or kick them out or?

Andreas
