Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
 by mx.groups.io with SMTP id smtpd.web12.668.1610146610424134394
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 14:56:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Js9uE+at;
 spf=pass (domain: gmail.com, ip: 209.85.219.182, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f182.google.com with SMTP id r63so10865485ybf.5
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 14:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Cd6Mh6FGm5GbLHv97Oi10j1U5jma3vVaSSHQr9ZAeWg=;
        b=Js9uE+atwpPiimfalayBrG2kUAAZ1+uG3hyUT0yMJHGc7VYnVlRHmgSaOe5MSLzYdD
         J8wTMHSiVKbs/1p8nP1Ogqd65g6d4PiVKmcKEVTuN2HwqYvkTrIcpxtRPMfBL1WUo4XY
         hgKVp1lNGgzMWRY1KBw17fwgUuIjTNdJAqeUPbK8W22C+4IAdGLKHcOSpuwyqRqI2LsR
         0PUQPOptmCla+FL7Erak/NWcYKODL+AkrTo9Q0HFHrrlQetWxb38AEMF+mt/+hkBK3FW
         8WEygMHOkqnZGdHMJmh7K/gIxF/9TGGb5fgyZVSldDC4hVIUssoI8ksHKq3tH93ydfP/
         3clQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Cd6Mh6FGm5GbLHv97Oi10j1U5jma3vVaSSHQr9ZAeWg=;
        b=VvZBl82n0xCIcGc+m/DzCUjGngV/TIhZimbAjfLdx9KRTs2cq7+hiHuWlkfpp50vaE
         s4/oh6xf26D8rV3gAjEV4RvyC22QUzmcL+n7w1oKVdIAFg3DenBECSEBZCdCMShH5kuL
         5igHgxjJcWX2VxEfb6JNof/iHXS5iDh0hwpBdbCRYaHT66dKn63DVsj1Kdx/gr8iTG3O
         WK3Qsy5z4HmIJJ21Y8+owrU15rD1qnipQN8NuTJuw74yh+fm1idG5VHIA9lFTwFOCiEw
         DrAL9Z5I50BPISJ/dwjXS6kuoGccjR5n3Fe2x29IupCLA4ozal9dS70w22FWHbWSnxEe
         4w0Q==
X-Gm-Message-State: AOAM533473o+K777eNYVKUUZOIW5YpyUKXbM8iS+enBPcsIKbCi9g0oQ
	+p52bJZ6kkIHh4TM1Sc+o0+oQegjy4h6gjOJrIk=
X-Google-Smtp-Source: ABdhPJxcnePhE9V4qLnZZEjA+AXpn42ktIqM3i2FqpyWGjdTR/dlnhMp9r8c1nqfhp23z05qEHtk2ncBcuAPKxrEKaw=
X-Received: by 2002:a25:2d49:: with SMTP id s9mr8877540ybe.65.1610146609715;
 Fri, 08 Jan 2021 14:56:49 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
 <32166.1610008905321916245@lists.yoctoproject.org> <CAA=hcWT=s8VBLkbEkd9mVdCRrScxhNta_Yf+SvqBiMm1ZjGfyw@mail.gmail.com>
 <20210107102520.t34e5sf4q7hewvat@qschulz> <CAA=hcWR57QV0Yzviv8Ks2ZK0ru1PGQc-fjq4ROfA4i8OHP7wEQ@mail.gmail.com>
 <20210108085735.qdujpbo67whhjsch@qschulz>
In-Reply-To: <20210108085735.qdujpbo67whhjsch@qschulz>
From: "JH" <jupiter.hce@gmail.com>
Date: Sat, 9 Jan 2021 09:56:13 +1100
Message-ID: <CAA=hcWT9VcyP=1BRKccBpOhfjzmuqL-GV73g7Nr5qx3FBbw5Hg@mail.gmail.com>
Subject: Re: [yocto] How to select Linux kernel version?
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: kapllaj.elvis@gmail.com, yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Quentin,

Thanks for your helps, I finally figured out an old Yocto version thud
is able to pick up the latest the kernel version to run 5.10 where the
Zeus could not, there are a couple of bugs in Zeus which I could not
run Zeus in Ubuntu 20.4, it is time for me to upgrade to the latest
Yocto version which hopefully fixes the kernel version issue.

Thank you.

Kind regards,

jupiter
