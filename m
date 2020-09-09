Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.2481.1599673655018068768
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 10:47:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=OlUl6GaM;
 spf=pass (domain: linaro.org, ip: 209.85.219.172, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f172.google.com with SMTP id h126so2322219ybg.4
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 10:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tUlzzF7Rko8Nxa844P5uUsV3D6cGPwDB/grFA0J7uFs=;
        b=OlUl6GaMIxBwy64UmgP5lP5nTmrfbNiBMVB/lVU1BPVg42VAioy1Hb+vJKOCGOvq19
         LOqkwFiVp33tMhy44p8EL79FcbiHjIUER42lp7emmCDwgJYTDD0xoaZJia5RV00xU216
         S12K9hlnU/gi0tFxWWAD+KebQ6oXFTNaJn8UJmm0dAbvxv/q0HiY0koCRnymkcLE9SIH
         VHT0sd2pOZdjUP1jc+EvpgQEifDer6yEHoRuGwyPcM+9J3hp3ovry2AzI7iZo/BnyDVD
         4PFip5ttIYAush/jyEnHXMjlCz+DYwFmZ3oi5B81/URmS8pGP7awKJrgBX5OPNheFd58
         xaxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tUlzzF7Rko8Nxa844P5uUsV3D6cGPwDB/grFA0J7uFs=;
        b=jWO1ojSvXW/lzhzYuH+SFf5IOEB4Y35+bqiJUF1Kk4WM8XTjv6wwGeddNr2iRGyqE3
         ybXCWQ677CvjZRqTnVl+u3TQY+4HDrQwv+H/KKB/kgvXBZm9XEjXE4STFWjfh8yVDI5r
         nQHJAhN9/sDOn8abfnI8zck/Hyw0akhhT85lkwERPoJMINVIPDAFvoW3j5nIwEG+zptG
         eCe+XGM3MOXq6Vo2eougJ9FH5iOe7t4KGfNvo6j+Y52Sb4Lz9HOArc/bxWivmbz4lM3N
         rUWa1jHnwpCmgqc1mNgcwIt2Wi/zWIBtwYvqRmz9FFwCvUFris1I8SINsaAGi5KRJVdW
         KhSA==
X-Gm-Message-State: AOAM5301Qu4JSYXqaXA5ZlCw6PHKDdVpXHMvbkh4fjCcXEKUiR3/fZ7W
	iAkm7tiyKcqW+zM/R8j9AX9+aF1StWSkqAGHkIvPEg==
X-Google-Smtp-Source: ABdhPJwX0ngjpU/SRCT+OjBah8fw5ubnxN8UuuefV5dWEmv3BsbBGe1WNJSi1MwDuo7Xkrv6QlocgR0rwewUNp4Pqas=
X-Received: by 2002:a25:3754:: with SMTP id e81mr7320421yba.133.1599673653951;
 Wed, 09 Sep 2020 10:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <KU1P153MB0101B0B12FE45FCAA37F173BFE260@KU1P153MB0101.APCP153.PROD.OUTLOOK.COM>
 <466d0ae1-09e8-7d82-b077-50d0db3d07ec@gmail.com> <KU1P153MB01015A81C45B425DB0700866FE260@KU1P153MB0101.APCP153.PROD.OUTLOOK.COM>
In-Reply-To: <KU1P153MB01015A81C45B425DB0700866FE260@KU1P153MB0101.APCP153.PROD.OUTLOOK.COM>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 9 Sep 2020 19:47:22 +0200
Message-ID: <CAP71Wjy-iOvDmbozpEj5mGia5BkrPovw+=PWr+QB8Zr36x7K2g@mail.gmail.com>
Subject: Re: [yocto] Outreachy internship project - license tracing enhancement
To: Paul Eggleton <Paul.Eggleton@microsoft.com>
Cc: akuster808 <akuster808@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"Richard Purdie (richard.purdie@linuxfoundation.org)" <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000e6927905aee50b51"

--000000000000e6927905aee50b51
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Paul,

First of all, thank you so much for doing this. It's very much appreciated=
,
I am very happy to see our community members willing to contribute to such
a great internship program. As I mentioned to you separately, I will do my
best to support and help you!

On Wed, Sep 9, 2020 at 6:55 PM Paul Eggleton <Paul.Eggleton@microsoft.com>
wrote:

> Hi Armin
>
> I think Nicolas will need to do the re-registration as he's the named
> Outreachy coordinator for YP.
>

I don't need to re-register, I need to confirm that the YP community (whic=
h
is already registered) will participate in this round, and I need to
indicate how the funding is done. I will reach out privately to discuss th=
e
funding side of things (there are a couple of questions/information to
provide on their form).

