Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web11.6221.1593764712374406273
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jul 2020 01:25:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=csRmoUkp;
 spf=pass (domain: gmail.com, ip: 209.85.217.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id e15so16706509vsc.7
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jul 2020 01:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=96MxMCRzhCaca53kNrDmqv+b0Tnmetv1Dnvt/JRQR+4=;
        b=csRmoUkp4FaocIs9nqOEGFLtdLXUCKI0+T39weouP55AewodOqSqOeYs6WFnarabs8
         N03iEAShDYyp4PgWT3JMhnlVTsXr24bc5RLDb8EDUXyNg864eLsmR7wSaJUAEybUmOaq
         HHjptFAmXKDZC+bN4c6f1to8+0guqoZeCR3M42Yxogd276UAzJ2a5Fa0Hwp6gW/IUhCX
         SNGlWb+NyvZSpsoY27NS345iqFcHem1EU9Gldp83O3CA+dXxkkxzOF39fB9rxwlAIdDx
         PiegUdGZql9fcC0EiQBH7twd5eGCUPZ6hSsqKphHfY+bznIKM3+Ruo0x4c/Esz5HQzRk
         +VFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=96MxMCRzhCaca53kNrDmqv+b0Tnmetv1Dnvt/JRQR+4=;
        b=UsVrSBE0m22OraVUgIp8/LjGhwPriDGGCKDr0aBZ5rcWeqi1oNjGNTuFvKy138QKIE
         oQuEyubai51SBgNhSMVL5k4/qOdtlli8OsOXcL+izoxbSjMxkYYvYkQ54VBdZeI7wZjl
         48GVdkqvuUT4JG4XzwqIpPNfkRWaXqTOOP9cEcNH3Kz1X2P//mapQ1yml7K8JeIdLt4t
         DSIjDOI3utQSEdUVCthc0v+M0tiVz8eaoWCdHumGqKiaC7r4IvJ00UOBR+Qg7JvKVJCE
         MaKVE6r4yHLjx1NBVsb3t72Wn7+YM+9P2fZ6WNfdvYyBDQhHd/slS/XdiluR3iRKukmK
         qwnA==
X-Gm-Message-State: AOAM533uBPUDTQG2yFcecpw4WnXCo+WYHlCtAfbfDL/+Cv8spy48hHR7
	EjKmdjG8BD5quASkCVgbwM/BB0801sl/jrrkDYqRbg==
X-Google-Smtp-Source: ABdhPJxyvEzZQjOLercDJijz42pW/4x4kwKZcFBnz+K91+9nT9/Lyt0lfnuFzt/75JH22dCyIsUCFqHXHm9av8LIIEI=
X-Received: by 2002:a67:87cc:: with SMTP id j195mr9249715vsd.25.1593764711441;
 Fri, 03 Jul 2020 01:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <bNRG.1593763627322531824.X25r@lists.yoctoproject.org>
In-Reply-To: <bNRG.1593763627322531824.X25r@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 3 Jul 2020 10:25:00 +0200
Message-ID: <CANNYZj_qwBq2byWJ6=_FKAuwhFpY0aHD5YOw5a=R0QefNLQHoA@mail.gmail.com>
Subject: Re: [yocto] Build hangs
To: kfa@deif.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007b285005a985431a"

--0000000000007b285005a985431a
Content-Type: text/plain; charset="UTF-8"

You can try to list the process tree with ps axjf, and the innermost under
do_install is probably the one that is stuck. Then you can attach gdb to it
to see what it is doing.

Alex

On Fri, 3 Jul 2020 at 10:07, Kjeld Flarup via lists.yoctoproject.org <kfa=
deif.com@lists.yoctoproject.org> wrote:

> I sometimes encounters this situation, where a task is running forever.
> This example only one task, but I have seen 6 tasks which have been running
> for 10+ minutes
>
> Currently  1 running tasks (680 of 2941)  23%
> |###########################
>                                             |
> 0: openssl-native-1.1.1d-r0 do_install - 6m17s (pid 6007)
>
> When I look into the docker container I see only these processes
> user@yocto:~$ ps -ef
> UID        PID  PPID  C STIME TTY          TIME CMD
> user         1     0  0 07:37 pts/0    00:00:00 /bin/bash scripts/ci.sh
> pdsystems prepare_artifacts
> user        53     1  1 07:37 pts/0    00:00:03 python3
> /home/user/meta-poky/bitbake/bin/bitbake machine
> user        59     1  4 07:37 ?        00:00:14 python3
> /home/user/meta-poky/bitbake/bin/bitbake machine
> user       414     0  0 07:38 pts/1    00:00:00 bash
> user       449    59  5 07:39 ?        00:00:11 python3
> /home/user/meta-poky/bitbake/bin/bitbake-worker decafbad
> user     15205   414  0 07:42 pts/1    00:00:00 ps -ef
>
> Usually I can fix this by deleting all of by build folder, which of course
> is annoying as it takes a loong time. Just deleting caches does not help.
>
> Anybody has an idea of why this happens.
>
> Kjeld Flarup
>
> 
>

--0000000000007b285005a985431a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can try to list the process tree with ps axjf, an=
d the innermost under do_install is probably the one that is stuck. Then yo=
u can attach gdb to it to see what it is doing.<br></div><div><br></div><di=
v>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=
=3D"gmail_attr">On Fri, 3 Jul 2020 at 10:07, Kjeld Flarup via <a href=3D"h=
ttp://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;kfa=3D<a href=
=3D"mailto:deif.com@lists.yoctoproject.org">deif.com@lists.yoctoproject.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div>I sometimes encounters this situation, where a task is running foreve=
r. This example only one task, but I have seen 6 tasks which have been runn=
ing for 10+ minutes<br><br><span style=3D"font-family:courier_newregular,co=
urier">Currently=C2=A0 1 running tasks (680 of 2941)=C2=A0 23% |###########=
################=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |</span></div>
<div><span style=3D"font-family:courier_newregular,courier">0: openssl-nat=
ive-1.1.1d-r0 do_install - 6m17s (pid 6007)</span></div>
<div><br>When I look into the docker container I see only these processes<=
br>
<div><span style=3D"font-family:courier_newregular,courier">user@yocto:~$ =
ps -ef</span></div>
<div><span style=3D"font-family:courier_newregular,courier">UID=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 PID=C2=A0 PPID=C2=A0 C STIME TTY=C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 TIME CMD</span></div>
<div><span style=3D"font-family:courier_newregular,courier">user=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A00=C2=A0 0 07:37 pts/0=C2=A0 =
=C2=A0 00:00:00 /bin/bash scripts/ci.sh pdsystems prepare_artifacts</span>=
</div>
<div><span style=3D"font-family:courier_newregular,courier">user=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 53=C2=A0 =C2=A0 =C2=A01=C2=A0 1 07:37 pts/0=C2=A0 =C2=A0=
 00:00:03 python3 /home/user/meta-poky/bitbake/bin/bitbake machine</span></=
div>
<div><span style=3D"font-family:courier_newregular,courier">user=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 59=C2=A0 =C2=A0 =C2=A01=C2=A0 4 07:37 ?=C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 00:00:14 python3 /home/user/meta-poky/bitbake/bin/bitbake machi=
ne</span></div>
<div><span style=3D"font-family:courier_newregular,courier">user=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0414=C2=A0 =C2=A0 =C2=A00=C2=A0 0 07:38 pts/1=C2=A0 =C2=A0=
 00:00:00 bash</span></div>
<div><span style=3D"font-family:courier_newregular,courier">user=C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0449=C2=A0 =C2=A0 59=C2=A0 5 07:39 ?=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 00:00:11 python3 /home/user/meta-poky/bitbake/bin/bitbake-worker de=
cafbad</span></div>
<div><span style=3D"font-family:courier_newregular,courier">user=C2=A0 =C2=
=
=A0 =C2=A015205=C2=A0 =C2=A0414=C2=A0 0 07:42 pts/1=C2=A0 =C2=A0 00:00:00 =
ps -ef</span></div>
</div>
<div><br>Usually I can fix this by deleting all of by build folder, which =
of course is annoying as it takes a loong time. Just deleting caches does n=
ot help.<br><br>Anybody has an idea of why this happens.<br><br>Kjeld Flaru=
p<br><br></div>
<br>
</blockquote></div>

--0000000000007b285005a985431a--
