Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6F7C71155
	for <webhook@archiver.kernel.org>; Fri, 20 Jun 2025 04:43:14 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.644.1750394591938226673
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jun 2025 21:43:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hT6qWDTP;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ae04ce9153aso175935866b.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 21:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750394590; x=1750999390; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6HtQMH3w/f1kLGgvtSWMN1SoIAR+fz+iOxBlEyRfHBw=;
        b=hT6qWDTPX5YQJrbQDV7KObvCAMC+EdIMOEUADuDn0ftWHjT9ysNdxar7qYJYVO7ZGF
         uDAJTsE3WFKqtD/ptZFMWeueBBUvwc+bO4pGFuw3uPgitgINPu333NCHNEMQlvlFjhgt
         LO6uj3PmombRLYpsL3PKQPWY5vxS1sDKUg1VPPZabeGTAK6FK+Zs8a0RCzOhlITyLF0z
         m3B4gH4l+x+TDnTQNZ9lv/QBT5tyo6LNaDr85VDgvOwgJAWpa+UkkyzXgt24t7nxv0P5
         /ZTMFnp5AZCsPRf9C/lclRxk3hcCGSITEpUYArj4fMLaiy2yma/FAGVLqoTSZLvfXsX7
         jBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750394590; x=1750999390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6HtQMH3w/f1kLGgvtSWMN1SoIAR+fz+iOxBlEyRfHBw=;
        b=u+rfa/myZDhCmyyEmQciu3Ew8K19Kx2mqiJ0e2trnAfB8zWpF927tgaUqtPHU+NP/b
         OE4yDzOKX1sRgtiN2i0WcT7p3fttmP1W+ePvsOJucWBRd1X2LU7hP9B8aaI5BHfbHwob
         hUs15s7ft1EEowlJwvFhRU8RQpQN+KdhId7Xq90633V94kGS+1Tq0F+PO6BZ+5JB05Sc
         0SWgeQX0BOlc675hXXRIUaVkanRv9Sfw/KO5Kql8gerU3K0qhJQGU146JNLAwqDe5hKQ
         YovfjubJBoe6PNsKwCn73e9/a2noFBuh6NnVSlfTFD2nY3ITXZxLtiTAf8a36X9LMDK4
         aH6A==
X-Gm-Message-State: AOJu0Yzo3Dqc7daTbRFTD3xBHxC5DpRMBfrezFlIJV/96LizOTyigOdr
	Ye6RDabzrvyWGIJF7Y2DZek+CZhL9klfd98tlmu2JUdA9ljSXtiorI7efd4sSWzy9bJyOWyOB4A
	SPnIwJ7zUwM5Ko7aF3BWEAYSZDCeDO38o5A==
X-Gm-Gg: ASbGncuBSbbl0u22//SpacJIonFmSukMCrOVxvclzULc0TuqIiR13lnqJK128Bx+B6A
	SXPVET5TVIx6tkWcOueXZ+1mp7uPTPxKM9RiIsnpPqhvu+BQinJEbm9NAo8bfbiHt/7NfXTKoI7
	P23obqG3T+xg24tuBI+saU92yq7REOXTA2dRzr4iyEACFx
X-Google-Smtp-Source: AGHT+IGLaiTBb1pA/SkYNCtEy9V1gtXi0gKo+vkeRfeA4zx5Afi1EjuR0Fx5q8Igbfw4jzFy5Fc3zhR/mNjWEFzsduU=
X-Received: by 2002:a17:907:9721:b0:ad5:6174:f947 with SMTP id
 a640c23a62f3a-ae05affc6d6mr71402166b.22.1750394589742; Thu, 19 Jun 2025
 21:43:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBniNPkLC+7Gd3Ryh=qTqysjKUX2fCfFAo-7NxASq_Z1UFw@mail.gmail.com>
 <CAM6O0Zg1r1dDObuzs+SA2eWrP0h=RRUVZmozXDjtovtSNuogbg@mail.gmail.com>
