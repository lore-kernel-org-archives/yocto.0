Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50588C41513
	for <webhook@archiver.kernel.org>; Tue, 28 May 2024 15:13:23 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.24670.1716909198758710799
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 May 2024 08:13:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PoiyOlUW;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-529614b8c29so1629716e87.2
        for <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 08:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716909197; x=1717513997; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ctVxBjiPyaTZpkblTsAAuwKyyrEoHOUlCd3z3IVD0x4=;
        b=PoiyOlUW70B6wY7HdG3NspASqZAqPbclhCRCMdjZ9jBIv8XZ0koUoqizzVMa4UKx/H
         wcyqDJImnsPaOyyHv88iG8wY8EYexp6DY5Riv4queap5ANfSFG0cnybfnp9sxRcFcO4F
         JqK+hAbcPH1WrwAA+V6QfVtBrUc6Q8V4ILHDQM7akyr3ISnX9brlcSWy2zaI37bqA4/X
         nxsFnrsvGYaDABuyXiB7nQDhe7v3YpOCMeK00W2F2Q2tdvk+rn/Juvu/AwNX/ESxt8tZ
         8RrZ1m5/KCtXg/4Sv0eiYWJwW9VE3Lr+hhMvoId6HECN87muhkO29tdJD++J/navOw6r
         LJMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716909197; x=1717513997;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ctVxBjiPyaTZpkblTsAAuwKyyrEoHOUlCd3z3IVD0x4=;
        b=lnmEYIP+UEnzz9BFCecu+MKPJCu4nz2zi85MPsw1/kUNGyxH4oJiyYh1ylrXIoiocV
         fXwcuA16g5YnPyWKyMBjM2RnvrDPjlEEOQvsMaQAqkVfuarx6R6OAuaLmtNXIE+1AR5A
         NkoLJOoys35RXTqBLamanwQtudo0ZYHISJKzwJysQhSzhwHOPCsfVKONsgE1Ej85RNVJ
         gCpBpIRmlMKFowM14I3FnQw5q408w4w+kZq5xWT7POZQPossBBZgw/AVPI2Bt0AKV5Eh
         4WaZ99v9h/3CArz0KNKj/WuEQ+FxEJdFYZCB/jrzSx9gw1p2vqSXLmGzp+A25cu/HrM3
         TGZQ==
X-Gm-Message-State: AOJu0YycjddXCC+eDO72/tdLU2siq1ZXAZPp9ie1cl+8Pxah+GdDLLTd
	a6bq1LneZ95OaFWkA6kyFJN3Xr04W25faL5Ha+tSUARAWeKWYGas174OaQ56j0L4kmTacFs3BrZ
	7Vdhgk3rwxs/J+eIlELKVkwmYTuk=
X-Google-Smtp-Source: AGHT+IG7wmszjeSVyd41La4wWmDs1Wk3DLPpzRvHL6o8oyn0r+9Y3ve9l7EhJRtBnqbZQKnt4Xr2Lx7HLhu9g4Pv1Hw=
X-Received: by 2002:ac2:4c2d:0:b0:51e:f79e:15d9 with SMTP id
 2adb3069b0e04-5296594d06amr9657125e87.21.1716909196510; Tue, 28 May 2024
 08:13:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
 <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
 <CAApg2=Q+K-twqpgTGpddzRJjUB21a7xOjgOg=FxcDzq3pLdgqQ@mail.gmail.com>
 <CAJdd5GZB-qaJxTai1_zorqowU4Sw0oZeRNLsUG2y7LsVF_E5iQ@mail.gmail.com> <CAApg2=RrUQ_YKj_cBMnPPm0d9EGbiGNzYUH7FHDhEppgJu7Ghg@mail.gmail.com>
In-Reply-To: <CAApg2=RrUQ_YKj_cBMnPPm0d9EGbiGNzYUH7FHDhEppgJu7Ghg@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Tue, 28 May 2024 09:13:04 -0600
Message-ID: <CAJdd5GYtuhXQnJo=iK3u28mk68uV=jatd44nc_gBCheubbjM3g@mail.gmail.com>
Subject: Re: SPDX delivery
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 May 2024 15:13:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63217

On Tue, May 28, 2024 at 8:59=E2=80=AFAM Marta Rybczynska <rybczynska@gmail.=
com> wrote:
>
>
>
> On Tue, May 28, 2024 at 1:01=E2=80=AFAM Joshua Watt <jpewhacker@gmail.com=
> wrote:
>>
>>
>>
>> On Mon, May 27, 2024, 11:47=E2=80=AFAM Marta Rybczynska <rybczynska@gmai=
l.com> wrote:
>>>
>>>
>>>
>>> On Wed, May 15, 2024 at 8:09=E2=80=AFPM Joshua Watt <jpewhacker@gmail.c=
om> wrote:
>>>>
>>>> On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@=
gmail.com> wrote:
>>>> >
>>>> > Hello all,
>>>> > As this discussion might be interesting to multiple people, I post i=
t to YP list and the OE architecture list.
>>>> >
>>>> > In the VEX work (the status will go out in a moment in a separate me=
ssage), we're collecting SPDX and CVE files for builds to re-run the CVE ch=
ecks later (potentially months later). The CVE check file is generated for =
both the image and the build as it is (including the SDK).
>>>> >
>>>> > On the other hand, the SPDX archive is generated for the image only,=
 and contains only packages from the system image itself, omitting the buil=
d system. This is possible for us to get all the partial SPDX files from th=
e build dir, but we do not expect the complete build dir to be kept for mon=
ths.
>>>>
>>>> Can you clarify what you mean by "build" here? We do generate SPDX for
>>>> the "native" recipes used during the build, and they are in the final
>>>> SPDX generated for an image, so we do have some idea of the "build"
>>>> tools used to generate an image.
>>>
>>>
>>>
>>> Hello Joshua,
>>> This is still unclear to me. When I build an image eg bitbake core-imag=
e-minimal I get the spdx archive as expected:
>>>
>>> ./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.root=
fs.spdx.tar.zst
>>> ./tmp-glibc/deploy/images/qemux86-64/core-image-minimal-qemux86-64.root=
fs-20240522164207.spdx.tar.zst
>>> ./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs.spdx.tar=
.zst
>>> ./tmp-glibc/work/qemux86_64-oe-linux/core-image-minimal/1.0/deploy-core=
-image-minimal-image-complete/core-image-minimal-qemux86-64.rootfs-20240522=
164207.spdx.tar.zst
>>>
>>> However, there's no archive for the world build (not going to mention h=
ow long it lasted). Is it on purpose?
>>
>>
>>
>> Ya sorry. I wasn't trying to imply that we currently generate a  SPDX ar=
chive for world builds, just that we should be able to do so without to muc=
h trouble
>
>
> Thanks for clarification. I was confused and couldn't find the code... To=
 clarify, what we have today is generation of the archive for rootfs images=
 and in case of sdk build with populate_sdk. Is it correct?

Correct; those are the two things we can generate a final archive for.

The final archive is a collection of intermediate files, and we always
generate the intermediate files anytime we build a recipe, so making
archives for other targets is mostly a matter of determining which
intermediate files need to be included in the (new) final archive, and
passing them to the code that creates the archive.

>
> Kind regards,
> Marta

