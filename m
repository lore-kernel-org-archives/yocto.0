Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.12564.1615310734310097911
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 09:25:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=QlAuVGG6;
 spf=softfail (domain: soccasys.com, ip: 198.145.29.25, mailfrom: laurent.gauthier@soccasys.com)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AB55938C027C
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 17:25:33 +0000 (UTC)
Received: by mail-vs1-f45.google.com with SMTP id m18so7225642vsa.1
        for <yocto@yoctoproject.org>; Tue, 09 Mar 2021 09:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QEc66/9VI/Hw3oh+rapAluRxA1V3Sgz60Xgmu8Nq7Uk=;
        b=QlAuVGG65KcwJ13Jfi7GI3wBMuj84eidnmLCoXhW6N4RETWg2wo8C9p+8aA/DFZbo7
         9O0uM9/uajjwMP3uqf4XFybuNynuBscjhjQ2a3dJR37h4TuyfQgd8dXaAMVMs5vLJkM/
         NxJGdsYygqU7pVi0x0+2A+afsgTY1iXH7GY2dGuqNbUQocod+iHIg1wQQr5lihIA90Yf
         2xcNWZ3L19HSUbfCYedM3Y5cc0iERPD+mAr5a1BMhqqIjDwNS+do7x3dd2cw8lkH5rb0
         npy3AgsQVjYG9DzwUyQws1RRvWbhdrr4MAo6dAfIAjD7+k6yZ7II3H5xBwRma4PUO97H
         6aXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QEc66/9VI/Hw3oh+rapAluRxA1V3Sgz60Xgmu8Nq7Uk=;
        b=ieVJRj8wEesAus965cPEACAE+PfTSm4jd0759fOeA5hXOWlJloP9PafwUMy1Aa4b9P
         Y74KEcA5bnViuuYwJ1SxvjAUBrdx4Rzu+6YEiGkNZj66lAc0QaciwKvzAjNI0Ev/eRvc
         C+OULMrtU725YTD4IG10X7NsSc6zuJG4/BIZhFOQXYiqmT5xEKEjQ73begqB/FZ8w6u4
         iPUfXnECoyZsZGbIy9wwJz1tUF7STYk1c/rECluDalRrPxAqYZSb4iVghlb2emhBRaYY
         /k6qLHUGdJ6JwgPHjpoiXkgi6/JLzFIDNdWZXLMJ2jsepUTAj66NcZPSA6BirYS0ZrT4
         VTTQ==
X-Gm-Message-State: AOAM530O8ex+P2kAR1UzKMZOpegh40NQt7Yfp4IKtO4Ja5gswab9Cubj
	yS7NdtYYrSB9Y9jhsdZI3h2W9LueTiXb41r8UDk2crpdEOI=
X-Google-Smtp-Source: ABdhPJx8P/RyGxvWA16k6XbHrnMGPltGkLbMH3/1qww3Cs1QCopva6oUNQ/cJxKdQkeou3JnWVh16Vx+a2QmcBChv54=
X-Received: by 2002:a67:ed8f:: with SMTP id d15mr3226795vsp.44.1615310732592;
 Tue, 09 Mar 2021 09:25:32 -0800 (PST)
MIME-Version: 1.0
References: <CAGbd71T4PFcivOUOp+t=Qy5Hq=aJh2ZcGfxaYM+gbKaTKkNpYw@mail.gmail.com>
 <2E0D5BE0-D90B-49BA-BC73-38EF48590586@getmailspring.com>
In-Reply-To: <2E0D5BE0-D90B-49BA-BC73-38EF48590586@getmailspring.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 9 Mar 2021 18:24:56 +0100
Message-ID: <CAGbd71QTLJp-=CpSXkuzqyB15kwayEKQUb8ciyuN3PxU=KuAig@mail.gmail.com>
Subject: Re: [yocto] Swap management: vm.swappiness best values?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006b1e4a05bd1dd602"

--0000000000006b1e4a05bd1dd602
Content-Type: text/plain; charset="UTF-8"

Hi again,

kswapd is triggered (even when there is no swap space) to reclaim some
space when the memory runs low. There is no way to turn it completely off,
with the swappiness parameter you can control how pro-active it will be.

