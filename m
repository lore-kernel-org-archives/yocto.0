Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web08.5491.1621499535053621410
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 01:32:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=QhF8WmnD;
 spf=pass (domain: linaro.org, ip: 209.85.208.45, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f45.google.com with SMTP id w12so10652381edx.1
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 01:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Di0RMwJCFtNf9Xl376bqu8q9TWH9RXTxI/gi4HYqWiI=;
        b=QhF8WmnDbLcjhZDAHaC3IDVLxIZIHa473XtsgAZEUyWEPjICR3NdAD78aF5hoYw8wi
         s8qcGPtPkjLMiMv17GYLkY1wkD56O59xOt/kNpsVvKzgxoy0b4GEJ1c4JnRrQUbydaPk
         KKOE29GoJDnOnhgwSFO9hAqPuevz8qRDRMACBrStDGzuESRNLokLNjlxaA7U3a7UY+Vk
         i6nrpF5ioObTffL24clhuPbKyQGsgbAFPjbm5CaUtehoGVYylsetI2oXfaTWO9iXxo4L
         Ay8ngEZqvzZXaNlICJ2ScgcpE/zKLrS5X+mwCTz5Auzs+eIYwAT1Isnm9cA4hE1emR2W
         YgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Di0RMwJCFtNf9Xl376bqu8q9TWH9RXTxI/gi4HYqWiI=;
        b=JswFG2ZumSMOTnQ7r7pMlJOGaiZrJI+2Fu15NwBPPXIhbVafl6GBdiK2IYOcGfodpV
         qMpKyZS1/Ls0HAnUK9wg7r380EXkV/GVVDnfaq1Gefuim3HTUPYvFN8qW1WhAWAeVwIX
         85iT30sbtny36VjtNPquTG9D7GtQfzRxPneHisL6L9FSrGFJvaQXXLYDVb20QF3Yjbj1
         jYCTmCGXFsIZ2ifrdDnq2zQ/KlYQWetEd5XNyDowl5uyl5gzA/eAgAD+74zeLavIUDt9
         yCaA9PhYhmVbbQM1h1/nQeuLwNWy6RZU9tQzFyrx+TLmwbESVrpUmFNe+UWe+41wu2uh
         s9bg==
X-Gm-Message-State: AOAM5337g1c5loAlIE5TYqFKToxrgYV7GgB5qL3dwTPC9d8Ncnp3dXKa
	qLjt7NhZlW7rg2sUE/lqVXn8atQfGEsFeeYGIJCZKQ==
X-Google-Smtp-Source: ABdhPJzhJ+IfwLUc1y9r61S/QqsO4kiyFrjD4zWqkYswEiOyLLLZnV9QIr/X/vJaD7JW6vQkY9A/SwSOOq/4kGTdR0E=
X-Received: by 2002:a50:c44f:: with SMTP id w15mr3749638edf.79.1621499533506;
 Thu, 20 May 2021 01:32:13 -0700 (PDT)
MIME-Version: 1.0
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com>
 <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
 <CAMKF1srcOQwH41Z9g00ZRgaLuN=JS9D1wVNv-+3TP2c=GWOxYA@mail.gmail.com> <20210520081639.ybcnadwxsjvdgsme@qschulz>
In-Reply-To: <20210520081639.ybcnadwxsjvdgsme@qschulz>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Thu, 20 May 2021 10:32:02 +0200
Message-ID: <CAP71WjwJ4QdLM7FJpuADLP7A5K4x8zvX8MeyFXBHaa6DBicHDg@mail.gmail.com>
Subject: Re: [yocto] hostile freenode takeover
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b2d4e205c2bec72d"

--000000000000b2d4e205c2bec72d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 20, 2021 at 10:16 AM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Khem, all,
>
> On Wed, May 19, 2021 at 10:09:12AM -0700, Khem Raj wrote:
> > On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne
> > <nicolas.dechesne@linaro.org> wrote:
> > >
> > >
> > >
> > > On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko <
> Jasper.Orschulko@iris-sensing.com> wrote:
> > >>
> > >> -----BEGIN PGP SIGNED MESSAGE-----
> > >> Hash: SHA256
> > >>
> > >> Dear all,
> > >>
> > >> there have been recent reports of a hostile takeover of the freenode
> > >> service, as described in
> > >> https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409
> > >>
> > >> The Yocto Project should verify these reports and take the necessary
> > >> actions, in order to protect its users.
> > >
> > >
> > > Thanks for your email. We are aware, and have started to look into
> that.
> > >
> > > It looks like some open source communities have started to move to
> https://www.oftc.net/ or https://libera.chat/.. If anyone wants to bring
> any insights or recommendations... feel free!
> >
> > perhaps good time to consider matrix
> >
>
> I disagree. Matrix just does not work. I've been using with a few
> friends with mixed homeservers, chat.privacytools.io, matrix.org,
> converser.eu and self-hosted homeservers... I've sometimes not received
> tens of messages in a row, usually for a duration of at least 15 mins
> and there's obviously no indication whatsoever that I didn't receive
> messages except that the discussion does not make sense at all. And this
> happened to three other people on the room, each on a different homeserve=
r
> than the other, so not a PEBKAC :) Sometimes there are delays for
> messages too (I've seen 30min delays), so the whole context is lost.
>
> For a federated chat solution, that's really a bummer that its main
> feature is just so buggy it's unusable.
>
> If YP is ok with potentially not receiving questions or having people
> ask questions and not receive answers, then fine by me :)
>
> I'm probably among the small (?) minority of people experiencing those
> issues but that's not a bet I'd take with my projects.
>
> My 2=C2=A2.
>

