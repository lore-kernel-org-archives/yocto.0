Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web12.6476.1599106020610564073
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Sep 2020 21:07:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gs3qWP6D;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id b3so931064qtg.13
        for <yocto@lists.yoctoproject.org>; Wed, 02 Sep 2020 21:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/SG84vErdHSMBd91Q9Zy56tTgTlqj5J0NPuQOnxnezA=;
        b=Gs3qWP6DEHc2ZBXZq1BqzPDqVoguQDwJJtZjYAezy8Fl+y3Dfz3BQhSXMLI7cv6/uQ
         WqajNPZbsd5a5BmzK/djdMXssh4+P3dNIvxFBTJy3sMzxyiWQO3RCn+cjDZi2BvMM9lf
         y08YthXwc94psnRcN/kk4DvIj0ses8gzaRvBQUUv1v7N5xs5ETj0D87LMEpUvVtWKCON
         A8TcRkfF1lbnmfY3ny4kGo0uhOWaWJPwyB+nGxgS5JVmVQu9U67wYA/FQKhX3nSrWI+P
         UsFo8aGXl/qfZhiozB6TS7vjTvvFaMvCcH94UYhefTPyMrdzj22pu/4h3Wrcm4cgjlOp
         aC/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/SG84vErdHSMBd91Q9Zy56tTgTlqj5J0NPuQOnxnezA=;
        b=AbnyFNJOVsSkxcqMs7+wh+bDXhK88gLwVMX98X7JbHktH/oE6s7aniG8LUqjoflGhM
         jBxjiPauL9v4RFMEaj0JijjP8v5HWMlksDO/YNa2YNTEUrMzqiJQ5g3Wkr7MFf84MGM/
         X8lXt7Ds26HOWxwxWyCpTjnIjgWixINQf8B8MGJo9L3EEMv6ncrVtoNmrEZse++/mQot
         fbp3wFIJOrT/4v3TOn64DUvu2AqY/sKOE9YA3hCXycppgEztSikgEQFAk6SoF1GqKKZu
         dA6wRYAWeu03XEc0XsciIIWTiceyQBipHjJzqQOA8saebyo7W2+m0ug/E7LFshB13OZl
         dV+Q==
X-Gm-Message-State: AOAM5302KuP6EuQM5PS2ILXXB4SV4IeFcpw9Evj6o9ZDUXzcCnCIxM5F
	So9FTWA1Irx1dyGaYB2rkrH5c6NH/V0+C5SwbLE=
X-Google-Smtp-Source: ABdhPJySF3lff6sadPnE4TTwpS/d9u3N4JYTni5A4s6UfPJ1vqiMgO6eZDsF+evlCLj03Nql4CSCnBhIYdbl2n40XDw=
X-Received: by 2002:ac8:2962:: with SMTP id z31mr1604333qtz.88.1599106019578;
 Wed, 02 Sep 2020 21:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH3A6vnmB8X-43hchgJY2juvqJp_Lhf+e1iOv2GsPzZWLA@mail.gmail.com>
 <CAMKF1so9gTfy5FuDJu0NvCp9j42SJT=7G+UFHjrbUDHqq2+w7Q@mail.gmail.com> <CAEFUPH3POzgiRgC+TgBMw3ZAb4HDNvt4L3ZHb62tUVW5DqZ8rQ@mail.gmail.com>
In-Reply-To: <CAEFUPH3POzgiRgC+TgBMw3ZAb4HDNvt4L3ZHb62tUVW5DqZ8rQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 2 Sep 2020 21:06:33 -0700
Message-ID: <CAMKF1sroPDhmDkHdCdYTUG6_L92nYrSvewbQ3BjPEwn2J6_-NQ@mail.gmail.com>
Subject: Re: Query on building applications and catch exceptions across different shared libraries
To: SIMON BABY <simonkbaby@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 2, 2020 at 8:06 PM SIMON BABY <simonkbaby@gmail.com> wrote:
>
> No I am not using -fexceptions compiler flag .

OK please add it to your CXXFLAGS and see if it helps.

>
> Rgds
> Simon
>
> On Wednesday, September 2, 2020, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Sep 2, 2020 at 5:18 PM SIMON BABY <simonkbaby@gmail.com> wrote:
>> >
>> > Hello,
>> >
>> > I have an issue with my throw , catch code in c++.  If i throw an err=
or after the openssl library call, my application crashes.  If my applicati=
on wishes to throw and catch exceptions across different shared libraries d=
o we have any specific settings I can add in my bitbake recipe?
>> >
>>
>> are you using -fexceptions to compile your application ?
>>
>> > regards
>> > Simon
>> >=20
