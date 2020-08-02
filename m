Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
 by mx.groups.io with SMTP id smtpd.web10.5175.1596353431195121247
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Aug 2020 00:30:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=LSoX/A0a;
 spf=pass (domain: linaro.org, ip: 209.85.166.169, mailfrom: ryan.harkin@linaro.org)
Received: by mail-il1-f169.google.com with SMTP id t18so28703971ilh.2
        for <yocto@lists.yoctoproject.org>; Sun, 02 Aug 2020 00:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vdpHargQAXaviAfVrZf3HyOohIaePaGsiPmjuW8suvQ=;
        b=LSoX/A0aKGCvyVd1A1D0TmdbZzogs49CG1Xs09B/kQ56lW1rKwuesFh/SOq9n8Zf+U
         i400lT4HKik9g0PXE+/qQa/oqAuzo2kM4Z1hVyC5KMmjyoAcssVLbJWAV7eVrpQaJDhb
         W28NPd7XFaZF35tWT0+CWtmQEzpeGH8Qo07bxv2UUm9pfbWZfnYXLh4+ecdK19Ti4169
         XhpMgtYGpEabFAVH1ZaoQzKEnOk2maF/MtFgqQMSu6o9UM7PK+Tbfpq8ayY/BCw4Epc6
         js0TFoZgVr1FagnyqyuMA58Bq9hVuzJo/bemoCBCGYP6EEGVs/zUSq8L+r6qrNwVboN9
         RIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vdpHargQAXaviAfVrZf3HyOohIaePaGsiPmjuW8suvQ=;
        b=BnYetbbGYilrbgvv7qWQdp74rQtCnnXrITrSKojBD9wGwYtU7ZtpSlipjBytkBXy5t
         Et/0iULyI7L3s4wUPQDwdGOyLPNRFtKPnbPHI7grvP3NavLxurM9FT+RDd3NJv/DCpbf
         mXhDajgkytihWa4pFLw08o7XXZsPRy+yAb0f8xcMktJpaDlHOcoGpdjkuJUhA6v4AnHY
         tRkzKwtYWJ9ACjCkkmTiIKASC9P+1iePme8qnqVriBVglpIblKgRQigG3wIfyGHF5zC3
         S4WUmTCDw/ngoC/fXvdStiG7WiGrIQcnq3VxuJdqD1AJoRKB4c1c0O7OyyIRKQw+QXvT
         dWCw==
X-Gm-Message-State: AOAM532kD3POXw623lwzIUb7Z/Q39Eq8ni8w+0iZKmYUU8rvinSxclt2
	fhZ8YoDgfUGjtPn4qbz8Z9xjbSizfk1y/YNUBBUNCg==
X-Google-Smtp-Source: ABdhPJzCKpyWp4nPB5USWzESajzrJGqEGcqWDOZnA8BXo3vTbErzzqN6AmuD8MP1ijmsoq2lFtcjgcsfV7+o6A7Gk14=
X-Received: by 2002:a92:d312:: with SMTP id x18mr7565581ila.73.1596353430239;
 Sun, 02 Aug 2020 00:30:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0U-hK2euAfxe2EZ2QhWa+QQ0cVMNmSh6SUMbKy9GnB7BVHUQ@mail.gmail.com>
 <CAMKF1spvGdBqu_jUjByj333LSDg=u3P_LS98BzHh5Ecq3cCA8w@mail.gmail.com>
 <CAD0U-hKWOkCr0dAtfFY4k9+ZerV_ic-GpDc_0=5DQiwaYHuFWw@mail.gmail.com>
 <CAD0U-hJDL-sbbuQnVwcMYecvWOCi0=QuKK+FKGjazpC_ZeP9Tw@mail.gmail.com>
 <16272A3CFA65FC0B.22952@lists.yoctoproject.org> <CAFA6WYMkfqNRvd51Mmi=2wZNGwz0Xi7Y_Uhy4BhS4kDnvkoyRw@mail.gmail.com>
In-Reply-To: <CAFA6WYMkfqNRvd51Mmi=2wZNGwz0Xi7Y_Uhy4BhS4kDnvkoyRw@mail.gmail.com>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Sun, 2 Aug 2020 08:30:19 +0100
Message-ID: <CAD0U-h+D_qBPxtuzqHWKvd-8maTW_ZM=X9NjkL_LbRvddQkZag@mail.gmail.com>
Subject: Re: [yocto] dunfell gcc-sanitizers-arm-8.3 fails to build
To: Sumit Garg <sumit.garg@linaro.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org, 
	Ralph Siemsen <ralph.siemsen@linaro.org>, Jon Mason <Jon.Mason@arm.com>, 
	Nicolas Dechesne <nicolas.dechesne@linaro.org>, openembedded <openembedded@lists.linaro.org>
