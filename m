Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC17EC5475B
	for <webhook@archiver.kernel.org>; Fri,  8 Mar 2024 03:43:14 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.13035.1709869388563476924
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 19:43:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=Q1BzQP5R;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.47, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7cedcea89a0so1003167241.1
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 19:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709869387; x=1710474187; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3A1m7vLjrZ/VM9PsEtIJ4nBKh74RTc2/zspxdFivHKc=;
        b=Q1BzQP5Rq00E5kW/6dLw9T51Oa9kQf9BC4AttN7WQirhzIv4xcmdF+CB6eugNcSYO5
         lVdP+ubjQ52tN43cRYDSqKH5YsLPh2txhNGYTaAXwN5poEMOfOPedc4RtE54BnDdVz9o
         ucBgCrifpId+hZWym/B45Xt6yqHC86ZMrGbRpe/hYuHJuCISOtSShbQnoq3X/3PoXrJS
         H8GT2GvROAA+SouZkPsPdkdoURouNSSQhq440o48r5JRR7toWO4wgdeCEKzuQ241UJBt
         ih75270dTETc5ytobe7aTkUkCE2D6Q0YZpLysziM4xbDlyH9jaTZsloWH1Z08jM6WFwG
         A7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709869387; x=1710474187;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3A1m7vLjrZ/VM9PsEtIJ4nBKh74RTc2/zspxdFivHKc=;
        b=cypiMDdF+8vl2is3LNs/9Z9LBZCKvMK6Jm5ZqyxAJgZLTKirrQbV5pEX/wXEb0rEv4
         wrSk4ycaZqbc0tjR6BVLarTPvR/D9H6XfL4N/df5CUMcpbb3BDHrdVwTjOw3kxXWygtT
         IG19Ya26poF0PvIf7uZZnu/iqcO7C2Uz6E1Q/kMX03Vs2yiVmkLXBHORZeEH2gobVx76
         nHkjYaVUOBcfxzXOEurWuPvGfEXGmLsJ/0meCM+j48xft7CV86JH8lkYlc59lWHdq0bD
         uPVEOvDNemamURH83sMFaO9R7k4Qq9lGJANhlPehdTMDBK09AbeTrFVcYn8DqV6cqtqb
         XKxQ==
X-Gm-Message-State: AOJu0YzDSOq7HG46zJHv2XCxu+S0YXx8xPNTL0mQQV7q9Gy/8HGpj9Ng
	lRJJ9ItuFJ1grsbNzIsjxypUGUke2OUuxjRgt1P2lbjQD0axvvGzVARVEgEzwtEwOXa5bySV6NC
	FWarRTSKIfpt6phPBOUx3MjnK3fm3gCFV6Sg4fGLCGzzwCDEV
X-Google-Smtp-Source: AGHT+IECYu1LlmmT8pJmLJNsW1xhB1pELuLXIprapECt6ls1N6eKwuwQVsEzscNSIskyBPK5xsf7chY44ChK7LkoDQs=
X-Received: by 2002:a05:6122:220d:b0:4c8:90e5:6792 with SMTP id
 bb13-20020a056122220d00b004c890e56792mr11462562vkb.7.1709869387509; Thu, 07
 Mar 2024 19:43:07 -0800 (PST)
MIME-Version: 1.0
References: <CANuMBWH835Xj0prs1EUrkVjnRFyE4BF7-viJsrHdYMPSdv60Xg@mail.gmail.com>
 <2N60AS.IS9X55HYOFEM2@t-online.de> <17BAA41581F87986.16844@lists.yoctoproject.org>
In-Reply-To: <17BAA41581F87986.16844@lists.yoctoproject.org>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 8 Mar 2024 16:42:56 +1300
Message-ID: <CANuMBWEjRTgKU1CGJBzGD4typ1XYMZSjQkOptUWbxRRK24xKRA@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Quick Build - MACHINE
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Cc: f_l_k@t-online.de
Content-Type: multipart/alternative; boundary="00000000000074939206131dfd41"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Mar 2024 03:43:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62706

--00000000000074939206131dfd41
Content-Type: text/plain; charset="UTF-8"

Thanks for the help.

The system is telling me it succeeded,  I used intel-corei7-64

I have a directory: build/tmp/deploy/images/intel-corei7-64 that has a lot
of artifacts in it, and  I am unsure of how to test it.

The yocto system I was working with created a single image file.  I am
looking at a lot of parts here.

Is there a part of the manual I can read that explains what this is?



On Fri, 8 Mar 2024 at 13:57, Worik Stanton via lists.yoctoproject.org
<worik.stanton=tirotech.co.nz@lists.yoctoproject.org> wrote:

>
>> Hi,
>> did you add meta-altera here?
>>
>> build/conf/bblayers.conf
>>
>>
> Thank you, no.  It was right there in the documentation: "bitbake-layers
> add-layer ../meta-altera"
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62705):
> https://lists.yoctoproject.org/g/yocto/message/62705
> Mute This Topic: https://lists.yoctoproject.org/mt/104799797/8299399
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> worik.stanton@tirotech.co.nz]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000074939206131dfd41
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for the help.</div><div><br></div><div>The sys=
tem is telling me it succeeded,=C2=A0 I used intel-corei7-64</div><div><br>=
</div><div>I have a directory: build/tmp/deploy/images/intel-corei7-64 that=
 has a lot of artifacts in it, and=C2=A0 I am unsure of how to test it.</di=
v><div><br></div><div>The yocto system I was working with created a single =
image file.=C2=A0 I am looking at a lot of parts here.</div><div><br></div>=
<div>Is there a part of the manual I can read that explains what this is?</=
div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, 8 Mar 2024 at 13:57, Worik Stanto=
n via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> =
&lt;worik.stanton=3D<a href=3D"mailto:tirotech.co.nz@lists.yoctoproject.org=
">tirotech.co.nz@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div id=3D"m_5284=
766750839943814m_4311420959236613889geary-body" dir=3D"auto"><br><div>Hi,</=
div><div>did you add meta-altera here?</div><div><br></div><div>build/conf/=
bblayers.conf</div></div>
<br></blockquote><div><br></div><div>Thank you, no.=C2=A0 It was right ther=
e in the documentation: &quot;bitbake-layers add-layer ../meta-altera&quot;=
</div><div><br></div><div><br></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62705): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62705" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62705</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104799797/829=
9399" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/104799797/8299399</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:worik.stanton@tirotech.co.nz" target=3D"_blank">=
worik.stanton@tirotech.co.nz</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000074939206131dfd41--

