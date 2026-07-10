Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EEFC43458
	for <webhook@archiver.kernel.org>; Fri, 10 Jul 2026 20:35:48 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2676.1783715742365701819
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jul 2026 13:35:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=INgHHyCr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.46, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5aeb11c7347so1116944e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 13:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783715740; cv=none;
        d=google.com; s=arc-20260327;
        b=rIpdhMV9PnqoGhD1T0lklUGMl1bZTgPKKE5SSZdsunTEL6CQtnC3AcPl2L9scn0zgo
         ZCKzexFA9WLdFyqJOkMTmXeL690KoiOm0/RnQ4lTz9/JOVuKMLG1n99mdQjw6USJHoSz
         HcZ1kJP4SmBRWmquJXM5dH0zXwPuVYh8F3hQAtoX/TGuqZ4hAt2TlZUQrIx6O/czybzD
         Sh8SPA+qLZ4jm2t69KPd77E19YTGkcXliBQVmIE/OJzoEA2pnIIWmaCMZhmnxupIBSCU
         1nI/lwMh7kJ4Oijh7416Az18spWpowJmzi65U8fh+Z57TjKiMF/Ywp8VIfF1YouDIXF6
         Ne2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kJ+rxVGU/b4HtCkLpKjLv/uQQot+sXHSELio/5451JA=;
        fh=phb7sQm6dtrSR7vhpVgq47Yhoz2FWwW2pvAuykrPcFw=;
        b=kz4xEUtsYicuMGCZgGhWrhTaIQooYytZZUXKwP7LqEH9qWhnUbs9lWkt3mVbbpdkFx
         klXQHd9ZzqbJOpe8CworE9CCBYIRpciDjDGwm1pZZa536Ai7a4CQ7gKXKprVpT4sGK1N
         P/dcPIITIKG63a2J0L+XxOcf4oaUKWVCbdrM9MFfimxFZxhg9RrsQh1tpg98jzAZQHaM
         BpNi8RZxa51YJ5v/tPd/u2fJraM0S1Y/kB6qz57thAmM/7rmQmkmOCV+cAFzYF4uV0JA
         xYfi0DPOJpbOjGhayyTfa6Q7dSqYuyqLqG32gh51a9HUTVmBj8oL2tHZ6HJiTnVLIO9N
         b/RA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1783715740; x=1784320540; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kJ+rxVGU/b4HtCkLpKjLv/uQQot+sXHSELio/5451JA=;
        b=INgHHyCr0m4r9uiMyODdJO3KAAPV+ocmMfnkZYU3pbnmHGogPxXlcqIRHIXhq1ONJY
         VqitDzWUt36quv7Lgbp9GGyEAqLhiPKxViKrdahNb8VB6NHKwBDgTtK6//EwQf+Yi3NW
         DNZV14f+/u7WwrXvLclKpyAmsorviFq6ZIzAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783715740; x=1784320540;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=kJ+rxVGU/b4HtCkLpKjLv/uQQot+sXHSELio/5451JA=;
        b=W79icrKoZqHNFnjSzlFirMmmlIyU04WIESqENlW8xn6QEkFGZo2eBjxGEb7D7hrAL2
         eP4s/xXi0svAJ/5ugQiDnnD7aZKJ6UJmE1YqEWzjy/H7Wn9P3y//aeqzgOG7BWXTJowC
         WvjKrl7y5fY3uEzV7j6TWKiqfNTLThPDIFfgX+UPuKaRhn2DobippHbKnnOrVKr2l1h3
         rA6AK73Bx9IO94ZimBFV/TneWdtk1kKzjup3x5GBXndw8FqM+OaFez3LJR2v56Ya3U7X
         AeBTSnflZmTk7qAjTlUnYNgSUSDfTHARWT46nUa+zBeINfExQs2B8SX/G8VqsQPZFCgL
         C0pw==
X-Gm-Message-State: AOJu0YyZ/XoVMiAe7iXLv669YPxAkB6yaVboY6pVNKUt2lBLRN7OXzpK
	4Ry5tkCjVYLkGavcFYu3IiK9IN+DIA8TGd4+Sh32bcJ00epKQDk9VBLfJh8f4vRGNJqq9Jq47jD
	Bs/tVTUuwchqqEVxgHFlUoFAQ1eKFejfkX3YReogU/dPiwJcGQYegs90=
X-Gm-Gg: AfdE7ckXufzcSnpnLd0khNJFruK7Yn9o3Q7e13HAfxsmIwtIlYcM5K31an1+Ko4xxkA
	n+S4DrCK6koLEBXK8+xk3jDGNTJ18UD/IpcimCaSiqsF3UbE8PDQ8mUKsSIGPDj7Reg6XtQJ0kQ
	ea2ieBN/WIBmbcKjMBWFE1SE5lb5WvH+MsKdQFsRhPHPXoXSMeUCZJoZ9v/efFtWb/5rIhaObVe
	E8T4YPFUO6+hl1rHI5a6WEFI+DXDGMJiGNrAqrumBzSQ1TSCLNlwUYN0fYeUCBjCKOJAbeYhfnr
	GbFtb4IBZDICfjj6aF3iKd1yrZWeVa2Jk0mK80M=
X-Received: by 2002:a05:6512:61c2:10b0:5ae:b01a:d213 with SMTP id
 2adb3069b0e04-5b02356874emr90208e87.3.1783715740216; Fri, 10 Jul 2026
 13:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <akNglndfCzY7BdSw@navimatix.de> <846ae9fc-1aa8-4c21-878e-e9a8c41c3a44@igalia.com>
 <PH0PR05MB8478EEE8764B1AB6B1D96DEBCAFD2@PH0PR05MB8478.namprd05.prod.outlook.com>
 <7f24e4a4-1c56-49f7-8bfa-5ea337725060@igalia.com>
