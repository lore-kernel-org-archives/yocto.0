Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web10.16263.1586788326008982194
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 07:32:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=GPz8Ismv;
 spf=pass (domain: linaro.org, ip: 209.85.219.170, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f170.google.com with SMTP id 11so5308743ybj.11
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2020 07:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Eve+cIM98wErl/bmxFE+glk7temMsnLb26KwpFxXbyI=;
        b=GPz8IsmvdnsKxg8VudqBCjnqGWvL5adxqcENn9AYyQ32d0rmfJep1Bh2GGnRL21SPl
         B2PCz8ZsVHaAsRB2Jx3dgsr99GRoR7y5YfTuNiJmB3aDBI/98fN0TKFSQgSleKB/dhQV
         bQe5BD74dQEqtvIjCTaJqhh5Z2vPS56Pu/BHu2ZQkaRa9x4o0fxgEr/tg/Ez7qyYhVSE
         YdHJu9d7OH1rYYzf68En6yl98HdNy+dOfQSYFIRsqJ4tfbqp9QZbE3Iatq4JXKKtCPyy
         mYB7Ybk015gaORik2sEJIr+wF63xhvegBUxeoRvH3Sqqpt9CyUTncGJCE6zHiNxK0EGC
         pyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Eve+cIM98wErl/bmxFE+glk7temMsnLb26KwpFxXbyI=;
        b=HhDszXE+9CoD/Bm4lJJX2aZ8yKoV9sFgkFymKQE2pGEHgY9bGO8eAG8Ked1JaHvQkB
         WY/63spEXfWDspsOzNhZ5w8mfrMpBlIsRbua1aKo9xrowVZ1/zKE4L3JDp6VDPPH0djI
         /5jhe0AgXkSWsd1Cc5pKrNWRzPYWT5b/6VGa+7ETYe+MSlKHBInugsQn/AgEMyPLrNGk
         jZEmAZYoP284BopRMSkMH9d4B7+dY/GtBk25taIT1NObe/I/zARRA8CRy87X6mKMDAjQ
         F/99yN2x500TFDrBwVV0YgmTS4k4WbKYYrutvwThdYydEMT9ZroWHyIl+F2LOsh15igP
         tBoA==
X-Gm-Message-State: AGi0Pubpsb9AE3mx4ziWDNUJsSd4ySqQbUWg6v5yX/GyqRXWZloSm48A
	bVV6UhFp9yybFBtTceml16QjdJ+4byKRFW+0YQvQWA==
X-Google-Smtp-Source: APiQypKDJMLmsxO/hgHakIbUK0mWcGMz/o87s06hQCOXdvsLClbnRHQV4JuIOYSgydRZ9LUffWTiahcAdeCGFLZXOUc=
X-Received: by 2002:a25:ccc3:: with SMTP id l186mr26235643ybf.454.1586788325133;
 Mon, 13 Apr 2020 07:32:05 -0700 (PDT)
MIME-Version: 1.0
References: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
 <CAP71WjwiHBSZaGkGrPJmdgKeTQK+5TgckVF86S50yEmWObR1LA@mail.gmail.com> <CANNYZj8xE7yS8Y4R9UimWyQsqyr=x91OuPCyxvcCKZf+Cqtb=g@mail.gmail.com>
In-Reply-To: <CANNYZj8xE7yS8Y4R9UimWyQsqyr=x91OuPCyxvcCKZf+Cqtb=g@mail.gmail.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Mon, 13 Apr 2020 16:31:53 +0200
Message-ID: <CAP71WjxyT43FjNaSdjqFf6EOrOE7sAH-AnL6uV323Drm6AWJmQ@mail.gmail.com>
Subject: Re: [yocto] What is the recommended method to patch a recipe?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: nus1998 <nus1998@yeah.net>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000742a7305a32cf26b"

--000000000000742a7305a32cf26b
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 13, 2020 at 12:55 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Mon, 13 Apr 2020 at 12:46, Nicolas Dechesne <
> nicolas.dechesne@linaro.org> wrote:
>
>> A good rule of thumb is to never modify a metadata that is not yours.
>> That applies to everything:
>> * if you need to modify a bb file from a 3rd party library, create a
>> bbappend file in your layer
>> * if you need to modify a bbappend from a 3rd party, then create another
>> bbappend in your layer
>>
>> And by 3rd party i mean any layer/tree which is not yours (OE-core, or
>> any other layer your are using).
>>
>
> I beg to differ! Bbappends are making it difficult to reason about what
> the recipe with all its appends is doing (because they destroy spatial
> locality and aren't easily visible), and I would actually discourage using
> them if the modification can go to the original recipe.
>

Ok.. you're right. Well at least my answer is not complete ;)


> Is it fixing a problem? Is it adding a build option absent from the
> original recipe? Then please take the trouble to submit the change to the
> owners of the recipe.
>

This is correct. We should encourage everyone to report, and even better
propose a fix, to the relevant layer, when the 'problem' is applicable. I
didn't want to discourage that, for sure!
When developing against master, it's a no brainer. When developing against
a stable branch (like probably many users), it's not as obvious. In that
case I think trying to avoid 'touching' somebody else layer remains a good
advice, since it makes upgrades and maintenance trickier.



>
> Similarly, if a bbappend is re-setting the component version to something
> else (yes, people do that despite my best efforts to prohibit the
> practice), then a much cleaner approach is to actually make a fully copy of
> the recipe, or go and fix the original.
>

Recipes version upgrades (or downgrade) should be done in a dedicated layer
owned by the 'developer', and in that case, I agree that bbappend should be
prohibited, and the entire recipe should be copied.


> Alex
>

--000000000000742a7305a32cf26b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 13, 2020 at 12:55 PM Alex=
ander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon, 13 Apr 2020 at 12:46, Nico=
las Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_=
blank">nicolas.dechesne@linaro.org</a>&gt; wrote:<br></div><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">A good rule of thumb is to never modify a metadata that is not yours. Th=
at applies to everything:<div class=3D"gmail_quote"><div>* if you need to m=
odify a bb file from a 3rd party library, create a bbappend file in your la=
yer</div><div>* if you need to modify a bbappend from a 3rd party, then cre=
ate another bbappend in your layer</div><div><br></div><div>And by 3rd part=
y i mean any layer/tree which is not yours (OE-core, or any other layer you=
r are using).</div></div></div></blockquote><div><br></div><div>I beg to di=
ffer! Bbappends are making it difficult to reason about what the recipe wit=
h all its appends is doing (because they destroy spatial locality and aren&=
#39;t easily visible), and I would actually discourage using them if the mo=
dification can go to the original recipe. <br></div></div></div></blockquot=
e><div><br></div><div>Ok.. you&#39;re right. Well at least my answer is not=
 complete ;)</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div></div><div><br></d=
iv><div>Is it fixing a problem? Is it adding a build option absent from the=
 original recipe? Then please take the trouble to submit the change to the =
owners of the recipe.</div></div></div></blockquote><div><br></div><div>Thi=
s is correct. We should encourage everyone to report, and even better propo=
se a fix, to the relevant layer, when the &#39;problem&#39; is applicable. =
I didn&#39;t want to discourage that, for sure!</div><div>When developing a=
gainst master, it&#39;s a no brainer. When developing against a stable bran=
ch (like probably many users), it&#39;s not as obvious. In that case I thin=
k trying to avoid &#39;touching&#39; somebody else layer remains a good adv=
ice, since it makes upgrades and maintenance trickier.</div><div><br></div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div><br></div><div>Similarly, if a bba=
ppend is re-setting the component version to something else (yes, people do=
 that despite my best efforts to prohibit the practice), then a much cleane=
r approach is to actually make a fully copy of the recipe, or go and fix th=
e original.<br></div></div></div></blockquote><div><br></div><div>Recipes v=
ersion upgrades (or downgrade) should be done in a dedicated layer owned by=
 the &#39;developer&#39;, and in that case, I agree that bbappend should be=
 prohibited, and the entire recipe should be copied.<br></div><div><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div></div><div><br></div><div>Alex<br></div></div></d=
iv>
</blockquote></div></div>

--000000000000742a7305a32cf26b--
