Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web12.13683.1598968479204311574
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Sep 2020 06:54:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=sHkdU+ph;
 spf=pass (domain: konsulko.com, ip: 209.85.210.49, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f49.google.com with SMTP id u25so1213049otq.6
        for <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2020 06:54:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fqh1sdeWOEIaFaE8MKa6deqRGOAT2VPYBHJPlATT1Zo=;
        b=sHkdU+phN0uOYtyYT8EDzNas6Ei0xK4xgrkBsEWwamx92poeZItR0RSWpwGRLULgh0
         Nb7m5PZDUl15tJBq7opgV87aU0uWmpvt5ZGubxvl7Qp0hkJ1oUu6tts1kF7fpsvKpQHA
         clqU/t/Oc8qpRmGgh3sFe0yYbEURZfxg7f2GU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fqh1sdeWOEIaFaE8MKa6deqRGOAT2VPYBHJPlATT1Zo=;
        b=oc/y57TIVVHA0V3PV5FhdJJoRKRvf70qTjOxyQ9SFe3NfbyRN8jjkDvVug4TLcNTT5
         Kbl+Gr6R4fPbq5d5FWEJLelftrMU2jeh2JJ6dwAPnI/oUcdatwxhtHCbmamqShV+OCk9
         NAcgjJGrJKcA4MlMRvbHtvnDzAkkfLFAe5Kbkbok77jIlq93LoStrsHuBEuleG+X9sjf
         3tTZv2PRo8rERqFTp1LRJhiuoGAn2JE8tvZYuQ8BNM2EtBro75+o4AsPqCLA9t4xe0aq
         v7v+Z2S7b9nysTRKkl0GnaVx/XAbNCtDUL2CAncAiqaTyLmByVINC+FaF3ohxAWLvshi
         k0Bg==
X-Gm-Message-State: AOAM533fSRztWS1/pgYhIRMDb01ntwfAnUo0W4gjGvaxVFaop5AmQkKF
	40tVze34fADQIypAFQwsCY6pe50iTfyMLhJxuZjAMw==
X-Google-Smtp-Source: ABdhPJwasM/9zz3CpF45N7WT+aMk9/PMgOIx1O8ftFblBb9aaKLZWByQoFntRD03ATYs02pychFNxkuajWklFKYGnjI=
X-Received: by 2002:a05:6830:3097:: with SMTP id f23mr1336064ots.305.1598968478554;
 Tue, 01 Sep 2020 06:54:38 -0700 (PDT)
MIME-Version: 1.0
References: <oLFA.1598962582843450216.5iJp@lists.yoctoproject.org>
In-Reply-To: <oLFA.1598962582843450216.5iJp@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 1 Sep 2020 14:54:28 +0100
Message-ID: <CAM9ZRVu04ivG8B44c+p=do9QqphiDa982nM9+eop6W_Kv4sS4Q@mail.gmail.com>
Subject: Re: [yocto] Recipies version of incoming October Gatesgarth release.
To: Yocto_user <avinashyadav94it@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 1 Sep 2020 at 13:16, Yocto_user <avinashyadav94it@gmail.com> wrote:
>
> Hi,
> Is there any way to know all the recipes version detail that will come with Yocto 3.2 Gatesgarth

I don't think any of us have crystal balls to predict the exact
package versions we'll be using in October for the next release. We're
close to the feature freeze point but high priority recipe updates
could still be taken after that time.

Why do you think you need this information? If you explain your
concerns hopefully we can find a different way to provide the answers
you need.

-- 
Paul Barker
Konsulko Group
