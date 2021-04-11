Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web12.19225.1618154870251100914
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Apr 2021 08:27:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CsCPm/Ah;
 spf=pass (domain: gmail.com, ip: 209.85.217.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id k124so5409566vsk.3
        for <yocto@lists.yoctoproject.org>; Sun, 11 Apr 2021 08:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iAwiBVIiJM9AQQc+gR6KgBVTCOm3Kx9zU5P+Md/ouLM=;
        b=CsCPm/Ah9KKGmXFNaujQdzbPC60FWLMr2oTmdTvyL4psWBs0tsEdD7Qw3xU4tc9EO6
         TVfg2BJg6UHs1x9fTmXfZnRxKlPy2AkiXBcFh6KOeFB3KQTtGwZClrfaGYsDCMycjc10
         5qL/YNr3MdJRG5XpQSWvbsSgAsvN5HMdZbrJrbTn9N+P8SSkPMNiGszPlDZu74tu+APj
         KuZCjtXgdua5Ml3gq4xSw6sOKQo5LXoOFOXbpWkuHtMZVaiZfTaX3InCwzywqNcwZTXd
         5Nh3ZjP2Lu9Bzb3nlIWZ0avsdDzI5i5nj4BOGsWrGWphVrSfcPL/o1kMhFUklR0XrZh+
         UM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iAwiBVIiJM9AQQc+gR6KgBVTCOm3Kx9zU5P+Md/ouLM=;
        b=h9q4/yPV/fJZrv/kogAvzqvj5NZcMET321DQEWkAVsTVi8I684OmoV7n/sCw1tg+ky
         UFKUAs0553hjvBuPAsgSYaNwFOsUd7h7w+utigQfo6/8DRTAM+zsEEbLAAghDcTjBH2X
         Rq9kxNFFclUd+/DNpL7NxaARbTX4FGr3IgBF1NrJqIkVz6K/evgIi+f6ScGAxRBYIAhv
         j2vZhmnpS8Sa/IMydlabIqm37bedoDFs7pfd5xdqNvKjYNpX+GuDl4FzgjWROe0wLQXH
         8kaclX/B3j9ET/KLi4GeIYaUpMhEoiC3SpNZzmOKs/aNvlC0duoVuga4mRGcLseIXZrp
         wBWQ==
X-Gm-Message-State: AOAM530h3NlygaG4N9wYMDwKKRHkLE8U2W7hEp1hjISDx5CblElpDZze
	GtuvWaOXeylhYJdyJSys8RBuG+o5DQd/xDrBvWU=
X-Google-Smtp-Source: ABdhPJybaFKzYmCAR+aEyC5MFkx1sCJr0wlhat221P4Pt7axptBHytuu3amDN3aCDjsYIkMigl1vbCHeHU6mx1p/xCc=
X-Received: by 2002:a67:6485:: with SMTP id y127mr4761456vsb.51.1618154869353;
 Sun, 11 Apr 2021 08:27:49 -0700 (PDT)
MIME-Version: 1.0
References: <s4v495$bak$1@ciao.gmane.io>
In-Reply-To: <s4v495$bak$1@ciao.gmane.io>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 11 Apr 2021 17:27:38 +0200
Message-ID: <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: gley-yocto@m.gmane-mx.org
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002dee4305bfb40ad1"

--0000000000002dee4305bfb40ad1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This has been discussed several times in the past - the conclusion usually
is that first this needs to be addresses upstream in make and ninja, e.g.
that they support throttling new compiler instances when memory gets tight=
.
Once that is available, bitbake can follow by throttling its own tasks as
well.

Alex

On Sun, 11 Apr 2021 at 17:23, Gmane Admin <gley-yocto@m.gmane-mx.org> wrot=
e:

> My build machine has 8 cores + HT so bitbake enthusiastically assumes
> 16. However I have (only?) 16GB of RAM (+24GB swap space).
>
> 16GB of RAM has always been more then enough with 4 core + HT, but now
> building certain recipes (nodejs, but rust will probably do it as well)
> eats up more memory then there actually is RAM causing excessive swappin=
g.
>
> In fact the swapping is so excessive that just this single recipe
> determines largely the total image build time. However restricting
> bitbake (or actually parallel make) to use only 4 cores + HT sounds also
> like a waste.
>
> I know this has been looked at in the past, but I think it needs
> fundamental resolving (other then, h=C3=A9, why not add just another sti=
ck of
> memory).
>
> What I do manually when I run into swapping so bad my desktop becomes
> unresponsive is ssh from another machine and then stop (not kill) the
> processes that use the most memory.
>
> These then get swapped out, but not back in, allowing the remaining
> tasks to complete without swapping. Then when sufficient memory becomes
> free again I continue the stopped processes.
>
> Isn't this something that could be added to bitbake to automate using
> memory efficiently?
>
>
>=20
>
>

--0000000000002dee4305bfb40ad1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This has been discussed several times in the past - t=
he conclusion usually is that first this needs to be addresses upstream in =
make and ninja, e.g. that they support throttling new compiler instances wh=
en memory gets tight. Once that is available, bitbake can follow by throttl=
ing its own tasks as well.</div><div><br></div><div>Alex<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 1=
1 Apr 2021 at 17:23, Gmane Admin &lt;<a href=3D"mailto:gley-yocto@m.gmane-m=
x.org">gley-yocto@m.gmane-mx.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">My build machine has 8 cores + HT so bitb=
ake enthusiastically assumes <br>
16. However I have (only?) 16GB of RAM (+24GB swap space).<br>
<br>
16GB of RAM has always been more then enough with 4 core + HT, but now <br=
>
building certain recipes (nodejs, but rust will probably do it as well) <b=
r>
eats up more memory then there actually is RAM causing excessive swapping.=
<br>
<br>
In fact the swapping is so excessive that just this single recipe <br>
determines largely the total image build time. However restricting <br>
bitbake (or actually parallel make) to use only 4 cores + HT sounds also <=
br>
like a waste.<br>
<br>
I know this has been looked at in the past, but I think it needs <br>
fundamental resolving (other then, h=C3=A9, why not add just another stick=
 of <br>
memory).<br>
<br>
What I do manually when I run into swapping so bad my desktop becomes <br>
unresponsive is ssh from another machine and then stop (not kill) the <br>
processes that use the most memory.<br>
<br>
These then get swapped out, but not back in, allowing the remaining <br>
tasks to complete without swapping. Then when sufficient memory becomes <b=
r>
free again I continue the stopped processes.<br>
<br>
Isn&#39;t this something that could be added to bitbake to automate using =
<br>
memory efficiently?<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000002dee4305bfb40ad1--
