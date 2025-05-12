Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44111C3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 09:35:04 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.46292.1747042500037507857
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 02:35:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GtOdZpPS;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7c546334bdeso419011785a.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 02:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747042499; x=1747647299; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kgn4uVpbIYNmAw/L7BqMzYBrTkwexSDcLyfLSQyIJ5k=;
        b=GtOdZpPSRXAowikNbo6RjeK0dmm/XG6hIQOASkeNzxzEfHCmbKQRmtPK4a49cUymhW
         9Ra9HR7s08MEFrDXXPzNm7q+X0Ldbl+YUh/YxGwVoZN1Z1EeKU4A/CIFNDV3685aZ9+j
         CPsADX6qeDWILsbeuO4I99JhjI3SqjptfMys4mJVx2pssFwMuqmIO0Vc0L42SvMd47Rd
         bQrXjfdKbToVs9RsVaC9ouT1ww8BuzEbf3mMuHtI9mIuajeoMFaf6PGWGJsmFM5WC9/H
         4SVUGsz5iMBHs1CYx2gCPuWgLMkzxh490QqCXVi6b/6dRkWmcjI27AvKoBoWViYC+s84
         8P1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747042499; x=1747647299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kgn4uVpbIYNmAw/L7BqMzYBrTkwexSDcLyfLSQyIJ5k=;
        b=WJ8HGKKNSJVq/fxFrkvW3+7nae4/Dms3iq0nWIhJFBAuNWXKRrjrYQpOITGy8nZLvA
         ad76Fv7bl3FBXYKMbq7528mgUclHdjY5fKKR6OH36f7jhU4nDCpbekBLwUexyNZyvTpz
         DAFvCa+q2RvYcN8HNDc0t+BJL4QI4KNVjxt8zv4h/gKlAWWdV2QsKSqRCXyZerUgnx0W
         qyzp1Hj9Hbs8clV2Q0KJLBF1XXMB6oA1q4BJ17lplELbpr+P/0BJ3V+bhPz1Djljt+hH
         iug4KQNElt2GWYfo6eWZM4FhPezFdZyhkrKTtS52wF6CX/vx1nt4wRho1FIOj3ebmklb
         zIpw==
X-Gm-Message-State: AOJu0YxF/deMMSTu5reMqf7yDQUbCHaTkG684lJlcl2YLVB/fA1+6e/c
	pfafn/XqSwxUFU8mJt249ElmfYrLcK8OHIkx8CYQ9GqIXoTVN2E/ezwrd8TR+KSUl4XcnwhFtWS
	YD5f0HeJjbXMsfLZ0p06PJUoS1uw=
X-Gm-Gg: ASbGncvkpeYcL+ONsuQYP4EQ1TAJMheiot6CksVpxPIXln3wCHz1xAjCB1L/ra+2sFI
	dluUCCaInEV8SxWBsXedpEC+sD32tgDt2TgKNClo4nEl4tQCqX8Etx4sRqqqIHHcE5aKamVd2fn
	CLNR2+t2i7qeR9afgkdJD9CtLI3VGSSZodPQ==
X-Google-Smtp-Source: AGHT+IFPTEcYAoGGxFXwwsX/jRtBIu36jRyLGFkmerSw01QOYHUnota9XWj9aUM7zBKnycD2G98ke8Xq0jGN0q+oyVw=
X-Received: by 2002:ad4:5bc9:0:b0:6e4:3ddc:5d33 with SMTP id
 6a1803df08f44-6f6e47a91f2mr190033986d6.13.1747042498918; Mon, 12 May 2025
 02:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
 <CANNYZj_9p6jcHsmcEaVC4fVNxkqzutf6LNVVZ1unCOww9PmXig@mail.gmail.com> <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com>
In-Reply-To: <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 May 2025 11:34:48 +0200
X-Gm-Features: AX0GCFsEFrXQ0QENQbRtbDc9xVwBvDvJn2nGeQSZzEFcRL425Oe2BDnt4KwkmMI
Message-ID: <CANNYZj8i4KVmbngNc8p6_hk8HZ6s=tSSpFc1_73pVME2mLuddA@mail.gmail.com>
Subject: Re: [yocto] Size of production os image
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 09:35:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65310

log.do_rootfs installs a lot of -dbg and -src files, but if I'm
reading it correctly, they all go to a separate 'debug' rootfs.
Nothing in the actual rootfs looks particularly suspect.

You probably need to ssh into the target image, and use opkg to get a
list of installed packages with sizes, then sort them by size, look at
the biggest items and figure out why are they there.

Another approach is to use 'du' command with --max-depth option to
find out what the largest directories are, and then see what is in
them. You can also use 'find' to get the list of largest files on the
target and again use opkg to find which package they belong to and why
are they there.

Alex

On Mon, 12 May 2025 at 11:23, MOHAMMED HASSAN <hassanchattarki@gmail.com> w=
rote:
>
> Hi Alexander,
> I have attached my os image log.do_rootfs. I have also attached a manifes=
t file that looks like there are a lot of packages installed, though I am y=
et to add java to my image that would increase the file size a lot more.
>
>
> Regards,
> Hassan
>
>
> On Mon, 12 May 2025 at 2:28=E2=80=AFPM, Alexander Kanavin <alex.kanavin@g=
mail.com> wrote:
>>
>> You need to show what goes into your image (e.g. attach
>> log.do_rootfs), otherwise the only help we can give is really generic
>> and not likely to be useful.
>>
>> Alex
>>
>> On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via
>> lists.yoctoproject.org
>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi guys,
>> > My os image size is generally around 1 gb. I am working on  IOT gatewa=
y product. The funny thing is my actual bodies application is around 100MB =
including node modules. I know that yocto is mostly used for smaller footpr=
int images but seems like I am doing something wrong. I have tried removing=
 other irrelevant packages related to hdmi, audio, video and so on.
>> > Can you guys attest to this?
>> >
>> > On a side note can you guys let me know the os image size for your dev=
ices.
>> >
>> > I use yocto dunfell and kirkstone.
>> >
>> > Thanks,
>> > Hassan
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#65306): https://lists.yoctoproject.org/g/yocto/mes=
sage/65306
>> > Mute This Topic: https://lists.yoctoproject.org/mt/113066816/1686489
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

