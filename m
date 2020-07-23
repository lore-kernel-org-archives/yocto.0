Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.12087.1595510881777784077
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 06:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ebGhgDX0;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id h28so4531726edz.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jul 2020 06:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OjkeIUsrp4jnGICc0Nu2yOMp8VEYoTWFOX2WyBqxlHY=;
        b=ebGhgDX0uqoqalJRChecRBDozYgI7Wg+hZ72YsWiu5Eb9ELU0onjLFU4EkPKJcW3D3
         tjMSDHmgFzpSnNi8kLx+pg8elnwcwqHa6cuoKS/g66TIEVTaT/j0QWMIpvTDt9dyrnYB
         261y9LusK7KOQmKdPRRTTIHMsMcJ26Xd61QORHzKCn+VE2ZDl+6YRnFSGdw2K0xJ1sGq
         qJqb05pQaSdEbBg4Y2lvWES2zK3UjJBt4VxW6lD/yVFhckRCgMHNNHiUZt9hRXEooeI/
         tOITqUNaLgpEhadDmZE031z1nOhlZOtMGtZQV+7QUT8aOveuhhpx9Pn8PK4SDBkLG2eJ
         bzPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OjkeIUsrp4jnGICc0Nu2yOMp8VEYoTWFOX2WyBqxlHY=;
        b=K0CwfUwv27kKZJpQ7a8kqWJ8dx/EeFwFzWca/rZ12YhXwt+rCA0tjVKEW7/lNDFHjR
         eJ+e0TszgUjn3qdE91zK5qB/d7h/ZZp7dRCN0LKWmtoBPBju+pDO+MPW8WW9s/Jx6/FN
         dxqYVIq3j7JEqTgiB2G3T8MXbvZ+YCwu8n+quHxdH7RYDShAm+r59Iih1H/QZjnd+cFC
         1xXEHlOqs6dP81mi7apB0gCqM8FPvTOWUq0v3Yli/inLGBy9YFtoFSiuVYlDR0Sm2smX
         GhWauN+3gT7zigaibhcS/7xCn5yEqpr0+HlfFTCrJgy5xP3g3AgXb8rpYXySj99BcXHz
         dSFQ==
X-Gm-Message-State: AOAM5303WjlHjcxypLIQ2nEH7o1v+n/Sm0vrcn0xiMm/yOUTYS9jaGUl
	wVqkQGkOe+jidyvpuW1nIU7GwaWVTRAdPkM56jI=
X-Google-Smtp-Source: ABdhPJw2ohJu5QoAVYchhdDqEBwZJBwY4qEvAVbpZ9ZRrg9xqDpJdTzSd+W0FMZ7lrG5hOsN0ZMbTuS+p3fnMkKDbxg=
X-Received: by 2002:a50:9f08:: with SMTP id b8mr4074718edf.388.1595510880238;
 Thu, 23 Jul 2020 06:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <CA+chaQdedfpH70Yj7CO5A4hZuCmffN+yh0Hr0yiQsywaS3D5AA@mail.gmail.com>
 <3944.1595508991982084564@lists.yoctoproject.org>
In-Reply-To: <3944.1595508991982084564@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Thu, 23 Jul 2020 15:27:48 +0200
Message-ID: <CA+chaQcmBGrTGBe-G_HmZqr9RQEp9+8VYufSfCgv=jWuhCzpEw@mail.gmail.com>
Subject: Re: [yocto] NO INTERNET ENVIRONMENT - USING PREMIRROR fails -> gstreamer1.0_1.12.2.bb:do_unpack failed due to a fetch issue
To: baranarman@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004084df05ab1bd30c"

--0000000000004084df05ab1bd30c
Content-Type: text/plain; charset="UTF-8"

Are you sure this is the whole SRC_URI and that there aren't some other
parts added through some .bbappend?

Always use "bitbake -e" to see whatever bitbake sees when building the
recipe to make sure.

"common" is git repository gstreamer components use in 1.12 it is git
submodule as you can see:
https://gitlab.freedesktop.org/gstreamer/gstreamer/-/tree/1.12

autogen was than checking out this git submodule during do_configure when
it wasn't there already, see:
https://gitlab.freedesktop.org/gstreamer/gstreamer/-/blob/1.12/autogen.sh#L19

Usually it was failing in do_configure when building without access to this
git repo, we were adding "common" git repo to SRC_URI explicitly to make
sure that the right revision is always there with the gstreamer sources and
managed with bitbake fetcher (so that it's used from downloads directory
instead of the fetch from internet every single time gst* recipes are
rebuilt for whatever reason).

In your error log it shows that it was failing already in do_unpack, so I
guess your recipe has some modifications to work around this issue as well,
but the part you've shown doesn't include it.

Regards,