In-Reply-To: <7f24e4a4-1c56-49f7-8bfa-5ea337725060@igalia.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 10 Jul 2026 13:35:28 -0700
X-Gm-Features: AUfX_mzBsPHI7rVGIHq0aPd16OpUtJkxRjOfcxBu9eQXEZ62YKPq3klNQnt4bq8
Message-ID: <CADfgfoYcc6VBrgCTRya7vTHNxnqFACwntFPTVqe=OzNdA8NGjw@mail.gmail.com>
Subject: Re: [yocto] Add redirect git.y.o/git/... -> /...
To: yocto@lists.yoctoproject.org, clopez@igalia.com
Cc: Duane Ellis <duane@duaneellis.com>, 
	"joerg.sommer@navimatix.de" <joerg.sommer@navimatix.de>
Content-Type: multipart/alternative; boundary="000000000000137f0b065647af59"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jul 2026 20:35:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66635

--000000000000137f0b065647af59
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

The git:// protocol is no longer available and we announced its deprecation
almost a decade ago so people had time to prepare. However the
https://git.yoctoproject.org/git/ style URIs are still supposed to work.
This is a frustrating bug. A single mirror was missing the mapping, which I
have now added. All the others were already working correctly.

If the problem persists please email helpdesk@yoctoproject.org for more
troubleshooting.

On Fri, Jul 10, 2026 at 8:16=E2=80=AFAM Carlos Alberto Lopez Perez via
lists.yoctoproject.org <clopez=3Digalia.com@lists.yoctoproject.org> wrote:

> On 10/07/2026 16:04, Duane Ellis wrote:
> > I agree with you - it is painful when things break.
> >
> > Meanwhile you might check out the =E2=80=9Cgit-instead-of=E2=80=9D feat=
ure of git.
> > Google the term: =E2=80=9Cgit url replacement=E2=80=9D or =E2=80=9Cgit =
insteadOf=E2=80=9D
> >
> > We do this to repoint URLS from an external un-controlled site to an
> internal company controlled mirror.
> >
>
> Thanks for the suggestion.
>
> Unfortunately that won't help for my use case, which is using the "repo"
> tool with a xml manifest on a uncontrolled environment to fetch a set of
> repos containing Yocto layers and then automatically build a SDK.
>
> I already fixed it by updating the xml files to point to the new URIs,
> but things were broken until I noticed the breakage and did the update.
>
> I have worked as sysadmin in the past and is not that hard to add some
> redirections on Apache or Nginx to keep the old URIs working.
> By not doing that, the result is that some third-party CIs broke and
> several users got annoyed. I really hope next time this can be avoided.
>
> Thanks.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66634):
> https://lists.yoctoproject.org/g/yocto/message/66634
> Mute This Topic: https://lists.yoctoproject.org/mt/120043228/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> mhalstead@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Michael Halstead (he/him)
Linux Foundation / Yocto Project
Staff IT Engineer

--000000000000137f0b065647af59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br>The git:// protocol is no longer available =
and we announced its deprecation almost a decade ago so people had time to =
prepare. However the <a href=3D"https://git.yoctoproject.org/git/">https://=
git.yoctoproject.org/git/</a> style URIs are still supposed to work. This i=
s a frustrating bug. A single mirror was missing the mapping, which I have =
now added. All the others were already working correctly.=C2=A0<div><br></d=
iv><div>If the problem persists please email <a href=3D"mailto:helpdesk@yoc=
toproject.org">helpdesk@yoctoproject.org</a> for more troubleshooting.</div=
></div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jul 10, 2026 at 8:16=E2=80=AFAM Carlo=
s Alberto Lopez Perez via <a href=3D"http://lists.yoctoproject.org">lists.y=
octoproject.org</a> &lt;clopez=3D<a href=3D"mailto:igalia.com@lists.yoctopr=
oject.org">igalia.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On 10/07/2026 16:04, Duane Elli=
s wrote:<br>
&gt; I agree with you - it is painful when things break.<br>
&gt; <br>
&gt; Meanwhile you might check out the =E2=80=9Cgit-instead-of=E2=80=9D fea=
ture of git.<br>
&gt; Google the term: =E2=80=9Cgit url replacement=E2=80=9D or =E2=80=9Cgit=
 insteadOf=E2=80=9D<br>
&gt; <br>
&gt; We do this to repoint URLS from an external un-controlled site to an i=
nternal company controlled mirror.<br>
&gt; <br>
<br>
Thanks for the suggestion.<br>
<br>
Unfortunately that won&#39;t help for my use case, which is using the &quot=
;repo&quot;<br>
tool with a xml manifest on a uncontrolled environment to fetch a set of<br=
>
repos containing Yocto layers and then automatically build a SDK.<br>
<br>
I already fixed it by updating the xml files to point to the new URIs,<br>
but things were broken until I noticed the breakage and did the update.<br>
<br>
I have worked as sysadmin in the past and is not that hard to add some<br>
redirections on Apache or Nginx to keep the old URIs working.<br>
By not doing that, the result is that some third-party CIs broke and<br>
several users got annoyed. I really hope next time this can be avoided.<br>
<br>
Thanks.<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66634): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66634" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66634</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/120043228/100=
3190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/120043228/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank"=
>mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr">Michael Halstead (he/him)<br>Linux Foundation / =
Yocto Project<br>Staff IT Engineer</div></div>

--000000000000137f0b065647af59--

