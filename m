Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E0FBC4321E
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 00:16:37 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.29989.1669853794522851602
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 16:16:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mNtaLlvM;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: ticotimo@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id e27so417267ejc.12
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 16:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BM9k8T6pltOTk6ALjBNUK215/RuuxM7JvQas1dSvxXY=;
        b=mNtaLlvM2HMRY/WJzARUL7rZjpiDWQRGEJSY14HPmz5TKcoG5U3o1CR36NjtBjnDPu
         2jS8S/dRdb7BYxTVqZtEr8DBnl8I/oOX4Papnrk2uzAp6gxnEjDT9suTCSejhDGgYvo6
         CyG6Oprk0/bYQs3OKR29B2aQ/wIH7Oo9mWgzOYpIMLfKZy+bkUCDpjsq25Y7AC6HM8ry
         bvxRvE6Xh0B08nGzERPZVD7nosQj+nw2XWEE9UC1kQ2xMnd5VBAxNEROVRHxT3qfioHa
         39O554LHD+L4dMjiV4scTDHGbVstsedgPTiREzaW6HBysiufeEwiWWat0DYj7RXK4f75
         4Ueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BM9k8T6pltOTk6ALjBNUK215/RuuxM7JvQas1dSvxXY=;
        b=o6xL3Ws+0eBETqigry4LO5P3ghhpbcwybCl42xFx7Szh1XwC7TzxB+M1DVG2+zmKA/
         2nX67zT4fMB29QI0ZYFy5sa2Y7xH3sRaQ+ur+dUM8RX1DkwplmoGuZQaH0D8WrjvoVyE
         Tba3ZGVjI0zSDXGlhiWoPpxOANAaaUUWohhj2ddlbNww0080RDgIiQ8xzVfsl+8web6B
         FSjdHiUTfL5Qq9bUSSK6tPN/bI5nNY6dtrNdlcbp3/hND/sF2tWZEreEHK5eor6LO5Km
         GVhzzS/BhcF3m6LJb8NoshSCI3oOQmXoZAPyGbfrwTRuie/3lKGEu+KQeDcT24Org221
         ZhNg==
X-Gm-Message-State: ANoB5plUgQu6p4vzA3Ds3MdJiEDB50SdaW2KTeK2zOChiVybCibxU9uT
	Erch9SNl3er4q/lWcdRzmOD0M5lFp9oDSJ2O+i0=
X-Google-Smtp-Source: AA0mqf6/OGSDZl4RTr4rvOr2bRtqMhAUcaXsg1gJO6R9DojUNWS97hZ/k0seD+16UEDtx0PIohwYcXx70qEk5nHgPlo=
X-Received: by 2002:a17:906:d0da:b0:7ad:9891:8756 with SMTP id
 bq26-20020a170906d0da00b007ad98918756mr54521406ejb.203.1669853792664; Wed, 30
 Nov 2022 16:16:32 -0800 (PST)
MIME-Version: 1.0
References: <dF0b.1669820159069031281.m3lb@lists.yoctoproject.org> <d30a843420db43b18c2def6557dc454b3ac25a20.camel@linuxfoundation.org>
In-Reply-To: <d30a843420db43b18c2def6557dc454b3ac25a20.camel@linuxfoundation.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 30 Nov 2022 16:16:21 -0800
Message-ID: <CANx9H-DbFQ0PeG+xFPGtXnHrhYwHrO0_XGT1kTDCg4i0inFKBw@mail.gmail.com>
Subject: Re: [yocto] Add user to group that's created in other recipe
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: sven@svenschwermer.de, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000023832805eeb9220f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 00:16:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58688

--00000000000023832805eeb9220f
Content-Type: text/plain; charset="UTF-8"

One way I have gotten around this is by using an .inc file to create the
users/groups and then the recipes that need the user/group require/include
that .inc file.