One of the ways it manages to "reclaim" memory (even if there is no swap
storage defined) is that it can trigger a compaction of memory zones,
therefore reducing memory fragmentation by removing "holes".

This defragmentation will help with the allocation of larger memory blocks.

If you reduce the swappiness setting to zero it will still trigger at some
point, but just much later.

Kind regards, Laurent.

On Tue, Mar 9, 2021 at 5:21 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Thank you for the answer.
>
> May be I explain my problem not so well :-(
>
> I don't have enabled swap partition in fstab and if I run swapon nothing
> is shown.
> The swap partition is not defined anywhere in the system. Only the manager
> is available in the kernel.
>
> I made an analisys of memory usage before posting this,  and I see that
> when the free ram drop under 600MB the kernel thread mmcq/2 and kswap0
> starts to work.
> I see the this 600MB is 60% of 1GB, and vm.swapping=60.
>
> So I ask  here if someone has some experience.  with vm.swappiness  value
> on embedded.
>
> You have centered perfecly the matter about the slow-down: when memory
> drop to low, the system is tired to work.
>
> I cannot explain why even if no swap spaces are defined, kswap0 works
>
> Now I try to put vm.swappiness=6  and it seems to work well
>
> MZ
>
> On mar 9 2021, at 12:17 pm, Laurent Gauthier <
> laurent.gauthier@soccasys.com> wrote:
>
> Ciao Mauro,
>
> Sounds more like a pure Linux/UNIX question than a yocto one :-)
>
> As you most likely know on an embedded system which uses permanent storage
> (NAND flash or eMMC) that is subject to wear it is important to completely
> turn off swap.
>
> At runtime if the system is up and running then you should issue the "*swapoff
> -a*" command.
>
> But the proper fix is to remove any entry from your /etc/fstab designating
> a swap partition.
>
> However I would be surprised if you had a swap partition configured in
> your system as most embedded systems don't have one.
>
> Instead what I am thinking is that you are likely seeing a system
> slow-down due to your system's memory usage coming close to 100% of the
> available RAM, which in turn causes all calls to memory allocation
> functions to slow down (algorithms have to look harder to find available
> memory).
>
> I would suggest that when the issue occurs that you first check the
> current system memory usage and have a look at which application is using
> the most memory and figure out if there is a way to optimize it and reduce
> the memory usage.
>
> Kind regards, Laurent.
>
> On Tue, Mar 9, 2021 at 10:03 AM Mauro Ziliani <mauro@faresoftware.it>
> wrote:
>
> Hi all.
> I'm working with Krogoth on a imx6dl board with 1GB of RAM.
> I don't setup the swap space, but sometimes I see that kswap0 task starts,
> and the board slow down.
>
> I'd like to change  the value of vm.swappiness to avoid swap requests
>
> The default value  of vm.swappiness is 60.
>
> There is a minimum value for vm.swappiness?
>
> Best regards,
>    MZ
>
> 
>
>
>
> --
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> https://soccasys.com
>
>

-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
https://soccasys.com

--0000000000006b1e4a05bd1dd602
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi again,</div><div><br></div><div>kswapd is triggere=
d (even when there is no swap space) to reclaim some space when the memory =
runs low. There is no way to turn it completely off, with the swappiness pa=
rameter you can control how pro-active it will be.</div><div><br></div><div=
>One of the ways it manages to &quot;reclaim&quot; memory (even if there is=
 no swap storage defined) is that it can trigger a compaction of memory zon=
es, therefore reducing memory fragmentation by removing &quot;holes&quot;.<=
/div><div><br></div><div>This defragmentation will help with the allocation=
 of larger memory blocks.<br></div><div><br></div><div>If you reduce the sw=
appiness setting to zero it will still trigger at some point, but just much=
 later.<br></div><div><br></div><div>Kind regards, Laurent.<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Mar 9, 2021 at 5:21 PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoft=
