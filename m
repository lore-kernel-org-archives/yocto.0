Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1686FC4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 17:06:56 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.110274.1671037611909889921
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 09:06:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eemgCXLn;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: chuckwolber@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id o15so11811323wmr.4
        for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 09:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DaoII7RzbHQdyHDnPHqGf/3ox/PtR5rdrYlaW/HcDPY=;
        b=eemgCXLnOJn1hGgttEsAQmivo8JqEh6pRvEtNhB0TDX3u9E3/P+xTJdu7tcZfvgMjN
         G84vg6c5OZ7F7+vE7WHs3f55P8olh+y/4FXieaiRld9sjCmTHhlsVeNmaXL5wEo3c2hu
         fNMm9AJSZTPfvf4Mq0Zc8QkE0sKfCHjbx7E9/ZIUNSczuV/+duXh1aUhGbih914XUpwq
         VrQItIH0Db+4hH26cv6dp1ZJ7vKVNztu9OGP/Cqd/jb0HsWGjLTCeNqs4sIjeTgp8fLO
         f3srCueSvVOnSO5OcS0lj+ekT7BcG5n6ZzPsPuRPbOllD+nLB81cMcMxEsd6QnVF8jI1
         +7Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DaoII7RzbHQdyHDnPHqGf/3ox/PtR5rdrYlaW/HcDPY=;
        b=42zc6/O2m9DFOCYY05kmQY+LXbeV+nPmWRJqKjm09BPmZ8kzRWB9nXtiCLfm7Cfb5b
         HsnzsEcqN/7tIL1ekQnLkzJ7ho5IpruatezvENttTRZLibUKoT2Sh5IfiPaL4nwuNjqD
         lMF8EVGPixdUp659ZR4WUexyNKg1ScAkE1nC3OqyQnllGdCLNH1sxIUfyVJIQjwGUjvH
         eReYljv89L9kR4FE3TwuIvBRZUSC96Ei7pIZY5zcHKeWXYf9WDl0iZXWSMzBIc3so4xO
         9az7Kgqv/3SZ+F21RIq+I8X8qa4yMOpWn9uMDVrkg4CtuH0VQUKWwE+OPNZuipLDROCS
         cg1g==
X-Gm-Message-State: ANoB5pkFHdwCPoe7WpvxR2n4FB7/lFhR8E1nFqkDhheHKQGFr8L3rDdV
	YSr+zlTOns36krL9Mg2SOgWg8+NFXhyjGtpf3wo=
X-Google-Smtp-Source: AA0mqf4LmMqXyzAVPWVtc4zbAjQfdOL7xvM914WGnBP5UoypG6JVK4LjmT0hjQjx9jwC0ruPw/7xbyP9w3QB146dbio=
X-Received: by 2002:a05:600c:2207:b0:3b4:88ba:a74c with SMTP id
 z7-20020a05600c220700b003b488baa74cmr220392wml.77.1671037610221; Wed, 14 Dec
 2022 09:06:50 -0800 (PST)
MIME-Version: 1.0
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
In-Reply-To: <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Wed, 14 Dec 2022 09:06:38 -0800
Message-ID: <CAB=6tBTsmaXOCe6jMJfU1ustd2PJgOU52JL_RAeb0ygtwLqe-A@mail.gmail.com>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: David Antliff <d.antliff@unsw.edu.au>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000029e3f405efccc3bc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 17:06:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58801

--00000000000029e3f405efccc3bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 14, 2022 at 1:40 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Wed, 14 Dec 2022 at 10:34, David Antliff <d.antliff@unsw.edu.au> wrote=
:
> > Good question! I would prefer not to use a monorepo but it has been
> imposed on me. It predates my involvement and I=E2=80=99m stuck with it,
> unfortunately. Consider it an unavoidable constraint. There's a lot in th=
e
> repo, and the yocto project is just one part of it.
> >
> > Frankly it would make my life a lot easier if I didn't have to work wit=
h
> a monorepo, but my leaders insist that it makes things "easier"...
>

What reasons do they give for that assertion?

Let me guess: they heard that facebook is using a monorepo, so that
> makes it a 'best practice'?
>

One size definitely does not suit all. Distro builds that coalesce code
from a lot of different internal dev teams are
going to have a tough time with the mono-repo approach. Conversely, a team
that controls all of its application layer
code is going to have a difficult time with a distributed repo approach.

So... best practice?

Best practice should be to do what makes the most sense for your particular
situation. I manage an embedded build that
includes a non-trivial number of in-house developed source trees maintained
by a single team. All of this code has no life
outside of embedded builds. Managing that in a distributed repo fashion is
a terrible idea for more reasons than I have
time to describe. Collecting the source into relevant meta-layers coalesced
the work down to a much more manageable
problem.

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000029e3f405efccc3bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Dec 14, 2022 at 1:40 AM Alexander=
 Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.c=
om</a>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">On Wed, 14 Dec 2022 at 10:34, David Antliff &lt;<a=
 href=3D"mailto:d.antliff@unsw.edu.au" target=3D"_blank">d.antliff@unsw.edu=
.au</a>&gt; wrote:<br>
&gt; Good question! I would prefer not to use a monorepo but it has been im=
posed on me. It predates my involvement and I=E2=80=99m stuck with it, unfo=
rtunately. Consider it an unavoidable constraint. There&#39;s a lot in the =
repo, and the yocto project is just one part of it.<br>
&gt;<br>
&gt; Frankly it would make my life a lot easier if I didn&#39;t have to wor=
k with a monorepo, but my leaders insist that it makes things &quot;easier&=
quot;...<br></blockquote><div><br></div><div>What reasons do they give for =
that assertion?<br></div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
Let me guess: they heard that facebook is using a monorepo, so that<br>
makes it a &#39;best practice&#39;?<br></blockquote><div><br></div><div>One=
 size definitely does not suit all. Distro builds that coalesce code from a=
 lot of different internal dev teams are</div><div>going to have a tough ti=
me with the mono-repo approach. Conversely, a team that controls all of its=
 application layer</div><div>code is going to have a difficult time with a =
distributed repo approach.<br></div></div><div><br></div><div>So... best pr=
actice?</div><div><br></div><div>Best practice should be to do what makes t=
he most sense for your particular situation. I manage an embedded build tha=
t</div><div>includes a non-trivial number of in-house developed source tree=
s maintained by a single team. All of this code has no life</div><div>outsi=
de of embedded builds. Managing that in a distributed repo fashion is a ter=
rible idea for more reasons than I have</div><div>time to describe. Collect=
ing the source into relevant meta-layers coalesced the work down to a much =
more manageable</div><div>problem.<br></div><div><div><br></div><div>..Ch:W=
..<br></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot;Perf=
ection must be reached by degrees; she requires the slow hand of time.&quot=
; - Voltaire</span></b></div></div></div></div></div>

--00000000000029e3f405efccc3bc--

