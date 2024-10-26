Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04D1DD10BF5
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 09:57:15 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web11.7611.1729936626555033887
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Oct 2024 02:57:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=h63ByhXs;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.45, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a9a156513a1so414018866b.0
        for <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 02:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1729936625; x=1730541425; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mOi7v747AtqBZxJpcmDxwLq8KIp6rnVPvDZw+5yUFAM=;
        b=h63ByhXsebx0Cs7LmN7/06HE9iY8QnC2Ulb/TNfZUUB76r4YURy1TvUuGOTNBC+jZC
         whBH+brWqEgyo7zQFkdst8ULX7AwYUHqrjOFEtQpe0QrtwlutV/eoIFveVGJ9U+OzCMv
         VyaempsKKA4TkSosnBn6mDoN3DSx/uWy3fByE5kc7D8rLIaQgX5v9WJBXl3a7TGiqzz1
         VRP41OC0QOsODYiLbQx3HqR05g2EJSzk+Rq6/EHozqLzHOXEniUvboNxk0L6Mnn1zizi
         eWvCcj51kzYHrZNBmX0YZqF3J8BSq0C+QgdltaNVTyFIa932O4ZUqe+mX9yYG/jfSeU4
         oAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729936625; x=1730541425;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mOi7v747AtqBZxJpcmDxwLq8KIp6rnVPvDZw+5yUFAM=;
        b=b8T8+ArMUge3S/9sBzP+UuZBmGV7PV36ctcNhNIE05eUKRbypF5rqPLnZVPjFD03aU
         2CZv7ejESajBxQYYeAqSHrEej+ThsB9cm1z5SdMBA/w4vUJAXDGHWWpkbOEKCvtCM7mZ
         AnjUmpRYjE5FMcHlijplIvWuJ5nmyFM8aUBe2nlZJmtZ/JesJyvDUTVlv4XGhGLxJW/r
         fN5R6+jHmvPCkL2g0WGDcYpl23e69tn9E8+oJdJkbjZugKrSJSreKPm9YFEoB0krFT1D
         EioQCgjG7YaQ3mEUgMmWEd/yaB7OfbsAFrpx0SEiu4sdXwSa2YVDhHn1/tBpzreTwFd5
         18JQ==
X-Gm-Message-State: AOJu0Yw/Ku42s7pwhRiVDII30q9gZaNUdOaO+eF85eKGwxiLxhig1Wwx
	EIdQ5IQtuzAtQfjJkEKnHrOQ/Hv/yOHS+9RbIwZkRTBj999052G+hDlBweo/sH0OhY0oiM1XMnS
	I0iHR4lTcaGjmD0JY8t0vQEve5MOfwDrS5zwd2g==
X-Google-Smtp-Source: AGHT+IHM8MqEE9Paw7416JDCfWurl7P/QVPfMvOdAyfaZYshyiIX+s1+Da5lk6Do0J9m7Df5Y715e/+/Z2NFNajb5Lw=
X-Received: by 2002:a17:906:f595:b0:a99:368d:dad3 with SMTP id
 a640c23a62f3a-a9de5f6e304mr156315266b.30.1729936624729; Sat, 26 Oct 2024
 02:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAEt6NwpF3MEwCs0k41Bk1Sn+Vt52J+Jk255-EjHOcMuaRSRW=g@mail.gmail.com>
 <64c22786-5245-49d0-be0e-407abda2895d@ti.com> <CAKP9-Sh4YQ78uqJeXagX9RhduFUsF-yPwwLkHZtOfcSkD8LYfg@mail.gmail.com>
In-Reply-To: <CAKP9-Sh4YQ78uqJeXagX9RhduFUsF-yPwwLkHZtOfcSkD8LYfg@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Sat, 26 Oct 2024 11:56:38 +0200
Message-ID: <CAEt6NwrwE_1yVVoK8pst36n91vOTZnmKVtfzSbWjP6pi5O=SiQ@mail.gmail.com>
Subject: Re: [yocto] CFP for Yocto Project Summit 2024.12 is open
To: Sandeep Gundlupet Raju <grsandeep85@gmail.com>
Cc: yocto@lists.yoctoproject.org, "Reyna, David" <david.reyna@windriver.com>
Content-Type: multipart/alternative; boundary="000000000000005b0a06255e4290"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 09:57:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64136

--000000000000005b0a06255e4290
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi @Sandeep,

we closed at 23:59 UTC, because that's the most globally applicable. If you
want to submit, you can drop me title, abstract and description via mail,
then I'll enter it for you.

Greetz,
Josef


On Sat, Oct 26, 2024 at 2:14=E2=80=AFAM Sandeep Gundlupet Raju <
grsandeep85@gmail.com> wrote:

