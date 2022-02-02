Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE2FC433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Feb 2022 23:50:21 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web08.2159.1643845820240982268
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 15:50:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=esXih4RG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.42,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f42.google.com with SMTP id i34so2381860lfv.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 02 Feb 2022 15:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zrCvF7n36pxUB4PLkA5+MkDNssv125q3q6/ZtmXiIBw=;
        b=esXih4RGmbO32cgLbVQL+1Z/WfRxKGZPbxv2RL2pIGjCPNcXCi6+JkhwxrujNMq6Ju
         1dX/Yb66wpM6UNJu42Txk31BixqokcKC1T0i2TEvvdvEBLDP5pv/SAI0AEd+jZAkn51E
         RGJN/6RJGyIA/WiRuMowh6w0nn9spknycZ3Zk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zrCvF7n36pxUB4PLkA5+MkDNssv125q3q6/ZtmXiIBw=;
        b=UAteZq9PGKRWxcGdNRxmYZoUEJ6G9JND5HMGZKTOuKYp0uv76SzI6sJemqX5Vkmcyz
         LZ00y06BW39yxumEKOhG72BXQfsiVlvdXUoNCwlpu6L5aTHbuVzMeaVPcjRe9Wz3eVKe
         fH7o0/MD6kp2gXoHar4FQumH0aPhPwpSXwi6qZYUsnKWBDadFQF0bTzDs3IsHmQcD2kP
         CIgmcT/05Ny1LdpiDu/QHiDwC+oOrkivEqiq19xQ9K0NrAHxlk/Wsq6RlsvWAw8i8LS2
         BbLg58hJ+wLhI948q+3GPvfllLHx8M2Y8dbxYZgUpSAV9SkzoATulO5TEttHAuIIOuq7
         GLog==
X-Gm-Message-State: AOAM530kSOqjC/Q3d4q46MalKicNDmIHSj1uFIKLKiDDvoayiAx1TodZ
	IJa5AROuoUw8SGoeU6lCbqhfQFVVaAhBFY+qT3nwFQ==
X-Google-Smtp-Source: 
 ABdhPJza6vRIbn0tKasS7vIWfV/PqKTj8scLwe+WQ6nGPTq53MmTy4ULxZLmGFTZwzxq3MHasfKDutn+U/2HvuG6bek=
X-Received: by 2002:a05:6512:1587:: with SMTP id
 bp7mr24958496lfb.671.1643845818218;
 Wed, 02 Feb 2022 15:50:18 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
 <20220127200650.GX26229@denix.org>
 <CANNYZj_mmE-m0eW9SMjmQxr203B8THminnME_Os37dTET_rV-Q@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_mmE-m0eW9SMjmQxr203B8THminnME_Os37dTET_rV-Q@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 2 Feb 2022 15:50:06 -0800
Message-ID: 
 <CADfgfob5GLcopY=yCo5DuXTDR4ZUXTYPjErDmtnKt5jq6WJ6xQ@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
 Denys Dmytriyenko <denis@denix.org>
Content-Type: multipart/alternative; boundary="0000000000000f913f05d711ae15"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Feb 2022 23:50:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56049

--0000000000000f913f05d711ae15
Content-Type: text/plain; charset="UTF-8"

Thank you for the ping. These branches are ready for you.

On Tue, Feb 1, 2022 at 6:23 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Thu, 27 Jan 2022 at 21:06, Denys Dmytriyenko <denis@denix.org> wrote:
>
>> On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexander Kanavin wrote:
>> > A question specifically to Denys, how can I actually get this into the
>> > mixin repo, and have commit rights to the branch? We've tested this
>> quite
>> > well in private, and there are further enhancements coming up.
>>
>> Michael,
>>
>> Would it be possible to create 2 additional branches in the
>> meta-lts-mixins
>> repository at https://git.yoctoproject.org/meta-lts-mixins/ called
>> "dunfell/go" and also "dunfell/docker" and give Alex push rights to them?
>>
>> Please let us know, thanks a lot!
>>
>
> Ping, please :)
>
> Alex
>


-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000000f913f05d711ae15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank=C2=A0you for the ping. These branches are ready for =
you.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Feb 1, 2022 at 6:23 AM Alexander Kanavin &lt;<a href=3D"mailto:=
alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 27 Jan 2022 =
at 21:06, Denys Dmytriyenko &lt;<a href=3D"mailto:denis@denix.org" target=
=3D"_blank">denis@denix.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Thu, Jan 27, 2022 at 06:07:06PM +0100, Alexan=
der Kanavin wrote:<br>
&gt; A question specifically to Denys, how can I actually get this into the=
<br>
&gt; mixin repo, and have commit rights to the branch? We&#39;ve tested thi=
s quite<br>
&gt; well in private, and there are further enhancements coming up.<br>
<br>
Michael,<br>
<br>
Would it be possible to create 2 additional branches in the meta-lts-mixins=
 <br>
repository at <a href=3D"https://git.yoctoproject.org/meta-lts-mixins/" rel=
=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-lts-mix=
ins/</a> called <br>
&quot;dunfell/go&quot; and also &quot;dunfell/docker&quot; and give Alex pu=
sh rights to them?<br>
<br>
Please let us know, thanks a lot!<br></blockquote></div><div class=3D"gmail=
_quote"><br></div><div class=3D"gmail_quote">Ping, please :)</div><div clas=
s=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex<br></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--0000000000000f913f05d711ae15--