That said, if anyone else is willing to sponsor another internship,
please let me know here or privately!


> Thanks
> Paul
>
> -----Original Message-----
> From: akuster808 <akuster808@gmail.com>
> Sent: Thursday, 10 September 2020 2:29 am
> To: Paul Eggleton <Paul.Eggleton@microsoft.com>;
> yocto@lists.yoctoproject.org
> Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>; Richard Purdie (
> richard.purdie@linuxfoundation.org) <richard.purdie@linuxfoundation.org>
> Subject: Re: [yocto] Outreachy internship project - license tracing
> enhancement
>
>
>
> On 9/9/20 3:51 AM, Paul Eggleton via lists.yoctoproject.org wrote:
> > Hi folks
> >
> > I'd like to propose we put forward the following project proposal for =
an
> Outreachy internship (
> https://nam06.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.=
outreachy.org%2Fcommunities%2Fcfp%2F&amp;data=3D02%7C01%7Cpaul.eggleton%40m=
icrosoft.com%7C3a6b0143434b454bbab708d854cca58f%7C72f988bf86f141af91ab2d7cd=
011db47%7C1%7C0%7C637352585960663229&amp;sdata=3D2L0gT8udq5P5bxEcPIsrjVxHXA=
Dmt9kEDMZxwk1ul5o%3D&amp;reserved=3D0).
> I'm prepared to be the mentor for the project and Microsoft will provide
> funding. (Note that we haven't got our community re-registered with
> Outreachy or set this up as an intern project proposal yet - deadline fo=
r
> YP community registration is September 17th and for project submissions =
is
> September 24th). Here's the brief:
>
> This sounds great.
>
> Are you looking for YP to take action on  registration or are you handli=
ng
> this?
>
> -armin
> >
> > -------------
> > Yocto Project License tracing enhancement
> >
> > The Yocto Project build system is typically used to build customised
> Linux images from source for embedded applications. Along with the image=
, a
> manifest of packages and their corresponding licenses is prepared, howev=
er
> the accuracy of the license information is dependent on the accuracy of =
the
> metadata we have for each package (i.e. what is in the recipe file). As
> part of the build, we have an internal mapping from output files to sour=
ce
> files which is currently used to prepare source packages to aid in
> debugging, however with the presence of SPDX headers in source files it
> could also be used to allow tracing the license of sources used in build=
ing
> a package/image to help improve our metadata and future license manifest=
s.
> A proof-of concept implementation of this has been put together [1] -
> during this internship a successful intern will:
> > 1) take the proof-of-concept implementation and get it to a state
> > where it can be merged into the poky repository
> > 2) use the functionality to examine the accuracy of our license
> > tagging (LICENSE fields in recipes); look for errors / noise in the
> > comparison, and produce a simple report with the results
> > 3) run a check over sources in a world build looking for percentage
> > coverage of SPDX headers, and run it for several past releases to see
> > the change over time
> >
> > Bonus: assess the current state of meta-spdx-scanner; investigate what
> it would take to produce SPDX documents from build output (would likely
> require integration with Fossology).
> >
> > [1]
> > https://nam06.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fgit=
.y
> > octoproject.org%2Fcgit%2Fcgit.cgi%2Fpoky-contrib%2Flog%2F%3Fh%3Drpurdi
> > e%2Flicense-experiments-osls&amp;data=3D02%7C01%7Cpaul.eggleton%40micr=
os
> > oft.com%7C3a6b0143434b454bbab708d854cca58f%7C72f988bf86f141af91ab2d7cd
> > 011db47%7C1%7C0%7C637352585960673189&amp;sdata=3DZoCsEf0BYvCs5GalpYUgb=
v%
> > 2Ff5qt1Lagho3NBML5qgUg%3D&amp;reserved=3D0
> > -------------
> >
> > I'm making the assumption that we're OK with merging the PoC
> functionality in rather than just keeping it separate and using it for
> analysis - let me know if otherwise. What I'd really like to know is do
> people think that this is sufficient for a 3-month internship, assuming
> that the intern has limited to moderate familiarity with our codebase? D=
o
> we need to flesh it out further? Any modifications that you'd suggest to
> the work?
> >
> > Thanks
> > Paul
> >
> >=20
>
>