ware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div>Thank you for the answer.</div><br><div>=
May be I explain my problem not so well :-(</div><br><div>I don&#39;t have =
enabled swap partition in fstab and if I run swapon nothing is shown.</div>=
<div>The swap partition is not defined anywhere in the system. Only the man=
ager is available in the kernel.</div><br><div>I made an analisys of memory=
 usage before posting this,=C2=A0 and I see that when the free ram drop und=
er 600MB the kernel thread mmcq/2 and kswap0 starts to work.</div><div>I se=
e the this 600MB is 60% of 1GB, and vm.swapping=3D60.</div><br><div>So I as=
k=C2=A0 here if someone has some experience.=C2=A0 with vm.swappiness=C2=A0=
 value on embedded.</div><br><div>You have centered perfecly the matter abo=
ut the slow-down: when memory drop to low, the system is tired to work.</di=
v><br><div>I cannot explain why even if no swap spaces are defined, kswap0 =
works</div><br><div>Now I try to put vm.swappiness=3D6=C2=A0 and it seems t=
o work well</div><br><div>MZ</div><br><div>On mar 9 2021, at 12:17 pm, Laur=
ent Gauthier &lt;<a href=3D"mailto:laurent.gauthier@soccasys.com" target=3D=
"_blank">laurent.gauthier@soccasys.com</a>&gt; wrote:</div><blockquote><div=
><div>Ciao Mauro,</div><div><br></div><div><div>Sounds more like a pure Lin=
ux/UNIX question than a yocto one :-)</div></div><div><br></div><div>As you=
 most likely know on an embedded system which uses permanent storage (NAND =
flash or eMMC) that is subject to wear it is important to completely turn o=
ff swap.</div><div><br></div><div>At runtime if the system is up and runnin=
g then you should issue the &quot;<strong>swapoff -a</strong>&quot; command=
.</div><div><br></div><div>But the proper fix is to remove any entry from y=
our /etc/fstab designating a swap partition.</div><div><br></div><div>Howev=
er I would be surprised if you had a swap partition configured in your syst=
em as most embedded systems don&#39;t have one.</div><div><br></div><div>In=
stead what I am thinking is that you are likely seeing a system slow-down d=
ue to your system&#39;s memory usage coming close to 100% of the available =
RAM, which in turn causes all calls to memory allocation functions to slow =
down (algorithms have to look harder to find available memory).</div><div><=
br></div><div>I would suggest that when the issue occurs that you first che=
ck the current system memory usage and have a look at which application is =
using the most memory and figure out if there is a way to optimize it and r=
educe the memory usage.</div><div><br></div><div><div>Kind regards, Laurent=
.</div></div></div><br><div class=3D"gmail_quote"><div class=3D"gmail_attr"=
><div>On Tue, Mar 9, 2021 at 10:03 AM Mauro Ziliani &lt;<a href=3D"mailto:m=
auro@faresoftware.it" title=3D"mailto:mauro@faresoftware.it" target=3D"_bla=
nk">mauro@faresoftware.it</a>&gt; wrote:</div></div><blockquote><div>Hi all=
.</div><div>I&#39;m working with Krogoth on a imx6dl board with 1GB of RAM.=
</div><div>I don&#39;t setup the swap space, but sometimes I see that kswap=
0 task starts, and the board slow down.</div><br><div>I&#39;d like to chang=
e=C2=A0 the value of vm.swappiness to avoid swap requests</div><br><div>The=
 default value=C2=A0 of vm.swappiness is 60.</div><br><div>There is a minim=
um value for vm.swappiness?</div><br><div>Best regards,</div><div>=C2=A0=C2=
=
=A0 MZ</div><br><div></div><br></blockquote></div><br><br><div>--</div><di=
v><div><div>Laurent Gauthier</div><div>Embedded Linux Systems &amp; Softwar=
e</div><div>Phone: +33 630 483 429</div><div><a href=3D"https://soccasys.co=
m" title=3D"https://soccasys.com" target=3D"_blank">https://soccasys.com</a=
></div></div></div></blockquote></blockquote></div><br clear=3D"all"><br>--=
 <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr">Laurent Ga=
uthier<br>Embedded Linux Systems &amp; Software<br>Phone: +33 630 483 429<b=
r><a href=3D"https://soccasys.com" target=3D"_blank">https://soccasys.com</=
a></div></div>

--0000000000006b1e4a05bd1dd602--
