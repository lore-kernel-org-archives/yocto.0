Return-Path: <amolpractise@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 236FDC54E64
	for <webhook@archiver.kernel.org>; Mon, 25 Mar 2024 06:10:50 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.45828.1711347041822648660
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Mar 2024 23:10:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=K7nuYXyn;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: amolpractise@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-61126f58c9bso5613407b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 24 Mar 2024 23:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711347041; x=1711951841; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2k/LdqEqSe5cjurzQfE0SqFGd4FLpruL44J+08MqvRA=;
        b=K7nuYXynguUpCNaZEgqvN8zJLa9UYL0fcW1v+w7KREcTfnFw1byGgguAqU7V9IT3C7
         b5yxDEmMeq8KZZNUldKYki+36SOaUfspNzPuyVIMvfy/7iL3bYFqlACXJzk7I24y2dRN
         Am1/72o6Rb1smZYJ3eCOI+I7XRRFkYjQJDcyWcJoFjbWrcHNo+0fRS2hS6/LLbUH/5Yv
         vsHVETZDI8o0dLHnuozqYUTh7ORQwj7xla09Io51bMGKN8TT2RZ8t1lA3g8KtWLHlj1E
         X70TIBrZQkERRu7OTzlaZ7loeKeiSoCMdi03O5fdEdyUrjH9QGm892JKykU1maZTyO/A
         Yptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711347041; x=1711951841;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2k/LdqEqSe5cjurzQfE0SqFGd4FLpruL44J+08MqvRA=;
        b=jM1iWamxjC59uBSOpE8UgTOIt5wlfoizm9z/a2rnVsG/Y/m+fUQlB3BJ1KZUe3SREi
         M+8H/N5y6T3K+epIDDsPYMU90taj9tO6abwBjiN0xMQ0VKtmoczvjipwr8VMwqqHRkMa
         3eUuzv3Uo9OVopqIi767HvF5vMAhvyq2jQ3DchX5OdNx8o6gjunUnFHNhtPv1XifIbIw
         9Q1y/AkrOCRkGyHjItZJpBQj4VS1ym36uHC/mbD5BFrGKXt9pWTSpdVgb5dkh1rHfS3S
         Wi8bcxrLu5aaHBLTjAxE4yBjZpyoXA/DYah9FLQGnHZjCyYbmKbMTBAYoCYJifl5cICi
         A3Lw==
X-Gm-Message-State: AOJu0YyIBEB2CTpp0izdIo5cyNguqkF6GhNsubUAk/wcvwbDFnHCsgV6
	q19BQIN4xVMuRv7jfUUX2OLJOStMa3NFxyfxEYfaQ7nqvrhnO58fOLgix+6ZEXqnpfiutQK4/FP
	aspbDz7EtpFUDH1jEduRT3sEbs+c=
X-Google-Smtp-Source: AGHT+IEHqibLTzG15m7/NPrLkPHtNkZSK2NkVJLRwhnKRfbDLI8uNnW+q5gz+lNXALlFyDmwQ0v0X0pPKL6wDMOVWoU=
X-Received: by 2002:a25:701:0:b0:dcf:4c79:5f32 with SMTP id
 1-20020a250701000000b00dcf4c795f32mr2553504ybh.4.1711347040856; Sun, 24 Mar
 2024 23:10:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAkkBwNMmPQfG6-EV0jZhVef5JSP9KX2PWdy0TfFfcmC1kYAXw@mail.gmail.com>
 <CAMKF1soVYaBCpfeHmbbbOA2zmEYxzj1tMGipXP=tofqTF9sRwA@mail.gmail.com>
In-Reply-To: <CAMKF1soVYaBCpfeHmbbbOA2zmEYxzj1tMGipXP=tofqTF9sRwA@mail.gmail.com>
From: Amol Practise <amolpractise@gmail.com>
Date: Mon, 25 Mar 2024 11:40:29 +0530
Message-ID: <CAAkkBwN1MEMPjrdSs6g32gDmhu7NmNo9PkX0rrZoif46P4egFQ@mail.gmail.com>
Subject: Re: [yocto] libtool error
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000075384c06147608ad"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Mar 2024 06:10:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62836