--000000000000e6927905aee50b51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Paul,</div><div><br></div><div>First of all, than=
k you so much for doing this. It&#39;s very much appreciated, I am very hap=
py to see our community members willing to contribute to such a great inter=
nship program. As I mentioned to you separately, I will do my best to suppo=
rt and help you!</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=
=3D"gmail_attr">On Wed, Sep 9, 2020 at 6:55 PM Paul Eggleton &lt;<a href=
=3D"mailto:Paul.Eggleton@microsoft.com">Paul.Eggleton@microsoft.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Armi=
n<br>
<br>
I think Nicolas will need to do the re-registration as he&#39;s the named =
Outreachy coordinator for YP.<br></blockquote><div><br></div><div>I don&#39=
;t need to re-register, I need to confirm that the YP community (which is a=
lready registered) will participate in this round, and I need to indicate h=
ow the funding is done. I will reach out privately to discuss the funding s=
ide of things (there are a couple of questions/information to provide on th=
eir form).</div><div><br></div><div>That said, if anyone else is willing to=
 sponsor another internship, please=C2=A0let me know here or privately!</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thanks<br>
Paul<br>
<br>
-----Original Message-----<br>
From: akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_bl=
ank">akuster808@gmail.com</a>&gt; <br>
Sent: Thursday, 10 September 2020 2:29 am<br>
To: Paul Eggleton &lt;<a href=3D"mailto:Paul.Eggleton@microsoft.com" targe=
t=3D"_blank">Paul.Eggleton@microsoft.com</a>&gt;; <a href=3D"mailto:yocto@l=
ists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a><b=
r>
Cc: Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" ta=
rget=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;; Richard Purdie (<a hre=
f=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.p=
urdie@linuxfoundation.org</a>) &lt;<a href=3D"mailto:richard.purdie@linuxfo=
undation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<=
br>
Subject: Re: [yocto] Outreachy internship project - license tracing enhanc=
ement<br>
<br>
<br>
<br>
On 9/9/20 3:51 AM, Paul Eggleton via <a href=3D"http://lists.yoctoproject.=
org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:=
<br>
&gt; Hi folks<br>
&gt;<br>
&gt; I&#39;d like to propose we put forward the following project proposal=
 for an Outreachy internship (<a href=3D"https://nam06.safelinks.protection=
.outlook.com/?url=3Dhttps%3A%2F%2Fwww.outreachy.org%2Fcommunities%2Fcfp%2F&=
amp;amp;data=3D02%7C01%7Cpaul.eggleton%40microsoft.com%7C3a6b0143434b454bba=
b708d854cca58f%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637352585960663=
229&amp;amp;sdata=3D2L0gT8udq5P5bxEcPIsrjVxHXADmt9kEDMZxwk1ul5o%3D&amp;amp;=
reserved=3D0" rel=3D"noreferrer" target=3D"_blank">https://nam06.safelinks.=
protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.outreachy.org%2Fcommunities=
%2Fcfp%2F&amp;amp;data=3D02%7C01%7Cpaul.eggleton%40microsoft.com%7C3a6b0143=
434b454bbab708d854cca58f%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C63735=
2585960663229&amp;amp;sdata=3D2L0gT8udq5P5bxEcPIsrjVxHXADmt9kEDMZxwk1ul5o%3=
D&amp;amp;reserved=3D0</a>). I&#39;m prepared to be the mentor for the proj=
ect and Microsoft will provide funding. (Note that we haven&#39;t got our c=
ommunity re-registered with Outreachy or set this up as an intern project p=
roposal yet - deadline for YP community registration is September 17th and =
for project submissions is September 24th). Here&#39;s the brief:<br>
<br>
This sounds great.<br>
<br>
Are you looking for YP to take action on=C2=A0 registration or are you han=
dling this?<br>
<br>
-armin<br>
&gt;<br>
&gt; -------------<br>
&gt; Yocto Project License tracing enhancement<br>
&gt; =C2=A0<br>
&gt; The Yocto Project build system is typically used to build customised =
Linux images from source for embedded applications. Along with the image, a=
 manifest of packages and their corresponding licenses is prepared, however=
 the accuracy of the license information is dependent on the accuracy of th=
