Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web09.5245.1627998761517053595
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Aug 2021 06:52:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XXyRwkMV;
 spf=pass (domain: gmail.com, ip: 209.85.217.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id a8so5084499vsl.4
        for <yocto@lists.yoctoproject.org>; Tue, 03 Aug 2021 06:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1ic2QYFbt8lt/8hsU+7jqMAKu8OLHFQ0qp93Ckk+uZI=;
        b=XXyRwkMVvlzt8j+JMU/MCPJKmL3tT80ymz5IFTasQsRdQb6GfJScUQXu79OhAbvF1T
         M0ZNtJWwFIvLsAyOx1DIIT5IR9Dbbewlc33CoxTngyL2Hckg2jISXiVawRSHUZkRGyqd
         KLeIk+hALGWo4uG3E4tfQWHVyKbLVsyO5yu/l5dKv7jYAuFRAFQZY3qYhalESpjFHM7/
         6rCSqoBPv0mbC9CBgwqHsCw2oddG2l5eJCOpDJfSEUzOIPob8JisaY3cYlUohYUUM7SS
         gV7LP5sdQAKpEhYb1r9vwzja9lNWiMQsKMvTZ9I21776lkVzfzvdlpx5ZUOMPvulAJCp
         aO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1ic2QYFbt8lt/8hsU+7jqMAKu8OLHFQ0qp93Ckk+uZI=;
        b=icWrAV4D+sNu1d3XFDeKGTwEuVAysPJVT2JKsXgXH5foMo54s93rjDprEfJwGbovXX
         KPSaDWomxnqUYoQqYlYVw6tu8PXdTLZeYbZBzFvcFoqkkWok2nNkKihzYTnGjcs7SDty
         3J/0lojkBS7QY1cAo9KXa6HQxRG61D+6dxJ4S0avUK5/cdnhWDFmta5w5YO1NRdyU05T
         ERepYCfzG7taelOzfoDqbv2TEhnqsHlC2UCyuEP008Psz3Hb/NNUb1Uoq1WwdpwzqCq7
         ScdBK2ZSoxUyQfFERKjRDOBBz/T6pXkWyHkY9oTKKw0Y9FFInLVFe8uKRR9iWRLRrytk
         MWrA==
X-Gm-Message-State: AOAM530LSVjO5ykEd9LFJnZj2ephSiDr1eamFAah1qidhpNl7Hw+hulx
	gP4ZfnwzOyS+EzZZuaM/kiyVNo7nTfKljpXg6IA=
X-Google-Smtp-Source: ABdhPJwI5nq0OG5V4MR78Eynh23FLOEN66tTnZaLa5Bb3bvWDWnPNHMbmP3XF30w8foQiEROktWAEOacih/AA/51PYE=
X-Received: by 2002:a05:6102:23dc:: with SMTP id x28mr13721921vsr.31.1627998760637;
 Tue, 03 Aug 2021 06:52:40 -0700 (PDT)
MIME-Version: 1.0
References: <88yg.1627998001124789934.9VL8@lists.yoctoproject.org>
In-Reply-To: <88yg.1627998001124789934.9VL8@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 3 Aug 2021 15:52:29 +0200
Message-ID: <CANNYZj-YFwTVNA+Pbs9Uy71iBgZ+zZp=YWOcd2fde3aahAKOOA@mail.gmail.com>
Subject: Re: [yocto] Hardknott support level
To: Fernando Luiz Cola <ferlzc@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d297cc05c8a7ff46"

--000000000000d297cc05c8a7ff46
Content-Type: text/plain; charset="UTF-8"

Hardknott will not become an LTS version, and will be maintained for 7
months, per https://wiki.yoctoproject.org/wiki/Stable_Release_and_LTS (all
of it worth reading).

The current plan is that Kirkstone will be the next LTS release (there's an
LTS release every two years).

My recommendation is to start the project using current master (rather than
something already released), periodically rebase on a later master, and
branch off the stable/product branches in sync with upstream LTS releases.
Rebasing from one yocto release to another yocto release is a lot more
painful than rolling master + stable LTS model.

Alex

On Tue, 3 Aug 2021 at 15:40, Fernando Luiz Cola <ferlzc@gmail.com> wrote:

> Hi, I'm starting a new project using Yocto and we plan to use Stable (Hardknott
> - 3.3).
>
> We gather this information on:
> https://wiki.yoctoproject.org/wiki/Releases
>
> How can I verify/follow the when the project will schedule from Stable to
> LTS?  There is an estimate for the EOL ?
>
> Thank you in advance
> 
>
>

--000000000000d297cc05c8a7ff46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hardknott will not become an LTS version, and will be=
 maintained for 7 months, per <a href=3D"https://wiki.yoctoproject.org/wiki=
/Stable_Release_and_LTS">https://wiki.yoctoproject.org/wiki/Stable_Release_=
and_LTS</a> (all of it worth reading). <br></div><div><br></div><div>The cu=
rrent plan is that Kirkstone will be the next LTS release (there&#39;s an L=
TS release every two years).</div><div><br></div><div>My recommendation is =
to start the project using current master (rather than something already re=
leased), periodically rebase on a later master, and branch off the stable/p=
roduct branches in sync with upstream LTS releases. Rebasing from one yocto=
 release to another yocto release is a lot more painful than rolling master=
 + stable LTS model.<br></div><div><br></div><div>Alex<br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 A=
ug 2021 at 15:40, Fernando Luiz Cola &lt;<a href=3D"mailto:ferlzc@gmail.com=
">ferlzc@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helv=
etica,sans-serif;font-size:small">Hi, I&#39;m=C2=A0starting a new project u=
sing Yocto and we plan to use Stable=C2=A0</span><span style=3D"color:rgb(3=
4,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small">(Hardknott=
 - 3.3).<br></span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helve=
tica,sans-serif;font-size:small"><span style=3D"color:rgb(34,34,34);font-fa=
mily:Arial,Helvetica,sans-serif;font-size:small">We gather this information=
 on:</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,san=
s-serif;font-size:small"><a style=3D"color:rgb(17,85,204);font-family:Arial=
,Helvetica,sans-serif;font-size:small;background-color:rgb(255,255,255)" hr=
ef=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noopener noreferr=
er" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releases</a><br st=
yle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size=
:small"><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-s=
erif;font-size:small"><span style=3D"color:rgb(34,34,34);font-family:Arial,=
Helvetica,sans-serif;font-size:small">How can I verify/follow the when the =
project will schedule=C2=A0from Stable=C2=A0</span><span style=3D"color:rgb=
(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small">to LTS?=
=C2=A0 There is an estimate for the EOL ?</span><br style=3D"color:rgb(34,=
34,34);font-family:Arial,Helvetica,sans-serif;font-size:small"><br style=3D=
"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small=
"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif=
;font-size:small">Thank you in advance</span>
<br>
<br>
<br>
</blockquote></div>

--000000000000d297cc05c8a7ff46--
