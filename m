Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.51430.1594011035550014108
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 21:50:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=10+rXyUc;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.180, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f180.google.com with SMTP id q4so8001827lji.2
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 21:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v9pspQ3Rt/ryhtSMyqx0Edw2UL1oup3dmqTdvRrzTXk=;
        b=10+rXyUcTRxV2LA7yf+M147Q8P8GzqKiM8h/qCuTEJ6iRxhu/hGfzRNvB8h/HpuGK1
         d5tcssTJiP1pu/d0+wZgFoVdk35/3VVCq41etRCVDOvjHGf1j5eeG28OdMZq7Ncc+3zD
         0LqGokBsfmCZpo821kWEBVip6X122/Iqg+mTF1GMVDlK9OXNHbL51eg1xK2ynaYFNKPQ
         6tP+St/d+QzvS00Bi6kUcqPtFBtPS75hNQ9D10LLnJXD/owY6Bm0cX31WWUgB+p821T2
         f+FCUkEt/cN3A75zPJqFHTjazn8NldJn4vLb/XPOX8IiGoUngVeGxt29wi+9KoHeqtQs
         Jy7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v9pspQ3Rt/ryhtSMyqx0Edw2UL1oup3dmqTdvRrzTXk=;
        b=N6hx6B9f7QUT+Pk2AhejyPSd331E25fLegSPn6OUM+em9E096es9UInHluIy1z1pHa
         fGxB8S6Myl3BAhJsP+w1qw3f46BWwoeZuam+E7H5Du669XBpHM7T42Jtb8tXIo/mgXWd
         fLB77pl9vmb/LZpatsUW62HFppoIMmCKlLiQZvHTFMhMf4EwvYMfMANHpffjHsR0IGW0
         JaOCatd2nUkPbpgYVKiUiiRVtYtc5oE5Y02BwujcyeDxWpe1FP+IlKT/PAStk+S6G6WU
         I6E2uG47ImMvsUiLmSE67IOeMP3xRUHsc5J4NuDU3JEfwvZvuiozh0xorNIQLTzIDEI/
         KYXg==
X-Gm-Message-State: AOAM531Y0CpJlwWCGbLGQehtF5vl6bWrIuy4IWKIaSb1x6VMbLUnWYic
	NgpTxB/cmff83Mzm7SP1FXhEVdrvagwjY5XLjuZ+uw==
X-Google-Smtp-Source: ABdhPJwFYFBYjsjN6pe7PiJYBpLWyfN0pVBiQD2UKlp896diwrYFGffaDSrWdoJgujXKkeYhByz/UcdD5P3ZYM6cJoA=
X-Received: by 2002:a2e:8858:: with SMTP id z24mr18711549ljj.425.1594011033442;
 Sun, 05 Jul 2020 21:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
 <CAAnfSTu2mMMifGdTc0OtGfN8wXNQKddnZ9udTY0gbV0fQAvRRw@mail.gmail.com>
 <20200705152404.Horde.B3EKfbXBj697OSUtR4mf4S6@crashcourse.ca>
 <13669db91c4314f433e43a0ad7f7c4ba912c95db.camel@linuxfoundation.org> <20200705172658.Horde.aKqksEonhdfsnNCOQY9PS9l@crashcourse.ca>
In-Reply-To: <20200705172658.Horde.aKqksEonhdfsnNCOQY9PS9l@crashcourse.ca>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Mon, 6 Jul 2020 06:50:20 +0200
Message-ID: <CAEt6Nwpqpv1Zm0Emp2iRaYrJ57j1=Qdtet2fWHrF78wyx4_Grw@mail.gmail.com>
Subject: Re: [yocto] how does "bitbake meta-toolchain" map to a particular "image" when generating SDK?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006aaa3705a9be9d70"

--0000000000006aaa3705a9be9d70
Content-Type: text/plain; charset="UTF-8"

Howdy!

Robert P. J. Day <rpjday@crashcourse.ca> schrieb am So., 5. Juli 2020,
23:27:

>
> Quoting Richard Purdie <richard.purdie@linuxfoundation.org>:
>
> > On Sun, 2020-07-05 at 15:24 -0400, Robert P. J. Day wrote:
> >> Quoting Ross Burton <ross@burtonini.com>:
> >>
> >> > On Sun, 5 Jul 2020 at 11:50, Robert P. J. Day
> >> <rpjday@crashcourse.ca> wrote:
> >> > >    however, one can also generate a standard SDK with the generic
> >> > > (image-independent):
> >> > >
> >> > >    $ bitbake meta-toolchain
> >> > >
> >> > > which clearly does not identify an image (all that recipe does,
> >> > > really, is "inherit populate_sdk"), so i *guessed* that using that
> >> > > command will generate a standard SDK based only on what can be found
> >> > > in the various .conf files and associated variables (MACHINE,
> DISTRO,
> >> > > etc.) without being tied to a particular image.
> >> > >
> >> > >    just about to dive into the details, but is the above at least a
> >> > > simplistic way of looking at it?
> >> >
> >> > At the most fundamental level, you've asked bitbake to build
> >> > 'meta-toolchain'.  Looking in meta-toolchain.bb will show you what
> >> > that entails.  It's basically just the compilers and a few other tools
> >> > that were added as needed over the years.
> >>
> >>    i'd assumed as much, but is there a reason that the meta-toolchain
> target
> >> is not mentioned at all in the SDK manual? Would that not be the right
> >> place to mention it, even briefly?
> >
> > meta-toolchain is really old, from the days before the populate_sdk
> > task for images existed. It was created as a compatibility artefact and
> > as an example to show you could do standalone SDKs like that without
> > images.
> >
> > I'd imagine its not mentioned as we envisaged the populate_sdk tasks
> > taking over from meta-toolchain. I'm not even sure we test meta-
> > toolchain on the autobuilder. It probably continues to work as its so
> > similar to buildtools-tarball and friends.
> >
> > Should it be mentioned? Maybe...
>
>    that actually clears things up. i'll let others higher up the food chain
> decide if the meta-toolchain target should be documented, or if it's
> entirely superseded by the populate_sdk tasks.
>