Content-Type: multipart/alternative; boundary="000000000000255a8505abdfff08"

--000000000000255a8505abdfff08
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Aug 2020, 15:19 Sumit Garg, <sumit.garg@linaro.org> wrote:

> On Sat, 1 Aug 2020 at 19:40, Sumit Garg via lists.yoctoproject.org
> <sumit.garg=linaro.org@lists.yoctoproject.org> wrote:
> >
> > On Sat, 1 Aug 2020 at 14:57, Ryan Harkin <ryan.harkin@linaro.org> wrote:
> > >
> > >
> > >
> > > On Sat, 1 Aug 2020 at 10:09, Ryan Harkin <ryan.harkin@linaro.org>
> wrote:
> > >>
> > >> Hi Khem,
> > >>
> > >> On Fri, 31 Jul 2020, 21:58 Khem Raj, <raj.khem@gmail.com> wrote:
> > >>>
> > >>> On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin <ryan.harkin@linaro.org>
> wrote:
> > >>> >
> > >>> > Hello,
> > >>> >
> > >>> > I'm migrating from Warrior to Dunfell and I'm getting a curious
> build failure in gcc-sanitizers.
> > >>> >
> > >>> > Here's the full gory detail:
> > >>> >     https://pastebin.ubuntu.com/p/nh4cDKMvgS/
> > >>> >
> > >>> > However, the main error is this:
> > >>> >
> > >>> > | In file included from
> ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_platform_limits_posix.cc:193:
> > >>> > |
> ../../../../../../../../../work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:72:
> error: size of array 'assertion_failed__1152' is negative
> > >>> > |      typedef char IMPL_PASTE(assertion_failed_##_,
> line)[2*(int)(pred)-1]
> > >>> >
> > >>> > I have no idea where to begin with this. I don't even know why
> gcc-sanitizers is included in the build, what it does, or why I need it.
> I'm building an image with dev packages and gcc, so I guess that's why.
> > >>> >
> > >>> > I've hacked meta-arm to patch sanitizer_platform_limits_posix.cc
> to null out the macros and that builds fine. I'm sure it won't work, should
> someone want to use it, mind you.
> > >>> >
> > >>> > Is there something obvious that I should be doing as part of a
> Warrior -> Dunfell migration to get this to work?
> > >>> >
> > >>> > note: Warrior used meta-linaro-toolchain and for Dunfell, it's
> moved to meta-arm-toolchain.
> > >>> >
> > >>>
> > >>> is gcc 8.3 the latest for linaro
> > >>
> > >>
> > >> I assume so. I haven't attempted to change the default.
> > >
> > >
> > > I'm sorry, that's incorrect: local.conf has an over-ride to specify
> 8.3.
> > > I've just removed it and now it's using 9.3. And it's building fine.
> > >
>
> It's using GCC 9.3 from OE core. If you wish to use Arm toolchain then
> you need to override the default OE core GCC version with Arm
> toolchain GCC version:
>
> GCCVERSION = "arm-9.2"
>

Ah, right, I see! Yes, I think I'll stick with that suggestion.

Thanks for the explanation.



> -Sumit
>
> > > Sumit, do you know if there's a reason for using 9.2 in RPB instead of
> 9.3?
> > >
> >
> > Arm GCC 9.3 toolchain isn't released yet (see here [1]).
> >
> > [1]
> https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads
> >
> > -Sumit
> >
> > >>
> > >>>
> > >>> > Regards,
> > >>> > Ryan.
> > >>> >
> > 
>

