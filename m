Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C0ECC28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 05:30:27 +0000 (UTC)
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
 by mx.groups.io with SMTP id smtpd.web11.1118.1743571826871087126
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 22:30:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XxRe7JNV;
 spf=pass (domain: gmail.com, ip: 209.85.161.42, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-601e3f2cee1so3088566eaf.2
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 22:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743571826; x=1744176626; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+HzOPS7wtMmftPAUAzaJ5HtYWR+teC1/OWzaZr+MJZ0=;
        b=XxRe7JNV8CsE+THZlzGpKqxGc/LRkKFhVTxtVkp0/j3wTkBO20BMky3AUyA8PqXyLG
         iwTw3VkLUNRwa8+HThoCTR+Q5chznbwpF17W9B/QSblCOowhNgHtWDZfBFeErqleMVlO
         j6Vvxq++a14ql4nUFUauXwlZNIQPtoQHMI+ib4rY3e7Q6CNs4g5ef03QtqNQKvsoUKCr
         XzshxXdo7JDg++W2kgCWWyVfKH6L/SVixJhRqrAneImDZqAMsd+nxxduZzbTcK88aQvQ
         Cbxyr/O+uMPSeS9+B2zDWPubh8bgMzeUjPFkjcoBNJpVK8JJeyaRGYboiUcPnDWW8uqw
         x4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743571826; x=1744176626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+HzOPS7wtMmftPAUAzaJ5HtYWR+teC1/OWzaZr+MJZ0=;
        b=bHwdjKMJTuHhUAXz/vxB8ztBKlNV55YAvFI7O31sQWezFi7tQUedWRac3q90mHOkND
         dhMCqfY8O/a9W9cQqXpzHdVBdBAJRwDQC0h3tED3dw5S0VMZU0MFoeeV8S+/KACuQpKy
         uLkVN+b83CoqQoKcs0eJFTGVkHdit4mqsSeRWMycbyxj9856BhSgnvtg6He5TTAI2kqB
         pxGmBXjwJntCXL++UxRe0CT8JrvM8de4abw4ugMMmcdbnAZABROIxtQp/shqwbpF5eyO
         yCsjMw6JTVVv8E0bMliA9sD0ta3xu5VCs9OcRDbhXI/FED5R8H0l2NwrFhcumHRfLyRM
         UoDg==
X-Gm-Message-State: AOJu0YzrjsD7QdB48k9M/EGz1AB+PP70uVReBVPwExNMRhePQpY83tEg
	/mqS9veJZ3Abi42pw8HwQ3Ai84yZU/iLXjHDKsh60YWZh5vyGXYxp+Dp//UxslkaxPrJ0eDjx+a
	qGS9yPMO9mgPpVGxGdyPCgkUsq2o=
X-Gm-Gg: ASbGnctd+oVT3zRjqkewSJEL1c+c5Esu3nQvSAEQMAysyDEybbQbldjgznlZpCXxjwe
	ikuaysHADurnpBhGgVPzSXG9TAdi2lQ9YQLuD6RoBs8x5mh8G3vSwTuv2R2ec1aJWct+tAm004V
	D23vgFeLZ2VFroPz+IWv7ZEjSqsAB/0PIfrWB1zXRF
X-Google-Smtp-Source: AGHT+IH52aqD0IbQrPHbSJVQ1vBXmveY9gefvMpdlLF7pk7Zwc3ksmUKnVTQy2/p2CK8rLuOb0IOsYFYoE6rEeRkFBU=
X-Received: by 2002:a05:6808:3506:b0:3fa:7328:b9a8 with SMTP id
 5614622812f47-4003620f3a3mr674357b6e.18.1743571825808; Tue, 01 Apr 2025
 22:30:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1srtvEKECf=AFum2KBtvhOn3aYijMPEoM8ZPQ6gkTVETHQ@mail.gmail.com>
 <5436.1743567026086698373@lists.yoctoproject.org>
In-Reply-To: <5436.1743567026086698373@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 1 Apr 2025 22:29:59 -0700
X-Gm-Features: AQ5f1JqEaf3GjZtXkCO3ILRImzq_FP3jWURHa24zkWXZgBQAmBuenBWNM9zqyAU
Message-ID: <CAMKF1spoxyeqY3cg=auNcMbr2FV=Fpgg-piHksC5uFQugVFnow@mail.gmail.com>
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: sateesh0457@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 05:30:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65060

On Tue, Apr 1, 2025 at 9:10=E2=80=AFPM sateesh m via Lists.Yoctoproject.Org
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Khem Raj,
>
> I am using dunfell version.
>
> I deleted the tmp directory and rebuilt the project, but I still see the =
same problem.
>
> Could you please suggest any other method.

try adding

UNINATIVE_MAXGLIBCVERSION =3D "2.34"

to local.conf

>
> Regards,
> Sateesh