In-Reply-To: <CAM6O0Zg1r1dDObuzs+SA2eWrP0h=RRUVZmozXDjtovtSNuogbg@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 20 Jun 2025 10:12:58 +0530
X-Gm-Features: AX0GCFvNEZxs5DBPxW4OuZ3hbVN0WpByHcumaV3P2PRPq5-12LFRcIjelLCRU9g
Message-ID: <CAPJWBngF=9FHWdL3AcLdUY4Mbz-kcJzx-VjmhrKKu4dN0ZGEaQ@mail.gmail.com>
Subject: Re: [yocto] Building nodejs with only 16GB RAM
To: Federico Pellegrin <fede@evolware.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bd0e7c0637f97f53"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jun 2025 04:43:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65530

--000000000000bd0e7c0637f97f53
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Federico,
In notice that do_compile is the only task running and then it would fail.
Checking log errors on stack overflow indicate RAM needs to be increased.
Maybe I can build nodejs on my desktop and then move the sstate-cache, will
that work?


On Fri, 20 Jun 2025 at 10:11=E2=80=AFAM, Federico Pellegrin <fede@evolware.=
org>
wrote:

>
> Hi,
> Increasing processor cores will usually make things *worse* as more
> processes may be spawned at the same time and therefore more RAM used.
>
> Instead you could try to reduce numer of parallel processes
> (see BB_NUMBER_THREADS and PARALLEL_MAKE for example) albeit of course th=
is
> will make the compilation (even) slower.
>
> Another possibility: create a swap file/partition on the system. Also thi=
s
> will make things slower, but you will have "more RAM".
>
> Cheers,
> Federico
>
>
>
> Il giorno ven 20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via
> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.or=
g>
> ha scritto:
>
>> Hi all,
>> I have to build nodejs which I noticed takes 32GB RAM. Unfortunately, I
>> only have 16GB and can't upgrade. So I want to know if I can increase th=
e
>> processor cores and hopefully that might help. I am using the Lenovo
>> Thinkpad P15v laptop. Let me know if this can work or any one has tried =
it
>> here.
>>
>> Thanks
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#65528):
>> https://lists.yoctoproject.org/g/yocto/message/65528
>> Mute This Topic: https://lists.yoctoproject.org/mt/113737892/5117409
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> fede@evolware.org]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--000000000000bd0e7c0637f97f53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi=C2=A0Federico,</div><div dir=3D"auto">In notice that d=
o_compile is the only task running and then it would fail. Checking log err=
ors on stack overflow indicate RAM needs to be increased.</div><div dir=3D"=
auto">Maybe I can build nodejs on my desktop and then move the sstate-cache=
, will that=C2=A0work?</div><div dir=3D"auto"><br></div><div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, 20 Jun 2025 at 10:11=E2=80=AFAM, Federico Pellegrin &lt;<a href=
=3D"mailto:fede@evolware.org">fede@evolware.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(=
204,204,204)"><div dir=3D"ltr"><div><br></div><div>Hi,</div><div>Increasing=
 processor cores will usually make things *worse* as more processes may be =
spawned at the same time and therefore more RAM used.</div><div><br></div><=
div>Instead you could try to reduce numer of parallel processes (see=C2=A0B=
B_NUMBER_THREADS and=C2=A0PARALLEL_MAKE for example) albeit of course this =
will make the compilation (even) slower.</div><div><br></div><div>Another p=
ossibility: create a swap file/partition on the system. Also this will make=
 things slower, but you will have &quot;more RAM&quot;.</div><div><br></div=
><div>Cheers,</div><div>Federico</div><div><br></div><div><br></div></div><=
br><div class=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Il giorno ven 20 giu 2025 alle ore 06:34 MOHAMMED=
 HASSAN via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lis=
ts.yoctoproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@l=
ists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</=
a>&gt; ha scritto:<br></div></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204=
)"></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=
=3D"ltr">Hi all,<div>I have to build nodejs which I noticed takes 32GB RAM.=
 Unfortunately, I only have 16GB and can&#39;t upgrade. So I want to know i=
f I can increase=C2=A0the processor cores and hopefully=C2=A0that might hel=
p. I am using the Lenovo Thinkpad P15v laptop. Let me know if this can work=
 or any one has tried it here.</div><div><br></div><div>Thanks</div></div>
<br></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65528): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65528" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65528</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113737892/511=
7409" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113737892/5117409</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolwa=
re.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div></div>

--000000000000bd0e7c0637f97f53--

