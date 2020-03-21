Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web12.14952.1584817107945292277
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Mar 2020 11:58:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gmgIVjrz;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id a20so11322360edj.2
        for <yocto@lists.yoctoproject.org>; Sat, 21 Mar 2020 11:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c4Ec4z6Y9nHgQrI15Avwnlri/goDmE/8x7N+moM5/JU=;
        b=gmgIVjrzjG2Els1v9puD0S1/JQCQUd2D3fqs30xFocrrGo/QER1AnuREC1uFvylGmp
         8V1OhgKPy/yxENYWkypOqbAXIXmNJL25qzRnIytbdoIpgu+ppYhK+nxIIBA2MqRrkM7u
         iHs/4l7l/bep0v0L2bUdCp8BBS7a6FSBybkTYgptPjsoQf2S4DF7nrQwOJMTbTyVrU16
         rz+BSXhVuPvLSIo5vdk1/qI7V1urhN+Qg1A3VBKVNKnTSl1tKAbyCP74fMjVnSBEwuVZ
         s+1O3gVPQm/tsv319haUYGk1b6oSqCgOqHNLYvAdsU4LkMaNUYj202tpAi+ACktKm8cZ
         JJBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c4Ec4z6Y9nHgQrI15Avwnlri/goDmE/8x7N+moM5/JU=;
        b=m+ZooyuBSowtcxxiqNVke1DjDppbzh8kaHtaTfpQcm5H91Ekw3MpWfquNSylgLTCW2
         F+2gtpjsRlrReghKiTTpAet1Ay6fwGHe35MoBjjlF7sl+Bgw646gD0AeYQvzHLzqhiJR
         ttxrYuPKybvNz1l6rBYRSx2ag5dKUfHVwgVbIuNUVT7rRisR66JZHidL8wTuHA04b2aI
         KQJCOWPuYp+dOEKGUz/gf/zeoOcygtl63nLqK5FsfVkqp8qaUmhdFMCxrwWXRMtd+Nhq
         LLtBq9+o5TJmSWwU58i8xJlnrPhXzoJ7WDa7Q2XF3u9s1Kikrb+8d//T9wB2vP3w6GPW
         jxow==
X-Gm-Message-State: ANhLgQ1yGNCmkK6pmoc3El8xD6M84UoZxHhZb/8xgcG4AtmY6TuprLZ2
	myrZgUIaevlRDruxEXXBiNdCbyw8kMsTccg79wQ=
X-Google-Smtp-Source: ADFU+vs7sQ/0Tn3DLgqwAA7dnVW0vndfFc5H+SryZVmX8DIx1NWiLgQetfaKe/cGQi9eWnVdENwveDoEDt81hTOb7EM=
X-Received: by 2002:a17:906:8598:: with SMTP id v24mr13865718ejx.285.1584817106329;
 Sat, 21 Mar 2020 11:58:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200318153803.spyb4vci4ixgf5dc@jama> <4287.1584815991022205427@lists.yoctoproject.org>
In-Reply-To: <4287.1584815991022205427@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Sat, 21 Mar 2020 19:58:14 +0100
Message-ID: <CA+chaQc-bfOBHqGyKow_D1Mg_DmWKCxpgZ09Wc9Y=4MEecNGhQ@mail.gmail.com>
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: Oliver Westermann <oliver.westermann@cognex.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a8263405a161fcd1"

--000000000000a8263405a161fcd1
Content-Type: text/plain; charset="UTF-8"

On 1600AF with 16G RAM and nvme drive it took ~ 38 hours, if you were
running all 4 builds (as test.sh does), you can still finish the tests by
running only the remaining build steps.

You can send me even partial results and I'll let you know if your times
are expected or not (it should be very similar to this 1600AF, depends on
how much swap you have and on how fast disks the swap and build is).

It's also possible that you didn't have enough swap and one of bitbake
threads got killed by OOMK and then the rest was stuck forever.

Regards,

On Sat, Mar 21, 2020 at 7:39 PM Oliver Westermann <
oliver.westermann@cognex.com> wrote:

> On Wed, Mar 18, 2020 at 08:38 AM, Martin Jansa wrote:
>
>
> If you want to compare how terrible your current VM compares with some
> other builders, you can use:
> https://github.com/shr-project/test-oe-build-time
>
> Thanks for all the replies here, had some long days so no earlier answers.
> I did test this on my home rig (2600X, 16G RAM) and it took ~ 24h until I
> aborted. Is this expected? I did not yet try on the VM ;D
>
> - Olli 
>

--000000000000a8263405a161fcd1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1600AF with 16G RAM and nvme drive it took ~ 38 hours, =
if you were running all 4 builds (as test.sh does), you can still finish th=
e tests by running only the remaining build steps.<div><br></div><div>You c=
an send me even partial results and I&#39;ll let you know if your times are=
 expected or not (it should be very similar to this 1600AF, depends on how =
much swap you have and on how fast disks the swap and build is).</div><div>=
<br></div><div>It&#39;s also possible that you didn&#39;t have enough swap =
and one of bitbake threads got killed by OOMK and then the rest was stuck f=
orever.</div><div><br></div><div>Regards,</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Mar 21, 2020 at 7:39=
 PM Oliver Westermann &lt;<a href=3D"mailto:oliver.westermann@cognex.com">o=
liver.westermann@cognex.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Wed, Mar 18, 2020 at 08:38 AM, Martin Jansa w=
rote:<br>
<blockquote><br>If you want to compare how terrible your current VM compar=
es with some<br>other builders, you can use:<br><a href=3D"https://github.c=
om/shr-project/test-oe-build-time" rel=3D"noopener" target=3D"_blank">https=
://github.com/shr-project/test-oe-build-time</a></blockquote>
Thanks for all the replies here, had some long days so no earlier answers.=
<br>I did test this on my home rig (2600X, 16G RAM) and it took ~ 24h until=
 I aborted. Is this expected? I did not yet try on the VM ;D<br><br>- Olli
<br>
</blockquote></div>

--000000000000a8263405a161fcd1--
