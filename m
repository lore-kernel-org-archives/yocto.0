Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.344.1611955427274513390
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 13:23:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=W/pTFq0i;
 spf=softfail (domain: googlemail.com, ip: 198.145.29.25, mailfrom: ayoub.zaki@googlemail.com)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2944C38C031F
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2021 21:23:46 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id a12so10175075qkh.10
        for <yocto@yoctoproject.org>; Fri, 29 Jan 2021 13:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xt1GtcOZ3la7IEbjC6QUCja89C51qMhzDoAI39uBRJc=;
        b=W/pTFq0iULZlTfG1gsAZw474XCRmnSn4GDcbU8cKTM4VqBE/yVCh3ep3XVyeeFidiu
         HhHJvJNovb9snuKWeq/aAEnFHCYIRlftYnXNWTUroiJyRimVVY9dsMwqYnSUbBhLksRd
         LcXoGCyz++nvLg1f47uwsGAVUl6iN+zNLS2JGXJBpryMIX3oB1j1OZUkzM65qjIb1h8O
         ANw3HfzCmLNJ90Njok0zZf32ucx8iW9EzDmhimg+2KGhO87/FCIPvWqu3KJ5kSYx3yDU
         nd94jFMWqQBecIZJ/1sbv0qLoMZ1W7Grdn6nr8J+eIZwRqtnKVlP2sqSpyIY3Nneer4p
         /gFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xt1GtcOZ3la7IEbjC6QUCja89C51qMhzDoAI39uBRJc=;
        b=RzE3C/O5QA/sYcrq1jqGwDLPjZyCDEgotCeQTL6UKscJwQjDdYy/TTzNaCM+OrulWU
         G9e7fYpM/N/oAjnQh98T0FqeYhuTlipWdxB8TDctGC+bKXgYkarFuYqU3+cEPffjen0g
         WOndXWRagJI8efkomRBji7SGeHu5y/wMLQ9//Fmv1WfAekl7qd7ehlJfGIsGKzPDdGIm
         ndxd28EoCO+yBLWP1yDzPXVoUDUy2jlY2Wd+rgbvZfRTsFnyysiVAYBnUAxelFt9nK7K
         Hu3enYL5I5+yEVN1YsH9zveAZw6zd3biAE3AimAuxytyeic81Bh+4gKqQIuYIgQc9f24
         3bqg==
X-Gm-Message-State: AOAM5339T6QUfCG/hZiKqzWhB1O0qKWNT8Cn3Gn1zoSYMXGHuvJhFLcN
	bvzSPvO5FGu322VgW9DNn5M9lFkYwbZRomWZQ6o=
X-Google-Smtp-Source: ABdhPJwbMWbE6gQ15UB18DkVjZ7/D4IeWpDKYrDIJvJh1znPeK8Gbx/6Wb5xSCtFZUDXl/718YGXuWVB9NB7Q881zsA=
X-Received: by 2002:a37:a2d8:: with SMTP id l207mr6344896qke.190.1611955425102;
 Fri, 29 Jan 2021 13:23:45 -0800 (PST)
MIME-Version: 1.0
References: <CA+-BmJYV8Oh3+pDh3RW=sYrcjX7q4peNV6aH9y6fyZY-ba2nVQ@mail.gmail.com>
 <9e728fd4e9959c67cc0cfc8d32571c9aa5a6b7ac.camel@linuxfoundation.org>
In-Reply-To: <9e728fd4e9959c67cc0cfc8d32571c9aa5a6b7ac.camel@linuxfoundation.org>
From: "Ayoub Zaki" <ayoub.zaki@googlemail.com>
Date: Fri, 29 Jan 2021 22:23:34 +0100
Message-ID: <CA+-BmJZfznsT3hGieBhPUiei5R4P2=x5KH-GXG9dk4Eb=8sy3A@mail.gmail.com>
Subject: Re: [yocto] Task only for target recipe
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000081d05a05ba109edd"

--00000000000081d05a05ba109edd
Content-Type: text/plain; charset="UTF-8"

thanks for the hint :-)

it did it however I run in other problems:

My goal is to cross-compile executable scripts into binaries using shc
tool:  https://github.com/neurobin/shc

the SHC tool converts the scripts into C files, inherits the CC, CFLAGS and
LDFLAGS from environment and compiles them using ${CC}.

This works fine for recipes that cross-compile since  CC, CFLAGS and
LDFLAGS are defined but stuck when  dealing with allarch recipes (They are
Not defined).

Is there a way to overcome this?


Cheers



On Thu, Jan 28, 2021 at 10:26 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2021-01-28 at 18:53 +0100, Ayoub Zaki via
> lists.yoctoproject.org wrote:
> > Hello I created a new task that I want to run for every recipe of my
> > image but only for target recipes and skip all native, sdk,...
> > mytask.bbclass:
> >
> > addtask do_mytask after do_install
> >
> > do_mytask() {
> >     :
> > }
> >
> > do_mytask_class-target() {
> >
> >     bbwarn "mytask"
> >     :
> > }
> >
> > I added to local.conf :
> >
> > INHERIT += "mytask"
> >
> > I don't see it running! what is the proper way to achieve this?
>
> How are you running it? You've said you want it to run after do_install
> but not what should trigger it.
>
> Adding "before do_build" to the addtask line for example might trigger
> it (do_build is the default task).
>
> Cheers,
>
> Richard
>
>

--00000000000081d05a05ba109edd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">thanks for the hint :-)<div><br></div><div>it did it howev=
er I run in other problems:<div><br></div><div>My goal is to cross-compile =
executable scripts into binaries using shc tool:=C2=A0 <a href=3D"https://g=
ithub.com/neurobin/shc">https://github.com/neurobin/shc</a></div><div><br><=
/div><div>the=C2=A0SHC tool converts the scripts into C files, inherits the=
 CC, CFLAGS and LDFLAGS from environment=C2=A0and compiles them using ${CC}=
.</div><div><br></div><div>This works fine for recipes that cross-compile s=
ince=C2=A0 CC, CFLAGS and LDFLAGS are defined but stuck when=C2=A0 dealing =
with allarch recipes (They are Not defined).</div><div><br></div><div>Is th=
ere a way to overcome this?</div><div><br></div><div><br></div><div>Cheers<=
/div><div><br></div><div><br></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 28, 2021 at 10:26 PM R=
ichard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">ric=
hard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Thu, 2021-01-28 at 18:53 +0100, Ayoub Z=
aki via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; Hello I created a new task that I want to run for every recipe of my<b=
r>
&gt; image but only for target recipes and skip all native, sdk,...<br>
&gt; mytask.bbclass:<br>
&gt; <br>
&gt; addtask do_mytask after do_install<br>
&gt; <br>
&gt; do_mytask() {<br>
&gt; =C2=A0 =C2=A0 :<br>
&gt; }<br>
&gt; <br>
&gt; do_mytask_class-target() {<br>
&gt; <br>
&gt; =C2=A0 =C2=A0 bbwarn &quot;mytask&quot;<br>
&gt; =C2=A0 =C2=A0 :<br>
&gt; }<br>
&gt; <br>
&gt; I added to local.conf :<br>
&gt; <br>
&gt; INHERIT=C2=A0+=3D &quot;mytask&quot;<br>
&gt; <br>
&gt; I don&#39;t see it running! what is the proper way to achieve this?<br=
>
<br>
How are you running it? You&#39;ve said you want it to run after do_install=
<br>
but not what should trigger it.<br>
<br>
Adding &quot;before do_build&quot; to the addtask line for example might tr=
igger<br>
it (do_build is the default task).<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--00000000000081d05a05ba109edd--