I actually can see more use cases coming up due to the increasing interest
in building bare metal targets. My vote would be on documenting, and
preferably also testing.

Greetz


>
> rday
>
> 
>

--0000000000006aaa3705a9be9d70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Howdy!<br><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">Robert P. J. Day &lt;<a href=3D"mailto:rpjday@cr=
ashcourse.ca">rpjday@crashcourse.ca</a>&gt; schrieb am So., 5. Juli 2020, 2=
3:27:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><br>
Quoting Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundatio=
n.org" target=3D"_blank" rel=3D"noreferrer">richard.purdie@linuxfoundation.=
org</a>&gt;:<br>
<br>
&gt; On Sun, 2020-07-05 at 15:24 -0400, Robert P. J. Day wrote:<br>
&gt;&gt; Quoting Ross Burton &lt;<a href=3D"mailto:ross@burtonini.com" tar=
get=3D"_blank" rel=3D"noreferrer">ross@burtonini.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; &gt; On Sun, 5 Jul 2020 at 11:50, Robert P. J. Day=C2=A0 <br>
&gt;&gt; &lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank" re=
l=3D"noreferrer">rpjday@crashcourse.ca</a>&gt; wrote:<br>
&gt;&gt; &gt; &gt;=C2=A0 =C2=A0 however, one can also generate a standard =
SDK with the generic<br>
&gt;&gt; &gt; &gt; (image-independent):<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;=C2=A0 =C2=A0 $ bitbake meta-toolchain<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; which clearly does not identify an image (all that reci=
pe does,<br>
&gt;&gt; &gt; &gt; really, is &quot;inherit populate_sdk&quot;), so i *gue=
ssed* that using that<br>
&gt;&gt; &gt; &gt; command will generate a standard SDK based only on what=
 can be found<br>
&gt;&gt; &gt; &gt; in the various .conf files and associated variables (MA=
CHINE, DISTRO,<br>
&gt;&gt; &gt; &gt; etc.) without being tied to a particular image.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;=C2=A0 =C2=A0 just about to dive into the details, but i=
s the above at least a<br>
&gt;&gt; &gt; &gt; simplistic way of looking at it?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; At the most fundamental level, you&#39;ve asked bitbake to b=
uild<br>
&gt;&gt; &gt; &#39;meta-toolchain&#39;.=C2=A0 Looking in <a href=3D"http:/=
/meta-toolchain.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">meta-to=
olchain.bb</a> will show you what<br>
&gt;&gt; &gt; that entails.=C2=A0 It&#39;s basically just the compilers an=
d a few other tools<br>
&gt;&gt; &gt; that were added as needed over the years.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 i&#39;d assumed as much, but is there a reason that =
the meta-toolchain target<br>
&gt;&gt; is not mentioned at all in the SDK manual? Would that not be the =
right<br>
&gt;&gt; place to mention it, even briefly?<br>
&gt;<br>
&gt; meta-toolchain is really old, from the days before the populate_sdk<b=
r>
&gt; task for images existed. It was created as a compatibility artefact a=
nd<br>
&gt; as an example to show you could do standalone SDKs like that without<=
br>
&gt; images.<br>
&gt;<br>
&gt; I&#39;d imagine its not mentioned as we envisaged the populate_sdk ta=
sks<br>
&gt; taking over from meta-toolchain. I&#39;m not even sure we test meta-<=
br>
&gt; toolchain on the autobuilder. It probably continues to work as its so=
<br>
&gt; similar to buildtools-tarball and friends.<br>
&gt;<br>
&gt; Should it be mentioned? Maybe...<br>
<br>
=C2=A0 =C2=A0that actually clears things up. i&#39;ll let others higher up=
 the food chain<br>
decide if the meta-toolchain target should be documented, or if it&#39;s<b=
r>
entirely superseded by the populate_sdk tasks.<br></blockquote></div></div=
><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"></blockquote></div></div><div dir=3D"auto">I =
actually can see more use cases coming up due to the increasing interest in=
 building bare metal targets. My vote would be on documenting, and preferab=
ly also testing.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Greetz<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><br><br>
rday<br>
<br>
<br>
</blockquote></div></div></div>

--0000000000006aaa3705a9be9d70--
