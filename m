Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1340C25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 23:01:47 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.9886.1716850906680524579
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 16:01:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lCwAqn8r;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-529682e013dso246358e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 16:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716850905; x=1717455705; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2F7WFE+ntjFgSmgeTTzUjEViFjTxCIZJ/QoGzFIfhlU=;
        b=lCwAqn8rN5LDUYtmiXS6UAzuTjMBmtVmT+C7PflszcAuZlzE6VTkfNkZKRvzk+453i
         lkHu2Ty9TQlIsOUFg0wN3fOeQSBnJhK+PztGUDWoVDiKizca91YfSHdOjbPICEWYOG7g
         mz79VEiBdjA7v5aSVDOZqcjK5GM+H9Gz5ajKJIcXn4BMaUU3/CzosKQ0YVD/NR6l254E
         f0kDbx9nmx0fWubxU8dDio+p/zyf+5f6sfrjledrTFPXZqr4elhBbIMeyoX41p2mbkre
         6F8XJ8fIiL0FqPRn8Q+BwelMycI1kmI/aaT83iiOvBD4S6dCgZKXRA1qmAk2IK/P14Ih
         tYiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716850905; x=1717455705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2F7WFE+ntjFgSmgeTTzUjEViFjTxCIZJ/QoGzFIfhlU=;
        b=TdDXNOAHL4cwoQoJ2UgFvlrFoTUqszYSFSEVZHLSZou0Wcz4UeSVjD0W9DY/fYU3Bp
         gp2wHyRzIabmpE35iiyAz+Ziv+kfBaOG08U/HRxMYHcaIOFfCADSSphi3nDgVvkFb+xQ
         t8cfNKjnjGCFX0g7rxHA4egq8b8R6fd7SKt2BDJG9tBWTh+8V0im8+P3FdODQMCbFRxq
         Ydd4sR6lMsopcSFQKtgcpaYBCHGpPm3firCBpRGwcxLAwoUL5gDRj5dW6ANvHxFOv881
         cInrTYPnYfjY4OJt73N/+HgnFzQCK2xNPoV2ZaeMMu1FkXscq6vmDmjJnyB1IjSlTiki
         90lg==
X-Gm-Message-State: AOJu0YzkL2efBOywheCc6t+kGOyTKSxvHx8CZHixikWjFhuBRyJh0eiA
	KtQbLj1bx5JT7zk01Y83RFhIhBTIfJQAjBF3JocSVnfWg1Ltlob3TlHovRL0nS3S0XrsX9qafBQ
	snvy2/sr/xww73w83aBTw9tfdy3M=
X-Google-Smtp-Source: AGHT+IFzPGvnP89PGJeNjsiJIKrEqSjGS8p62TL18nL5o+2Yed/yfZ3P/2dFwWHQmrQ8B/J309lhPnCEdqRHAehor3c=
X-Received: by 2002:a05:6512:33c3:b0:523:899f:c63d with SMTP id
 2adb3069b0e04-529663e663amr8465762e87.47.1716850904619; Mon, 27 May 2024
 16:01:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
 <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com> <CAApg2=Q+K-twqpgTGpddzRJjUB21a7xOjgOg=FxcDzq3pLdgqQ@mail.gmail.com>
In-Reply-To: <CAApg2=Q+K-twqpgTGpddzRJjUB21a7xOjgOg=FxcDzq3pLdgqQ@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 27 May 2024 17:01:33 -0600
Message-ID: <CAJdd5GZB-qaJxTai1_zorqowU4Sw0oZeRNLsUG2y7LsVF_E5iQ@mail.gmail.com>
Subject: Re: SPDX delivery
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000004d63c00619778045"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 23:01:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63210

--0000000000004d63c00619778045
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024, 11:47=E2=80=AFAM Marta Rybczynska <rybczynska@gmail.c=
om>
wrote:

>
>
> On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt <jpewhacker@gmail.com=
> wrote:
>
>> On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@gm=
ail.com>
>> wrote:
>> >
>> > Hello all,
>> > As this discussion might be interesting to multiple people, I post it
>> to YP list and the OE architecture list.
>> >
>> > In the VEX work (the status will go out in a moment in a separate
>> message), we're collecting SPDX and CVE files for builds to re-run the C=
VE
>> checks later (potentially months later). The CVE check file is generated
>> for both the image and the build as it is (including the SDK).
>> >
>> > On the other hand, the SPDX archive is generated for the image only,
>> and contains only packages from the system image itself, omitting the bu=
ild
>> system. This is possible for us to get all the partial SPDX files from t=
he
>> build dir, but we do not expect the complete build dir to be kept for
>> months.
>>
>> Can you clarify what you mean by "build" here? We do generate SPDX for
>> the "native" recipes used during the build, and they are in the final
>> SPDX generated for an image, so we do have some idea of the "build"
>> tools used to generate an image.
>>
>
>
> Hello Joshua,
> This is still unclear to me. When I build an image eg bitbake
> core-image-minimal I get the spdx archive as expected:
>
> ./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootfs=
.spdx.tar.zst
>
> ./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootfs=
-20240522164207.spdx.tar.zst
>
> ./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core-i=
mage-minimal-image-complete/core-image-minimal-qemux86-64.rootfs.spdx.tar.z=
st
>
>
> ./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core-i=
mage-minimal-image-complete/core-image-minimal-qemux86-64.rootfs-2024052216=
4207.spdx.tar.zst
>
> However, there's no archive for the world build (not going to mention how
> long it lasted). Is it on purpose?
>


Ya sorry. I wasn't trying to imply that we currently generate a  SPDX
archive for world builds, just that we should be able to do so without to
much trouble

>
> Kind regards,
> Marta
>
>

--0000000000004d63c00619778045
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, May 27, 2024, 11:47=E2=80=AFAM Marta Rybczynsk=
a &lt;<a href=3D"mailto:rybczynska@gmail.com">rybczynska@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div dir=
=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshu=
a Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">jpewhacker@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On Wed, May 15, 2024 at 11:11=
=E2=80=AFAM Marta Rybczynska &lt;<a href=3D"mailto:rybczynska@gmail.com" re=
l=3D"noreferrer noreferrer" target=3D"_blank">rybczynska@gmail.com</a>&gt; =
wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt; As this discussion might be interesting to multiple people, I post it =
to YP list and the OE architecture list.<br>
&gt;<br>
&gt; In the VEX work (the status will go out in a moment in a separate mess=
age), we&#39;re collecting SPDX and CVE files for builds to re-run the CVE =
checks later (potentially months later). The CVE check file is generated fo=
r both the image and the build as it is (including the SDK).<br>
&gt;<br>
&gt; On the other hand, the SPDX archive is generated for the image only, a=
nd contains only packages from the system image itself, omitting the build =
system. This is possible for us to get all the partial SPDX files from the =
build dir, but we do not expect the complete build dir to be kept for month=
s.<br>
<br>
Can you clarify what you mean by &quot;build&quot; here? We do generate SPD=
X for<br>
the &quot;native&quot; recipes used during the build, and they are in the f=
inal<br>
SPDX generated for an image, so we do have some idea of the &quot;build&quo=
t;<br>
tools used to generate an image.<br></blockquote><div><br></div><div><br></=
div><div>Hello Joshua,</div><div>This is still unclear to me. When I build =
an image eg bitbake core-image-minimal I get the spdx archive as expected:<=
/div><div><br></div><div><span style=3D"font-family:monospace"><span style=
=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">./tmp-glibc/deploy/=
images/qemux86-64/core-image-minimal-qemux86-64.rootfs.spdx.tar.zst
</span><br>./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-=
64.rootfs-20240522164207.spdx.tar.zst
<br>./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs.spdx.tar=
.zst
<br>./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs-20240522=
164207.spdx.tar.zst<br>
<br>However, there&#39;s no archive for the world build (not going to menti=
on how long it lasted). Is it on purpose?</span></div></div></div></div></b=
lockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Ya sorry. I wasn&#39;t trying to imply that we current=
ly generate a=C2=A0 SPDX archive for world builds, just that we should be a=
ble to do so without to much trouble=C2=A0</div><div dir=3D"auto"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"auto"><span style=3D"font-f=
amily:monospace"><br></span></div><div dir=3D"auto"><span style=3D"font-fam=
ily:monospace">Kind regards,</span></div><div dir=3D"auto"><span style=3D"f=
ont-family:monospace">Marta</span></div><br></div></div></div>
</blockquote></div></div></div>

--0000000000004d63c00619778045--

