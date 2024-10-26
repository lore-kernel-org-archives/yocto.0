Return-Path: <grsandeep85@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CAC8D149FA
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 00:14:41 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.1158.1729901676540028993
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 17:14:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fkYulaLp;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: grsandeep85@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-539f72c913aso3397573e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 17:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729901674; x=1730506474; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J/QPQMJcGg5MLXECPRr9sXokaSc+J7BsWm5jUvdTNO0=;
        b=fkYulaLpjKqQZHAMneORnLNn0CUefmYk5M0Rvpa76HlqYHj4F2Y8BHSvWBosFK/d7s
         PDhy42+SQKj7PGPCnZqQ7HKOAuvkOgCShmEKDZBWbbHkajKKhTlqGH5J7j34D0J0vLn1
         UDJHEIMWVgV7fZLZ4M8glGrZx+kCIHHBh4HRisO/s14bPuILC+DtEoW1GK9RQpMvLC/x
         UvNPL9NcMc7r4+FFwwiZZ557GeU0atC+g7+/Gj+v2BOGQb09u3BLF/YCylAMs0rbimNU
         VnjupS/OCHBXThB1g4kFE9Wu8YhXQjXMzqEq1mUk7Qqwc8gE0cE1X4NNayJWl7WFi/TP
         Dgtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729901674; x=1730506474;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J/QPQMJcGg5MLXECPRr9sXokaSc+J7BsWm5jUvdTNO0=;
        b=upvw8SGoAZxLVSpPFHhtNC+m2XixW0kq3stC8sOuupIbye3rBbIo3YoSWvd1OfavNU
         26PnJclx43X7O3/WgbuKfrFZHGw2/UV9yxGWDF+TwmP0H+iRnJFdXXziUWXFhiXSkDyd
         OWBqPq7vcW/5AIuBlHEJE5MoOSCsvK8bsDVfHK35Uf4SOhIGYrg+DcPC0BNd56dXGMvZ
         D0y89tHX0a6kKq5aobQQ4Cj0M/Nmcmoh9u33tV6b0YUDam14RdBZLms1jHuHdvF7NWtG
         2tK1aN3U61coMz279nF0ORTR/ptptlxFIPERH3fowIhbOpVisADmEAI5c8F3c9PyQa20
         GC9g==
X-Gm-Message-State: AOJu0YyNHyXq8tdCkI1ComStkOxCfIvmq28ml6aZP2hUZ3yKGLfE3obG
	FZWTer4D2EUTuXbDOh+8sL5uQzUDKuRt9T20rEQJPsEgLemc0DLIrUiOSQ0+ymIaoj5G6nPCEc+
	BDjAlVuBnbryy9MtG3QxKMSgwjDi9dIZc
X-Google-Smtp-Source: AGHT+IE3p/P/sGBXxvjx9Oka2cNJMv+aWxORdMDN51fvLRRC02VI4YltYl7t0u6bXFsyB5Ep/8aKv8nZ6KOfRLIbXUo=
X-Received: by 2002:a05:6512:1116:b0:52c:dd3d:85af with SMTP id
 2adb3069b0e04-53b348e0eedmr394082e87.25.1729901673844; Fri, 25 Oct 2024
 17:14:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt6NwpF3MEwCs0k41Bk1Sn+Vt52J+Jk255-EjHOcMuaRSRW=g@mail.gmail.com>
 <64c22786-5245-49d0-be0e-407abda2895d@ti.com>
In-Reply-To: <64c22786-5245-49d0-be0e-407abda2895d@ti.com>
From: Sandeep Gundlupet Raju <grsandeep85@gmail.com>
Date: Fri, 25 Oct 2024 18:14:22 -0600
Message-ID: <CAKP9-Sh4YQ78uqJeXagX9RhduFUsF-yPwwLkHZtOfcSkD8LYfg@mail.gmail.com>
Subject: Re: [yocto] CFP for Yocto Project Summit 2024.12 is open
To: yocto@lists.yoctoproject.org, reatmon@ti.com, 
	Trevor Woerner <twoerner@gmail.com>
Cc: jester@theyoctojester.info
Content-Type: multipart/alternative; boundary="000000000000c418290625561e23"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 00:14:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64133

--000000000000c418290625561e23
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

Is the proposal still open? I see it says it's already closed. It's Still
Oct 25th here in Mountain Time.


