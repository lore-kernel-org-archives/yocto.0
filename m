Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web09.12041.1609758994743716665
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 03:16:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BAtA4mCL;
 spf=pass (domain: gmail.com, ip: 209.85.222.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id s23so8945636uaq.10
        for <yocto@lists.yoctoproject.org>; Mon, 04 Jan 2021 03:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YfGXZEHqsO5jwxpW/IOvXHKJFRGoLI1/6MIwbI8unlw=;
        b=BAtA4mCLiazw7k5W0SIUkXOjP7hBw0mIs88lYFCDxsIs68fOYcir8fT7OB9vSERTrZ
         Xx6c77JArbo23tHhN+Wj6hgHAF9sCjOOD7YMRWuN95rjRmWUNwrZKVzKyLQEGc6YoW94
         /Sn2McQX6VBUuxPf0L7febaqLSqt9mk71cDFvkSEX8pGOQoQS/BZP4WDnhniZyFfuFDo
         BuClGyU55Lq5QxiMTScqyTjOisxr44u856jZpMWnSjQS1b30jQvpYvS07qX6b/Gz9AB0
         EwpmDbYRyqciOPoiAxpI8qTS7XJxonbaRJAQh5dViWDG1W0zhjlJ1NlqKa94lo/Z+fTz
         nzPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YfGXZEHqsO5jwxpW/IOvXHKJFRGoLI1/6MIwbI8unlw=;
        b=gAy2mzsv+Spsu59vfZpOIc6oMYEa0AhCCC6OWOyF4uXB2i4SZdlhm2pii8t1hiG9Wb
         7umJDtDD5XE3KOMXGQmmIfKkAvin0YYufOxQaOYIIFsTCEqqOcmwYWZhNZrrwZwO5yQX
         o91XyJFC5z8ZcR2fxQpd0m+/n2cE9wzsovwS7zKvu/WFh1weTPckDLv97dVcK08sg4ar
         +5Mxou8IdQcaHucJHYGFeMw5Jvd4D97wg+ZhsaK9gWle4dJ112+07dZagruHBJHGRbgs
         rrHkvdLtkZ9bEj3IzxHI3bDeefLbseXc0e8S0sNQ1wUfl4P8oLCrfqL2OL+nyuD0ygfI
         nZLA==
X-Gm-Message-State: AOAM532+1qxOemyfRcz9M/ubx/3ZuWNP0u80f1EBIgVFj8leH6aibzPz
	qtz8HTE4MTR9IJzfeGK+sdvbKwqWBmslZq0KA5o=
X-Google-Smtp-Source: ABdhPJz2+I4rIxJN7iqPEWH12UQ9DkuNOY0WD1oM54PMKEen1dtOe21wD9we+oz533+/E4X+LRuswMVw2kOt5wfwh58=
X-Received: by 2002:ab0:6703:: with SMTP id q3mr42671913uam.93.1609758993969;
 Mon, 04 Jan 2021 03:16:33 -0800 (PST)
MIME-Version: 1.0
References: <AM9PR09MB47399E93D60FF11A88E243ADA8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
In-Reply-To: <AM9PR09MB47399E93D60FF11A88E243ADA8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 4 Jan 2021 12:16:23 +0100
Message-ID: <CANNYZj_o+y5F-=djBKrbeexMDsDJjjp4P2OP9m6CJAxxOd-4Og@mail.gmail.com>
Subject: Re: [yocto] oeqa: test cases at the end of the test suite
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000002766c05b81139d0"

--00000000000002766c05b81139d0
Content-Type: text/plain; charset="UTF-8"

I'd say improving the actual test ordering function is the way to go, yes.
Not sure how the ordering 'hint' should be like, but maybe setting an
integer priority via a decorator would work:
@OETestPriority(1) ---> runs first, no guarantees about relative order of
other tests with priority 1.
@OETestPriority(99) ---> runs last, ditto.
Default priority: 50 or similar.

Alex

On Mon, 4 Jan 2021 at 11:51, Konrad Weihmann <kweihmann@outlook.com> wrote:

> Hi all,
>
> I have a few oeqa test cases, which always should run last in a test
> suite (log and file collectors for instance).
> Due to the ordering of the test case discovery I had to name all those
> tests like "zzz_<name>" to move them to the end of the computed list.
>
> Unfortunately this is very error prone, as the OETestDepends tag does
> have major influence on the ordering (just a single misplaced tag in any
> test case can make it past those "zzz" cases).
> Also it makes things hard to read IMO.
>
> That brings me to my question, is there any way to ensure that test
> cases are run at the end of the complete list of test suites?
>
> If not does anyone have an idea how to create such a feature (maybe a
> new decorator or something like that)?
>
> Regards
> Konrad
>
> 
>
>

--00000000000002766c05b81139d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;d say improving the actual test ordering functi=
on is the way to go, yes. Not sure how the ordering &#39;hint&#39; should b=
e like, but maybe setting an integer priority via a decorator would work:</=
div><div>@OETestPriority(1) ---&gt; runs first, no guarantees about relativ=
e order of other tests with priority 1.<br></div><div>@OETestPriority(99) -=
--&gt; runs last, ditto.<br></div><div></div><div>Default priority: 50 or s=
imilar.<br></div><div><br></div><div>Alex<br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 4 Jan 2021 at 11=
:51, Konrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">kweihmann=
@outlook.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi all,<br>
<br>
I have a few oeqa test cases, which always should run last in a test <br>
suite (log and file collectors for instance).<br>
Due to the ordering of the test case discovery I had to name all those <br=
>
tests like &quot;zzz_&lt;name&gt;&quot; to move them to the end of the com=
puted list.<br>
<br>
Unfortunately this is very error prone, as the OETestDepends tag does <br>
have major influence on the ordering (just a single misplaced tag in any <=
br>
test case can make it past those &quot;zzz&quot; cases).<br>
Also it makes things hard to read IMO.<br>
<br>
That brings me to my question, is there any way to ensure that test <br>
cases are run at the end of the complete list of test suites?<br>
<br>
If not does anyone have an idea how to create such a feature (maybe a <br>
new decorator or something like that)?<br>
<br>
Regards<br>
Konrad<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000002766c05b81139d0--
