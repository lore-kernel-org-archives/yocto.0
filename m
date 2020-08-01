Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
 by mx.groups.io with SMTP id smtpd.web12.7338.1596273122826640305
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Aug 2020 02:12:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=XnqP29ah;
 spf=pass (domain: linaro.org, ip: 209.85.166.68, mailfrom: ryan.harkin@linaro.org)
Received: by mail-io1-f68.google.com with SMTP id s189so26754912iod.2
        for <yocto@lists.yoctoproject.org>; Sat, 01 Aug 2020 02:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=glBmCMLoO+Ce8zfBhKwzi7lwF3IkCBAp00Yf4Db14sE=;
        b=XnqP29ah+ZtUV5hhf+sPeSoVtUMIdu42yux/PVB05X2JIrDKn7WgMEXaN/DQAPWWy+
         bX7m3k1ecwEZhIjLUBeSJVheZEWBRxc1M/2llsEcz0bdhcZezEDGmv/EtXZ/LHO/BoUc
         v8Kqwe9j/zz+YWEii2rnj8ZyE2u1eDTHdEFMuPO1foT1cF9CEDbwQihpdBvYwZKQLKd0
         HDx8QC244tBNlh5t6r5sUggnHOOjRIsjNh+aMbbVDCUkzo4ZN01isX2Ii/11JcKWDcSu
         chZCZwSJto83DSxHdszg9IcmQS3fW5DustRUAHubvW6ew5UZf+AbwTA3DDDA4ojgclIg
         AZvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=glBmCMLoO+Ce8zfBhKwzi7lwF3IkCBAp00Yf4Db14sE=;
        b=NwUZIoetNWWgdyIwkdOnOGvaMw6Ri7uUeQ2kWCbJ5Qi6vwjA7QNo7rSow2GBPQrWYd
         K8FSVEGJtAVaaT+eW3BqiWRw4SwlcvreNro4V6ZIj4tF5R97EM8zZGo6pfdyxSZzgqvh
         euVbxBikav0Bi5df7Uo5lYNwFHruPi+84FsuORWiQ/EOWf9Rya14AQpQzewpiBpFD5et
         bqVT9d8NODe+iCHEZRSQyX3uUaImXZH+CmIWJMAYd6+GztJg3NP85IfzlxP5iLVjhI0S
         Luf9nOBAs1WWlFAV+QkzbiH7Da7P3CcPiR5zzxGgPY6ARaPnVlu5ugLn7Hto+hT4zPLg
         +ekA==
X-Gm-Message-State: AOAM530SbF0xfKn3s+s3QT0nT/9SQ3oybiH6bOkcs8MXSRp7pAH+wklD
	gI7naSSiBt/RofM77e4lD8NAmde6yLlTDjSn2qdiFg==
X-Google-Smtp-Source: ABdhPJw2CjYd6PsTYAJgAtiWTQhxdYbDaBPFHHjhLmXJJcnhxFggZka7P28N0ZcBbsK71hXcj+Q6i4vH7Ie3GwhLnd0=
X-Received: by 2002:a5d:9a99:: with SMTP id c25mr7383938iom.116.1596273122077;
 Sat, 01 Aug 2020 02:12:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAFA6WYPFfFyygzBc3enjDkr6bLeqeDau75iJ=2e8dju8cf7rzQ@mail.gmail.com>
In-Reply-To: <CAFA6WYPFfFyygzBc3enjDkr6bLeqeDau75iJ=2e8dju8cf7rzQ@mail.gmail.com>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Sat, 1 Aug 2020 10:11:51 +0100
Message-ID: <CAD0U-hL-WUH-Sah5RPnPuEbYHyYpTdyTPRD1XD=f-U7MmbNROQ@mail.gmail.com>
Subject: Re: dunfell gcc-sanitizers-arm-8.3 fails to build
To: Sumit Garg <sumit.garg@linaro.org>
Cc: yocto@lists.yoctoproject.org, Ralph Siemsen <ralph.siemsen@linaro.org>, 
	Jon Mason <Jon.Mason@arm.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	openembedded <openembedded@lists.linaro.org>
Content-Type: multipart/alternative; boundary="00000000000068037805abcd4cbc"

--00000000000068037805abcd4cbc
Content-Type: text/plain; charset="UTF-8"

Hi Sumit,

On Sat, 1 Aug 2020, 07:51 Sumit Garg, <sumit.garg@linaro.org> wrote:

