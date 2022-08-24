Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11011C00140
	for <webhook@archiver.kernel.org>; Wed, 24 Aug 2022 14:45:03 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.11720.1661352295416871360
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 07:44:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IaHref14;
 spf=pass (domain: gmail.com, ip: 209.85.167.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id bt10so11332064lfb.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 07:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=h4FTFiL9eF4ZBFHhkOnuH7PqveXvngPIX8OpecZnV5s=;
        b=IaHref14Ck563XEPbrSXYs1Gn/UaR8Vvo9JANw5biGWLputEJ7nccAHsMmHkpVt+zw
         T0y2mMXktwMSU7BxrNIoWxO0rgdPuqggi4LSLwBbJ+HxR6DYHCeFIeTZmnjYZH2VvYLL
         W5j90SoVLLlS/4CTkmSsj0Ki/PHmz98wgwNY0BtERLlIeXXcyZKeVQOjV03Gc/GKQE16
         d4i+QAKySPBim2TSVi9Czpblbq9paWSPUVebJBL3xsRUNjQBrJ0DRN0In9Iz8CCVLeQm
         YvZdT5D6XQRCtDXNFg7Yw22qxgRs7hnu/e37uUEnAncw5l4kPn64zRwCrmwacM5yLSWI
         +GHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=h4FTFiL9eF4ZBFHhkOnuH7PqveXvngPIX8OpecZnV5s=;
        b=ziZn/jn2ia0X1gSovFXPAAhJt9VrPHMUPEHOhO4TCnNZ0iUM9uxmzEswF2m8jJVpoN
         G5Z+QhO2k65bmnXZFc094wRDtH0sUzx9PRNpOpSPVauUxx50K4gg3taty4RqlueMziNO
         Ng19p6uQOA2LpFIxC0EQlsuKKeZcpV5IVmJ45hcAEv2R+qmrzFdu66h59c5qhmoiaczw
         0qKrstunDr1if75R3R4SvmAjrgMu3fiAk6aCcNDKYzcvuKxxbHtPRjTpFPlmVFKpQUm5
         JLp3v+CCpjHE9JnnN/M9w25S6x9Woj5gbv+BRURBtayMX9qap38boPMeBP8yf7tCWcIM
         7P6g==
X-Gm-Message-State: ACgBeo0kvjWCjVnA+jDFp7QBC4OASQkJ2N5AbGZeMDXgYPI5BpJ3ZURq
	3N3+awiZXXC4CJJlDlWsToEdfVBpcAwadEGHQ7o=
X-Google-Smtp-Source: 
 AA6agR5A7QRwxr0dZBHh9wOfdlt+ktIxV6W9pTREJPjUVhc2fF23dDzxCeA58is4j87OUBeQEZYfxLH64LUCf4/CIac=
X-Received: by 2002:a05:6512:3e1a:b0:492:f9e8:dab with SMTP id
 i26-20020a0565123e1a00b00492f9e80dabmr2444535lfv.358.1661352293625; Wed, 24
 Aug 2022 07:44:53 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAKO9uzpWNuqqtnvzRvZM7btNOmr344U2zp0W9hr86ZrUbLjj_Q@mail.gmail.com>
 <d1306db241ff440fdf8d005f598b6c6acf5b63e8.camel@linuxfoundation.org>
 <CAKO9uzoUwa11o0dhC1o2efqqa78MKSim-OP9J9MNzNyZPEaNTQ@mail.gmail.com>
In-Reply-To: 
 <CAKO9uzoUwa11o0dhC1o2efqqa78MKSim-OP9J9MNzNyZPEaNTQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 24 Aug 2022 16:44:41 +0200
Message-ID: 
 <CANNYZj-iWfbgDr8vVW3Jv2DNC537FSHu86fG2unoTYusHHRZAw@mail.gmail.com>
Subject: Re: [yocto] Building for both target and host
To: Maik Vermeulen <maik.vermeulen@lightyear.one>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004ef5f405e6fdb97c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Aug 2022 14:45:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57894

--0000000000004ef5f405e6fdb97c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One option is to actually build an image for a qemux86_64 machine with the
items you need (or qemuarm64 if that's your build host), then use 'runqemu
kvm' to get native execution speed in a fully virtualized environment.
'native' recipes are generally meant as a springboard to get the binaries
that are needed to build target recipes, and not a way to do 'native
testing'.

Alex

On Wed, 24 Aug 2022 at 16:38, Maik Vermeulen <maik.vermeulen@lightyear.one>
wrote:

> Hi Richard,
>
> Thanks, that seems like pretty much what I need!
> However, currently the recipes in the dependency chain don't all contain
> 'native' counterparts.
> Most actually wouldn't really need to for the executable to be built.
> Is there a way to neatly work around this too?
>
> Kind regards,
>
> Maik Vermeulen
>
> Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one=
/>
> +31 6 16 82 73 79 <+31616827379>
>
>
> On Wed, Aug 24, 2022 at 3:01 PM Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> On Wed, 2022-08-24 at 14:18 +0200, Maik Vermeulen wrote:
>> > Hi,
>> >
>> > We have a recipe with a CMake project which works fine on target, but
>> > ideally we would like to test functionality on our host systems
>> > first.
>> > How can we also have it generate executables for the host system?
>> >
>> > Do we need to make changes to the recipe, CMakeLists.txt, or both?
>> > I read something about autotools, but it's completely new to me.
>> >
>> > Any hints on what the easiest approach would be would be greatly
>> > appreciated!
>>
>> BBCLASSEXTEND =3D "native"
>>
>> would create a variant of the recipe X as X-native which would run on
>> the build host. That may or may not be what you're looking for :)
>>
>> Cheers,
>>
>> Richard
>>
>>
>>
> [image:
> https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotl=
ightroles&utm_medium=3Demail#vacancies]
> <https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspot=
lightroles&utm_medium=3Demail#vacancies>
>
>
>
>
> Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
> www.lightyear.one <https://lightyear.one/>
> <https://www.linkedin.com/company/lightyear.one/>
>
> This email may contain information which is privileged and/or
> confidential. If you received this e-mail in error, please notify us
> immediately by e-mail and delete the email without copying or disclosing
> its contents to any other person. Lightyear is a trade name of Atlas
> Technologies B.V. and is registered at the Dutch Chamber of Commerce unde=
r
> number 67264298.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57893):
> https://lists.yoctoproject.org/g/yocto/message/57893
> Mute This Topic: https://lists.yoctoproject.org/mt/93225156/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000004ef5f405e6fdb97c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One option is to actually build an image for a qemux8=
6_64 machine with the items you need (or qemuarm64 if that&#39;s your build=
 host), then use &#39;runqemu kvm&#39; to get native execution speed in a f=
ully virtualized environment. &#39;native&#39; recipes are generally meant =
as a springboard to get the binaries that are needed to build target recipe=
s, and not a way to do &#39;native testing&#39;.<br></div><div><br></div><d=
iv>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, 24 Aug 2022 at 16:38, Maik Vermeulen &lt;maik.verm=
eulen@lightyear.one&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Hi Richard,<div><br></div><div>Thanks, that=
 seems like pretty much what I need!</div><div>However, currently the recip=
es in the dependency chain don&#39;t all contain &#39;native&#39; counterpa=
rts.=C2=A0</div><div>Most actually wouldn&#39;t really need to for the exec=
utable to be built.=C2=A0</div><div>Is there a way to neatly work around th=
is too?</div><div><br></div><div>Kind regards,<br clear=3D"all"><div><div d=
ir=3D"ltr"><div dir=3D"ltr"><br><div><span style=3D"color:rgb(29,29,27);fon=
t-family:Helvetica,Arial,sans-serif;font-size:16px">Maik Vermeulen</span></=
div><br><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial=
,sans-serif;font-size:13px">Embedded Software Engineer=E2=80=82=E2=80=94=E2=
=80=82<a href=3D"https://www.lightyear.one/" rel=3D"noopener noreferrer" st=
yle=3D"color:rgb(51,206,224)" target=3D"_blank">Lightyear</a></span></div><=
div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-ser=
if;font-size:13px"><a href=3D"tel:+31616827379" rel=3D"noopener" style=3D"c=
olor:rgb(29,29,27)" target=3D"_blank">+31 6 16 82 73 79</a></span></div></d=
iv></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Aug 24, 2022 at 3:01 PM Richard Purdie &lt=
;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">ri=
chard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Wed, 2022-08-24 at 14:18 +0200, Maik Ve=
rmeulen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; We have a recipe with a CMake project which works fine on=C2=A0target,=
 but<br>
&gt; ideally we would like to test functionality on our host systems<br>
&gt; first.<br>
&gt; How can we also have it generate executables for the host system?<br>
&gt; <br>
&gt; Do we need to make changes to the recipe, CMakeLists.txt, or both?<br>
&gt; I read something about autotools, but it&#39;s completely new to me.<b=
r>
&gt; <br>
&gt; Any hints on what the easiest approach would be would be greatly<br>
&gt; appreciated!<br>
<br>
BBCLASSEXTEND =3D &quot;native&quot;<br>
<br>
would create a variant of the recipe X as X-native which would run on<br>
the build host. That may or may not be what you&#39;re looking for :)<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57893): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57893" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57893</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93225156/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93225156/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004ef5f405e6fdb97c--