--00000000000075384c06147608ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes this error is reproducible, there is no memory issues, crashes or
coredump, i am getting libtool not found error see below lines

| /bin/bash: ./libtool: No such file or directory
| make[2]: *** [Makefile:612: findcomp.lo] Error 127
| make[2]: Leaving directory
'/home/amol/git_repos/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-=
gnueabi/gcc/13.2.0/gcc-13.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-g=
nueabi/libcc1'
| make[1]: Leaving directory
'/home/amol/git_repos/poky/rpi-build/tmp/work/arm1176jzfshf-vfp-poky-linux-=
gnueabi/gcc/13.2.0/gcc-13.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-g=
nueabi/libcc1'
| make[1]: *** [Makefile:443: all] Error 2
| make: *** [Makefile:11455: all-libcc1] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
ERROR: Task
(/home/amol/git_repos/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compile=
)
failed with exit code '1'

please guide.

thanks
amol.

On Mon, Mar 25, 2024 at 7:03=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote=
:

> is this error reproducible ? Check if its causing some sort of out of
> memory errors and crashes on your build system. Can you see if there
> are some coredumps etc ?
>
> On Sun, Mar 24, 2024 at 9:04=E2=80=AFAM Amol Practise <amolpractise@gmail=
.com>
> wrote:
> >
> > Hello ,
> >
> > I am getting error while building yocto for raspberry pi , please see
> attached log file for reference.
> >
> > Help is appreciated.
> >
> > Thank you.
> > Amol Palshetkar
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#62834):
> https://lists.yoctoproject.org/g/yocto/message/62834
> > Mute This Topic: https://lists.yoctoproject.org/mt/105121719/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000075384c06147608ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Yes this error is reproducible, there =
is no memory issues, crashes or coredump, i am getting libtool not found er=
ror see below lines</div><div><br></div><div>| /bin/bash: ./libtool: No suc=
h file or directory<br>| make[2]: *** [Makefile:612: findcomp.lo] Error 127=
<br>| make[2]: Leaving directory &#39;/home/amol/git_repos/poky/rpi-build/t=
mp/work/arm1176jzfshf-vfp-poky-linux-gnueabi/gcc/13.2.0/gcc-13.2.0/build.ar=
m-poky-linux-gnueabi.arm-poky-linux-gnueabi/libcc1&#39;<br>| make[1]: Leavi=
ng directory &#39;/home/amol/git_repos/poky/rpi-build/tmp/work/arm1176jzfsh=
f-vfp-poky-linux-gnueabi/gcc/13.2.0/gcc-13.2.0/build.arm-poky-linux-gnueabi=
.arm-poky-linux-gnueabi/libcc1&#39;<br>| make[1]: *** [Makefile:443: all] E=
rror 2<br>| make: *** [Makefile:11455: all-libcc1] Error 2<br>| ERROR: oe_r=
unmake failed<br>| WARNING: exit code 1 from a shell command.<br>ERROR: Tas=
k (/home/amol/git_repos/poky/meta/recipes-devtools/gcc/gcc_13.2.bb:do_compi=
le) failed with exit code &#39;1&#39;</div><div><br></div><div>please guide=
.</div><div><br></div><div>thanks</div><div>amol.<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 25, =
2024 at 7:03=E2=80=AFAM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">=
raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">is this error reproducible ? Check if its causing some so=
rt of out of<br>
memory errors and crashes on your build system. Can you see if there<br>
are some coredumps etc ?<br>
<br>
On Sun, Mar 24, 2024 at 9:04=E2=80=AFAM Amol Practise &lt;<a href=3D"mailto=
:amolpractise@gmail.com" target=3D"_blank">amolpractise@gmail.com</a>&gt; w=
rote:<br>
&gt;<br>
&gt; Hello ,<br>
&gt;<br>
&gt; I am getting error while building yocto for raspberry pi , please see =
attached log file for reference.<br>
&gt;<br>
&gt; Help is appreciated.<br>
&gt;<br>
&gt; Thank you.<br>
&gt; Amol Palshetkar<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#62834): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/62834" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/62834</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10512171=
9/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105121719/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000075384c06147608ad--

