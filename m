Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42F0E7C4C4
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 14:32:53 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.20248.1696429970560702159
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 07:32:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=CcaxqWq3;
 spf=pass (domain: smile.fr, ip: 209.85.218.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-991c786369cso372785166b.1
        for <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 07:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1696429969; x=1697034769; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h40hMa/1FjBx3I8OfYWnmT+/8MBi+pX4wCzy2eE8TFA=;
        b=CcaxqWq3v9fGI5hQWAYvH/nmFYVq+85wOePM7XVryrWXKlZprXDSElkvCqYM1zBu4c
         EXz/VaDvGoj9rV1BEviCUijIRs2OdMofWUWamZo63hbRJ01xrR2PoMzW0RAQ0TFHuaaT
         bIfevPLDl5FElpRMO4iAzUPzQsuI2DyrlpxPgZ2RqtzL1k2gDup0qHibX65eGRAli0Vl
         vxgoF63VU0vyR3hpU85f2gYEjQJcDLw0xKZNcM1YKZDjDZ2CFTKLpcMLSjoFPBMnZlQX
         9nPzj07jc5K1RhdPItiNnQUc+m07coafPYLnJVxTnKJTYWBnkyAj508tdZs7e2TAcqbK
         zQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696429969; x=1697034769;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h40hMa/1FjBx3I8OfYWnmT+/8MBi+pX4wCzy2eE8TFA=;
        b=PhQ8tvTY+QPh249h6EXNaWYsPZhnJIFvD7auNWrIE5pFEFCjSLymRMrEGVQVThRdjh
         iHV7G+auwzZnkxuVYZGqmANeX8BikPy4WALd3c+lgGMm5gpzwldJBbrMIFPioBi7jMhN
         5r+4WNZ3Neo/TQGJNUA0RgW0EMoL8l4TaNxTa7zyWOuUazryRmFwLwGwmE/CBAXVtNg9
         CoTaLvdQldBrn+z5x5qdzvMu9Zy6dw6kp+yU4TBZaJX9GuPh9ls8z6imCZgcE1N7QpkU
         k5aBgQQf40bUjdgot4zGz2pjVLXzdxxGfiv8AuTSwwJDl5EZG/ROn1Wg7ALts1RHD74h
         tXMQ==
X-Gm-Message-State: AOJu0YwjaVlRI0XFbqf7p26/BThfnngKlyVaFahKdx2l4de9SwbREOQe
	fIhrPKmym6ZbHHkOurbqt8qV8O8Bcpbob2ih5Rl5gQ==
X-Google-Smtp-Source: AGHT+IGo2dvWjB6zliPUx5yanWrEvKdSG1hZ7rtc3CUr98mPJplr9NWQOiGCOdrp7IWwLmq3kPq/ZelmxEutU7nd8d4=
X-Received: by 2002:a17:906:3ca1:b0:9b6:5b56:bbe3 with SMTP id
 b1-20020a1709063ca100b009b65b56bbe3mr1905163ejh.72.1696429968668; Wed, 04 Oct
 2023 07:32:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAMSfU+6OTCCZOv+VfnPOzTFdCoYYpX0UPL-QX_J9Zw5fT3O3rQ@mail.gmail.com>
 <56CEEDDB-A10A-4C86-87AF-64635683842C@gmail.com>
In-Reply-To: <56CEEDDB-A10A-4C86-87AF-64635683842C@gmail.com>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Wed, 4 Oct 2023 16:32:22 +0200
Message-ID: <CAMSfU+4FRbKRLvsBMaR9Vd6MxnJ96WAW9Ex7KZGtgj7-KHYk0g@mail.gmail.com>
Subject: Re: [yocto] devtool build error
To: SIMON BABY <simonkbaby@gmail.com>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ab4ef80606e4e1e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 14:32:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61239

--000000000000ab4ef80606e4e1e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 4 oct. 2023 =C3=A0 16:17, SIMON BABY <simonkbaby@gmail.com> a =C3=
=A9crit :

> Thanks Yoann .
> Do we have any workaround ?
>
> Is there any other way to change the kernel source other than devtool?
>

I would either :
1) Spend the time to fix the bug
2) Do what I did in the good-ol' days before I used devtool :
 * patch in tmp/work-shared/kernel-source directory (path approximated from
memory)
 * convince bitbake to build without cleaning your patch (something with
"bitbake -C compile ..." maybe?)
 * once tested, git format-patch to extract patches that can be used in
your recipe

It's hard to tell for sure which one will be shorter for you.
1) is definitely better for the community so I encourage you to try it ;)

Regards,


