Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web09.45015.1609158847551058395
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 04:34:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GwrfS1Dt;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: raghu.icecraft@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id h22so23619500lfu.2
        for <yocto@lists.yoctoproject.org>; Mon, 28 Dec 2020 04:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N6T/msFEIg6KraQclQrLZvjsVGX1vofhBlp5NawFMZU=;
        b=GwrfS1DtVwWJFhSSUsyWqe3yDxboiDnkd5ofEbJ65U6Oz5+zpK4Ix5Xg2eX+zU1oeR
         9kNVCKqD58x4ZKMP1F6Kl5ltGhjZTyPoGwVSTZs6S3bRXyCtV9TJMvg/zjzlmChg1fkJ
         +8yb91Jb0Ai5JI001vIUsY6QjxdXML+Vvu+s6vCuy3GA3Z6sOT8eJ/v5UmxnVweAtVB2
         cDCej9NB44wW8Pr/WSAZT9T6bdCt5Rhx8E63xx9rgN/UZLHzgeoKJMeJSrCAqZ/Fs89h
         qI6lZTyc3KwlszXUjaPz5Bx+FAVH+NRDPsgC0kKIvVRGKOzjtQdMc/VxNB02VfzeUqhk
         ER7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N6T/msFEIg6KraQclQrLZvjsVGX1vofhBlp5NawFMZU=;
        b=R2WyNQUvbYxlurrhZHNK+krvoriUnvEnGsNEzWSIK28SqaNqoaazOgi0bIBNcBNH3q
         1VDfOoOY2VzazjgbcGHuM3T4C9lp7En+kXRjS+bMWUVVD67WT6ttRJ/gfCZxkmN5o4RT
         KhnIHXKoBkhDoiDDxq3SC+A5wGl7Ty+7QfTH4hECyUnmYSsU+gHSh+PwZxUK7xZxQ5Wb
         YNNvBtUnqqPLovSu7QLlFWsuuRJZYoddL9YSYwHGAY854EIf/os4yIzp0HpHPGGswstP
         YLiwxE7rYN2N8KRfV/juc7nsiUDxyVETA5jGNnhNw5zLGJNNHW4YDjjBmZ+ORoPNrGuw
         rfnw==
X-Gm-Message-State: AOAM533vfQPxdzQUZkNJf4x2NRp6r1PvMAwwcdNnLhodxGI2lS0MrLDp
	7Jm2sFwoLX/YckAaXTwjRaoJUI7DsN7qW/awNew=
X-Google-Smtp-Source: ABdhPJxN1IZVBOC8g05cwSu+lXg65ImfaawV6dEGbJElARw8A+W2ZDlPkdstKBQhnf0B30clA61osta/u2hQ4R7ReiA=
X-Received: by 2002:a2e:155d:: with SMTP id 29mr20865710ljv.3.1609158845211;
 Mon, 28 Dec 2020 04:34:05 -0800 (PST)
MIME-Version: 1.0
References: <CAKRDAG9vG0AsckYe2hJL9DW_FF6G_+71wLA5+hWG38xh7UjQUg@mail.gmail.com>
 <CAM9ZRVuM_zdytq2xYga15c4YpFNTZ3rNLPASZR-Akfb0Ao3x_A@mail.gmail.com>
In-Reply-To: <CAM9ZRVuM_zdytq2xYga15c4YpFNTZ3rNLPASZR-Akfb0Ao3x_A@mail.gmail.com>
From: "Raghu Icecraft Software Trainings" <raghu.icecraft@gmail.com>
Date: Mon, 28 Dec 2020 18:03:54 +0530
Message-ID: <CAKRDAG-CwUypnEGq05GocbGh-r_bt5HewOKqfWncWtyDoeXnpQ@mail.gmail.com>
Subject: Re: [yocto] chpasswd not working in yocto-2019
To: Paul Barker <pbarker@konsulko.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005b27db05b7857d39"

--0000000000005b27db05b7857d39
Content-Type: text/plain; charset="UTF-8"

Paul,
Thanks for the reply.
I am using Xilinx-SDK based : Linux version 4.19.0-rt1-xilinx-v2019.1

Can you please let me know how to verify the yocto version running on
target.

Thanks,
Raghu

On Mon, Dec 28, 2020 at 5:31 PM Paul Barker <pbarker@konsulko.com> wrote:

> On Mon, 28 Dec 2020 at 09:44, Raghu Icecraft Software Trainings
> <raghu.icecraft@gmail.com> wrote:
> >
> > Hello,
> > I have upgraded my kernel poky to 2019.1 version, here i am unable to
> find chpasswd utility because of which i am unable to set password to my
> root-user.
> > Can you please let me know if the chpasswd utility has been changed or
> modified please.
>
> Yocto Project doesn't have a version "2019.1", see
> https://wiki.yoctoproject.org/wiki/Releases.
>
> I guess you're using a vendor supplied BSP or SDK with that version
> number. Could you provide the Yocto Project version number and the
> layers in use, or at least give some more info on where your "2019.1"
> release is from.
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>

--0000000000005b27db05b7857d39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Paul,<div>Thanks for the reply.</div><div>I am using Xilin=
x-SDK based :=C2=A0Linux version 4.19.0-rt1-xilinx-v2019.1</div><div><br></=
div><div>Can you please let me know how to verify the yocto version running=
 on target.</div><div><br></div><div>Thanks,</div><div>Raghu=C2=A0</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, Dec 28, 2020 at 5:31 PM Paul Barker &lt;<a href=3D"mailto:pbarker@kons=
ulko.com">pbarker@konsulko.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">On Mon, 28 Dec 2020 at 09:44, Raghu Icecraft =
Software Trainings<br>
&lt;<a href=3D"mailto:raghu.icecraft@gmail.com" target=3D"_blank">raghu.ice=
craft@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt; I have upgraded my kernel poky to 2019.1 version, here i am unable to =
find chpasswd utility because of which i am unable to set password to my ro=
ot-user.<br>
&gt; Can you please let me know if the chpasswd utility has been changed or=
 modified please.<br>
<br>
Yocto Project doesn&#39;t have a version &quot;2019.1&quot;, see<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"noreferrer" =
target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releases</a>.<br>
<br>
I guess you&#39;re using a vendor supplied BSP or SDK with that version<br>
number. Could you provide the Yocto Project version number and the<br>
layers in use, or at least give some more info on where your &quot;2019.1&q=
uot;<br>
release is from.<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--0000000000005b27db05b7857d39--
