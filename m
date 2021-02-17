Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web09.770.1613520878678649552
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 16:14:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Oss5RL1F;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id b24so8359382qtp.13
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 16:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZnsnvgsUiA8HnXNHbvNg8V9E9y05lZ/ZQzIhxir6xPw=;
        b=Oss5RL1F1/F14baquXVTSaimz/Q7aiT6UyxQZu55oRQPhbibnijZVyNJX5hKGLi3OE
         EO4QyByQ4+WwllTPU3ow57vy8bHZn8Wvx5o2FGBQLh1dhhTDYEmrHWGH/quyar4aAEOU
         iXq4rTa9IgUcxJHzHDj0AiCvZTQdo8jbsgKdkFW1LZLRjdr9Eq9NlE4BIOOxi0eLGius
         y476OSYFadFKpo/l+g3H+Kb1XtzXX9rGXhexuhbg5NPtNDy3V9X+KcC+oAeYJio4557P
         o1Z/qBe0uB/o0tISAnsxnXhZtZLtv8wCae6dmiyBTfQa/fLOJFVg0G1pxmOZXsF7fMgC
         W/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZnsnvgsUiA8HnXNHbvNg8V9E9y05lZ/ZQzIhxir6xPw=;
        b=WivjJNEyrNdRa4vhrCJfPaCydkP2sc0mcA+Gmo/0UQ31DBxYgDSNabFNSjUm0DrF4w
         LfJgOpd7Hs7iJbo2zslZrP/eY7850PIRMcbW4caXbcnjohGOXUzhS3/+gXoOdJtTtbti
         sAUUfKU+YnOXEDhhjEWs+/e9VlyR9OiIQcA9lPVpeoOhKNx3KABRiaMD8Wv8gFudo81v
         JHE9tqA/LHn8eXuLk02Y4Pfabr+ch9CctEaKSgfho+oEo3QQtASBS/bEmZJrRA3sDhO0
         ASoGsW9ZjTO37RXzHb4J0Wkt3XAlyoWfrdareFwft6FQ7NBxJr72B4pzJ81XM1a5p4WQ
         AA/w==
X-Gm-Message-State: AOAM530+yeDaJ+8WpfoyCjvmUbeTMFuQjMq31yZmqBrJbYwU/DGnZ9uY
	bCVgoPmmKWLklI7ibHxwSC/y3Af7GxiVzqkLo+s=
X-Google-Smtp-Source: ABdhPJxcGLLoeFn5nDKTjwbBNeju8RaSZzdit+3iPqY2DlGZIWKKpdZAIKTWkhg6jOM6pZ9zCOlJ53R9P+v6dE63meI=
X-Received: by 2002:ac8:3899:: with SMTP id f25mr21587249qtc.369.1613520877768;
 Tue, 16 Feb 2021 16:14:37 -0800 (PST)
MIME-Version: 1.0
References: <CAEyb4nGKD+YCsmxH4-B43JjDAToWe0CysMh78Z9m6R5Wq_p4Dg@mail.gmail.com>
 <CAMKF1spDGqiU=L7s7o9NGtq-9b=1Ad_v4_+V3B7qSkdJFQo32A@mail.gmail.com> <CAEyb4nEd8VVqSPvUtQWB5vnm8jSGPhiDA3=sROrb5miE_fx6vg@mail.gmail.com>
In-Reply-To: <CAEyb4nEd8VVqSPvUtQWB5vnm8jSGPhiDA3=sROrb5miE_fx6vg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 16 Feb 2021 16:14:27 -0800
Message-ID: <CAMKF1spPnSa1AQF5X8DukXjre_74URzg6u1r7Yb0-Co=iADnMw@mail.gmail.com>
Subject: Re: [yocto] Keep .bbappend for older Yocto version
To: Jonas Vautherin <jonas.vautherin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c1d1c905bb7d1a43"

--000000000000c1d1c905bb7d1a43
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 16, 2021 at 3:54 PM Jonas Vautherin <jonas.vautherin@gmail.com>
wrote:

> Thank you for the answer :-). Yes, that works, and it seems like it is
> commonly used already. But because there is a way to define which versions
> are supported in the machine configuration, I thought there may be a way
> without branches, i.e. having a layer that actually is compatible with
> multiple versions.
>

Yes in some layers they do work across releases but
That does have some restrictions and maintenance costs eg if you are
patching a recipe via a bbappend then use more liberal bbappend names using
% wild characters and make sure same patch can apply to different versions
of the package etc

Usually maintaining per Releaee branch turns out to be less costly over
time


