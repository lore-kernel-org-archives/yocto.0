Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web10.7585.1592575547969214547
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 07:05:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tcHm0Pva;
 spf=pass (domain: gmail.com, ip: 209.85.221.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id t23so2312637vkt.5
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 07:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7hrKpsIq8tFVwPy6Zn40gGkMEhl5o5rv9kd0lq+ahWM=;
        b=tcHm0Pvaor9fqhAo4cwUI2eaXo6LphjB1z2KVUFD8mkBd5seAiuHowQRw+2f6mryme
         +VmWj0c49AYABtgXKWzHkv3YubKoCggJKvnnqLUZaMNNontbn9I5PfH3ELE7OGYDB0Og
         yULj4m88tRgV1Zecp3LamXiRaR+QhsyCboQcItoBbjkEYBpZb+jFJqStiKqOMqFe3N9M
         cDz8YFLrTAD+sqJLjlVfmjcK5y4sCThX7nMwopn0Tc86PRqgMY9QuEf/lzw5yQ29KBYI
         NKOb1WY2dlRc3X9ZCcpL891YhTstoP7g5fIcCMt5lwOg1OLLiXVCNE85NGngIGrhLTt/
         MLZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7hrKpsIq8tFVwPy6Zn40gGkMEhl5o5rv9kd0lq+ahWM=;
        b=sc6hO9WG4kgLhzhULVlqDgccO4dUXfXVRHZzPP4hQ0axSDOrl1/zpb0D6F6eK+hKJi
         UaQiboDcilD7CYGFYNI4OqB7LHUNHlw5w6FPj704nnBTdkE6Car/jb12eDIbd7X7QaAc
         vp33Zv1OibHXUl4NOULsZdUH6/9vn7BGwjZC0xshC0JuKdaLdue++8bVmEV8WYPKMuWo
         srCWzxByeKNj1SnR/G48m5eywY5yQ/Z5Lrr+2Y2k0+E9lHg10CoX8DeSRfygYAxQkZDf
         hkteTiJ+HTamT43xM5R7xdHU/LDczOqA6U+b9ewv7D4ODC57ZsTHfPRksA56by067twC
         xY0g==
X-Gm-Message-State: AOAM533TkPWI4iR5YGj9F650F2iz/czgU4Ha0DkCbXKrG5KdUSqHzWcQ
	4xFecJu7CpnU8nFhzemc8PSFxK155eUl+j05fvc=
X-Google-Smtp-Source: ABdhPJxvfcU7ug+anTAaTDAiiB2BxUMDjaGlPZtfPfee0c4U3emPnOZY16d/bn8eYkdFYk2+NyUh9syuYF+vAMHnlbQ=
X-Received: by 2002:a1f:4192:: with SMTP id o140mr7253243vka.49.1592575547043;
 Fri, 19 Jun 2020 07:05:47 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
In-Reply-To: <BL0PR11MB3268E2BB9A442B0890DA3C9DAE980@BL0PR11MB3268.namprd11.prod.outlook.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 19 Jun 2020 16:05:35 +0200
Message-ID: <CANNYZj_0BYuNgmO3MHm0vEgu6qQut2vk984fRFPQGuRCy+=W1Q@mail.gmail.com>
Subject: Re: [yocto] Distro upgrade strategies
To: Hugh Boddington <hboddington@orangephotonics.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c2743f05a8706397"

--000000000000c2743f05a8706397
Content-Type: text/plain; charset="UTF-8"

Yocto does not support or test upgrading from one yocto release to the next
through dnf. Nothing conceptually prevents it, but you need to set up and
test such upgrades yourself, and send any needed fixes upstream.

Alex

On Fri 19. Jun 2020 at 14.16, Hugh Boddington <
hboddington@orangephotonics.com> wrote:

> Hello all,
>
> I'm struggling conceptually with a recommended upgrade strategy for our
> distribution (i.e. the resultant distribution on an ARM-based embedded
> device, not the development SDK itself).  I had initially assumed that a
> package manager (we're using DNF) could be used to upgrade a distribution
> from one version to the next, but every time I've used it to try to deploy
> a large upgrade (e.g.,  Zeus->Dunfell) I've run into problems.  Currently,
> if I try to use DNF to upgrade from a Zeus-based distribution my DNF
> installation breaks ("ModuleNotFoundError: No module named 'dnf'") and I
> can't even shut the device down ("/run/initctl: No such file or
> directory").  However, if I install the Dunfell-based distribution from a
> raw image (without upgrading through Zeus) then everything works fine.  I'm
> not getting an errors in my build or indication that something went wrong,
> but obviously something is amiss.
>
> Questions:
>   1) Am I missing something?  Is it reasonable to expect that I can
> upgrade the whole distro using DNF?  I've read the wiki page about System
> Updates (https://wiki.yoctoproject.org/wiki/System_Update) and DNF (or
> any other package manager) is not listed - does that imply it's not up to
> the job?
>   2) If I do continue using DNF, how do I troubleshoot the above issues?
> I don't mean specifically those issues, but I want to learn to fish.  Some
> packages got broken.  Was it caused by the distro I'm upgrading from?  To?
> What's the best way of tracing it back?  I tried looking through the
> various commits but obviously there were a lot of changes made from one
> distro to another.  The above scenario seems also to be a perfect storm
> because now that DNF is broken I don't have a mechanism to downgrade
> anything.
>
> I can't help but think that I'm swimming against the current here, or that
> I've done something fundamentally wrong - I'd appreciate any insight or
> advice.  Thank you!
>
> Hugh
> 
>

