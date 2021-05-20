Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web08.9344.1621522137359362622
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 07:48:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nsyolAs2;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: joel.winarske@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id j6so22263605lfr.11
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 07:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rs9ZEUnT4aGLfmisSNBwo75MPPUJQ8+/Ixa/UMHix4s=;
        b=nsyolAs205j/BUaRYo/0ToPSt/BqUJjE9CPkJExGNLRZEppxh/KqGAuQ1Ij1RFo/ml
         1mLSbUU0MJYZ8iVGHO22rrB3FKIJighDkbQ8ScdeEI3YB0EraMcYgaLqmCk6TM243mug
         p6Ieq4VqXAsCXep1EgHHbNEHftDqZyyT22UEtzXS7b4Q1oUY6rQtKNgGyaNZCXM1E9D2
         H4FNdrps1MZAlZOlXLMmJAvjW39oGnC3jHng7z08iNNmh2B0WKNJh5G4LR9OcXjxftov
         80TmMUvOBVA5mLDdSJgV7GCxQ4zOE56Z34T7QWs3A8M6UjP7yw1NgcBG1UW0CXAApfok
         vnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rs9ZEUnT4aGLfmisSNBwo75MPPUJQ8+/Ixa/UMHix4s=;
        b=ED6t8hTfOuGRUxylaDT+ks6oRPa728Z0A6IypCvMQW6xODi8f4J+hdgPFXEIFV8CBG
         ErGEMhloG/1pJdCvAjIiFVwDKMIMjI8S8kNwsLbBgrBg8Ppbka5wyVQ/qjXTR45kEaSE
         64KKQ6J9FGEmXddJeh0bKFpArBKAjdsEnS7DhCksOuVFdVtiizJG5ypqNGe7F8CBmE9l
         JJnbzbiXUHo6IVvJiiYXgcBGQ4TZcQIo4q1+fWwZ+9e1REQvtMCU7rclEH5hYgO8lqHE
         EilhFoSTsFVm8J/9LWjMrPZFPL+yORUk6Ey0FG6U4dB3UZ7Qy9WCGM3abol0w6tgiGbN
         4FMw==
X-Gm-Message-State: AOAM533ABiSlAVlMALgXmPnWDl1zrAtsCqMox6KEHBG/2t9B09RTqKkJ
	qlrMghLX4XkKNsRGv6elm48ydeY6Y8SESWlOTFE=
X-Google-Smtp-Source: ABdhPJxtUBWGBWMdjJXe3kEsHapt0fLKbzgrdiNFDXYEllI9Pkh8I1fK6frGWg6m7t+QSXKVzeQEmSdrdK6XL+ZJDRw=
X-Received: by 2002:ac2:4e51:: with SMTP id f17mr3602616lfr.251.1621522135493;
 Thu, 20 May 2021 07:48:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lzvm0rpRMmP47DqucrJh2f+BZgNQeobZG5-dkCjfxitaw@mail.gmail.com>
In-Reply-To: <CAGAf8Lzvm0rpRMmP47DqucrJh2f+BZgNQeobZG5-dkCjfxitaw@mail.gmail.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Thu, 20 May 2021 07:48:42 -0700
Message-ID: <CABKMkPKFKdXHt7AjyNcBOc0gBYK6D4i9WufGt8Co=OTvDdZQyA@mail.gmail.com>
Subject: Re: [yocto] Problem with YOCTO Dunfell and host Fedora 33
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e1af7705c2c40a32"

--000000000000e1af7705c2c40a32
Content-Type: text/plain; charset="UTF-8"

Hi Zoran,

Your cannelloni recipe is set to autorev, meaning it's not locked to a
commit.  So when something changes upstream you have to manage it.

Chances are Canelloni introduced a CMake change which is overwriting
(opposed to appending) one or more variables required for cross compiling.
Perhaps try to cross compile (not a host build) Canelloni by itself without
Yocto involved.  Once that's sorted, then reintroduce yocto.


Joel


On Thu, May 20, 2021, 6:58 AM Zoran <zoran.stojsavljevic@gmail.com> wrote:

> Hello Yocto developers,
>
> I have few problems running the following self proprietary script from
> one of my public git repos:
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh
>
> I recall that last time I used the script (I used then Fedora 31), the
> ./yocto setup dunfell worked seamlessly, did setup the environment,
> and upon bitbake -k core-image-minimal completed the tasks without any
> problem.
>
> Now, I am using Fedora 33 (in the meantime I did two Fedora version
> upgrades).
>
> The problem is that while compiling the cannelloni package, the
> following errors were issued (please, look into the attached file
> cmake_problem.txt).
>
> This cmake problem was introduced after switching from Fedora 31 to Fedora
> 33 ?!
>
> Any clue/idea why this is happening??? What is the cause of the problem?
>
> Thank you,
> Zoran
> _______
>
> 
>
>

--000000000000e1af7705c2c40a32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Zoran,<div dir=3D"auto"><br></div><div dir=3D"aut=
o">Your cannelloni recipe is set to autorev, meaning it&#39;s not locked to=
 a commit.=C2=A0 So when something changes upstream you have to manage it.<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">Chances are Canelloni in=
troduced a CMake change which is overwriting (opposed to appending) one or =
more variables required for cross compiling.=C2=A0 Perhaps try to cross com=
pile (not a host build) Canelloni by itself without Yocto involved.=C2=A0 O=
nce that&#39;s sorted, then reintroduce yocto.</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto"><br></div>Joel</div><div dir=3D"auto"><br><br><div c=
lass=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, May 20, 2021, 6:58 AM Zoran &lt;<a href=3D"mailto:zoran.stojsavljevic@=
gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">Hello Yocto developers,<br>
<br>
I have few problems running the following self proprietary script from<br>
one of my public git repos:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/yoc=
to-setup.sh" rel=3D"noreferrer noreferrer" target=3D"_blank">https://github=
.com/ZoranStojsavljevic/bbb-yocto/blob/master/yocto-setup.sh</a><br>
<br>
I recall that last time I used the script (I used then Fedora 31), the<br>
./yocto setup dunfell worked seamlessly, did setup the environment,<br>
and upon bitbake -k core-image-minimal completed the tasks without any<br>
problem.<br>
<br>
Now, I am using Fedora 33 (in the meantime I did two Fedora version upgrad=
es).<br>
<br>
The problem is that while compiling the cannelloni package, the<br>
following errors were issued (please, look into the attached file<br>
cmake_problem.txt).<br>
<br>
This cmake problem was introduced after switching from Fedora 31 to Fedora=
 33 ?!<br>
<br>
Any clue/idea why this is happening??? What is the cause of the problem?<b=
r>
<br>
Thank you,<br>
Zoran<br>
_______<br>
<br>
<br>
<br>
</blockquote></div></div></div>

--000000000000e1af7705c2c40a32--