*Thanks,*
*Sandeep*



On Thu, Oct 24, 2024 at 3:35=E2=80=AFPM Ryan Eatmon via lists.yoctoproject.=
org
<reatmon=3Dti.com@lists.yoctoproject.org> wrote:

>
> Hey.  Just so you know the dates you list in the CFP are a little off.
>
> October 25th is a Friday, not a Monday.
>
> Same for the other three dates.  Not sure if it will confuse anyone...
>
>
> On 10/3/2024 5:16 AM, Josef Holzmayr wrote:
> >
> >   Submit your talk now!
> >
> >
> > -->
> > https://pretalx.com/yocto-project-summit-2024-12/cfp
> > <https://pretalx.com/yocto-project-summit-2024-12/cfp>
> >   <--
> >
> > The Yocto Project=C2=AE /Virtual/ Summit 2024.12 is a virtual technical
> > conference for engineers, open source technologists, students and
> > academia in the OSS space.
> >
> >
> >   Event Schedule
> >
> >   * Tuesday, Dec 3nd - Thursday, Dec 5th, 2024
> >   * 12:00 PM =E2=80=93 6:00 PM (UTC)
> >
> >
> >   CFP Schedule
> >
> >   * CFP Closes: Monday, Oct 25th, 2024
> >   * CFP Notifications: Monday, Nov 1st, 2024
> >   * Slides Due Date: Friday, Nov 25th, 2024
> >
> >
> >   List of suggested topics:
> >
> >   * Layer quality: e.g. creating robust layers, safely using existing
> layers
> >   * Productivity tricks, Best Practices
> >   * Developer toolbox
> >   * Security
> >   * Reproducibility
> >   * Supporting the Application Developer Workflow
> >   * DevOps, CI/CD
> >   * Containers, VMs
> >   * Working with/creating BSPs
> >   * Practical use of the Yocto Project
> >   * Product showcase
> >
> >
> >   Presentation formats
> >
> > Slots for talks vary from 15-45 minutes, with training sessions startin=
g
> > at 60 minutes or longer.
> >
> > Submit at
> > https://pretalx.com/yocto-project-summit-2024-12/cfp
> > <https://pretalx.com/yocto-project-summit-2024-12/cfp>
> >
> >
> >   Questions?
> >
> > Ping me (jester@theyoctojester.info <mailto:jester@theyoctojester.info>=
)
>
> > or events@yoctoproject.org <mailto:events@yoctoproject.org>
> >
> > Josef
> > on behalf of the YP events team
> >
> >
> >
> >
> >
> >
> >
>
> --
> Ryan Eatmon                reatmon@ti.com
> -----------------------------------------
> Texas Instruments, Inc.  -  LCPD  -  MGTS
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64116):
> https://lists.yoctoproject.org/g/yocto/message/64116
> Mute This Topic: https://lists.yoctoproject.org/mt/108796648/3618245
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> grsandeep85@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000c418290625561e23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;color:#073763">Hi All,</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif;color:#073763"><br></div><=
div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif=
;color:#073763">Is the proposal still open? I see it says it&#39;s already =
closed. It&#39;s Still Oct 25th here in Mountain Time.</div><div class=3D"g=
mail_default" style=3D"font-family:arial,helvetica,sans-serif;color:#073763=
"><br></div><div class=3D"gmail_default" style=3D"font-family:arial,helveti=
ca,sans-serif;color:#073763"><br></div><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763" face=3D"arial, hel=
vetica, sans-serif"><b>Thanks,</b></font><div><font face=3D"arial, helvetic=
a, sans-serif"><font color=3D"#073763"><b>Sandeep</b></font><br></font><br>=
</div></div></div></div></div></div></div></div><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2024 at=
 3:35=E2=80=AFPM Ryan Eatmon via <a href=3D"http://lists.yoctoproject.org">=