> Hi Ryan,
>
> On Fri, 31 Jul 2020 at 21:05, Ryan Harkin <ryan.harkin@linaro.org> wrote:
> >
> > Hello,
> >
> > I'm migrating from Warrior to Dunfell and I'm getting a curious build
> failure in gcc-sanitizers.
> >
> > Here's the full gory detail:
> >     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
> >
> > However, the main error is this:
> >
> > | In file included from
> ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
> > |
> ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72:
> error: size of array 'assertion_failed__1152' is negative
> > |      typedef char IMPL_PASTE(assertion_failed_##_,
> line)[2*(int)(pred)-1]
> >
> > I have no idea where to begin with this. I don't even know why
> gcc-sanitizers is included in the build, what it does, or why I need it.
> I'm building an image with dev packages and gcc, so I guess that's why.
> >
> > I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc to null
> out the macros and that builds fine. I'm sure it won't work, should someone
> want to use it, mind you.
> >
> > Is there something obvious that I should be doing as part of a Warrior
> -> Dunfell migration to get this to work?
>
> I would suggest you to switch to GCC 9.2 Arm toolchain for Dunfell.
> RPB does the same [1].
>

I can do that, I have no reason to use 8.3 other than it's the default. Is
my problem a known issue with 8.3, or is moving to 9.2 a general suggestion?


> GCCVERSION = "arm-9.2"
>
> [1]
> https://github.com/96boards/meta-rpb/blob/dunfell/conf/distro/include/rpb.inc#L31


Thanks for the pointer.


>
> -Sumit
>
> >
> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to
> meta-arm-toolchain.
> >
> > Regards,
> > Ryan.
>

--00000000000068037805abcd4cbc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Sumit,<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, 1 Aug 2020, 07:51 Sumit Garg, &lt;<a =
href=3D"mailto:sumit.garg@linaro.org">sumit.garg@linaro.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">Hi Ryan,<br>
<br>
On Fri, 31 Jul 2020 at 21:05, Ryan Harkin &lt;<a href=3D"mailto:ryan.harkin=
@linaro.org" target=3D"_blank" rel=3D"noreferrer">ryan.harkin@linaro.org</a=
>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m migrating from Warrior to Dunfell and I&#39;m getting a curiou=
s build failure in gcc-sanitizers.<br>
&gt;<br>
&gt; Here&#39;s the full gory detail:<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://pastebin.ubuntu.com/p/nh4cDKMvgS=
/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://pastebin.ubuntu.=
com/p/nh4cDKMvgS/</a><br>
&gt;<br>
&gt; However, the main error is this:<br>
&gt;<br>
&gt; | In file included from ../../../../../../../../../work-shared/gcc-arm=
-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_p=
osix.cc:193:<br>
&gt; | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libs=
anitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of =
array &#39;assertion_failed__1152&#39; is negative<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 typedef char IMPL_PASTE(assertion_failed_##_, li=
ne)[2*(int)(pred)-1]<br>
&gt;<br>
&gt; I have no idea where to begin with this. I don&#39;t even know why gcc=
-sanitizers is included in the build, what it does, or why I need it. I&#39=
;m building an image with dev packages and gcc, so I guess that&#39;s why.<=
br>
&gt;<br>
&gt; I&#39;ve hacked meta-arm to patch sanitizer_platform_limits_posix.cc t=
o null out the macros and that builds fine. I&#39;m sure it won&#39;t work,=
 should someone want to use it, mind you.<br>
&gt;<br>
&gt; Is there something obvious that I should be doing as part of a Warrior=
 -&gt; Dunfell migration to get this to work?<br>
<br>
I would suggest you to switch to GCC 9.2 Arm toolchain for Dunfell.<br>
RPB does the same [1].<br></blockquote></div></div><div dir=3D"auto"><br></=
div><div dir=3D"auto">I can do that, I have no reason to use 8.3 other than=
 it&#39;s the default. Is my problem a known issue with 8.3, or is moving t=
o 9.2 a general suggestion?</div><div dir=3D"auto"><br></div><div dir=3D"au=
to"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
GCCVERSION =3D &quot;arm-9.2&quot;<br>
<br>
[1] <a href=3D"https://github.com/96boards/meta-rpb/blob/dunfell/conf/distr=
o/include/rpb.inc#L31" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://github.com/96boards/meta-rpb/blob/dunfell/conf/distro/include/rpb.inc#L=
31</a></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Thanks for the pointer.</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
-Sumit<br>
<br>
&gt;<br>
&gt; note: Warrior used meta-linaro-toolchain and for Dunfell, it&#39;s mov=
ed to meta-arm-toolchain.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ryan.<br>
</blockquote></div></div></div>

--00000000000068037805abcd4cbc--