e metadata we have for each package (i.e. what is in the recipe file). As p=
art of the build, we have an internal mapping from output files to source f=
iles which is currently used to prepare source packages to aid in debugging=
, however with the presence of SPDX headers in source files it could also b=
e used to allow tracing the license of sources used in building a package/i=
mage to help improve our metadata and future license manifests. A proof-of =
concept implementation of this has been put together [1] - during this inte=
rnship a successful intern will:<br>
&gt; 1) take the proof-of-concept implementation and get it to a state <br=
>
&gt; where it can be merged into the poky repository<br>
&gt; 2) use the functionality to examine the accuracy of our license <br>
&gt; tagging (LICENSE fields in recipes); look for errors / noise in the <=
br>
&gt; comparison, and produce a simple report with the results<br>
&gt; 3) run a check over sources in a world build looking for percentage <=
br>
&gt; coverage of SPDX headers, and run it for several past releases to see=
 <br>
&gt; the change over time<br>
&gt; =C2=A0<br>
&gt; Bonus: assess the current state of meta-spdx-scanner; investigate wha=
t it would take to produce SPDX documents from build output (would likely r=
equire integration with Fossology).<br>
&gt;<br>
&gt; [1] <br>
&gt; <a href=3D"https://nam06.safelinks.protection.outlook.com/?url=3Dhttp=
%3A%2F%2Fgit.y" rel=3D"noreferrer" target=3D"_blank">https://nam06.safelink=
s.protection.outlook.com/?url=3Dhttp%3A%2F%2Fgit.y</a><br>
&gt; <a href=3D"http://octoproject.org" rel=3D"noreferrer" target=3D"_blan=
k">octoproject.org</a>%2Fcgit%2Fcgit.cgi%2Fpoky-contrib%2Flog%2F%3Fh%3Drpur=
di<br>
&gt; e%2Flicense-experiments-osls&amp;amp;data=3D02%7C01%7Cpaul.eggleton%4=
0micros<br>
&gt; <a href=3D"http://oft.com" rel=3D"noreferrer" target=3D"_blank">oft.c=
om</a>%7C3a6b0143434b454bbab708d854cca58f%7C72f988bf86f141af91ab2d7cd<br>
&gt; 011db47%7C1%7C0%7C637352585960673189&amp;amp;sdata=3DZoCsEf0BYvCs5Gal=
pYUgbv%<br>
&gt; 2Ff5qt1Lagho3NBML5qgUg%3D&amp;amp;reserved=3D0<br>
&gt; -------------<br>
&gt;<br>
&gt; I&#39;m making the assumption that we&#39;re OK with merging the PoC =
functionality in rather than just keeping it separate and using it for anal=
ysis - let me know if otherwise. What I&#39;d really like to know is do peo=
ple think that this is sufficient for a 3-month internship, assuming that t=
he intern has limited to moderate familiarity with our codebase? Do we need=
 to flesh it out further? Any modifications that you&#39;d suggest to the w=
ork?<br>
&gt;<br>
&gt; Thanks<br>
&gt; Paul<br>
&gt;<br>
&gt; <br>
<br>
</blockquote></div></div>

--000000000000e6927905aee50b51--
