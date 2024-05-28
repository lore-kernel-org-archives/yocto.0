Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C4DBC25B78
	for <webhook@archiver.kernel.org>; Tue, 28 May 2024 14:59:33 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.24589.1716908364188371755
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 May 2024 07:59:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z6wYWxwh;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: rybczynska@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6f8ecafd28cso698669b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 07:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716908363; x=1717513163; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=179mGgFRCc6DfgyindXGtFFKpsVHOhMEJiJVh7CQTDw=;
        b=Z6wYWxwhTXt1AELzl50YTF4/o+kaq72uT4uoLNplrtmLyiunYD+fHW2ZkJllcpkpbb
         ZoEIhZ7KVUSZTOEv/UKwGcG26kgmu3BEH0pK+ThPfZpWMJlP0J/d93xzLLSsHuGx5eBW
         aVhcfvWKNtvf7/D8wGo/oGVhB29RFeMEq20UxVH2iioObjk+jRlb0FlJZtuk5tGm4lyX
         ZsP06HpgvlgKsOv/2HqpTcPG3pRTIqevRAbHZEnwC9o4lz5bMoqAAWpzmxA2dvbIf9DQ
         xa0VRN1vakI2pyOjgLZCfoawu8YTnEH+enIliz/nAZZLYEsEjPSGGpUBvLelFhMy57g2
         3oCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716908363; x=1717513163;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=179mGgFRCc6DfgyindXGtFFKpsVHOhMEJiJVh7CQTDw=;
        b=LzdgVa9B5af9QvkHOjH1mGbvN5VxV6FblZYHjaYoC56NTFnysTA9jXAuI73xqsTXx6
         GOYptpeNCFypnAxlHcXDjw5Qhcx21GfwmllC9S6iJo/vslRcN12uBiFLJhVnM35TOFfC
         tFmQ9XKUTLsPQEiNfGEZFAl7IupALAodimwdySR2zb6eScgu5p1ZndRgr1DG8DQofFyr
         Gzgpor3Wd14GMpBnvf5FzxOGpXyr6IFh66sX1Uib3TQSOD+XUNoAmciIW5uihtAtmPPr
         6fNd5YVVah89hD0tqXCU1Xh4lRRoyPQXQmKUYQxL8F/JcIVbYWqjMYEqKBFg3+rosEGl
         RBVA==
X-Gm-Message-State: AOJu0YwiO9k5+QGmANHjS8cN5y5DNn1rxPiS8yd9U9BDn090GYJnBID2
	52GppqB+nnqEAglqIo9li+Ecp8r2h/HIE49DF3+WsI8NJ8YFMjFVgWrfhL2KzMLTwWg6dS5mdar
	BPgiq/xYVxd4bxNw3V65SKtSL/NM=
X-Google-Smtp-Source: AGHT+IEDUHVGTsxM96fGmYOEmXnIApR/wsIoLrgg/f47cMeBaYv/pVS/n37WYJxPnaGSiEcgmTCJp07aUeO//XnxmhE=
X-Received: by 2002:a05:6a20:d48c:b0:1af:f92c:de8e with SMTP id
 adf61e73a8af0-1b212f724e1mr13538877637.52.1716908363362; Tue, 28 May 2024
 07:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
 <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
 <CAApg2=Q+K-twqpgTGpddzRJjUB21a7xOjgOg=FxcDzq3pLdgqQ@mail.gmail.com> <CAJdd5GZB-qaJxTai1_zorqowU4Sw0oZeRNLsUG2y7LsVF_E5iQ@mail.gmail.com>
In-Reply-To: <CAJdd5GZB-qaJxTai1_zorqowU4Sw0oZeRNLsUG2y7LsVF_E5iQ@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 28 May 2024 16:59:11 +0200
Message-ID: <CAApg2=RrUQ_YKj_cBMnPPm0d9EGbiGNzYUH7FHDhEppgJu7Ghg@mail.gmail.com>
Subject: Re: SPDX delivery
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="0000000000001c48d9061984e185"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 14:59:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63216

--0000000000001c48d9061984e185
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 28, 2024 at 1:01=E2=80=AFAM Joshua Watt <jpewhacker@gmail.com> =
wrote:

>
>
> On Mon, May 27, 2024, 11:47=E2=80=AFAM Marta Rybczynska <rybczynska@gmail=
.com>
> wrote:
>
>>
>>
>> On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt <jpewhacker@gmail.co=
m> wrote:
>>
>>> On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@g=
mail.com>
>>> wrote:
>>> >
>>> > Hello all,
>>> > As this discussion might be interesting to multiple people, I post it
>>> to YP list and the OE architecture list.
>>> >
>>> > In the VEX work (the status will go out in a moment in a separate
>>> message), we're collecting SPDX and CVE files for builds to re-run the =
CVE
>>> checks later (potentially months later). The CVE check file is generate=
d
>>> for both the image and the build as it is (including the SDK).
>>> >
>>> > On the other hand, the SPDX archive is generated for the image only,
>>> and contains only packages from the system image itself, omitting the b=
uild
>>> system. This is possible for us to get all the partial SPDX files from =
the
>>> build dir, but we do not expect the complete build dir to be kept for
>>> months.
>>>
>>> Can you clarify what you mean by "build" here? We do generate SPDX for
>>> the "native" recipes used during the build, and they are in the final
>>> SPDX generated for an image, so we do have some idea of the "build"
>>> tools used to generate an image.
>>>
>>
>>
>> Hello Joshua,
>> This is still unclear to me. When I build an image eg bitbake
>> core-image-minimal I get the spdx archive as expected:
>>
>> ./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootf=
s.spdx.tar.zst
>>
>> ./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootf=
s-20240522164207.spdx.tar.zst
>>
>> ./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core-=
image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs.spdx.tar.=
zst
>>
>>
>> ./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core-=
image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs-202405221=
64207.spdx.tar.zst
>>
>> However, there's no archive for the world build (not going to mention ho=
w
>> long it lasted). Is it on purpose?
>>
>
>
> Ya sorry. I wasn't trying to imply that we currently generate a  SPDX
> archive for world builds, just that we should be able to do so without to
> much trouble
>

Thanks for clarification. I was confused and couldn't find the code... To
clarify, what we have today is generation of the archive for rootfs images
and in case of sdk build with populate_sdk. Is it correct?

Kind regards,
Marta

--0000000000001c48d9061984e185
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 28, 2024 at 1:01=E2=80=AF=
AM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, May 27, 2024, 11:47=E2=80=AFAM Marta Rybcz=
ynska &lt;<a href=3D"mailto:rybczynska@gmail.com" target=3D"_blank">rybczyn=
ska@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"auto"><div dir=3D"ltr"><div dir=3D"ltr"><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt &lt;<a href=3D"mailto:jpewhac=
ker@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">jpewhacker@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska &lt;<a hr=
ef=3D"mailto:rybczynska@gmail.com" rel=3D"noreferrer noreferrer" target=3D"=
_blank">rybczynska@gmail.com</a>&gt; wrote:<br>
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
ble to do so without to much trouble <br></div></div></blockquote><div><br>=
</div><div>Thanks for clarification. I was confused and couldn&#39;t find t=
he code... To clarify, what we have today is generation of the archive for =
rootfs images and in case of sdk build with populate_sdk. Is <span class=3D=
"ng" style=3D"background:none!important">it correct</span>?</div><div><br><=
/div><div>Kind regards,</div><div>Marta <br></div></div></div>

--0000000000001c48d9061984e185--

