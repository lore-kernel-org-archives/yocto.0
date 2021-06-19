Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web12.18514.1624083967074982594
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 23:26:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HkorO5Lc;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: mikeframpo@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id k8so16943016lja.4
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 23:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=k7Mhp5juX+EOWElIgumtEDD9ouYRFHlRRuMSEIkohHk=;
        b=HkorO5Lc6QGfjcc/NxxwxUwwDDf2+fdkaJ0Pblyk2O/GVUKcRARJ43OI2vtnzYbVvt
         WrRpuG3Wpr90QChsAdQwlyIMQk2q5e+TXtfJS/9epoO9C295ZfZ1ytkYcY6NpzANGlvJ
         09MKnY4T1aGEjzVyP7LJCozYV+cIWDtspYkOedqsu8FqvTukUfL3c7NWarg5S1h2ktLB
         W/cDhU4rn5837vcZC7gBWrH8gwsNwJg3xHvgwf+e2OoYv9T3KPLMj/hx6iRYNoxK6/xV
         RLjlLijHwiYh6iirAzUl3WI4Ac4EwYUpMojbboTURDkcznlqZcQSFty/vGsG+wB1iy2B
         /bWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=k7Mhp5juX+EOWElIgumtEDD9ouYRFHlRRuMSEIkohHk=;
        b=BpI7OBtiYGAQ51Oux1Pvqb7YqsxDcTFWGRjDZDV44hbtsIfDlkvNB8eC8pycevWb/N
         53AB40xfqhos/7aUalDDdX46QtFGqwpNfdtNOgVmHlNxtEhMyn+N7zzU9M2RbgndtduZ
         D1nkkb73+0bDl7qzd2iAs1nBVbS+Sx28Zf3Qy5Z7oEqnVMdph0CB7/y3oKhhPt6sGVKU
         Yhi8M8wCaiGWCVwAJW7Rmbrkecb0imL5aRRPTpVw/5fyo/NjVLwcDIrSnDwCifBtRE6O
         0bxtvLbvlbL/9NnxvPomkYvuR2qaydXyweHareOHeg+b+G/WMjU8YXF9Pryqr7dg/T+o
         ED1Q==
X-Gm-Message-State: AOAM530GZTl8O1BRS1a/hgMbE8XYXQHjqxjJV5KjRUv7g5RQpWUjl/xv
	kip+f3jNDAGlXdMYTqINQQ8qWxKokgfgopwta58=
X-Google-Smtp-Source: ABdhPJz7+LAuAbwFX0MAGMobK+/oU/95RprUL3ZkJJnd307v9OoSCjupwXmsDSuWEeCYb4BkP7+IpOpbdlCnYyRO69E=
X-Received: by 2002:a2e:9b0e:: with SMTP id u14mr12651792lji.123.1624083965214;
 Fri, 18 Jun 2021 23:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <CABqcFR=X0WQfkqvBz7+XLg2B=EQoUSTR7QERwJ+q1s7ny0uE1g@mail.gmail.com>
 <CA+cAkerJhOmwE49NyLkXYm3g3AG-aMQCy=WvcpCVCEQUP_bqwQ@mail.gmail.com>
In-Reply-To: <CA+cAkerJhOmwE49NyLkXYm3g3AG-aMQCy=WvcpCVCEQUP_bqwQ@mail.gmail.com>
From: "Mike Frampton" <mikeframpo@gmail.com>
Date: Sat, 19 Jun 2021 18:25:54 +1200
Message-ID: <CABqcFR=ibLhRVfjsJJ1m6Q=v2D3s1ZYM6+=p6MzKpCeQXkuvYg@mail.gmail.com>
Subject: Re: [yocto] Appending an existing machine .conf file
To: =?UTF-8?B?RnLDqWTDqXJpYyBNYXJ0aW5zb25z?= <frederic.martinsons@gmail.com>
Cc: yocto@lists.yoctoproject.org, ayoub.zaki@embexus.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Fr=C3=A9d=C3=A9ric,

Thanks for your suggestion,

>  you can customize QB_OPT_APPEND by removing options you don't want, e.g.
>
> QB_OPT_APPEND_remove =3D "-device usb-tablet"
>
> and add your own after.

I suppose this would be a bit less maintainable, as it's effectively
duplicating the entry in the base config... but I think it will work
for me for now. Thank you.

Regards,
--Mike
