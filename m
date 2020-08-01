Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web11.7299.1596272956361294969
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Aug 2020 02:09:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=kdXyXWWi;
 spf=pass (domain: linaro.org, ip: 209.85.166.49, mailfrom: ryan.harkin@linaro.org)
Received: by mail-io1-f49.google.com with SMTP id w12so20373555iom.4
        for <yocto@lists.yoctoproject.org>; Sat, 01 Aug 2020 02:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FoEp07j39CL8FKInQhf8XronKtpWqV/wDAlSIYACcKo=;
        b=kdXyXWWiv4cNSN5uAh/gs7ZXCj4SPjh29RGia3pk8wac+7iQEMge1Db/XE38mjuYQJ
         qJMngAHkpqApvpECjyOPXEvyLZFa0DZaoMbsSXqrnjbI13ZVvCeWkVkgSFPXGxZe8/+g
         vHBz9yuR38IpDXHpV8kjZiKszQOFrQOrTQXWrzdxuEG1xYCN2sprjHiAX0ZyMwjUxyO7
         NbJAcBKROLOYZ3+tiasz0+na3gqfyvss7Hn+r9tTSfeyp21KxhZ9g1BobWm90CJYq4MZ
         qU7eqWKQMFmo91/u3qobyIR0WHSH5qGdj6ijuto3MQKF1VZBF3aqZGgBd39eZY2thv9/
         mp1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FoEp07j39CL8FKInQhf8XronKtpWqV/wDAlSIYACcKo=;
        b=BgfXyXLji0bdMwNtHTGgyDS0C4rfO5ge4zG16/y8XLp+GT5hJfLFfBJCvylG0vNxzc
         Pvx2r91nm91auWtHZ3UBR/lfUyYr+RgVrSYUXWONdUgAaj7nqlEAtpu5M/1IYasspryJ
         aD8zruUjoNdHH16XmUNzxGN28ymVq48h1vd7C9hlyoXmd/eXvIuFlT+IHXq7fECGEgGw
         LlVstqyOLur3N9dlUQKKdvMjfXAU8blyZNWN5jIWzsj3CKiEAqqU8Yt02Wtrhct84GV9
         raHOMqiV/6/Ow6oMV4qP+lU12fGKXywjutn4r/UXUcdoOkRncp7vZeZYUyZ/U0CMwAOu
         aVMA==
X-Gm-Message-State: AOAM531RYbYdeLh3b9VEG7o9fcykpbziPDW7D67s56N3NjN+toK1rQHJ
	KMRFOfsVOPlKLnIFqYVTZ1/Dd+4NLEYh4gPMYkkPhg==
X-Google-Smtp-Source: ABdhPJyiGfF4UkFvoo2S2nnvRKx/gqNU6J2NQ/5ZgUphJRPlFlHoMcyh1Oj5bQG2UgN0oxDPYmEbwBwA3NQ0T23IBwY=
X-Received: by 2002:a05:6638:2482:: with SMTP id x2mr9310851jat.55.1596272955787;
 Sat, 01 Aug 2020 02:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com>
In-Reply-To: <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Sat, 1 Aug 2020 10:09:05 +0100
Message-ID: <CAD0U-hKWOkCr0dAtfFY4k9+ZerV_ic-GpDc_0=5DQiwaYHuFWw@mail.gmail.com>
Subject: Re: [yocto] dunfell gcc-sanitizers-arm-8.3 fails to build
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Sumit Garg <sumit.garg@linaro.org>, 
	Ralph Siemsen <ralph.siemsen@linaro.org>, Jon Mason <Jon.Mason@arm.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, openembedded <openembedded@lists.linaro.org>
Content-Type: multipart/alternative; boundary="0000000000007eade005abcd423f"

--0000000000007eade005abcd423f
Content-Type: text/plain; charset="UTF-8"

Hi Khem,

On Fri, 31 Jul 2020, 21:58 Khem Raj, <raj.khem@gmail.com> wrote:

> On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin <ryan.harkin@linaro.org>
> wrote:
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
> >
> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's moved to
> meta-arm-toolchain.
> >
>
> is gcc 8.3 the latest for linaro
>

I assume so. I haven't attempted to change the default.


> > Regards,
> > Ryan.
> > 
>

--0000000000007eade005abcd423f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Khem,<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 31 Jul 2020, 21:58 Khem Raj, &lt;<a =
href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">On Fri, Jul 31, 2020 at 8:35 AM Ryan Hark=
in &lt;<a href=3D"mailto:ryan.harkin@linaro.org" target=3D"_blank" rel=3D"n=
oreferrer">ryan.harkin@linaro.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m migrating from Warrior to Dunfell and I&#39;m getting a curio=
us build failure in gcc-sanitizers.<br>
&gt;<br>
&gt; Here&#39;s the full gory detail:<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://pastebin.ubuntu.com/p/nh4cDKMvg=
S/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://pastebin.ubuntu=
.com/p/nh4cDKMvgS/</a><br>
&gt;<br>
&gt; However, the main error is this:<br>
&gt;<br>
&gt; | In file included from ../../../../../../../../../work-shared/gcc-ar=
m-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_=
posix.cc:193:<br>
&gt; | ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/lib=
sanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72: error: size of=
 array &#39;assertion_failed__1152&#39; is negative<br>
&gt; |=C2=A0 =C2=A0 =C2=A0 typedef char IMPL_PASTE(assertion_failed_##_, l=
ine)[2*(int)(pred)-1]<br>
&gt;<br>
&gt; I have no idea where to begin with this. I don&#39;t even know why gc=
c-sanitizers is included in the build, what it does, or why I need it. I&#3=
9;m building an image with dev packages and gcc, so I guess that&#39;s why.=
<br>
&gt;<br>
&gt; I&#39;ve hacked meta-arm to patch sanitizer_platform_limits_posix.cc =
to null out the macros and that builds fine. I&#39;m sure it won&#39;t work=
, should someone want to use it, mind you.<br>
&gt;<br>
&gt; Is there something obvious that I should be doing as part of a Warrio=
r -&gt; Dunfell migration to get this to work?<br>
&gt;<br>
&gt; note: Warrior used meta-linaro-toolchain and for Dunfell, it&#39;s mo=
ved to meta-arm-toolchain.<br>
&gt;<br>
<br>
is gcc 8.3 the latest for linaro<br></blockquote></div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">I assume so. I haven&#39;t attempted to ch=
ange the default.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
&gt; Regards,<br>
&gt; Ryan.<br>
&gt; <br>
</blockquote></div></div></div>

--0000000000007eade005abcd423f--