> Regards
> Simon
>
> Sent from my iPhone
>
> On Oct 3, 2023, at 11:27 PM, Yoann CONGAL <yoann.congal@smile.fr> wrote:
>
> =EF=BB=BF
> Hello,
>
> Le mer. 4 oct. 2023 =C3=A0 00:31, SIMON BABY <simonkbaby@gmail.com> a =C3=
=A9crit :
>
>> Hello Team,
>>
>>
>> Can someone help to fix the error I see when using devtool build or
>> devtool update-recipe.
>>
>>
>> *Exception: bb.fetch2.FetchError: Fetcher failure: Recipe uses a floatin=
g
>> tag/branch '5.15/linux' for repo 'github.com/intel/linux-intel-lts.git
>> <http://github.com/intel/linux-intel-lts.git>' without a fixed SRCREV ye=
t
>> doesn't call bb.fetch2.get_srcrev() (use SRCPV in PV for OE).*
>>
> This looks like a recently opened bug (and a thread) :
> Bug 14918 - Devtool fails if SRCREV is set to ${AUTOREV}
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14918
>
> Thread :
> https://lists.openembedded.org/g/bitbake-devel/message/13976?p=3D%2C%2C%2=
C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2CAUTOREV%2C20%2C2%2C0%2C93=
674384
>
> Sorry, there is no fix yet but maybe you can contribute
> information/context for the bug?
>
> Regards,
>
> --
> Yoann Congal
> Smile ECS
>
>>

--=20
Yoann Congal
Smile ECS - Tech expert

--000000000000ab4ef80606e4e1e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0mer. 4 oct. 2023 =C3=A0=C2=A016:1=
7, SIMON BABY &lt;<a href=3D"mailto:simonkbaby@gmail.com">simonkbaby@gmail.=
com</a>&gt; a =C3=A9crit=C2=A0:</div><div class=3D"gmail_quote"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Thanks Yoann .<div=
>Do we have any workaround ?=C2=A0</div><div><br></div><div>Is there any ot=
her way to change the kernel source other than devtool? <br></div></div></b=
lockquote><div><br></div><div>I would either :</div><div>1) Spend the time =
to fix the bug</div><div>2) Do what I did in the good-ol&#39; days before I=
 used devtool :</div><div>=C2=A0* patch in tmp/work-shared/kernel-source di=
rectory (path approximated from memory)</div><div>=C2=A0* convince bitbake =
to build without cleaning your patch (something with &quot;bitbake -C compi=
le ...&quot; maybe?)=C2=A0</div><div>=C2=A0* once tested, git format-patch =
to extract patches that can be used in your recipe</div><div><br></div><div=
>It&#39;s hard to tell for sure which one will be shorter for you.</div><di=
v>1) is definitely better for the community so I encourage you to try it ;)=
<br></div><div><br></div><div>Regards,<br></div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><div></div><div>R=
egards</div><div>Simon<br><br><div dir=3D"ltr">Sent from my iPhone</div><di=
v dir=3D"ltr"><br><blockquote type=3D"cite">On Oct 3, 2023, at 11:27 PM, Yo=
ann CONGAL &lt;<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">y=
oann.congal@smile.fr</a>&gt; wrote:<br><br></blockquote></div><blockquote t=
ype=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"auto"><div>Hello,<br><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le mer. 4=
 oct. 2023 =C3=A0 00:31, SIMON BABY &lt;<a href=3D"mailto:simonkbaby@gmail.=
com" target=3D"_blank">simonkbaby@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><p=
 class=3D"MsoNormal">Hello Team,</p><p class=3D"MsoNormal"><br></p><p class=
=3D"MsoNormal">Can someone help to fix the error I see when using devtool b=
uild=C2=A0or devtool update-recipe.=C2=A0</p><p class=3D"MsoNormal"><br></p=
><p class=3D"MsoNormal"><b><font color=3D"#ff9900">Exception: bb.fetch2.Fet=
chError: Fetcher failure: Recipe uses a floating tag/branch &#39;5.15/linux=
&#39; for repo &#39;<a href=3D"http://github.com/intel/linux-intel-lts.git"=
 rel=3D"noreferrer" target=3D"_blank">github.com/intel/linux-intel-lts.git<=
/a>&#39; without a fixed SRCREV yet doesn&#39;t call bb.fetch2.get_srcrev()=
 (use SRCPV in PV for OE).</font></b></p></div></blockquote></div></div><di=
v dir=3D"auto">This looks like a recently opened bug (and a thread) :</div>=
<div dir=3D"auto">Bug 14918 - Devtool fails if SRCREV is set to ${AUTOREV}=
=C2=A0</div><div dir=3D"auto"><a href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D14918" target=3D"_blank">https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D14918</a></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Thread : <a href=3D"https://lists.openembedded.org/g/bitbake-devel/me=
ssage/13976?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecentpostdate%2Fsticky%2C%2CA=
UTOREV%2C20%2C2%2C0%2C93674384" target=3D"_blank">https://lists.openembedde=
d.org/g/bitbake-devel/message/13976?p=3D%2C%2C%2C20%2C0%2C0%2C0%3A%3Arecent=
postdate%2Fsticky%2C%2CAUTOREV%2C20%2C2%2C0%2C93674384</a></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Sorry, there is no fix yet but maybe you=
 can contribute information/context for the bug?</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Regards,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">--=C2=A0</div><div dir=3D"auto">Yoann Congal</div><div dir=3D"aut=
o">Smile ECS</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
</blockquote></div></div></div>
</div></blockquote></div></div></blockquote></div><br clear=3D"all"><br><sp=
an class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D=
"gmail_signature"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Co=
ngal</font><div><font face=3D"Raleway, regular">Smile ECS - Tech expert<br>=
</font></div></div></div></div>

--000000000000ab4ef80606e4e1e1--

