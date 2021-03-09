Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7178.1615288674134925267
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 03:17:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=v42U6fbt;
 spf=softfail (domain: soccasys.com, ip: 198.145.29.25, mailfrom: laurent.gauthier@soccasys.com)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 00C3938C06E9
	for <yocto@yoctoproject.org>; Tue,  9 Mar 2021 11:17:54 +0000 (UTC)
Received: by mail-vs1-f44.google.com with SMTP id w76so6565580vsw.10
        for <yocto@yoctoproject.org>; Tue, 09 Mar 2021 03:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ReORszg/6Mo4aZ9Q6qY6DPzmIXbeMJRE+Iw5Awutzcc=;
        b=v42U6fbtQgta1PjFFkB99n/sspBbJOyjHznek0pKK/nselKfMgphxdVWXBZvDF1hxZ
         SNQmNFl4gfJapaxwB7rG0SnLc59kTgg/rVC5GSYuvPJFKcHSS88cCXzDt0Tm9G5R7wB9
         y22PrLnrgAdEsn6wU3QWAB84uuBMFItV7o+uVvS+YsDtuCRm8kRFKRgSOpacudffgrr5
         ke5wmhQ8fC4RTD3SUPto5NQFye35ep1WvN2k+0qezXL3YnkwBqVxE1edF9W3w4M1W7Xr
         l/+5gPtAYos1xpeT9sw5bQNOUat51muxjkCQnCIUjj8lmSYUEj2zg52Gth8HbBB9XfUa
         04bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ReORszg/6Mo4aZ9Q6qY6DPzmIXbeMJRE+Iw5Awutzcc=;
        b=gBT+hl0/6ue1f/He2z1DEsbNZ+2Gc5orFUrNU8/GIeVTJxOoL1m4GpaM8frKJyxmtB
         KaaLkRReWRm+jFvCzTJiati0HYmboGVmGf70kDLA5ae1L8vqvZhV5tEdI7XVSRbA02Kz
         cg+18LW34B1gYr2NGniB2cJu9knVerwGWKahQqHpRlnpklJoXG5csWs4KBAHbNmNe//m
         drqVOnFjaVBHTImn2TALPskXzxVrMDzwtlfe/QfKgFyND6DDTebM2pCnb8mgiwEuDDe2
         FAUmIcObKejRhOwF2JdsJqKpDFrzq7VL/W9ke/zsAcbAhMJqJDLfGx41KbH5YAXgDP0h
         f3Sg==
X-Gm-Message-State: AOAM5313m8FFgO7jVagpUHqSa0eVqkXDSSHJz9TOWy/nH19t0uy4+RUa
	rdIRQ5rEek/btUo2+dx3BWbfCL5mhEUSPwId3aDRhGDGc5k=
X-Google-Smtp-Source: ABdhPJyRG42pv8IHycQetRSjEzBhEjZMD97S3650M33hDUnd/TmR6PUSOu951dAVkiGKPlyvMPoP+BKlC7qrrOfdDU0=
X-Received: by 2002:a67:1481:: with SMTP id 123mr14968362vsu.52.1615288672750;
 Tue, 09 Mar 2021 03:17:52 -0800 (PST)
MIME-Version: 1.0
References: <27598717-887F-4E66-81C2-E6CF6D019938@getmailspring.com>
In-Reply-To: <27598717-887F-4E66-81C2-E6CF6D019938@getmailspring.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 9 Mar 2021 12:17:16 +0100
Message-ID: <CAGbd71T4PFcivOUOp+t=Qy5Hq=aJh2ZcGfxaYM+gbKaTKkNpYw@mail.gmail.com>
Subject: Re: [yocto] Swap management: vm.swappiness best values?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008ca1e205bd18b377"

--0000000000008ca1e205bd18b377
Content-Type: text/plain; charset="UTF-8"

Ciao Mauro,

Sounds more like a pure Linux/UNIX question than a yocto one :-)

As you most likely know on an embedded system which uses permanent storage
(NAND flash or eMMC) that is subject to wear it is important to completely
turn off swap.

At runtime if the system is up and running then you should issue the "*swapoff
-a*" command.

But the proper fix is to remove any entry from your /etc/fstab designating
a swap partition.

However I would be surprised if you had a swap partition configured in your
system as most embedded systems don't have one.

Instead what I am thinking is that you are likely seeing a system slow-down
due to your system's memory usage coming close to 100% of the available
RAM, which in turn causes all calls to memory allocation functions to slow
down (algorithms have to look harder to find available memory).

I would suggest that when the issue occurs that you first check the current
system memory usage and have a look at which application is using the most
memory and figure out if there is a way to optimize it and reduce the
memory usage.

Kind regards, Laurent.

On Tue, Mar 9, 2021 at 10:03 AM Mauro Ziliani <mauro@faresoftware.it> wrote:

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

-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
https://soccasys.com

--0000000000008ca1e205bd18b377
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ciao Mauro,</div><div><br></div><div>Sounds more like=
 a pure Linux/UNIX question than a yocto one :-)<br></div><div><br></div><d=
iv>As you most likely know on an embedded system which uses permanent stora=
ge (NAND flash or eMMC) that is subject to wear it is important to complete=
ly turn off swap.</div><div><br></div><div>At runtime if the system is up a=
nd running then you should issue the &quot;<b>swapoff -a</b>&quot; command.=
</div><div><br></div><div>But the proper fix is to remove any entry from yo=
ur /etc/fstab designating a swap partition.</div><div><br></div><div>Howeve=
r I would be surprised if you had a swap partition configured in your syste=
m as most embedded systems don&#39;t have one.</div><div><br></div><div>Ins=
tead what I am thinking is that you are likely seeing a system slow-down du=
e to your system&#39;s memory usage coming close to 100% of the available R=
AM, which in turn causes all calls to memory allocation functions to slow d=
own (algorithms have to look harder to find available memory).</div><div><b=
r></div><div>I would suggest that when the issue occurs that you first chec=
k the current system memory usage and have a look at which application is u=
sing the most memory and figure out if there is a way to optimize it and re=
duce the memory usage.</div><div><br></div><div>Kind regards, Laurent.<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Mar 9, 2021 at 10:03 AM Mauro Ziliani &lt;<a href=3D"mailto:ma=
uro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div>Hi all.</div><div>I&#39;m wo=
rking with Krogoth on a imx6dl board with 1GB of RAM.</div><div>I don&#39;t=
 setup the swap space, but sometimes I see that kswap0 task starts, and the=
 board slow down.</div><br><div>I&#39;d like to change=C2=A0 the value of v=
m.swappiness to avoid swap requests</div><br><div>The default value=C2=A0 o=
f vm.swappiness is 60.</div><br><div>There is a minimum value for vm.swappi=
ness?</div><br><div>Best regards,</div><div>=C2=A0=C2=A0 MZ</div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr">Laurent Gauthier<br>Embedded Linux System=
s &amp; Software<br>Phone: +33 630 483 429<br><a href=3D"https://soccasys.c=
om" target=3D"_blank">https://soccasys.com</a></div></div>

--0000000000008ca1e205bd18b377--
