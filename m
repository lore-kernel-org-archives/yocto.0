Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.5818.1611742252445556686
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 02:10:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PO7YzMgV;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: martin.jansa@gmail.com)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4178838C07D7
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 10:10:52 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id bl23so1830680ejb.5
        for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 02:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q+POgt5zpGlo8qJyG9D5F53G0nJgD/uw6ivlyX+TrkQ=;
        b=PO7YzMgV2yItAoqBDarG8xkVCbhWR9jOf5b5xycknpHjpLtf8F+Y7BbxdPWsDsOJ9x
         HChbl2wE8YXNrklzmrVu67S8poQuND0ctwef/wMjMJIV+GASQSZ/S4QfwQw1NpYiOcyV
         Av1pHEaLI3m1/eD/gxyAyJP3n+6yl1QJDbPpsFcpcKPv6Nn7rsLVHmr6G6l7bsYG0kp4
         FuISEC2yiILeaUG8SEcRHG+h9Mdy714n+M4ojcGPh93g/m2ISMGvC5ysmrk+tAm4BBG2
         R4cDf5SIgV9a/mSVlOw9GntJhlkaIo6j0vQ4GsE72jK1uuAkRXTBFevd3SF05nOgUS4M
         xwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q+POgt5zpGlo8qJyG9D5F53G0nJgD/uw6ivlyX+TrkQ=;
        b=o/F6U5K0IF56hvXZrRvMkU+OV0d8cCJ6EyeY6w+kyx17+QbRNRHfPGsYhYA/NSn2pw
         RlYHhtFVkuBwqpzT6C3twaYLERWvkHABpJK/qA8oOmO2mLY5PGq/eVkO+LCmVshhBqgq
         Cemil7S7/2w2szjCVZbsckqrDg8P+qkNukp6tXfCCqUD0Dbg4mw3F/Thn97/t4lQjmVe
         L0ymXdPymMmS7pDlwN01UJkB/aLe/5OOI8rpLzeGuZjrwGjxDHvYVXb5t47udhZ/2HUP
         zbEn88oyVUhTI6XAzlRv2Yg3QmLPZXFXgQ7dFHvgb+51OmqLXXcEUct/OhAoTjQniV5/
         uqUg==
X-Gm-Message-State: AOAM5318G/cd5NMLMQxXbpspWs1yEF15enadL2sKsLKTfPsHStjzWhIq
	VTBTqxZx7ZKzMEOYldCUr/d4jokLIxBO9xN6OvY=
X-Google-Smtp-Source: ABdhPJxCPwk2sPvu8PrXBXv5wwp59POTuAkYGl9mmB/ClrwE18ePh2L0y6Q2kKK+fbt4NcZ54yi4B1urQBQjN3G6bc8=
X-Received: by 2002:a17:906:94d2:: with SMTP id d18mr6218140ejy.94.1611742250793;
 Wed, 27 Jan 2021 02:10:50 -0800 (PST)
MIME-Version: 1.0
References: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
 <dfbc9dbd-7fc9-ce3e-ac4e-261f1b6380e6@gmail.com> <CAHXFBWsZ8+peaZg1CTqdCZ-zZ+Ek16=ok9X1ropYyFnMjVRJKA@mail.gmail.com>
In-Reply-To: <CAHXFBWsZ8+peaZg1CTqdCZ-zZ+Ek16=ok9X1ropYyFnMjVRJKA@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 27 Jan 2021 11:10:39 +0100
Message-ID: <CA+chaQeJea8AdOw+uXwreqaz_=YaiCuG+4pJz--FfT_vBVkmVQ@mail.gmail.com>
Subject: Re: [yocto] Points to consider while moving to new yocto versions
To: amaya jindal <amayajindal786@gmail.com>
Cc: robert.berger.yocto.user@gmail.com, yocto <yocto@yoctoproject.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000053fe9305b9defcbc"

--00000000000053fe9305b9defcbc
Content-Type: text/plain; charset="UTF-8"

Yes, there are significant diffferences in gcc, see:
https://gcc.gnu.org/gcc-5/porting_to.html
https://gcc.gnu.org/gcc-6/porting_to.html
https://gcc.gnu.org/gcc-7/porting_to.html

The recipes in public layers were already fixed at that time, but if you
have a lot of your own C/C++ code in your builds, then expect some fixes
needed.

On Wed, Jan 27, 2021 at 10:11 AM amaya jindal <amayajindal786@gmail.com>
wrote:

> Thankyou for your comments and guidance.
>
> Currently i am trying to first move from krogoth version of yocto to rocko
> version first that will suffice our requirements but i need to understand
> whether any major difference is there in gcc 4.9.3 vs gcc 6.4. As krogoth
> is usin gcc 4.9.3 /5.3 recipe but rocko is using 6.4/7.x as recipe for gcc
> source compilation. Please guide.
>
> Regards,
> Rohit Jindal
>
> On Mon, Jan 25, 2021 at 6:16 PM Robert Berger@yocto.user <
> robert.berger.yocto.user@gmail.com> wrote:
>
>> Hi,
>>
>> My comments are in-line
>>
>> On 25/01/2021 10:07, amaya jindal wrote:
>> > Hi All,
>> >
>> > We are planning to move to New yocto from current one that is krogoth
>> > yocto to some updated one.
>>
>> I would consider it "best practice" to somewhat try to stay up to date
>> with recent yocto versions and plan for this from the beginning of your
>> project.
>>
>> What I mean is to have a "stable release" and a "next release" which is
>> being used in your nightly builds and tests.
>>
>> This will make it significantly easier to make version upgrades.
>>
>> > We are not thinking to move to gates-garth or
>> > some other major release but the releases than can have easily support
>> > for arm.
>>
>> I am not sure what you mean by that?
>>
>> Which versions make it easier/more difficult to support arm?
>>
>> It's more a question of which chip/kernel/boot loader,...
>>
>> >
>> > Please support and help.
>> >
>> > Points need to take care to port to new yocto version.
>>
>> Ssince you use a completely outdated and end of life version[1] it might
>> require quite some effort to update, but through pain we learn ;)
>>
>> [1] https://wiki.yoctoproject.org/wiki/Releases
>>
>> Which chip do you use?
>>
>> Is it supported by an upstream kernel/boot loader?
>>
>> Which (additional) layers do you use?
>>
>> Are these layers supported by the same version as the Yocto version you
>> want to move to?
>>
>> How about your own recipes?
>>
>> Are they compatible with upstream yocto?
>>
>> >
>> > Regards,
>> > Rohit
>>
>> Regards,
>>
>> Robert
>>
>> >
>> >
>> >
>> >
>>
>>
> 
>
>

--00000000000053fe9305b9defcbc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, there are significant diffferences in gcc, see:<div><=
a href=3D"https://gcc.gnu.org/gcc-5/porting_to.html">https://gcc.gnu.org/gc=
c-5/porting_to.html</a><br></div><div><a href=3D"https://gcc.gnu.org/gcc-6/=
porting_to.html">https://gcc.gnu.org/gcc-6/porting_to.html</a><br></div><di=
v><a href=3D"https://gcc.gnu.org/gcc-7/porting_to.html">https://gcc.gnu.org=
/gcc-7/porting_to.html</a><br></div><div><br></div><div>The recipes in publ=
ic layers were already fixed at that time, but if you have a lot of your ow=
n C/C++ code in your builds, then expect some fixes needed.</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ja=
n 27, 2021 at 10:11 AM amaya jindal &lt;<a href=3D"mailto:amayajindal786@gm=
ail.com">amayajindal786@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thankyou for your commen=
ts and guidance.=C2=A0<div><br></div><div>Currently i am trying to first mo=
ve from krogoth version of yocto to rocko version first that will suffice o=
ur requirements but i need to understand whether any major difference is th=
ere in gcc 4.9.3 vs gcc 6.4. As krogoth is usin=C2=A0gcc 4.9.3 /5.3 recipe =
but rocko is using=C2=A06.4/7.x as recipe for gcc source compilation. Pleas=
e guide.</div><div><br></div><div>Regards,</div><div>Rohit Jindal</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Jan 25, 2021 at 6:16 PM Robert Berger@yocto.user &lt;<a href=3D"mailto:=
robert.berger.yocto.user@gmail.com" target=3D"_blank">robert.berger.yocto.u=
ser@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Hi,<br>
<br>
My comments are in-line<br>
<br>
On 25/01/2021 10:07, amaya jindal wrote:<br>
&gt; Hi All,<br>
&gt; <br>
&gt; We are planning to move to New yocto from current one that is krogoth=
 <br>
&gt; yocto to some updated one. <br>
<br>
I would consider it &quot;best practice&quot; to somewhat try to stay up t=
o date <br>
with recent yocto versions and plan for this from the beginning of your <b=
r>
project.<br>
<br>
What I mean is to have a &quot;stable release&quot; and a &quot;next relea=
se&quot; which is <br>
being used in your nightly builds and tests.<br>
<br>
This will make it significantly easier to make version upgrades.<br>
<br>
&gt; We are not thinking to move to gates-garth or <br>
&gt; some other major release but the releases than can have easily suppor=
t <br>
&gt; for arm.<br>
<br>
I am not sure what you mean by that?<br>
<br>
Which versions make it easier/more difficult to support arm?<br>
<br>
It&#39;s more a question of which chip/kernel/boot loader,...<br>
<br>
&gt; <br>
&gt; Please support and help.<br>
&gt; <br>
&gt; Points need to take care to port to new yocto version.<br>
<br>
Ssince you use a completely outdated and end of life version[1] it might <=
br>
require quite some effort to update, but through pain we learn ;)<br>
<br>
[1] <a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"norefer=
rer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releases</a><br>
<br>
Which chip do you use?<br>
<br>
Is it supported by an upstream kernel/boot loader?<br>
<br>
Which (additional) layers do you use?<br>
<br>
Are these layers supported by the same version as the Yocto version you <b=
r>
want to move to?<br>
<br>
How about your own recipes?<br>
<br>
Are they compatible with upstream yocto?<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; Rohit<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--00000000000053fe9305b9defcbc--
