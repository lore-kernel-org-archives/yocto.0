Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AB7FC25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 18:09:14 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.963.1715796551249867716
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 May 2024 11:09:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TS7i6eLY;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-523b20e2615so211272e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 11:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715796549; x=1716401349; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PbclKrRydSrYc105O7YulnqubioZAA+kSZdssAnwSzU=;
        b=TS7i6eLYJ0QqNvjIoNviPcIh/0fuFfc86XwB4ygI3qGrZlspOdelyR44Cy9vaeempF
         aU6lQSHLf7YeNm4jd4RCZFMby45tqtVaR0X0Lg3PYpl6t8EISydDs1Y5+mhXJNnufM7O
         Ue37rsiDUyFlcegWNJ2otmbdfGWY5pIrR3Vv7aoKItsCljQLangTQV7uRh7GtdlnS6Ej
         Lf0fwnVm/57i4gw7Mdy06ksKX0zWYEHK49GKjZGh7KFdaAAxyCRw7YXBxQaJPigUAOw0
         /KgekdQFPladbCn6zmVUBhNkH2haLqX5mPF0Z4BZarnb3P8+rxIFqp8NIrHQNIIF34i9
         5qmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715796549; x=1716401349;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PbclKrRydSrYc105O7YulnqubioZAA+kSZdssAnwSzU=;
        b=KeJuvoyrKLUFgVISpJhOFrLC0PimFu4mSQntClItQWnGk7jUb4NwDIKIQhcljN1CzX
         Zc0MMz8jtoqUOS0gbv7/r+nuXGARqLv2bek4Q40HG4g7JBMI3FJcfTU57Dx+yfUo9VOM
         AuNhoKjqZcaQVVTR20B0wxeNk6mOMdIwnelJcI7e5KEKVnDZXdrmIszr3aCGARh3uUFY
         ess+6lRTNwlgAw3043sM2BQ2sMoKVnhzn9ZGdkmhbX4+LGwaWn71Hm4HP3ITj69utqy0
         o8slgFbAyvcEQ+SOq4Pc0rk2R8iQnuRYtlgUd18rleCAo+CSBrVxxOow4hGY3zkae5EV
         L+rw==
X-Gm-Message-State: AOJu0YxZa34SZzPHrDRCTMkiGfGTwCN4tkl+urKKfVyKu67VYQi3E6wy
	Yj91ubWqlZmJenDf0xgTdPKEjiSST/U+ETapysHJlJPzN/0mXB25OwBXFoqbM8BWmE4275qKZ/q
	eoyf2MXH4qo3fC+6EEyGs/3clu0E=
X-Google-Smtp-Source: AGHT+IHb/TrkxZWMKi6nwza0/CZ66L1qQfievbUgd30Ts3E1Mms/KST4+sb3UN/RtU0BN0XDnzzRomysdH2gh+oMt/M=
X-Received: by 2002:a05:6512:6ca:b0:523:8f5e:4aa0 with SMTP id
 2adb3069b0e04-5238f5e4b78mr2216123e87.63.1715796549016; Wed, 15 May 2024
 11:09:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
In-Reply-To: <CAApg2=T_sdGmAYKEzTCKS77YoEew2HM-PaoDWczoH8a=A6=nwg@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 15 May 2024 12:08:56 -0600
Message-ID: <CAJdd5Gax3CXHckaQuAQRwnx8V=u8X69CeJFqwb5v96B0fOpQjQ@mail.gmail.com>
Subject: Re: SPDX delivery
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 18:09:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63099

On Wed, May 15, 2024 at 11:11=E2=80=AFAM Marta Rybczynska <rybczynska@gmail=
.com> wrote:
>
> Hello all,
> As this discussion might be interesting to multiple people, I post it to =
YP list and the OE architecture list.
>
> In the VEX work (the status will go out in a moment in a separate message=
), we're collecting SPDX and CVE files for builds to re-run the CVE checks =
later (potentially months later). The CVE check file is generated for both =
the image and the build as it is (including the SDK).
>
> On the other hand, the SPDX archive is generated for the image only, and =
contains only packages from the system image itself, omitting the build sys=
tem. This is possible for us to get all the partial SPDX files from the bui=
ld dir, but we do not expect the complete build dir to be kept for months.

Can you clarify what you mean by "build" here? We do generate SPDX for
the "native" recipes used during the build, and they are in the final
SPDX generated for an image, so we do have some idea of the "build"
tools used to generate an image.

>
> So, the question is, what people plan to archive from the build? Do we ne=
ed to archive the whole SPDX output too? This is an interesting question fo=
r example in case of "world" builds..

The algorithm for creating the final SBoM for SPDX is actually pretty
generic: Given a single starting document that has some references to
external SPDX objects, it finds the documents that provide those
objects and adds those documents to the final SBoM. It then
re-calculates all of the (missing) external SPDX objects from the new
SBoM and repeats the process of adding documents to the SBoM until
either all references are satisfied, or the references are known to
not exist in the current build (which generates a warning, since it's
not really expected).

The nice thing about this algorithm is that we can really generate a
SBoM for anything as long as you have the document (e.g. initial
objects) you want to start from. As such, we should be able to
generate SBoMs for world builds, individual packages, or just about
whatever we want.

>
> Kind regards,
> Marta
>

