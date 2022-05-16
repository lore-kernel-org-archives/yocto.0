Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A436C433F5
	for <webhook@archiver.kernel.org>; Mon, 16 May 2022 13:47:21 +0000 (UTC)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
 [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web10.28785.1652708835955045086
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 06:47:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cEN4FUxD;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id m6so15942843iob.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 06:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cdljIeKnbOITd+CAoUwBb3XX3zzjfJcuy80KMOmk8ks=;
        b=cEN4FUxDTIiEXjsPzqJTsIdrCbJn+nY08VVVWpAZFnc3d7P5J0y7dMiSKgiGeiJ5RM
         TDVdg3DDlpQcSf9NXaqER+E4BSYI63q1IdyHcASam4titufEAsvqSez7uX3GdovgLzHo
         EH+R3AgCvS9D35yRBR1hnrXjNXLurkipSe5h4ZPTSIR0WOnmrNEJBvyg+03322IcZBta
         6Y2aChKGNzW3RnjCJEs8R2KlyJcokVy2r0uM3F8ZDGOHAs5ZZULljrrm2Dk4N9Pt00iq
         fS00GwgtrSvjuBOUZxDGGMOin8E12Z14K/xthnWHkVBZbsM+dq/xLKedJp33t75Jw50e
         RVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cdljIeKnbOITd+CAoUwBb3XX3zzjfJcuy80KMOmk8ks=;
        b=Rp5Ml/+5Tln+rh6xAsmXanSU19y+NU/rTWQZq5XFuqrjjDBQN1jeVgdYgMMFb76KRX
         KjKjLAmdYi9oCZNby5+SLfCPiSPEi9eTnozc5UNlrJ2/D2znDESoJc1MTM0PULiZ2U9s
         fUHtb2WexLOUxr3DPAgkGYPQW7Q+46svVRtWylPeNb8L8AQ/mIVOMXzxvOwnCBH+yqlr
         yq4clp/N0yf+cS0hBjdOQLHBgLyYW/LiPqenvNPTLeQELCipUTaX1oM5VGMVF2v3THVb
         f8K++ByWWFpeA4esh1Mhr1BokWHYJJedxLMEH2ImAxHIUBdA5iRpImu99tmu+NvCIASX
         6LGA==
X-Gm-Message-State: AOAM5339WhOIUPTO4UYMjXi6sM+yCvlNzepyyox4ySivnH3t1jRwF+n4
	fdmmU5832uz4Pc77utA97wiwigdWKKiHcdbE0nA=
X-Google-Smtp-Source: 
 ABdhPJxXj0JMYFVvEy8HYVtMTEGbcWgEnpIED1eBNacHEhQW8ygdicFgMkpp+DzpwhDzpFA6mPXiqADguc3vvqWY8cU=
X-Received: by 2002:a05:6638:160d:b0:32b:b25e:58c with SMTP id
 x13-20020a056638160d00b0032bb25e058cmr9398340jas.222.1652708833861; Mon, 16
 May 2022 06:47:13 -0700 (PDT)
MIME-Version: 1.0
References: <5e5f55a-d5ec-32d9-232f-d10961d667b@crashcourse.ca>
 <CAP71WjwDVn88vQWEHhU0qjrLnbAC2WuUZnNgfbQOUxT=5cvK0A@mail.gmail.com>
 <c5b646bc-d4c8-441-d244-4d288743ed5f@crashcourse.ca>
In-Reply-To: <c5b646bc-d4c8-441-d244-4d288743ed5f@crashcourse.ca>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 16 May 2022 09:47:02 -0400
Message-ID: 
 <CAHUNapTidtFwEqY8b8uWWg8BwR8qzbmCy1Kyx25+kHo7Q_1TGQ@mail.gmail.com>
Subject: Re: [yocto] is there already online the YP summit "hands-on setup"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f5a61305df21420e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 May 2022 13:47:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57112

--000000000000f5a61305df21420e
Content-Type: text/plain; charset="UTF-8"

On Mon, May 16, 2022 at 9:18 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Mon, 16 May 2022, Nicolas Dechesne wrote:
>
> > On Mon, May 16, 2022 at 2:17 PM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >
> >         i note that one of the first sessions is 15 minutes of "A
> session to
> >       help people setup their Digital Ocean account." would this lab
> already
> >       be online somewhere so people can do this ahead of time to make
> sure
> >       nothing goes wrong?
> >
> > No , we are using a different cloud provider / partner this time.
> > That requires all the 'students' to have a valid account with our
> > partner (Digital Ocean), and all the hands on will be done using DO
> > cloud instances. All registered 'students' will get credits on their
> > Digital Ocean accounts for the duration of our event.  This first
> > session is to make sure everyone is all set up with their account
> > before we start the hands on.
>
>   so just to be clear, one need do nothing related to digital ocean in
> advance, it will all be done in that 15-minute setup session?
>

If you don't already have a DO account then signing up ahead of time would
be great.
You can find some info and links at:
https://wiki.yoctoproject.org/wiki/YoctoProject_Summit_yps2022.05

We were planning on having 3 hands-on classes, but unfortunately one of our
instructors had to drop out and it was too late to find a replacement. Our
first session of the day in that track is Josef doing a live coding
session. Therefore the first hands-on class starts after Josef is done,
which should provide everyone enough time to get accounts and get setup
before the first hands-on event (if they start at the beginning of the
conference day).


>
> rday
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57111):
> https://lists.yoctoproject.org/g/yocto/message/57111
> Mute This Topic: https://lists.yoctoproject.org/mt/91138090/900817
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> twoerner@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f5a61305df21420e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 16, 2022 at 9:18 AM Rober=
t P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse=
.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Mon, 16 May 2022, Nicolas Dechesne wrote:<br>
<br>
&gt; On Mon, May 16, 2022 at 2:17 PM Robert P. J. Day &lt;<a href=3D"mailto=
:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wro=
te:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 i note that one of the first sessions=
 is 15 minutes of &quot;A session to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0help people setup their Digital Ocean accoun=
