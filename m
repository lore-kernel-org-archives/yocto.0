Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web12.6630.1601037040318401961
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 05:30:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xe1MUi4A;
 spf=pass (domain: gmail.com, ip: 209.85.217.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id 5so1276839vsu.5
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 05:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HWtL9rwquohRnNC2KxvOu7zjj/ZCJ9Nx8Qu6chR44ng=;
        b=Xe1MUi4A1MFkxgxuhJlK30iTwHLxe/JmyAkLGdBzsiGed4lssRPJzTx8j4vvNNGg+s
         qi3l0pfzGFU3jIVHN/WwFphde6VujKgcvgT3G3i1PYTZvwQs5lbm4vCWHRuYdmuOPBuF
         +ATvgO2R2O3zSW6Fka9PDXAu+hy6LHB8ZBKaqpfstYLsiurkSWHoKcd4puOqLSps2v0J
         HCKy3TKgs1PPNAjTnY2iZ3L7YwKJH7gEM9XFP9/LNKBDY9ktkWlrwTQLo+yYKvtpqo1I
         JxwijbKFnv2FmWGBWefTHydtZsGT+MRwKSzyBSK6GZvebqtWqbjs30ozQ5P7VReNFXgv
         gJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HWtL9rwquohRnNC2KxvOu7zjj/ZCJ9Nx8Qu6chR44ng=;
        b=WSyIrl9rDxlRkKVj65GfGda5sopFExahl77y7/LU0V3ZfRRRzpPFrcOgyaxu0fGJ9B
         rXBssnRPHX95fHbYRwtmCbZRDzkiNpTD/k0Z/d/geobk9y6H9oCPQghw9kEWK0+469zd
         casAzSKbakpX2tX2cWucK0PIqExlFxZIZ1Gu67dh708AH+JHOlAAY675wfIhRisWb0Nh
         pPTOcSUp5epu2u5lN3oxO4FqJ/KbhaSCLBEMfl+ABvv25sbtEJt3/Bnvh70ZMopRX4V3
         39IyW0W32h0SuLVWva1nucOAoWN/u9oE9vHRngaEvOxG9J0Xtgd0LglXFeODzelxuGCP
         F5bg==
X-Gm-Message-State: AOAM530Wgxxt+9gw/AB6mQsee9nBwIaThW6/YgP63el0X1aCqfbwSb9F
	xZyFDmvs2NxFzN8T1u7bA6+EqNpASm8oSEQ8dKA=
X-Google-Smtp-Source: ABdhPJwFp8nn+S7aSrrDSWZzsTj8EPgnY0IYYgrzW6wE7ZqHgRjuIUBKIM15FRa/HXWfJ90TOfMbDZ/Abi2oXkwnMdw=
X-Received: by 2002:a67:504:: with SMTP id 4mr2464641vsf.20.1601037039493;
 Fri, 25 Sep 2020 05:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJObv1NuQ9NMqbwpQpz4BR-f_QFu2Owr_SLexqUP+Xsom8X6pA@mail.gmail.com>
In-Reply-To: <CAJObv1NuQ9NMqbwpQpz4BR-f_QFu2Owr_SLexqUP+Xsom8X6pA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 25 Sep 2020 14:30:28 +0200
Message-ID: <CANNYZj80z5OCU0_n3hh3cO7VKg1UJ6wtJjPu5s_t5A_p5ZYT-w@mail.gmail.com>
Subject: Re: [yocto] useless-rpaths : How to solve it/Know if it should be solved ?
To: Vitor Crestani Goergen <crestanivitor@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000002e62b05b0227c2f"

--00000000000002e62b05b0227c2f
Content-Type: text/plain; charset="UTF-8"

It helps if you can show the recipe, and the git repo of the library.

Alex

On Wed, 23 Sep 2020 at 13:30, Vitor Crestani Goergen <
crestanivitor@gmail.com> wrote:

> Hello,
>
> I have been dealing with Yocto for about a month, so I am still a beginner.
>
> I am usign a NXP Sabresd board with an iMX6 processor. I have the recipes
> from oe, bsp, freescale etc downloaded from the NXP website, although I
> replaced the kernel with the EVL core project kernel. I did this in a
> workspace using devtool.
>
> I was able to bitbake and build this new kernel without a problem. After
> that, I set on to install some libraries, specifically libevl, which is the
> library from the EVL project. This source code comes with several
> makefiles. I don't understand most of the codes in these makefiles but I am
> currently working on that.
>
> I created a new layer and a recipe for this library. Initially I had an
> error of "files shipped but not installed" but that was fixed by adding
> some more information to FILES_${PN}. Now, I am stuck with the following
> error message when trying to build:
>
> Error: QA issue: libevl:
> /work/{machine}/libevl/0.1-r0/packages-split/libevl/usr/lib/libevl-0.so.0
> contains probably redundant RPATH /usr/lib
>
> I am aware that a "solution" exists using INSANE_SKIP. I did that and
> everything worked. However, I would not like to put more things than I
> should just to take up space on the board.
>
> What I tried so far was to add somefiles to FILES_${PN}-dev, telling Make
> to ignore RPATH (Using the variable CMAKE_IGNORE_RPATH) but none of these
> worked.
>
> I've also seen in some discussions that maybe this should probably stay as
> it is. How can I determine if this is normal behaviour and I should just
> use INSANE_SKIP?
>
> Thanks in advance,
>
> Vitor
>
> 
>
>

--00000000000002e62b05b0227c2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It helps if you can show the recipe, and the git repo=
 of the library.</div><div><br></div><div>Alex<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 23 Sep 2020=
 at 13:30, Vitor Crestani Goergen &lt;<a href=3D"mailto:crestanivitor@gmail=
.com">crestanivitor@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><div>I h=
ave been dealing with Yocto for about a month, so I am still a beginner.</d=
iv><div><br></div><div>I am usign a NXP Sabresd board with an iMX6 processo=
r. I have the recipes from oe, bsp, freescale etc downloaded from the NXP w=
ebsite, although=C2=A0I replaced the kernel with the EVL core project kerne=
l. I did this in a workspace using devtool.</div><div><br></div><div>I was =
able to bitbake and build this new kernel without a problem. After that, I =
set on to install some libraries, specifically libevl, which is the library=
 from the EVL project. This source code comes with several makefiles. I don=
&#39;t understand most of the codes in these makefiles but I am currently w=
orking on that.=C2=A0</div><div><br></div><div>I created a new layer and a =
recipe for this library. Initially I had an error of &quot;files shipped bu=
t not installed&quot; but that was fixed by adding some more information to=
 FILES_${PN}. Now, I am stuck with the following error=C2=A0message when tr=
ying to build:</div><div><br></div><div>Error: QA issue: libevl: /work/{mac=
hine}/libevl/0.1-r0/packages-split/libevl/usr/lib/libevl-0.so.0 contains pr=
obably redundant RPATH /usr/lib=C2=A0<br><br>I am aware that a &quot;soluti=
on&quot; exists using INSANE_SKIP. I did that and everything worked. Howeve=
r, I would not like to put more things than I should just to take up space =
on the board.<br><br>What I tried so far was to add somefiles to FILES_${PN=
}-dev, telling Make to ignore RPATH (Using the variable CMAKE_IGNORE_RPATH)=
 but none of these worked.</div><div><br></div><div>I&#39;ve also seen in s=
ome discussions that maybe this should probably stay as it is. How can I de=
termine if this is normal behaviour and I should just use INSANE_SKIP?</div=
><div><br></div><div>Thanks in advance,<br><br>Vitor</div></div>
<br>
<br>
<br>
</blockquote></div>

--00000000000002e62b05b0227c2f--
