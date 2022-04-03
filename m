Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99F2C3A5A3
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:42 +0000 (UTC)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web12.23542.1648997526615577074
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 07:52:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kyR92nLn;
 spf=pass (domain: gmail.com, ip: 209.85.217.44,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id a127so6941409vsa.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 07:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eeU1qvot4qIMZwvE0yzpGSRLiOR3RCudH3zoQSLfDvk=;
        b=kyR92nLnYETgMvjLUEGRlHwgHF5aHKGfkPv6kNenL330zCQ6EbQc+8iKNh5CGREw7X
         gAUL0M7/IDXwGiWTBWfvkuspqie7Nr2r2WlMDfJ8HlrtLat5YT6jeUyO71ZhtmzrUsu0
         HVPYCRrVO9ZodVKSNhKq9HrPRSzs5AKYZm2cxAj+W4c0z9obfombd1g83ctimeRtL43w
         ni5O86qbysTyA5PkDxSTmqTYLgGVSVMrXYfU8X2uIenUFirUqEF1zGZDxIFscgyLVxb9
         EDNwi5IHZ7TOyBZ4vefchSaQkVBOjGRUKTsdOybYjmOFMH/FULIrpuv36W6FfMPyYIeX
         qyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eeU1qvot4qIMZwvE0yzpGSRLiOR3RCudH3zoQSLfDvk=;
        b=TJ9lRQ2WTLuiYhEK7yQkpFMjrqH1V6alo0HRXAgMTIIN4E5nsO2tINuvz49ejYiEsh
         19fd4+umDvZ3O8cu4P2+2N7u35/7KKO6V0/xWAAV/O7CCKQ8eJCoU8seTYktFcBHIlfO
         wAq+jOGj2weJh5amQS/KBsqLYS0X8VSVqISRv78INiQcgTJtwdCP5KEYxx6uAOF4eKVU
         XlmsGJlsV4VkqjyI5aOhoczoEWN5ckyy+9ejXJBVcqsYtu7tsZy0DRP6nxx8/bKZU2CO
         czZMt1Ja1GD2EHrZjQ17p7ALisKsOX28GUio/UufSXoKvh7Aa/UlNsS+jXvbrIK4NW2N
         I+uw==
X-Gm-Message-State: AOAM5314/EIa74zaeAMcZQb2+Ng+jdC4PnhvZmIUXaZncpvjpMJBveqG
	/IUylvPdDdCTSFoje2VDUHbMzH9Ka7/UcOMcjGg=
X-Google-Smtp-Source: 
 ABdhPJzJp14oV1Hijn0h0idmVxtV/hVSmcQEKjBy0chCDlIdsPEy+Iotid6l4pXHQ/rMEIKZfMAUe2+yY7uxAXaEnwU=
X-Received: by 2002:a05:6102:c10:b0:325:7dee:c911 with SMTP id
 x16-20020a0561020c1000b003257deec911mr5357559vss.49.1648997525743; Sun, 03
 Apr 2022 07:52:05 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAM6O0ZhqFZO4oq7NyGTHYHZ50Kp8F7aSqjeVRH7Ok1kKHzkPCQ@mail.gmail.com>
 <3136cb5acad9fabe522ec58be472e2eea3fa0d88.camel@linuxfoundation.org>
In-Reply-To: 
 <3136cb5acad9fabe522ec58be472e2eea3fa0d88.camel@linuxfoundation.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 3 Apr 2022 16:51:17 +0200
Message-ID: 
 <CA+chaQc=SZ9zMRVkufKdnx6B7qo20pwfntDB15yyqiqV3iomNg@mail.gmail.com>
Subject: Re: [yocto] Fedora 36 / uninative GLIBCXX 3.4.30
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Federico Pellegrin <fede@evolware.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c1eefa05dbc12700"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56649

--000000000000c1eefa05dbc12700
Content-Type: text/plain; charset="UTF-8"

FWIW: the same is happening now with ubuntu-22.04 where libstdc++6 package
is now built from gcc-12 sources (even when gcc itself still defaults to
gcc-11).

I was trying to add the check in uninative.bbclass, but haven't found easy
portable way to detect the version from libstdc++.so.6 (other than parsing
objdump -x /full/path/to/libstdc++.so.6 output).

On Sun, Apr 3, 2022 at 12:44 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Sun, 2022-04-03 at 09:12 +0200, Federico Pellegrin wrote:
> > I've been playing around building a Yocto imagine based on
> kirkstone/master on
> > the just released Fedora 36 beta test image. (just to give a few bits
> more
> > details: builds a MX8X image, works perfectly fine with Fedora 34 and 35
> since
> > quite some time)
> >
> > The first and most obvious thing I've found out is that it is based on a
> newer
> > version of glibcxx (3.4.30) when the very latest uninative available (as
> far
> > as I could see, apologies if I'm wrong) is on 3.4.29, so at some point
> this
> > will break the build (when pzstd is called).
> >
> > Of course for the time being I just disabled uninative and the build is
> going
> > on (will report of course should I find something else). I'm not sure
> (still
> > checking this) if that should have happened automatically, but there was
> > actually no warning in that sense (maybe because is GLIBCXX and not GLIBC
> > itself?)
> > But the question is: should I try to contribute that tarball (I will
> search
> > for details, but if there is any good reference more than welcome!) or
> is it
> > something that is likely done by the core team?
> >
> > Of course FC36 is still a test distro so there is no surprise it broke,
> but as
> > we are close to Kirkstone release and possibly other distros will get
> the same
> > upgrade, I guess it could be great if we may fix this before that
> deadline.
>
> Thanks for reporting it. I think to generate the newer version we need gcc
> 12
> which is still in pre-release. We generate the uninative tarball using our
> own
> builds on the autobuilder so until we have gcc 12 recipes there, we can't
> generate that.
>
> Once gcc 12 is out, we will release a new uninative (assuming we can
> update our
> recipes).
>
> I'd like to think the checks in uninative would have noticed the mismatch,
> we do
> have some code there to detect libc version but perhaps not the CXX pieces
> so
> I'd welcome help in adding something for that.
>
> Cheers,
>
> Richard
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56648):
> https://lists.yoctoproject.org/g/yocto/message/56648
> Mute This Topic: https://lists.yoctoproject.org/mt/90215476/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000c1eefa05dbc12700
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FWIW: the same is happening now with ubuntu-22.04 where li=
bstdc++6 package is now built from gcc-12 sources (even when gcc itself sti=
ll defaults to gcc-11).<div><br></div><div>I was trying to add the check in=
 uninative.bbclass, but haven&#39;t found easy portable way to detect the v=
ersion from libstdc++.so.6 (other than parsing objdump -x /full/path/to/lib=
stdc++.so.6 output).</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Sun, Apr 3, 2022 at 12:44 PM Richard Purdie &l=
t;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Sun, 2022-04-03 at 09:12 +0200, Federico Pellegrin wrote:=
<br>
&gt; I&#39;ve been playing around building a Yocto imagine based on kirksto=
ne/master on<br>
&gt; the just released Fedora 36 beta test image. (just to give a few bits =
more<br>
&gt; details: builds a MX8X image, works perfectly fine with Fedora 34 and =
35 since<br>
&gt; quite some time)<br>
&gt; <br>
&gt; The first and most obvious thing I&#39;ve found out is that it is base=
d on a newer<br>
&gt; version of glibcxx (3.4.30) when the very latest uninative available (=
as far<br>
&gt; as I could see, apologies if I&#39;m wrong) is on 3.4.29, so at some p=
oint this<br>
&gt; will break the build (when pzstd is called).<br>
&gt; <br>
&gt; Of course for the time being I just disabled uninative and the build i=
s going<br>
&gt; on (will report of course should I find something else). I&#39;m not s=
ure (still<br>
&gt; checking this) if that should have happened automatically, but there w=
as<br>
&gt; actually no warning in that sense (maybe because is GLIBCXX and not GL=
IBC<br>
&gt; itself?)<br>
&gt; But the question is: should I try to contribute that tarball (I will s=
earch<br>
&gt; for details, but if there is any good reference more than welcome!) or=
 is it<br>
&gt; something that is likely done by the core team?<br>
&gt; <br>
&gt; Of course FC36 is still a test distro so there is no surprise it broke=
, but as<br>
&gt; we are close to Kirkstone release and possibly other distros will get =
the same<br>
&gt; upgrade, I guess it could be great if we may fix this before that dead=
line.<br>
<br>
Thanks for reporting it. I think to generate the newer version we need gcc =
12<br>
which is still in pre-release. We generate the uninative tarball using our =
own<br>
builds on the autobuilder so until we have gcc 12 recipes there, we can&#39=
;t<br>
generate that.<br>
<br>
Once gcc 12 is out, we will release a new uninative (assuming we can update=
 our<br>
recipes).<br>
<br>
I&#39;d like to think the checks in uninative would have noticed the mismat=
ch, we do<br>
have some code there to detect libc version but perhaps not the CXX pieces =
so<br>
I&#39;d welcome help in adding something for that.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56648): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56648" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56648</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90215476/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90215476/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c1eefa05dbc12700--

