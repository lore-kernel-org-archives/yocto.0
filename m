Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D096BC433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 23:36:24 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com
 [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.414.1654644982504859160
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 16:36:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VowkqNaJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.169,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id
 00721157ae682-3135519f95fso22149227b3.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 16:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PgUayEp+zqNIsykWG7+K0VTwBnVhGwnWHHWwYoceVWM=;
        b=VowkqNaJOi7q0sb0OEkgt15m4rQJfGKoZfDP6OG3ZqrtgmL+jHpAVgMV8yPNmp20Wj
         5StJRNX9DLTl765/KWeNe9fQSJCthtM//J+Z0s5isG1cLDNQq1XXK8V4l7L1HVtep3iR
         R2NxukdD2qV11S4oyELacMLCmqW/zay6ZrUHSW6bgg8MffjZxH1CEP/YcTrnM8/XbXiP
         rb7A8bjXEMrDyRe4VcfnhVjfoNldSgpagcfKvCD5BLJA44Dzn9Ccx+Khe3XY5Me2GbJo
         sAnG/MwsSiCRjvbzSgO4PP3BQg04LIdl4aUg7pZfyivDwC9ohaDYS+cXOqv3rgjN2Wto
         m7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PgUayEp+zqNIsykWG7+K0VTwBnVhGwnWHHWwYoceVWM=;
        b=Bxuu/ntU6LL+yYCb2LLjdDBGonF/lHDJC9/2M85YaGiss1TaPpKFXTp3bQ0JLi901H
         5SgQXGqD28d5DUeDTmlo0X8gNf66bwuNOVs0SyZq6cn4eKt5ZQZ2qBdD04Q72Xr6gAu0
         vvc1tzk/jRCbcPEokqRyUoVjfi6AX2VTfbvJMqEtIpslM0Hctx22WHBKe8AKjGTu9k2e
         EH5UFn9LgpT+Ailje0sNFisOub16L+mHfQgDY2M0TiXUK9/SBOytzGVAJPa0QTueeKSV
         TMbauoMoA6U7m7Qc/9zxE6DGjMbQetyYeNUZkvQOrf+9vKJmyj7i0sFyZeHypRND7P1L
         JSmQ==
X-Gm-Message-State: AOAM532A60bcBal4dnwq4nLcWyI9LtzAtPa5LaqIym9d3hyqGvSo0PYd
	M4owG/iEg2TNcEfIT6O4UPKO+ly3UNaA5tmYPHg=
X-Google-Smtp-Source: 
 ABdhPJy/DnWjQBBMI3B8jVqwqNq5VxcSNaeHmDbm9BINMuRCmojRae4DmLHPTrD8WUnz4stG3kG8v7Qdy5vE6cwf90w=
X-Received: by 2002:a81:6c57:0:b0:313:3ca4:6489 with SMTP id
 h84-20020a816c57000000b003133ca46489mr5685875ywc.254.1654644976852; Tue, 07
 Jun 2022 16:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
In-Reply-To: <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Tue, 7 Jun 2022 16:36:05 -0700
Message-ID: 
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
Subject: Re: [yocto] Force binary package install
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000013242c05e0e40e28"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 23:36:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57301

--00000000000013242c05e0e40e28
Content-Type: text/plain; charset="UTF-8"

> >> Is there an elegant way around it?
>> >>
>> >>
>> >> Error:
>> >>    Problem: conflicting requests
>> >>     - nothing provides libdl.so.2 needed by
>> >> xxx-single-group-0.1-r0.cortexa53_crypto
>> >>     - nothing provides libdl.so.2(GLIBC_2.0) needed by
>>
>
Could this be considered a bug in the package_rpm.bbclass? It seems to me
that if you skip files-rdeps,
we might not want to be adding anything into splitpreinst. Otherwise it
seems silly to tell insane.bbclass
to skip something that RPM is going to ding you on later anyway. Or maybe I
am confused...

In any case, I believe what you may be seeing can be viewed as an RPM-ism,
and not necessarily a
yocto-ism per se. So you might consider trying one of the following to work
around the problem:

Experiment with using a virtual provider. It may be possible to just map
the dependency manually to
what is already there.

If you _know_ that your dependency is truly isolated to your recipe, you
may be able to set RPROVIDES
values in your recipe so the resulting RPM thinks the dependencies are met
internally.

Patch package_rpm.bbclass to add a guard variable around the setting of
splitpreinst. Add that
guard variable to your recipe so it selectively turns off the pre-install
checks for that particular package.
Or just check for files-rdeps in INSANE_SKIP and do the same thing...

Stop fighting RPM and switch to a different package type like IPK.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000013242c05e0e40e28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div><blockquote type=3D"cite=
"><div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
            &gt;&gt; Is there an elegant way around it?<br>
            &gt;&gt;<br>
            &gt;&gt;<br>
            &gt;&gt; Error:<br>
            &gt;&gt;=C2=A0 =C2=A0 Problem: conflicting requests<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 neede=
d by<br>
            &gt;&gt; xxx-single-group-0.1-r0.cortexa53_crypto<br>
            &gt;&gt;=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC=
_2.0) needed
            by <br></blockquote></div></div></blockquote></div></blockquote=
></div><div><br></div><div>Could this be considered a bug in the package_rp=
m.bbclass? It seems to me that if you skip files-rdeps,</div><div>we might =
not want to be adding anything into splitpreinst. Otherwise it seems silly =
to tell insane.bbclass</div><div>to skip something that RPM is going to din=
g you on later anyway. Or maybe I am confused...<br></div><div><br></div><d=
iv>In any case, I believe what you may be seeing can be viewed as an RPM-is=
m, and not necessarily a</div><div>yocto-ism per se. So you might consider =
trying one of the following to work around the problem:<br></div><div><br><=
/div><div>Experiment with using a virtual provider. It may be possible to j=
ust map the dependency manually to</div><div>what is already there.<br></di=
v><div><br></div><div>If you _know_ that your dependency is truly isolated =
to your recipe, you may be able to set RPROVIDES</div><div>values in your r=
ecipe so the resulting RPM thinks the dependencies are met internally.<br><=
/div><div><br></div><div>Patch package_rpm.bbclass to add a guard variable =
around the setting of splitpreinst. Add that</div><div>guard variable to yo=
ur recipe so it selectively turns off the pre-install checks for that parti=
cular package.</div><div>Or just check for files-rdeps in INSANE_SKIP and d=
o the same thing...<br></div><div><br></div><div>Stop fighting RPM and swit=
ch to a different package type like IPK.</div><div><br></div><div>..Ch:W..<=
br></div><div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot;Pe=
rfection must be reached by degrees; she requires the slow hand of time.&qu=
ot; - Voltaire</span></b></div></div></div></div></div>

--00000000000013242c05e0e40e28--