t.&quot; would this lab already<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0be online somewhere so people can do this ah=
ead of time to make sure<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0nothing goes wrong?<br>
&gt;<br>
&gt; No , we are using a different cloud provider / partner this time.<br>
&gt; That requires all the &#39;students&#39; to have a valid account with =
our<br>
&gt; partner (Digital Ocean), and all the hands on will be done using DO<br=
>
&gt; cloud instances. All registered &#39;students&#39; will get credits on=
 their<br>
&gt; Digital Ocean accounts for the duration of our event.=C2=A0 This first=
<br>
&gt; session is to make sure everyone is all set up with their account<br>
&gt; before we start the hands on.<br>
<br>
=C2=A0 so just to be clear, one need do nothing related to digital ocean in=
<br>
advance, it will all be done in that 15-minute setup session?<br></blockquo=
te><div><br></div><div>If you don&#39;t already have a DO account then sign=
ing up ahead of time would be great.</div><div>You can find some info and l=
inks at: <a href=3D"https://wiki.yoctoproject.org/wiki/YoctoProject_Summit_=
yps2022.05">https://wiki.yoctoproject.org/wiki/YoctoProject_Summit_yps2022.=
05</a></div><div><br></div><div>We were planning on having 3 hands-on class=
es, but unfortunately one of our instructors had to drop out and it was too=
 late to find a replacement. Our first session of the day in that track is =
Josef doing a live coding session. Therefore the first hands-on class start=
s after Josef is done, which should provide everyone enough time to get acc=
ounts and get setup before the first hands-on event (if they start at the b=
eginning of the conference day).<br></div><div>=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57111): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57111" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57111</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91138090/9008=
17" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
91138090/900817</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f5a61305df21420e--