I think the question of setting up Matrix for our community is a valid
question, though I think it's orthogonal to the current problem. If
freenode goes away , we need an alternate plan to move *right away* to
another IRC server. If we want to setup addition communications means (such
as Matrix or anything else) that needs to be discussed and it might take
more time.


>
> Cheers,
> Quentin
>

--000000000000b2d4e205c2bec72d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 20, 2021 at 10:16 AM Quen=
tin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com">quenti=
n.schulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hi Khem, all,<br>
<br>
On Wed, May 19, 2021 at 10:09:12AM -0700, Khem Raj wrote:<br>
&gt; On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne<br>
&gt; &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko &lt;<a href=3D"m=
ailto:Jasper.Orschulko@iris-sensing.com" target=3D"_blank">Jasper.Orschulko=
@iris-sensing.com</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; -----BEGIN PGP SIGNED MESSAGE-----<br>
&gt; &gt;&gt; Hash: SHA256<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Dear all,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; there have been recent reports of a hostile takeover of the f=
reenode<br>
&gt; &gt;&gt; service, as described in<br>
&gt; &gt;&gt; <a href=3D"https://gist.github.com/joepie91/df80d8d36cd9d1bde=
46ba018af497409" rel=3D"noreferrer" target=3D"_blank">https://gist.github.c=
om/joepie91/df80d8d36cd9d1bde46ba018af497409</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The Yocto Project should verify these reports and take the ne=
cessary<br>
&gt; &gt;&gt; actions, in order to protect its users.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks for your email. We are aware, and have started to look int=
o that.<br>
&gt; &gt;<br>
&gt; &gt; It looks like some open source communities have started to move t=
o <a href=3D"https://www.oftc.net/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.oftc.net/</a> or <a href=3D"https://libera.chat/" rel=3D"noreferr=
er" target=3D"_blank">https://libera.chat/</a>.. If anyone wants to bring a=
ny insights or recommendations... feel free!<br>
&gt; <br>
&gt; perhaps good time to consider matrix<br>
&gt; <br>
<br>
I disagree. Matrix just does not work. I&#39;ve been using with a few<br>
friends with mixed homeservers, <a href=3D"http://chat.privacytools.io" rel=
=3D"noreferrer" target=3D"_blank">chat.privacytools.io</a>, <a href=3D"http=
://matrix.org" rel=3D"noreferrer" target=3D"_blank">matrix.org</a>,<br>
<a href=3D"http://converser.eu" rel=3D"noreferrer" target=3D"_blank">conver=
ser.eu</a> and self-hosted homeservers... I&#39;ve sometimes not received<b=
r>
tens of messages in a row, usually for a duration of at least 15 mins<br>
and there&#39;s obviously no indication whatsoever that I didn&#39;t receiv=
e<br>
messages except that the discussion does not make sense at all. And this<br=
>
happened to three other people on the room, each on a different homeserver<=
br>
than the other, so not a PEBKAC :) Sometimes there are delays for<br>
messages too (I&#39;ve seen 30min delays), so the whole context is lost.<br=
>
<br>
For a federated chat solution, that&#39;s really a bummer that its main<br>
feature is just so buggy it&#39;s unusable.<br>
<br>
If YP is ok with potentially not receiving questions or having people<br>
ask questions and not receive answers, then fine by me :)<br>
<br>
I&#39;m probably among the small (?) minority of people experiencing those<=
br>
issues but that&#39;s not a bet I&#39;d take with my projects.<br>
<br>
My 2=C2=A2.<br></blockquote><div><br></div><div>I think the question of set=
ting up Matrix for our community is a valid question, though I think it&#39=
;s orthogonal to the current problem. If freenode goes away , we need an al=
ternate plan to move *right away* to another IRC server. If we want to setu=
p=C2=A0addition communications means (such as Matrix or anything else) that=
 needs to be discussed and it might take more time.=C2=A0</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div>

--000000000000b2d4e205c2bec72d--