--000000000000c2743f05a8706397
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Yocto does not support or test upgrading from one yo=
cto release to the next through dnf. Nothing conceptually prevents it, but =
you need to set up and test such upgrades yourself, and send any needed fix=
es upstream.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><=
/div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri 19. Jun 2020 at 14.16, Hugh Boddington &lt;<a href=3D"mailto:hbo=
ddington@orangephotonics.com">hboddington@orangephotonics.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-l=
eft-color:rgb(204,204,204)">Hello all,<br>
<br>
I&#39;m struggling conceptually with a recommended upgrade strategy for ou=
r distribution (i.e. the resultant distribution on an ARM-based embedded de=
vice, not the development SDK itself).=C2=A0 I had initially assumed that a=
 package manager (we&#39;re using DNF) could be used to upgrade a distribut=
ion from one version to the next, but every time I&#39;ve used it to try to=
 deploy a large upgrade (e.g.,=C2=A0 Zeus-&gt;Dunfell) I&#39;ve run into pr=
oblems.=C2=A0 Currently, if I try to use DNF to upgrade from a Zeus-based d=
istribution my DNF installation breaks (&quot;ModuleNotFoundError: No modul=
e named &#39;dnf&#39;&quot;) and I can&#39;t even shut the device down (&qu=
ot;/run/initctl: No such file or directory&quot;).=C2=A0 However, if I inst=
all the Dunfell-based distribution from a raw image (without upgrading thro=
ugh Zeus) then everything works fine.=C2=A0 I&#39;m not getting an errors i=
n my build or indication that something went wrong, but obviously something=
 is amiss.<br>
<br>
Questions:<br>
=C2=A0 1) Am I missing something?=C2=A0 Is it reasonable to expect that I =
can upgrade the whole distro using DNF?=C2=A0 I&#39;ve read the wiki page a=
bout System Updates (<a href=3D"https://wiki.yoctoproject.org/wiki/System_U=
pdate" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/w=
iki/System_Update</a>) and DNF (or any other package manager) is not listed=
 - does that imply it&#39;s not up to the job?<br>
=C2=A0 2) If I do continue using DNF, how do I troubleshoot the above issu=
es?=C2=A0 I don&#39;t mean specifically those issues, but I want to learn t=
o fish.=C2=A0 Some packages got broken.=C2=A0 Was it caused by the distro I=
&#39;m upgrading from?=C2=A0 To?=C2=A0 What&#39;s the best way of tracing i=
t back?=C2=A0 I tried looking through the various commits but obviously the=
re were a lot of changes made from one distro to another.=C2=A0 The above s=
cenario seems also to be a perfect storm because now that DNF is broken I d=
on&#39;t have a mechanism to downgrade anything.<br>
<br>
I can&#39;t help but think that I&#39;m swimming against the current here,=
 or that I&#39;ve done something fundamentally wrong - I&#39;d appreciate a=
ny insight or advice.=C2=A0 Thank you!<br>
<br>
Hugh<br>
<br>
</blockquote></div></div>

--000000000000c2743f05a8706397--