> Otherwise what's the point of LAYERSERIES_COMPAT, if the way to move to
> another version is to branch away? Is that a legacy option?
>
> Best,
>
>
> On Wed, 17 Feb 2021, 00:32 Khem Raj, <raj.khem@gmail.com> wrote:
>
>> perhaps you should create a new branch for this layer which will be
>> compatible with gatesgarth, you can seed it with dunfell branch
>> and then make needed changes
>>
>> On Tue, Feb 16, 2021 at 3:02 PM Jonas Vautherin
>> <jonas.vautherin@gmail.com> wrote:
>> >
>> > Good evening,
>> >
>> > I am using Yocto Gatesgarth, and I was just updating a layer that was
>> written for Dunfell. In the `conf/layer.conf`, I can simply add
>> "gatesgarth" to `LAYERSERIES_COMPAT_pocketbeagle`, like so:
>> >
>> > ```
>> > LAYERSERIES_COMPAT_pocketbeagle = "dunfell gatesgarth"
>> > ```
>> >
>> > However, this does not seem to work for a `.bbappend`. Let me use this
>> particular layer as an example: it is a BSP that defines
>> `linux-yocto_4.19.bbappend` for Dunfell. In my case, I want to define
>> `linux-yocto_5.4.bbappend` for Gatesgarth. When building with Dunfell, I
>> would like it to use the former, and when building with Gatesgarth, I would
>> like it to use the latter.
>> >
>> > However, if I keep both `linux-yocto_4.19.bbappend` and
>> `linux-yocto_5.4.bbappend` and try to build with Gatesgarth, it fails with:
>> >
>> > ```
>> > ERROR: No recipes in default available for:
>> >   /path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend
>> > ```
>> >
>> > Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.
>> >
>> > Is there a way to keep both `*.bbappend` and have Yocto ignore the ones
>> that do not correspond to its version? Or would that be bad practice anyway?
>> >
>> > Best Regards,
>> > Jonas
>> >
>> > 
>> >
>>
>

--000000000000c1d1c905bb7d1a43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Feb 16, 2021 at 3:54 PM Jonas Vautherin &lt;<a hre=
f=3D"mailto:jonas.vautherin@gmail.com">jonas.vautherin@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div>Thank y=
ou for the answer :-). Yes, that works, and it seems like it is commonly us=
ed already. But because there is a way to define which versions are support=
ed in the machine configuration, I thought there may be a way without branc=
hes, i.e. having a layer that actually is compatible with multiple versions=
.</div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Yes=
 in some layers they do work across releases but=C2=A0</div><div dir=3D"aut=
o">That does have some restrictions and maintenance costs eg if you are pat=
ching a recipe via a bbappend then use more liberal bbappend names using % =
wild characters and make sure same patch can apply to different versions of=
 the package etc=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">U=
sually maintaining per Releaee branch turns out to be less costly over time=
=
=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v dir=3D"auto"><div dir=3D"auto"></div><div dir=3D"auto"><br></div><div dir=
=
=3D"auto">Otherwise what&#39;s the point of LAYERSERIES_COMPAT, if the way=
 to move to another version is to branch away? Is that a legacy option?</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">Best,</div></div><div dir=
=3D"auto"><div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 17 Feb 2021, 00:32 Khem Raj=
, &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">perhaps you sh=
ould create a new branch for this layer which will be<br>
compatible with gatesgarth, you can seed it with dunfell branch<br>
and then make needed changes<br>
<br>
On Tue, Feb 16, 2021 at 3:02 PM Jonas Vautherin<br>
&lt;<a href=3D"mailto:jonas.vautherin@gmail.com" rel=3D"noreferrer" target=
=
=3D"_blank">jonas.vautherin@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Good evening,<br>
&gt;<br>
&gt; I am using Yocto Gatesgarth, and I was just updating a layer that was=
 written for Dunfell. In the `conf/layer.conf`, I can simply add &quot;gate=
sgarth&quot; to `LAYERSERIES_COMPAT_pocketbeagle`, like so:<br>
&gt;<br>
&gt; ```<br>
&gt; LAYERSERIES_COMPAT_pocketbeagle =3D &quot;dunfell gatesgarth&quot;<br=
>
&gt; ```<br>
&gt;<br>
&gt; However, this does not seem to work for a `.bbappend`. Let me use thi=
s particular layer as an example: it is a BSP that defines `linux-yocto_4.1=
9.bbappend` for Dunfell. In my case, I want to define `linux-yocto_5.4.bbap=
pend` for Gatesgarth. When building with Dunfell, I would like it to use th=
e former, and when building with Gatesgarth, I would like it to use the lat=
ter.<br>
&gt;<br>
&gt; However, if I keep both `linux-yocto_4.19.bbappend` and `linux-yocto_=
5.4.bbappend` and try to build with Gatesgarth, it fails with:<br>
&gt;<br>
&gt; ```<br>
&gt; ERROR: No recipes in default available for:<br>
&gt;=C2=A0 =C2=A0/path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend<b=
r>
&gt; ```<br>
&gt;<br>
&gt; Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.<br=
>
&gt;<br>
&gt; Is there a way to keep both `*.bbappend` and have Yocto ignore the on=
es that do not correspond to its version? Or would that be bad practice any=
way?<br>
&gt;<br>
&gt; Best Regards,<br>
&gt; Jonas<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div></div>
</blockquote></div></div>

--000000000000c1d1c905bb7d1a43--