--000000000000255a8505abdfff08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, 1 Aug 2020, 15:19 Sumit Garg, &lt;<a href=3D"m=
ailto:sumit.garg@linaro.org">sumit.garg@linaro.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On Sat, 1 Aug 2020 at 19:40, Sumit Garg via =
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">lists.yoctoproject.org</a><br>
&lt;sumit.garg=3D<a href=3D"mailto:linaro.org@lists.yoctoproject.org" targ=
et=3D"_blank" rel=3D"noreferrer">linaro.org@lists.yoctoproject.org</a>&gt; =
wrote:<br>
&gt;<br>
&gt; On Sat, 1 Aug 2020 at 14:57, Ryan Harkin &lt;<a href=3D"mailto:ryan.h=
arkin@linaro.org" target=3D"_blank" rel=3D"noreferrer">ryan.harkin@linaro.o=
rg</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On Sat, 1 Aug 2020 at 10:09, Ryan Harkin &lt;<a href=3D"mailto:r=
yan.harkin@linaro.org" target=3D"_blank" rel=3D"noreferrer">ryan.harkin@lin=
aro.org</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Hi Khem,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On Fri, 31 Jul 2020, 21:58 Khem Raj, &lt;<a href=3D"mailto:r=
aj.khem@gmail.com" target=3D"_blank" rel=3D"noreferrer">raj.khem@gmail.com<=
/a>&gt; wrote:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; On Fri, Jul 31, 2020 at 8:35 AM Ryan Harkin &lt;<a href=
=3D"mailto:ryan.harkin@linaro.org" target=3D"_blank" rel=3D"noreferrer">ry=
an.harkin@linaro.org</a>&gt; wrote:<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; Hello,<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; I&#39;m migrating from Warrior to Dunfell and I&#39=
;m getting a curious build failure in gcc-sanitizers.<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; Here&#39;s the full gory detail:<br>
&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://pastebin.ubun=
tu.com/p/nh4cDKMvgS/" rel=3D"noreferrer noreferrer" target=3D"_blank">https=
://pastebin.ubuntu.com/p/nh4cDKMvgS/</a><br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; However, the main error is this:<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; | In file included from ../../../../../../../../../=
work-shared/gcc-arm-8.3-r2019.03/git/libsanitizer/sanitizer_common/sanitize=
r_platform_limits_posix.cc:193:<br>
&gt; &gt;&gt;&gt; &gt; | ../../../../../../../../../work-shared/gcc-arm-8.=
3-r2019.03/git/libsanitizer/sanitizer_common/sanitizer_internal_defs.h:317:=
72: error: size of array &#39;assertion_failed__1152&#39; is negative<br>
&gt; &gt;&gt;&gt; &gt; |=C2=A0 =C2=A0 =C2=A0 typedef char IMPL_PASTE(asser=
tion_failed_##_, line)[2*(int)(pred)-1]<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; I have no idea where to begin with this. I don&#39;=
t even know why gcc-sanitizers is included in the build, what it does, or w=
hy I need it. I&#39;m building an image with dev packages and gcc, so I gue=
ss that&#39;s why.<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; I&#39;ve hacked meta-arm to patch sanitizer_platfor=
m_limits_posix.cc to null out the macros and that builds fine. I&#39;m sure=
 it won&#39;t work, should someone want to use it, mind you.<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; Is there something obvious that I should be doing a=
s part of a Warrior -&gt; Dunfell migration to get this to work?<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt; &gt; note: Warrior used meta-linaro-toolchain and for Du=
nfell, it&#39;s moved to meta-arm-toolchain.<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; is gcc 8.3 the latest for linaro<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I assume so. I haven&#39;t attempted to change the default.<=
br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m sorry, that&#39;s incorrect: local.conf has an over-ride=
 to specify 8.3.<br>
&gt; &gt; I&#39;ve just removed it and now it&#39;s using 9.3. And it&#39;=
s building fine.<br>
&gt; &gt;<br>
<br>
It&#39;s using GCC 9.3 from OE core. If you wish to use Arm toolchain then=
<br>
you need to override the default OE core GCC version with Arm<br>
toolchain GCC version:<br>
<br>
GCCVERSION =3D &quot;arm-9.2&quot;<br></blockquote></div></div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Ah, right, I see! Yes, I think I&#39;ll =
stick with that suggestion.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Thanks for the explanation.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
<br>
-Sumit<br>
<br>
&gt; &gt; Sumit, do you know if there&#39;s a reason for using 9.2 in RPB =
instead of 9.3?<br>
&gt; &gt;<br>
&gt;<br>
&gt; Arm GCC 9.3 toolchain isn&#39;t released yet (see here [1]).<br>
&gt;<br>
&gt; [1] <a href=3D"https://developer.arm.com/tools-and-software/open-sour=
ce-software/developer-tools/gnu-toolchain/gnu-a/downloads" rel=3D"noreferre=
r noreferrer" target=3D"_blank">https://developer.arm.com/tools-and-softwar=
e/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads</a><br=
>
&gt;<br>
&gt; -Sumit<br>
&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; &gt; Regards,<br>
&gt; &gt;&gt;&gt; &gt; Ryan.<br>
&gt; &gt;&gt;&gt; &gt;<br>
&gt; <br>
</blockquote></div></div></div>

--000000000000255a8505abdfff08--
