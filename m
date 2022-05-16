Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7313AC433EF
	for <webhook@archiver.kernel.org>; Mon, 16 May 2022 12:55:00 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web09.28569.1652705695243293316
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 05:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=bos5Iivz;
 spf=pass (domain: linaro.org, ip: 209.85.208.46,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f46.google.com with SMTP id y21so18206359edo.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 16 May 2022 05:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/hdwuRXEToxFTZI14oL6ZMAc9VzrciFg1zIj29E6PpU=;
        b=bos5IivzUvpFySIxFxf7Ctdyw4lSt3TduPXbAtw9hRJGqLl2i9+lP032qXXV66K+UN
         lejgALxARZB3P987IY8Z7TFKZW3BRbVBUjCGD+2lj+V+QZRfuZuKHvPNpvRbxdWyY8Km
         dvdr2EeC0KopSbxQZPjVwSRS6CeK75m7r/uDwsRrxyJ5jBoF3tVtf966WgCZAiFlpwre
         ezYtXU88vg3RdWlyx7bpyTMdmVqPbeefPCCiKCf2NijkF8yKxIaK1Jkr0dss8Nr0yIc1
         gBYYbAoxWx4SZU5+Z5xO2UfywDZTYQHtpNaNeajbcTwHne/+SLULsQMk1AgB/wv+cLzQ
         nw4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/hdwuRXEToxFTZI14oL6ZMAc9VzrciFg1zIj29E6PpU=;
        b=tux2EQtrF1DlfMupPlFEr7MsK/HruCsQao28PS5RXk9oCeWiJYW0bT3S+B47hrMOCa
         ZQn//M+lvrQKtFAsEOeuZ/V32uUvRAe0MdLK4Dx5jOw3iw9hvh6MNY7xS1BcEJl+FC0B
         Xo91Fp3c2MgBGkiuqvQIbmuRH1LJjf9HI7/N5NSjaHJh4Hx6/CyA6anvp/ofACNued22
         XtKAaXbyEdvvRSM/379wRBbKxEtJkg0D84dJewyTgjg6Qj7jOajbrBHr4kOf8+7AxjCq
         RUyjA+zUqBshyjDEe+RNjGGFtIkgLSiUJKQkJw4RVl3ILis7XqDQDgY+3UsehUYkNZtU
         aMFw==
X-Gm-Message-State: AOAM530Dqb7rniURL1ZSzWl+mWtyJQ4n1Cub2PI1j2KcSkKc6GT0RQQg
	YyOaKt9q40yOPUsFVjtReuk31RLKJt9geJp/5pe8tg==
X-Google-Smtp-Source: 
 ABdhPJzkGyYwCk+9ULbi1NCF+Nqr9UnlfDJBhmvdC+ZV78jEk7T3uewgQ6wfM9aQ2j5EEe4549Fq9+jEL1JC78dTDnU=
X-Received: by 2002:a05:6402:1694:b0:425:ae5e:4843 with SMTP id
 a20-20020a056402169400b00425ae5e4843mr13123707edv.415.1652705693610; Mon, 16
 May 2022 05:54:53 -0700 (PDT)
MIME-Version: 1.0
References: <5e5f55a-d5ec-32d9-232f-d10961d667b@crashcourse.ca>
In-Reply-To: <5e5f55a-d5ec-32d9-232f-d10961d667b@crashcourse.ca>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 16 May 2022 14:54:42 +0200
Message-ID: 
 <CAP71WjwDVn88vQWEHhU0qjrLnbAC2WuUZnNgfbQOUxT=5cvK0A@mail.gmail.com>
Subject: Re: [yocto] is there already online the YP summit "hands-on setup"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c94c5b05df2087b6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 May 2022 12:55:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57110

--000000000000c94c5b05df2087b6
Content-Type: text/plain; charset="UTF-8"

On Mon, May 16, 2022 at 2:17 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   i note that one of the first sessions is 15 minutes of "A session to
> help people setup their Digital Ocean account." would this lab already
> be online somewhere so people can do this ahead of time to make sure
> nothing goes wrong?
>

No , we are using a different cloud provider / partner this time. That
requires all the 'students' to have a valid account with our partner
(Digital Ocean), and all the hands on will be done using DO cloud
instances. All registered 'students' will get credits on their Digital
Ocean accounts for the duration of our event.  This first session is to
make sure everyone is all set up with their account before we start the
hands on.


>
> rday
>
> https://pretalx.com/yocto-project-summit-2022-05/talk/URUNLG/
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57109):
> https://lists.yoctoproject.org/g/yocto/message/57109
> Mute This Topic: https://lists.yoctoproject.org/mt/91138090/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000c94c5b05df2087b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 16, 2022 at 2:17 PM Rober=
t P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse=
.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><br>
=C2=A0 i note that one of the first sessions is 15 minutes of &quot;A sessi=
on to<br>
help people setup their Digital Ocean account.&quot; would this lab already=
<br>
be online somewhere so people can do this ahead of time to make sure<br>
nothing goes wrong?<br></blockquote><div><br></div><div>No , we are using a=
 different cloud provider / partner this time. That requires all the &#39;s=
tudents&#39; to have a valid account with our partner (Digital Ocean), and =
all the hands on will be done using DO cloud instances. All registered &#39=
;students&#39; will get credits on their Digital Ocean accounts for the dur=
ation of our event.=C2=A0 This first session is to make sure everyone is al=
l set up with their account before we start the hands on.</div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
rday<br>
<br>
<a href=3D"https://pretalx.com/yocto-project-summit-2022-05/talk/URUNLG/" r=
el=3D"noreferrer" target=3D"_blank">https://pretalx.com/yocto-project-summi=
t-2022-05/talk/URUNLG/</a><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57109): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57109" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57109</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91138090/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91138090/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000c94c5b05df2087b6--