lists.yoctoproject.org</a> &lt;reatmon=3D<a href=3D"mailto:ti.com@lists.yoc=
toproject.org">ti.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><br>
Hey.=C2=A0 Just so you know the dates you list in the CFP are a little off.=
<br>
<br>
October 25th is a Friday, not a Monday.<br>
<br>
Same for the other three dates.=C2=A0 Not sure if it will confuse anyone...=
<br>
<br>
<br>
On 10/3/2024 5:16 AM, Josef Holzmayr wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0Submit your talk now!<br>
&gt; <br>
&gt; <br>
&gt; --&gt;<br>
&gt; <a href=3D"https://pretalx.com/yocto-project-summit-2024-12/cfp" rel=
=3D"noreferrer" target=3D"_blank">https://pretalx.com/yocto-project-summit-=
2024-12/cfp</a> <br>
&gt; &lt;<a href=3D"https://pretalx.com/yocto-project-summit-2024-12/cfp" r=
el=3D"noreferrer" target=3D"_blank">https://pretalx.com/yocto-project-summi=
t-2024-12/cfp</a>&gt;<br>
&gt;=C2=A0 =C2=A0&lt;--<br>
&gt; <br>
&gt; The Yocto Project=C2=AE /Virtual/=C2=A0Summit 2024.12 is a virtual tec=
hnical <br>
&gt; conference for engineers, open source technologists, students and <br>
&gt; academia in the OSS space.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0Event Schedule<br>
&gt; <br>
&gt;=C2=A0 =C2=A0* Tuesday, Dec 3nd - Thursday, Dec 5th, 2024<br>
&gt;=C2=A0 =C2=A0* 12:00 PM =E2=80=93 6:00 PM (UTC)<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0CFP Schedule<br>
&gt; <br>
&gt;=C2=A0 =C2=A0* CFP Closes: Monday, Oct 25th, 2024<br>
&gt;=C2=A0 =C2=A0* CFP Notifications: Monday, Nov 1st, 2024<br>
&gt;=C2=A0 =C2=A0* Slides Due Date: Friday, Nov 25th, 2024<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0List of suggested topics:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0* Layer quality: e.g. creating robust layers, safely using=
 existing layers<br>
&gt;=C2=A0 =C2=A0* Productivity tricks, Best Practices<br>
&gt;=C2=A0 =C2=A0* Developer toolbox<br>
&gt;=C2=A0 =C2=A0* Security<br>
&gt;=C2=A0 =C2=A0* Reproducibility<br>
&gt;=C2=A0 =C2=A0* Supporting the Application Developer Workflow<br>
&gt;=C2=A0 =C2=A0* DevOps, CI/CD<br>
&gt;=C2=A0 =C2=A0* Containers, VMs<br>
&gt;=C2=A0 =C2=A0* Working with/creating BSPs<br>
&gt;=C2=A0 =C2=A0* Practical use of the Yocto Project<br>
&gt;=C2=A0 =C2=A0* Product showcase<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0Presentation formats<br>
&gt; <br>
&gt; Slots for talks vary from 15-45 minutes, with training sessions starti=
ng <br>
&gt; at 60 minutes or longer.<br>
&gt; <br>
&gt; Submit at<br>
&gt; <a href=3D"https://pretalx.com/yocto-project-summit-2024-12/cfp" rel=
=3D"noreferrer" target=3D"_blank">https://pretalx.com/yocto-project-summit-=
2024-12/cfp</a> <br>
&gt; &lt;<a href=3D"https://pretalx.com/yocto-project-summit-2024-12/cfp" r=
el=3D"noreferrer" target=3D"_blank">https://pretalx.com/yocto-project-summi=
t-2024-12/cfp</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0Questions?<br>
&gt; <br>
&gt; Ping me (<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blan=
k">jester@theyoctojester.info</a> &lt;mailto:<a href=3D"mailto:jester@theyo=
ctojester.info" target=3D"_blank">jester@theyoctojester.info</a>&gt;) <br>
&gt; or <a href=3D"mailto:events@yoctoproject.org" target=3D"_blank">events=
@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:events@yoctoproject.org"=
 target=3D"_blank">events@yoctoproject.org</a>&gt;<br>
&gt; <br>
&gt; Josef<br>
&gt; on behalf of the YP events team<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
-- <br>
Ryan Eatmon=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=
=3D"mailto:reatmon@ti.com" target=3D"_blank">reatmon@ti.com</a><br>
-----------------------------------------<br>
Texas Instruments, Inc.=C2=A0 -=C2=A0 LCPD=C2=A0 -=C2=A0 MGTS<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64116): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64116" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64116</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108796648/361=
8245" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108796648/3618245</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:grsandeep85@gmail.com" target=3D"_blank">grsande=
ep85@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c418290625561e23--

