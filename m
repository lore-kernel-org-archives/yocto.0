Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C6CEC43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 07:51:10 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.37404.1669881066389601971
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 23:51:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iXWXVss4;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id m19so548360wms.5
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 23:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ECTaCIH+OZEXcQVnfEtTs3yNmUSyH7zAVNZ13/jKonc=;
        b=iXWXVss4Pq4KeZjqd5yGJxNfKK6SsArnHInGuuQ54MB3CYFudj8KcZZv71IuxHZKi4
         CYpLMRbSNS+1Qf4O3pcc5jKHq+BbaQqR2Ch0qTI90XBNb4MIYO1aYwAu1vNm30nlpoMT
         JL7pr5FvGRZT3+MVzKAYaScsWqQCVc+IZgVTaRRurGKlDrBEUeuf/DrMX2q6zmWwo8TH
         JG9ry+HP5lvsilQefbuXhAkNvm0UHTwYt0vGcYGZWMfDhosvO+szW0W7iEQHWba77f9V
         Q1iaNpEGnFWdIJQ7Vd0taYT4Iv8iGns6xtQuuKHut8vWAmqR0WmFQBP0EIMENZ70s8OL
         DBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ECTaCIH+OZEXcQVnfEtTs3yNmUSyH7zAVNZ13/jKonc=;
        b=GzapckhVirsTvnpAPjSsya7Cec6P9t68xjd3ykEKY8Q5b8/Sl5V2+V7YWTeEw23jNG
         3iUcpP24+8qaSsxcJ5BQkVS327XeJedTVFdhgN+DJg9bZsiPikmJPDTRG1Duq5y1hHop
         MKh2CgxuNXzO6r7yLWtGTts/hocqgz3nYpjCQLnCigwYm8twDzv7YvS7Xs5e4hFw0/Xv
         jfbFaOU2JGixO27+JYU9VU41k3YqWvTVD9tn+IIFeoljjzr6XqnGVk9lkwUNiMOjpHTf
         WM5fHFxs4li+kbx1aKFo0bwjjD+mk9tAM1+jg8wJVC1CfJJ/wLWWBulXbqMq7RvmerGM
         0xpg==
X-Gm-Message-State: ANoB5pmyWkX63iuerLmSrtxFlvcOOWHSo6BdhDTNPq2V5wRrB6xDN2Wz
	3pJyK0VbI3lV9GAPWZNiXcaV1MVtgZdVCwG2gSMvzHVUoBk=
X-Google-Smtp-Source: AA0mqf45EeKF5XMhhO3Ns6RG01IHXT5y8ahk7GNbsffHPI6NqJCVQaZIQOWudhHSiNe5v3Mg/7vLd3Y2mX2oCDNXN1U=
X-Received: by 2002:a7b:c3c9:0:b0:3cf:5442:bbe with SMTP id
 t9-20020a7bc3c9000000b003cf54420bbemr51799164wmj.2.1669881064751; Wed, 30 Nov
 2022 23:51:04 -0800 (PST)
MIME-Version: 1.0
References: <dF0b.1669820159069031281.m3lb@lists.yoctoproject.org> <d30a843420db43b18c2def6557dc454b3ac25a20.camel@linuxfoundation.org>
In-Reply-To: <d30a843420db43b18c2def6557dc454b3ac25a20.camel@linuxfoundation.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Dec 2022 08:50:53 +0100
Message-ID: <CA+chaQeadc9REq+p+qdn5ZKz5LO9H7iDe7nWDUGRW6zEzG0R-g@mail.gmail.com>
Subject: Re: [yocto] Add user to group that's created in other recipe
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: sven@svenschwermer.de, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ae87ad05eebf7b86"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 07:51:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58692

--000000000000ae87ad05eebf7b86
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 1, 2022 at 12:05 AM Richard Purdie <
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

https://bugzilla.yoctoproject.org/show_bug.cgi?id=13904 is one of the bugs
I think.

--000000000000ae87ad05eebf7b86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 1, 2022 at 12:05 AM Richa=
rd Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Wed, 2022-11-30 at 06:55 -0800, Sven via <a h=
ref=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">=
lists.yoctoproject.org</a><br>
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
open for it, there probably should be.<br></blockquote><div><br></div><div>=
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904">https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904</a> is one of the bugs=
 I think.=C2=A0</div></div></div>

--000000000000ae87ad05eebf7b86--

