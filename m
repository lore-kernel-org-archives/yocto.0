Return-Path: <ashishm@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A1EC282EC
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 17:12:12 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.20542.1741885924166534090
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 10:12:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=DetvDxlf;
 spf=pass (domain: mvista.com, ip: 209.85.160.47, mailfrom: ashishm@mvista.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2bcceee7b40so1070349fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 10:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1741885923; x=1742490723; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/vwYv128QGzmRkvbTxmQeLfJamopueh+Ruyr3Z6juoQ=;
        b=DetvDxlf2wCMMMmWjC3TntanB1oJUCOJlO/sg+uba+rQnc5OsiYEeDj00sBwi2XtQa
         jjSZeg1JiCvv2/3uvwkauJz1gXOvhpJwnjNrkRSp407dy4YpLWEIFgyEr/f83IjxkMwr
         ycq6Dwz9/b+/+sWFjoSY6bhApbsXcIZFljtE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741885923; x=1742490723;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/vwYv128QGzmRkvbTxmQeLfJamopueh+Ruyr3Z6juoQ=;
        b=jpq0Y+1JVy7UTOFmTwUZfIP2wqz/PXBx1PjO7RkHXRbZSByqaHKhSYPaM6gX6vL8oM
         I9tpY7jQWvK5WSTmHOOdvsDnYQPCpNP34fv/5fo5bKpogfnGb59rRO0JX1ZamPsj6hZ9
         Am+p6Tdakb8M70NePIdoKOrx1+/KKhftZqQklFIEBVSEXDoNwOtl0zgqjAQFTV3KA+sZ
         ySsDqVTeTzVh1QCL485LFYvPvT7hPh5XcuSeCSb2PYrfB1n3WEFpmrMHmvB6iBRuZ69R
         39NELIZYzartfi5fCH3UF0J5y/8WcJB+2H7RgDbOjHTfLSj5W11XxLolaYNeW7eghgjv
         dkjg==
X-Gm-Message-State: AOJu0YxqvUpZQ9pAQkF1U73xLlddYy3KcsxqZI/MKZr5TJSbI4dBEbWC
	V2uMdq48peFq4OupsmvDmubUanibn0DlEAjdc/ORHifcN6cOzE2vxWO5ot/bB5zpcij8dm2bz4y
	PIgwhB8ftPeU0osH+yjZfqtCrHXY1n2Rf0YZ4P7RNHM267ieZvIw=
X-Gm-Gg: ASbGncur+xQ93Ri0t0aQyPtmIZ0zw9KOlD0Vv4RnarltKQukSQfNvLBALUW40/0jO8T
	pMeYpU/Wo95msrYEB5fwDWUE1y7mAX+t6Moj3ryePJGa3NoWfdQyh9wQEcctjoPYbCSMues12FG
	fLapftVR2vaOPYmYOJzlyZqxDXOaa78YA7VwRwOe/qGZAdf9dcHHIGHRAv1FJD
X-Google-Smtp-Source: AGHT+IHTxufu9giIS/qoVEmlIHC36/vey799tBBx89SZA0jtNu9H3VEO3+8KyFij7b0gbAqkAzY4fwF1swvcXuSibLM=
X-Received: by 2002:a05:6870:63a2:b0:2c2:cd87:7521 with SMTP id
 586e51a60fabf-2c68b0f98f2mr133169fac.4.1741885923288; Thu, 13 Mar 2025
 10:12:03 -0700 (PDT)
MIME-Version: 1.0
References: <myL2.1741884397359241204.Zyqi@lists.yoctoproject.org> <CANNYZj9uw-yh2wbmtieNR-aa1XRTOHTiLRvJCJi-4AOmZmvq_A@mail.gmail.com>
In-Reply-To: <CANNYZj9uw-yh2wbmtieNR-aa1XRTOHTiLRvJCJi-4AOmZmvq_A@mail.gmail.com>
From: Ashish Mishra <ashishm@mvista.com>
Date: Thu, 13 Mar 2025 22:41:52 +0530
X-Gm-Features: AQ5f1JqkRLzEL0TQo7iV_G-4S8T2vlkPKR48E8EKTchAxdFl1G2WBtCJVy09ZZg
Message-ID: <CAP2OjciYLUGx246fpXTasNAXxq4o7Di9YqbGMm22FvVEvrLagQ@mail.gmail.com>
Subject: Re: [yocto] jzlib hosting website down and hence build is failing
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Content-Type: multipart/alternative; boundary="000000000000b2811406303c6b36"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 17:12:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64952

--000000000000b2811406303c6b36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander ,

But the recipe https://layers.openembedded.org/layerindex/recipe/81565/is
tracking the tar
Thanks for sharing the github link
Will look at the possibility for changing to github

- Ashish



On Thu, Mar 13, 2025 at 10:19=E2=80=AFPM Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:

> Is it this?
>
> https://github.com/ymnk/jzlib
>
> Given that the last commit was 12 years ago, you should not be using
> this at all.
>
> But if you insist, convert the recipe to take sources from github.
>
> Alex
>
> On Thu, 13 Mar 2025 at 17:46, emailaddress.ashish via
> lists.yoctoproject.org
> <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi Members ,
> >
> > Its been few weeks that the website http://www.jcraft.com/jzlib  is
> down.
> > Can senior members please help and share what's the approach to handle
> such cases.
> >
> > Currently i have the tar from other build which i am manually copying t=
o
> my current download folder .
> > Since we have customer release lined up , manually copying the tar will
> not be an feasible option.
> >
> > So wanted to check in community :
> > 1) Do we have any alternate hosting website , i can create an patch and
> push the changes
> > 2) Is there any template to copy the TAR in download folder ?
> >      As any patch we create will be from WORKDIR , not seen any
> implementation where recipe is touching "download" folder
> > 3) Generally whats the suggested mechanism in Yocto to handle such
> scenario
> >
> > Thanks ,
> > Ashish
> >
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64951):
> https://lists.yoctoproject.org/g/yocto/message/64951
> Mute This Topic: https://lists.yoctoproject.org/mt/111683564/4806067
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ashishm@mvista.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b2811406303c6b36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alexander ,=C2=A0<div><div><br></div><div>But the recip=
e=C2=A0<a href=3D"https://layers.openembedded.org/layerindex/recipe/81565/i=
s">https://layers.openembedded.org/layerindex/recipe/81565/is</a> tracking =
the tar=C2=A0</div><div>Thanks for sharing the github link=C2=A0</div><div>=
Will look at the possibility for changing to github=C2=A0</div><div><br></d=
iv><div>- Ashish=C2=A0</div><div><br></div><div><br></div></div></div><br><=
div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Mar 13, 2025 at 10:19=E2=80=AFPM Alexander Kanavin via <=
a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ale=
x.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@l=
ists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Is it this?<br>
<br>
<a href=3D"https://github.com/ymnk/jzlib" rel=3D"noreferrer" target=3D"_bla=
nk">https://github.com/ymnk/jzlib</a><br>
<br>
Given that the last commit was 12 years ago, you should not be using<br>
this at all.<br>
<br>
But if you insist, convert the recipe to take sources from github.<br>
<br>
Alex<br>
<br>
On Thu, 13 Mar 2025 at 17:46, emailaddress.ashish via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;emailaddress.ashish=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Members ,<br>
&gt;<br>
&gt; Its been few weeks that the website <a href=3D"http://www.jcraft.com/j=
zlib" rel=3D"noreferrer" target=3D"_blank">http://www.jcraft.com/jzlib</a>=
=C2=A0 is down.<br>
&gt; Can senior members please help and share what&#39;s the approach to ha=
ndle such cases.<br>
&gt;<br>
&gt; Currently i have the tar from other build which i am manually copying =
to my current download folder .<br>
&gt; Since we have customer release lined up , manually copying the tar wil=
l not be an feasible option.<br>
&gt;<br>
&gt; So wanted to check in community :<br>
&gt; 1) Do we have any alternate hosting website , i can create an patch an=
d push the changes<br>
&gt; 2) Is there any template to copy the TAR in download folder ?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 As any patch we create will be from WORKDIR , not =
seen any implementation where recipe is touching &quot;download&quot; folde=
r<br>
&gt; 3) Generally whats the suggested mechanism in Yocto to handle such sce=
nario<br>
&gt;<br>
&gt; Thanks ,<br>
&gt; Ashish<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64951): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64951" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64951</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111683564/480=
6067" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111683564/4806067</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ashishm@mvista.com" target=3D"_blank">ashishm@mv=
ista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b2811406303c6b36--

