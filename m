Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D94DCD10C03
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 19:10:47 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web10.16719.1729969841381979002
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Oct 2024 12:10:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EoRda5QP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.42, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539e59dadebso3736523e87.0
        for <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 12:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1729969838; x=1730574638; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BaGxm+1W65Tl8diesmkbcDFQPOSNuC3thq5JSJ1svnk=;
        b=EoRda5QPADSVnwgC+DBBZXYMMrlihGRB4rdAyhu3UQk6UXVnjl7uJF9T2oRWMH5b/5
         BnrXix/61E7FgQ5i3EWm2UryA7A5eZDIvGOxdgkBBbFqTE8GLozb9x3ERJvFk0DSYJpj
         SidXpd1FqQv8jC4KoWTow2iByeHU9BUkJ1iBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729969838; x=1730574638;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BaGxm+1W65Tl8diesmkbcDFQPOSNuC3thq5JSJ1svnk=;
        b=tP14uQuMRTDz8achGcdpqNi/cc0YfxxfaDNbT1cBdVL0YueNvzEL/3HGciYkwBXVgx
         WFLFcB8qfpjWUdvQcWVNwjyK1IUOUQJvTm8qH4UthjxJotQmeLQhoWYK3vOKHGnai6Z7
         03MTSUKK0J3TYnJy++xYWJjthKp624s3fIGBmmgx2J0ixcnnP/OZfzpHYX6pLfgVhy1Q
         12W91WrA3SwxMOhJNYYUMfKYqpA+fE6oYNDiQO6cboYZ8p3mevFLKopIbzQWDmOipnq5
         cP+/Yt/fDoBtImFHzBgft+F7gNw7azMxJoOfFdFSZbGg23JzNONQPheTaNHRkpqVi+2o
         9ebw==
X-Gm-Message-State: AOJu0Yy79+/yTPHulgeyQAvzFwrFFHJ0y2lBdw6YfsUrwda2T56kP8RZ
	wFs98e/vhL5Jsh9iNIplhadZbAym+nhHYyFdByEFBLknl80kPXlH0qHgDkjG8Z1xFZgre+9953Y
	8rFIAgeVyoHT5I19butsBksa6/bCC/DeKj6a6jHAy+pnIChugPJI=
X-Google-Smtp-Source: AGHT+IE0vOXgGuxfFedULxc1//xOCqxaj7EFWUzD0pbOJ0YikR6ZoQupMnXYgwSgHXr/rCKB1HomwQCOj+4rDRT562g=
X-Received: by 2002:a05:6512:12c5:b0:52e:767a:ada3 with SMTP id
 2adb3069b0e04-53b34c5fa21mr1299506e87.47.1729969837554; Sat, 26 Oct 2024
 12:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <aBJH.1729941405307412646.B4qJ@lists.yoctoproject.org> <CAEt6NwqXzcLhSe-wtKNCQHUx74HNSCGC_ab26uMFrTx4-qb8RQ@mail.gmail.com>
In-Reply-To: <CAEt6NwqXzcLhSe-wtKNCQHUx74HNSCGC_ab26uMFrTx4-qb8RQ@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Sat, 26 Oct 2024 12:10:25 -0700
Message-ID: <CADfgfoZE6X08hD2Sos+1DxqO4+54qRxyvM16yNk5LJ_3zoJs_g@mail.gmail.com>
Subject: Re: [yocto] [Issue/BUG] Yocto Project Releases Downloads Page with
 403 - Forbidden
To: yocto@lists.yoctoproject.org, jester@theyoctojester.info
Cc: joao.ccabral@parceiros.nos.pt, helpdesk@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a3dd0b062565fd33"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 19:10:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64144

--000000000000a3dd0b062565fd33
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We are in the process of updating the download mirrors. I've removed the
bad mirror until it can be fully synced. The issue should be resolved now.

We also have releases from the last 3+ years available at
https://mirrors.kernel.org/yocto/yocto/ if there are issues with
downloads.yoctoproject.org.



On Sat, Oct 26, 2024 at 11:15=E2=80=AFAM Josef Holzmayr via lists.yoctoproj=
ect.org
<jester=3Dtheyoctojester.info@lists.yoctoproject.org> wrote:

> pinging @helpdesk@yoctoproject.org <helpdesk@yoctoproject.org>
>
> On Sat, Oct 26, 2024 at 1:16=E2=80=AFPM joao.ccabral via lists.yoctoproje=
ct.org
> <joao.ccabral=3Dparceiros.nos.pt@lists.yoctoproject.org> wrote:
>
>> Almost all the folders on the page
>> http://downloads.yoctoproject.org/releases/yocto/ give 403-Forbidden
>> with a nginx template.
>> All the folders/versions changed in 2024-Jul-30 and 2024-Sep-21 are
>> giving the mentioned error.
>>
>> This is a major issue for me as it is breaking the compilation step righ=
t
>> at the beginning.
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64143):
> https://lists.yoctoproject.org/g/yocto/message/64143
> Mute This Topic: https://lists.yoctoproject.org/mt/109223182/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> mhalstead@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000a3dd0b062565fd33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We are in the process of updating the download mirrors. I&=
#39;ve removed the bad mirror until it can be fully synced. The issue shoul=
d be resolved now.<div><br></div><div>We also have releases from the last 3=
+ years available at=C2=A0<a href=3D"https://mirrors.kernel.org/yocto/yocto=
/">https://mirrors.kernel.org/yocto/yocto/</a> if there are issues with <a =
href=3D"http://downloads.yoctoproject.org">downloads.yoctoproject.org</a>.<=
/div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 26, 2024 at 11:15=E2=80=AFAM=
 Josef Holzmayr via <a href=3D"http://lists.yoctoproject.org">lists.yoctopr=
oject.org</a> &lt;jester=3D<a href=3D"mailto:theyoctojester.info@lists.yoct=
oproject.org">theyoctojester.info@lists.yoctoproject.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">pi=
nging=C2=A0<a class=3D"gmail_plusreply" id=3D"m_-4449571578634520506plusRep=
lyChip-1" href=3D"mailto:helpdesk@yoctoproject.org" target=3D"_blank">@help=
desk@yoctoproject.org</a>=C2=A0</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Sat, Oct 26, 2024 at 1:16=E2=80=AFPM joao=
.ccabral via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">li=
sts.yoctoproject.org</a> &lt;joao.ccabral=3D<a href=3D"mailto:parceiros.nos=
.pt@lists.yoctoproject.org" target=3D"_blank">parceiros.nos.pt@lists.yoctop=
roject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div>Almost all the folders on the page <a href=3D"http://downlo=
ads.yoctoproject.org/releases/yocto/" rel=3D"noopener" target=3D"_blank">ht=
tp://downloads.yoctoproject.org/releases/yocto/</a> give 403-Forbidden with=
 a nginx template.<br>All the folders/versions changed in 2024-Jul-30 and 2=
024-Sep-21 are giving the mentioned error.<br><br>This is a major issue for=
 me as it is breaking the compilation step right at the beginning.</div>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64143): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64143" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64143</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109223182/100=
3190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109223182/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank"=
>mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</div><=
div>Systems Operations Engineer</div></div></div>

--000000000000a3dd0b062565fd33--