On Wed, Nov 30, 2022 at 3:05 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2022-11-30 at 06:55 -0800, Sven via lists.yoctoproject.org
> wrote:
> > I have intermittent problems with a recipe that creates a user that
> > is member of groups that are created by a different recipe. This is
> > the recipe that creates the groups:
> >
> > # recipe-a.bb
> > inherit useradd
> > USERADD_PACKAGES = "${PN}"
> > GROUPADD_PARAM:${PN} = "--system gpio;--system i2c"
> >
> > This is the recipe that creates the user:
> >
> > # recipe-b.bb
> > inherit useradd
> > USERADD_PACKAGES = "${PN}"
> > GROUPADD_PARAM:${PN} = "--system mygroup"
> > GROUPS = "dialout,mygroup,gpio,i2c"
> > USERADD_PARAM:${PN} = "--system --no-create-home --shell /bin/false -
> > -no-user-group --groups ${GROUPS} myuser"
> > DEPENDS = "recipe-a"
> >
> > I guess it's also worth pointing out, that I use useradd-static:
> > USERADDEXTENSION = "useradd-staticids"
> > USERADD_ERROR_DYNAMIC = "error"
> > USERADD_UID_TABLES = "files/passwd"
> > USERADD_GID_TABLES = "files/group"
> >
> > Every now and then I get and error in recipe_b's do_package_setscene
> > task where useradd complains that one of the groups provided by
> > recipe_a does not exist. This appears to be a race condition since
> > most of the times, this works OK. I was under the impression that
> > specifying DEPENDS="recipe-a" in recipe_b.bb would be enough to
> > declare this dependency. What am I doing wrong?
>
> Just to confirm, this is with master?
>
> I think there are some open bugs for useradd issues like this. It is
> supposed to work but sounds like there are races. If there isn't a bug
> open for it, there probably should be.
>
> Sadly we don't have many people interested in working on issues like
> this so I can't say when it might get fixed, we do our best!
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
> View/Reply Online (#58687):
> https://lists.yoctoproject.org/g/yocto/message/58687
> Mute This Topic: https://lists.yoctoproject.org/mt/95359282/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000023832805eeb9220f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One way I have gotten around this is by using an .inc=
 file to create the users/groups and then the recipes that need the user/gr=
oup require/include that .inc file.</div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 30, 2022 at 3:05 PM Richard =
Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.pu=
rdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">On Wed, 2022-11-30 at 06:55 -0800, Sven via <a href=
=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lis=
ts.yoctoproject.org</a><br>
wrote:<br>
&gt; I have intermittent problems with a recipe that creates a user that<br=
>
&gt; is member of groups that are created by a different recipe. This is<br=
>
&gt; the recipe that creates the groups:<br>
&gt; <br>
&gt; # <a href=3D"http://recipe-a.bb" rel=3D"noreferrer" target=3D"_blank">=
recipe-a.bb</a><br>
&gt; inherit useradd<br>
&gt; USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
&gt; GROUPADD_PARAM:${PN} =3D &quot;--system gpio;--system i2c&quot;<br>
&gt; <br>
&gt; This is the recipe that creates the user:<br>
&gt; <br>
&gt; # <a href=3D"http://recipe-b.bb" rel=3D"noreferrer" target=3D"_blank">=
recipe-b.bb</a><br>
&gt; inherit useradd<br>
&gt; USERADD_PACKAGES =3D &quot;${PN}&quot;<br>
&gt; GROUPADD_PARAM:${PN} =3D &quot;--system mygroup&quot;<br>
&gt; GROUPS =3D &quot;dialout,mygroup,gpio,i2c&quot;<br>
&gt; USERADD_PARAM:${PN} =3D &quot;--system --no-create-home --shell /bin/f=
alse -<br>
&gt; -no-user-group --groups ${GROUPS} myuser&quot;<br>
&gt; DEPENDS =3D &quot;recipe-a&quot;<br>
&gt; <br>
&gt; I guess it&#39;s also worth pointing out, that I use useradd-static:<b=
r>
&gt; USERADDEXTENSION =3D &quot;useradd-staticids&quot;<br>
&gt; USERADD_ERROR_DYNAMIC =3D &quot;error&quot;<br>
&gt; USERADD_UID_TABLES =3D &quot;files/passwd&quot;<br>
&gt; USERADD_GID_TABLES =3D &quot;files/group&quot;<br>
&gt; <br>
&gt; Every now and then I get and error in recipe_b&#39;s do_package_setsce=
ne<br>
&gt; task where useradd complains that one of the groups provided by<br>
&gt; recipe_a does not exist. This appears to be a race condition since<br>
&gt; most of the times, this works OK. I was under the impression that<br>
&gt; specifying DEPENDS=3D&quot;recipe-a&quot; in <a href=3D"http://recipe_=
b.bb" rel=3D"noreferrer" target=3D"_blank">recipe_b.bb</a> would be enough =
to<br>
&gt; declare this dependency. What am I doing wrong?<br>
<br>
Just to confirm, this is with master?<br>
<br>
I think there are some open bugs for useradd issues like this. It is<br>
supposed to work but sounds like there are races. If there isn&#39;t a bug<=
br>
open for it, there probably should be.<br>
<br>
Sadly we don&#39;t have many people interested in working on issues like<br=
>
this so I can&#39;t say when it might get fixed, we do our best!<br>
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
View/Reply Online (#58687): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58687" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58687</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95359282/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
95359282/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000023832805eeb9220f--