On Thu, Jul 23, 2020 at 2:56 PM <baranarman@gmail.com> wrote:

>
> Martin  sorry that am im not quite sure if i get you right
>
> gstreamer1.0_1.12.2.bb is below
>
> "
> require gstreamer1.0.inc
>
> LIC_FILES_CHKSUM = "file://COPYING;md5=6762ed442b3822387a51c92d928ead0d \
>
> file://gst/gst.h;beginline=1;endline=21;md5=e059138481205ee2c6fc1c079c016d0d"
>
> SRC_URI = " \
>     http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.xz
> \
>     file://0001-configure-Add-switches-for-enabling-disabling-libdw-.patch
> \
> "
> SRC_URI[md5sum] = "4748860621607ffd96244fb79c86c238"
> SRC_URI[sha256sum] =
> "9fde3f39a2ea984f9e07ce09250285ce91f6e3619d186889f75b5154ecf994ba"
>
> S = "${WORKDIR}/gstreamer-${PV}"
>
> "
> I have no git repo. so how shall i set the "common" git repo?
> And also how can i set SRCREV + SRCREV_FORMAT for it
>
> I am quite new so can you be little bit more specific.
>
> Regards. 
>

--0000000000004084df05ab1bd30c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Are you sure this is the whole SRC_URI and that there aren=
&#39;t some other parts added through some .bbappend?<div><br></div><div>Al=
ways use &quot;bitbake -e&quot; to see whatever bitbake sees when building =
the recipe to make sure.</div><div><br></div><div>&quot;common&quot; is git=
 repository=C2=A0gstreamer components use in 1.12 it is git submodule as yo=
u can see:</div><div><a href=3D"https://gitlab.freedesktop.org/gstreamer/gs=
treamer/-/tree/1.12">https://gitlab.freedesktop.org/gstreamer/gstreamer/-/t=
ree/1.12</a><br></div><div><br></div><div>autogen was than checking out thi=
s git submodule during do_configure when it wasn&#39;t there already, see:<=
/div><div><a href=3D"https://gitlab.freedesktop.org/gstreamer/gstreamer/-/b=
lob/1.12/autogen.sh#L19">https://gitlab.freedesktop.org/gstreamer/gstreamer=
/-/blob/1.12/autogen.sh#L19</a><br></div><div><br></div><div>Usually it was=
 failing in do_configure when building without access to this git repo, we =
were adding &quot;common&quot; git repo to SRC_URI explicitly to make sure =
that the right revision is always there with the gstreamer sources and mana=
ged with bitbake fetcher (so that it&#39;s used from downloads directory in=
stead of the fetch from internet every single time gst* recipes are rebuilt=
 for whatever reason).</div><div><br></div><div>In your error log it shows =
that it was failing already in do_unpack, so I guess your recipe has some m=
odifications to work around this issue as well, but the part you&#39;ve sho=
wn doesn&#39;t include it.</div><div><br></div><div>Regards,</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, J=
ul 23, 2020 at 2:56 PM &lt;<a href=3D"mailto:baranarman@gmail.com">baranarm=
an@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>Martin=C2=A0 sorry that am im not quite sure if i get you r=
ight<br><br><a href=3D"http://gstreamer1.0_1.12.2.bb" target=3D"_blank">gst=
reamer1.0_1.12.2.bb</a> is below<br><br>&quot;<br>require gstreamer1.0.inc<=
br><br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D6762ed442b3822387a51=
c92d928ead0d \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://gst/gst.h=
;beginline=3D1;endline=3D21;md5=3De059138481205ee2c6fc1c079c016d0d&quot;<br=
><br>SRC_URI =3D &quot; \<br>=C2=A0=C2=A0=C2=A0 <a href=3D"http://gstreamer=
.freedesktop.org/src/gstreamer/gstreamer-$%7BPV%7D.tar.xz" target=3D"_blank=
">http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.xz</a>=
 \<br>=C2=A0=C2=A0=C2=A0 file://0001-configure-Add-switches-for-enabling-di=
sabling-libdw-.patch \<br>&quot;<br>SRC_URI[md5sum] =3D &quot;4748860621607=
ffd96244fb79c86c238&quot;<br>SRC_URI[sha256sum] =3D &quot;9fde3f39a2ea984f9=
e07ce09250285ce91f6e3619d186889f75b5154ecf994ba&quot;<br><br>S =3D &quot;${=
WORKDIR}/gstreamer-${PV}&quot;<br><br>&quot;<br>I have no git repo. so how =
shall i set the &quot;common&quot; git repo?<br>And also how can i set SRCR=
EV + SRCREV_FORMAT for it <br><br>I am quite new so can you be little bit m=
ore specific. <br><br>Regards.
<br>
</blockquote></div>

--0000000000004084df05ab1bd30c--
