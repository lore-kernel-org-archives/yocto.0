Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web09.514.1579644368780395402
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 14:06:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VzKP1rrM;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id a203so4454013qkc.3
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2020 14:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xrgUD8fGzd2kX1GlNVYlBM+tPe+MzajsHl4s7DE6tE8=;
        b=VzKP1rrMAF7aoPCasWRb9ZoDmfjU84Gu7uwuThgiZnd1St+xrSZ3AlKtEqGGAa8WTJ
         A0jnpPPJ3RgQ9oZirpx5SRC6Q1GbnYAQxrNV3Pzor5VjZ7n6H9diunMMAelT/5RYJJZf
         KSweuIwKH57G8b3zQJWfPHJilFpPRq75Vgk/fVeJr8NmgEaFYDV28NGX5slCYkyfW73G
         NuWYnH9n5C8xm6XCaJUniFb2PDbSvjJkx1q4AQ0sWyKh6TCrYTmzjpL0F2uZbdZOBpdX
         DhgaUxJEsKIxFMbrb08mCco0mk6Qx87F8HqG1tcOz7osjjYaPfJ8NlpGR+jDMc/4p0pJ
         xMgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xrgUD8fGzd2kX1GlNVYlBM+tPe+MzajsHl4s7DE6tE8=;
        b=bZa0B2r4kn7Hh04uLQmsH4lsVE5d1O3BZ9cCFsmldYjy3rCjKjNu6CXLsJ4vbiNGT7
         JlrteLT/0VYooHOfPT/UChG4uskMpwJ+xQT14UElKSAdBUiQCL/dFmNgQ572aQURiwmO
         XKpqzjN/ZMiB2gXYYstGmXRFvs4QFn0HZcWPAZSehCKFUW2ld9z80vCZ5wHrxMDdXz3B
         SH7pn2xsUSmf4A3KX0oJ7CWmVAbeZLz4mp6jJTm7NUy3L7b6apYuzON5/J8WHymB8+qs
         0IT7Wr/enQow+BfbMoQhl8caqhhJE5x8wfuBRRpuXhg3UZl/4oqP3+//l5Vdryd/OvFC
         JRrw==
X-Gm-Message-State: APjAAAWIdxy/O+X2hQIa8taTgrZJY3N7Wl90HDs6j2z6fNuK94KSs/6c
	HHlftGgnaewBya/5hP0RmQqNWBqflwc6ObkNZmM=
X-Google-Smtp-Source: APXvYqzDIb3WYZdgP++NAFD++K9Lh06/HExdfohOhPs7gqVvZH0xvUG2/8u70g24koa0BP6l2fXxVMUbdWjQlSy7FNQ=
X-Received: by 2002:a37:a3c7:: with SMTP id m190mr7042053qke.212.1579644367686;
 Tue, 21 Jan 2020 14:06:07 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org> <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
 <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com> <AM4PR05MB33802E8CAA38C64493DC3584A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
 <CA+chaQfwiwur0AbMz1sEee5Q7f3PziRxec6QRzBN37HqUd1Rww@mail.gmail.com> <AM4PR05MB33807AFEE9B9EA6595E177C7A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
In-Reply-To: <AM4PR05MB33807AFEE9B9EA6595E177C7A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 21 Jan 2020 14:05:56 -0800
Message-ID: <CAMKF1sq9NPtx0WiuwMetaqqdc02HvmTELSdg8=PN7-tYV0WJow@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: Martin Jansa <martin.jansa@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000684f21059cad9d2b"

--000000000000684f21059cad9d2b
Content-Type: text/plain; charset="UTF-8"

We need to move to py3 supported version as that will be matter of least
resistance perhaps

I get the point about lts version but we can see if that can be made an
exception when is next lts planned ?

Maintaining a py2 version is also a possibility we can make it parse only
when py2 layer is in mix otherwise ignore it

On Tue, Jan 21, 2020 at 11:40 AM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> Thanks for pointing me to that - I just tested it and it even works, when
> all python2-stuff is replaced by python3.
> So one thing to stop worrying about...
> On 21.01.20 18:27, Martin Jansa wrote:
>
> There is nodejs upgrade to 12.x on oe-devel ML:
>
> http://lists.openembedded.org/pipermail/openembedded-devel/2020-January/204363.html
> so we won't be staying on 10.x, but if 12.x isn't enough to build without
> meta-python2, then we might need 13.x :/.
>
> On Tue, Jan 21, 2020 at 6:09 PM Konrad Weihmann <kweihmann@outlook.com>
> wrote:
>
>>
>> On 20.01.20 12:22, Ross Burton wrote:
>> > npm needing Py2 is just disappointing.  Surely someone has ported it
>> > to py3 by now?
>> >
>>
>> Any news on that? From what I see nodejs is fully supporting python3 on
>> build host, only in 13.x branch (in 11.x and 12.x it's marked
>> 'experimental', whatever that means).
>> Have heard from a few people that cross compiling newer version is a
>> tricky thing to do.
>>
>> So what's the plan, stay on 10.x branch (which soon will be outdated
>> anyway) or go to 13.x?
>>
>> Regards
>>
>> Konrad
>>
>>
>> 
>

--000000000000684f21059cad9d2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">We need to move to py3 supported version as that wil=
l be matter of least resistance perhaps=C2=A0</div></div><div dir=3D"auto">=
<br></div><div dir=3D"auto">I get the point about lts version but we can se=
e if that can be made an exception when is next lts planned ?</div><div dir=
=
=3D"auto"><br></div><div dir=3D"auto">Maintaining a py2 version is also a =
possibility we can make it parse only when py2 layer is in mix otherwise ig=
nore it=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Jan 21, 2020 at 11:40 AM Konrad Weihmann &lt;<a h=
ref=3D"mailto:kweihmann@outlook.com">kweihmann@outlook.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">



<div>
<p>Thanks for pointing me to that - I just tested it and it even works, wh=
en all python2-stuff is replaced by python3.<br>
So one thing to stop worrying about... <br>
</p>
<div>On 21.01.20 18:27, Martin Jansa wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">There is nodejs upgrade to 12.x on oe-devel ML:
<div><a href=3D"http://lists.openembedded.org/pipermail/openembedded-devel=
/2020-January/204363.html" target=3D"_blank">http://lists.openembedded.org/=
pipermail/openembedded-devel/2020-January/204363.html</a><br>
</div>
<div>so we won&#39;t be staying on 10.x, but if 12.x isn&#39;t enough to b=
uild without meta-python2, then we might need 13.x :/.</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020 at 6:09 PM Konr=
ad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com" target=3D"_blank">=
kweihmann@outlook.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
On 20.01.20 12:22, Ross Burton wrote:<br>
&gt; npm needing Py2 is just disappointing.=C2=A0 Surely someone has porte=
d it <br>
&gt; to py3 by now?<br>
&gt;<br>
<br>
Any news on that? From what I see nodejs is fully supporting python3 on <b=
r>
build host, only in 13.x branch (in 11.x and 12.x it&#39;s marked <br>
&#39;experimental&#39;, whatever that means).<br>
Have heard from a few people that cross compiling newer version is a <br>
tricky thing to do.<br>
<br>
So what&#39;s the plan, stay on 10.x branch (which soon will be outdated <=
br>
anyway) or go to 13.x?<br>
<br>
Regards<br>
<br>
Konrad<br>
<br>
<br>
</blockquote>
</div>
</blockquote>
</div>

<br>
</blockquote></div></div>

--000000000000684f21059cad9d2b--