> Hi All,
>
> Is the proposal still open? I see it says it's already closed. It's Still
> Oct 25th here in Mountain Time.
>
>
> *Thanks,*
> *Sandeep*
>
>
>
> On Thu, Oct 24, 2024 at 3:35=E2=80=AFPM Ryan Eatmon via lists.yoctoprojec=
t.org
> <reatmon=3Dti.com@lists.yoctoproject.org> wrote:
>
>>
>> Hey.  Just so you know the dates you list in the CFP are a little off.
>>
>> October 25th is a Friday, not a Monday.
>>
>> Same for the other three dates.  Not sure if it will confuse anyone...
>>
>>
>> On 10/3/2024 5:16 AM, Josef Holzmayr wrote:
>> >
>> >   Submit your talk now!
>> >
>> >
>> > -->
>> > https://pretalx.com/yocto-project-summit-2024-12/cfp
>> > <https://pretalx.com/yocto-project-summit-2024-12/cfp>
>> >   <--
>> >
>> > The Yocto Project=C2=AE /Virtual/ Summit 2024.12 is a virtual technica=
l
>> > conference for engineers, open source technologists, students and
>> > academia in the OSS space.
>> >
>> >
>> >   Event Schedule
>> >
>> >   * Tuesday, Dec 3nd - Thursday, Dec 5th, 2024
>> >   * 12:00 PM =E2=80=93 6:00 PM (UTC)
>> >
>> >
>> >   CFP Schedule
>> >
>> >   * CFP Closes: Monday, Oct 25th, 2024
>> >   * CFP Notifications: Monday, Nov 1st, 2024
>> >   * Slides Due Date: Friday, Nov 25th, 2024
>> >
>> >
>> >   List of suggested topics:
>> >
>> >   * Layer quality: e.g. creating robust layers, safely using existing
>> layers
>> >   * Productivity tricks, Best Practices
>> >   * Developer toolbox
>> >   * Security
>> >   * Reproducibility
>> >   * Supporting the Application Developer Workflow
>> >   * DevOps, CI/CD
>> >   * Containers, VMs
>> >   * Working with/creating BSPs
>> >   * Practical use of the Yocto Project
>> >   * Product showcase
>> >
>> >
>> >   Presentation formats
>> >
>> > Slots for talks vary from 15-45 minutes, with training sessions
>> starting
>> > at 60 minutes or longer.
>> >
>> > Submit at
>> > https://pretalx.com/yocto-project-summit-2024-12/cfp
>> > <https://pretalx.com/yocto-project-summit-2024-12/cfp>
>> >
>> >
>> >   Questions?
>> >
>> > Ping me (jester@theyoctojester.info <mailto:jester@theyoctojester.info=
>)
>>
>> > or events@yoctoproject.org <mailto:events@yoctoproject.org>
>> >
>> > Josef
>> > on behalf of the YP events team
>> >
>> >
>> >
>> >
>> >
>> >
>> >
>>
>> --
>> Ryan Eatmon                reatmon@ti.com
>> -----------------------------------------
>> Texas Instruments, Inc.  -  LCPD  -  MGTS
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64116):
>> https://lists.yoctoproject.org/g/yocto/message/64116
>> Mute This Topic: https://lists.yoctoproject.org/mt/108796648/3618245
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> grsandeep85@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--000000000000005b0a06255e4290
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<a class=3D"gmail_plusreply" id=3D"plusReplyChip-0=
">@Sandeep,</a><div><a class=3D"gmail_plusreply"><br></a></div><div>we clos=
ed at 23:59 UTC, because that&#39;s the most globally applicable. If you wa=
nt to submit, you can drop me title, abstract and description via mail, the=
n I&#39;ll enter it for you.</div><div><br></div><div>Greetz,</div><div>Jos=
ef<br><a class=3D"gmail_plusreply"><br></a></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 26, 2024 at 2:=
14=E2=80=AFAM Sandeep Gundlupet Raju &lt;<a href=3D"mailto:grsandeep85@gmai=
l.com">grsandeep85@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helveti=
ca,sans-serif;color:rgb(7,55,99)">Hi All,</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif;color:rgb(7,55,99)"><br></=
div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-=
serif;color:rgb(7,55,99)">Is the proposal still open? I see it says it&#39;=
s already closed. It&#39;s Still Oct 25th here in Mountain Time.</div><div =
class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;col=
or:rgb(7,55,99)"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:arial,helvetica,sans-serif;color:rgb(7,55,99)"><br></div><div><div dir=3D=
"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
><div dir=3D"ltr"><font color=3D"#073763" face=3D"arial, helvetica, sans-se=
rif"><b>Thanks,</b></font><div><font face=3D"arial, helvetica, sans-serif">=
<font color=3D"#073763"><b>Sandeep</b></font><br></font><br></div></div></d=
iv></div></div></div></div></div><br></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 24, 2024 at 3:35=E2=80=AFP=
M Ryan Eatmon via <a href=3D"http://lists.yoctoproject.org" target=3D"_blan=
k">lists.yoctoproject.org</a> &lt;reatmon=3D<a href=3D"mailto:ti.com@lists.=
yoctoproject.org" target=3D"_blank">ti.com@lists.yoctoproject.org</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb=
(204,204,204);padding-left:1ex"><br>
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
</blockquote></div>

--000000000000005b0a06255e4290--

