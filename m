Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.5531.1621576497301715888
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 22:54:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rIolOv7I;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id j6-20020a17090adc86b02900cbfe6f2c96so6582753pjv.1
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 22:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ZGwgUHIwBsuPFifo9FlItGF/ERloF3W03H2ll3R/A4U=;
        b=rIolOv7IIXIOMsMomiRmeSMEsU2+ul36cKGHRRUkULiat3AZ4bwf5NnM5/rLD3jCq0
         6rNgKn3LIaUFgptkX90fg/O4/BXsb5V495qXxVM/yS6L+jGBpKegIcUwN1762+q+0AC/
         A5Z9UdP2EXS3sT3bsj18iLn2aCX88lXVQzbxYlfQOwohZv1p4i60RrvDupdWmud1Ubr/
         ab4Al6eqShvqJFrxLZXfqqeNOkJSiddJX8QLmVZbzer2TRsBoPm9nW+k9LYOtDee2V3P
         FImhuvXLJnM3LgVrZIKOxqHN7lXOr+eT/qHjQRi1RxBqfQxf/HF6ij4yywqfFYJWggG9
         G2OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ZGwgUHIwBsuPFifo9FlItGF/ERloF3W03H2ll3R/A4U=;
        b=QMrhg7FqeC2es+A/Okq/Qi+WFIuR55rIVdEbia0emCW5mOgXYi1xxYqSpbeb3Uc6Hm
         wXOv4f0B9oQhvvBQgEBr88GIPArPaMcK0TlrznUVZbtCpR5Df3LPPkWe+qsKeqF5l37J
         iKLFc9MZXoF9d5Vh26FmCwb0k6gqJmvo90DyQ4iGZyLuyoEtd1a9wQQd89CYaKoG+axG
         J3a0d+Yl63wEczKoPMSd6x0OLPTIgJdW2ivUclHqrVfORf2mImKBWEjKrsL7Vw/IqL0J
         P5UFEGAO0dEouCfJ0r3MbHmw9g5L9OUB0YIsLzDmJxkpSnmtXp0uwQqcuSxjzykE6xN1
         EHtg==
X-Gm-Message-State: AOAM531wOYiYNXfpST8jt2RuweOhiecgHlv5XwfDrsr4kv96PufNcH07
	TiPjx2+CnLbnt3Q3IplvKTkOH4XNwsr/uiE8rzw=
X-Google-Smtp-Source: ABdhPJwy2I5dj5foG0HtU9RsQ6vevyYgp6//m7cS2yHnSwBleUQmzhV31eNxJmVHHbjG/wITTvEKSBl6DJXdh/xydMo=
X-Received: by 2002:a17:902:8d98:b029:eb:43c2:d294 with SMTP id
 v24-20020a1709028d98b02900eb43c2d294mr10308547plo.49.1621576496316; Thu, 20
 May 2021 22:54:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lzvm0rpRMmP47DqucrJh2f+BZgNQeobZG5-dkCjfxitaw@mail.gmail.com>
 <CABKMkPKFKdXHt7AjyNcBOc0gBYK6D4i9WufGt8Co=OTvDdZQyA@mail.gmail.com>
In-Reply-To: <CABKMkPKFKdXHt7AjyNcBOc0gBYK6D4i9WufGt8Co=OTvDdZQyA@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 21 May 2021 07:54:45 +0200
Message-ID: <CAGAf8Ly1_eg1o8byR6qY-sgeVD0Y32vM8k1bakVef+SYWeC2zg@mail.gmail.com>
Subject: Re: [yocto] Problem with YOCTO Dunfell and host Fedora 33
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Joel,

Thank you for the tips. Really helpful, appreciated very much.

I spent some time this morning investigating this issue, and to find
the culprit.

Here are my findings, which resulted in a cannelloni.bb recipe change
(according to what you wrote).

The fix submitted is in recipe:
https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-c=
an/cannelloni/cannelloni.bb

The last cannelloni version which works is:
https://github.com/mguentner/cannelloni/commit/0bd7e27db35bdef361226882ae0=
4205504f7b2f4

The culprit introducing the cmake errors is this one:
https://github.com/mguentner/cannelloni/commit/d01dd1dc745914d129b1f4da207=
4e282253246af

And, the issue recorded with Maximilian Guentner's cannelloni repo:
https://github.com/mguentner/cannelloni/issues/35

Thank you again,
Zoran
_______

On Thu, May 20, 2021 at 4:48 PM Joel Winarske <joel.winarske@gmail.com> wr=
ote:
>
> Hi Zoran,
>
> Your cannelloni recipe is set to autorev, meaning it's not locked to a c=
ommit.  So when something changes upstream you have to manage it.
>
> Chances are Canelloni introduced a CMake change which is overwriting (op=
posed to appending) one or more variables required for cross compiling.  Pe=
rhaps try to cross compile (not a host build) Canelloni by itself without Y=
octo involved.  Once that's sorted, then reintroduce yocto.
>
>
> Joel
>
>
> On Thu, May 20, 2021, 6:58 AM Zoran <zoran.stojsavljevic@gmail.com> wrot=
e:
>>
>> Hello Yocto developers,
>>
>> I have few problems running the following self proprietary script from
>> one of my public git repos:
>> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup=
.sh
>>
>> I recall that last time I used the script (I used then Fedora 31), the
>> ./yocto setup dunfell worked seamlessly, did setup the environment,
>> and upon bitbake -k core-image-minimal completed the tasks without any
>> problem.
>>
>> Now, I am using Fedora 33 (in the meantime I did two Fedora version upg=
rades).
>>
>> The problem is that while compiling the cannelloni package, the
>> following errors were issued (please, look into the attached file
>> cmake_problem.txt).
>>
>> This cmake problem was introduced after switching from Fedora 31 to Fed=
ora 33 ?!
>>
>> Any clue/idea why this is happening??? What is the cause of the problem=
?
>>
>> Thank you,
>> Zoran
>> _______
>>
>>=20
>>
