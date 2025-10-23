Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA0F7CCD1BC
	for <webhook@archiver.kernel.org>; Thu, 23 Oct 2025 10:39:51 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web11.17215.1761215988470011802
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Oct 2025 03:39:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IVai8xt4;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-78f30dac856so7724716d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 03:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761215987; x=1761820787; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5CbioMLwg4HdXygIrLCSq28rLovkzvIcak9VdiliHbc=;
        b=IVai8xt4lBj6KL18KrJmHkrRZ9HMhKRfCE4EcRzH2h9u6bmSUZiVfsAaOF3+E0W87J
         9K8sevAFu+pmaJ/mVqOtzJrVxcV/Kn8pPoRknbo+phpmfHDt6ScJUWSH2hAOzqaIwvE3
         ixCaDqFuC2hbjMv5TjO6qG5WEbNo7HKeYCxr3I2EG8QhcWk91AWosovkbpyqvjDfnZMQ
         OHOv53tXdHgSeixrFQGpfhGtC+Ts23rrg7ByqoUkd1ylqdWdaetLFU9aUBqWjwEjS4Kp
         Vsg6+n3cbAm+RMR8/YuxIu2SYef6UeZSkNb8G6002tKMBkZ0x4Xjv36994D8Am6bvrzm
         kGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761215987; x=1761820787;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5CbioMLwg4HdXygIrLCSq28rLovkzvIcak9VdiliHbc=;
        b=ijm8qkikh/20BsmMVzRcI77Xxq3r/9FLBcjJprXmd8bwJZX17GxR4VEoCbGf6EMPNS
         wbA20OJI1kHSqSlW4rm8Nev/SMVMYlnReGOsqm9p2bE4HKSZsSNBszWMq3hbeFYnAaFM
         PxS5uMqS8bMRIJmbTzGETx+zx/VWJnbeSKg8LAhpFrQJp7Jj61ojyH2wHTopdwJxq8X6
         C54aDPGjy75slM7x676SMZ2Bv13Kb54NZIWQTRvxROjfORbaX83UFcz0n4ZlR2YZgVcl
         cmJ9b81BL0axgW5OckpLNYqf/z78hQ4sPMiC0H9V/ZLtDZZjbaXFLPhCA/v1l8VdRlZb
         7TzA==
X-Gm-Message-State: AOJu0YxbuaSjdApNjtJs48sT6vaHgG3BIRMNMdscNnIlQBDC3wv3prBP
	OwuH5kU0Lrn0wmXsuHPJAs+Z8b6gqZ7WQ3jJdKfOsuKrM2A0UY++XMVCkXgyNfVnpwDV2TfzUcH
	bxivgUdLfG6mqXJyG/iFGvOBazJcaJwTGmQ==
X-Gm-Gg: ASbGnctpQR7lySCbLLF/8ThiyOlpfW9iztgbTKSRCy/BzCAz+muKmNieNQC5aLoK0nn
	WWATeKK0lGxm1Bw7hmc0khWeXOTJvY9jUZFt50Lmfw+BxspCxshAvr8KKsI+76mVnvjAMqRnpdt
	xPGBv0hTinrEdu8aJl7A6P5iMCVlau7G8BZFd3jcgQt+ba4+wEBY3dmYG5FRa85+krLjUvrlaNe
	sevIXJuQynn9PFEkzPa/PjFamcOhCEI+/eHcfOQkklwXdQWA68Q5ZaNgAOUgXN5fwmTT+3v8mut
	CpQQB67/nRn83ZIptjNTbU/IkfZ0H8I+Q4lwcE+rN3MOWIuBomXAdT5b/YlPSmEvb4g4hkxmy7E
	KSrnolK02uvuLboQp6MG3V6+O1lvi
X-Google-Smtp-Source: AGHT+IHNH5pgLy1L5JlVQn8gRNtOpbWnkQO+Mog0JFNCH4PHzKrLb5TR8K/upnP7Z3WnvAewZvdndLhXLnIshflNWU0=
X-Received: by 2002:a05:6214:20ca:b0:87f:9e96:a0ed with SMTP id
 6a1803df08f44-87f9eeaf384mr21286056d6.55.1761215986983; Thu, 23 Oct 2025
 03:39:46 -0700 (PDT)
MIME-Version: 1.0
References: <1761008477730.70625@aecontrols.com>
In-Reply-To: <1761008477730.70625@aecontrols.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 Oct 2025 12:39:35 +0200
X-Gm-Features: AWmQ_bmxA1G7Gn3QcH7xy6wZkdYrPKjP_HFlsKHzpv-EB-DZdWCT0NmHAjlx9rw
Message-ID: <CANNYZj8Z-jTpat9=xcaGkU=KXfsZqHP5cfQoi3Mr+LLhDYyiXw@mail.gmail.com>
Subject: Re: [yocto] Issues with DEPENDS
To: yocto@lists.yoctoproject.org, jweyer@aecontrols.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Oct 2025 10:39:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65964

All of this should work, but it's possible there's a simple mistake
somewhere. You need to verify every step from installation to
population of the sysroot:

1. For recipe B, are the needed files present in ${WORKDIR}/image?
2. For recipe B, are the needed files present in ${WORKDIR}/sysroot-destdir=
 ?

(you might have to go several levels below these for reasons too
arcane to explain)

Alex

On Thu, 23 Oct 2025 at 12:29, Jared Weyer via lists.yoctoproject.org
<jweyer=3Daecontrols.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
>
> Hoping to get some help with an issue I have been having with DEPENDS. I'=
m sure I am missing something obvious, but I can't seem to figure out what =
is going on. Essentially, I have two recipes, I will call them recipe A and=
 recipe B; recipe A has a build time dependency on recipe B. To troubleshoo=
t the issue, I've reduced recipe A and B to very contrived examples, but th=
e issue still persists.
>
>
> Below is recipe B:
>
>
> SUMMARY =3D "TI ARM-CGT-CLANG compiler tools"
> HOMEPAGE =3D "https://www-a.ti.com/downloads/sds_support/TICodegeneration=
Tools/download.htm"
> LICENSE =3D "CLOSED"
>
> BBCLASSEXTEND =3D "native nativesdk"
>
> # I don't believe I need this... but just in case
> SYSROOT_DIRS_NATIVE +=3D " \
>     /usr/share/ti \
>     /usr
> "
>
> FILES:${PN} +=3D " \
>    /usr \
> "
>
> do_install() {
>
>     install -d ${D}/usr/share/ti
>
>     install -d ${D}/usr/
>
>     echo test > ${S}/test.txt
>     echo test2 > ${S}/test2.txt
>
>     install -m 0755 ${S}/test.txt ${D}/usr/share/ti
>     install -m 0755 ${S}/test2.txt ${D}/usr
>
> }
>
> INHIBIT_PACKAGE_STRIP =3D "1"
> INHIBIT_SYSROOT_STRIP =3D "1"
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
> Below is recipe A:
>
> SUMMARY =3D "TI MCU+ SDK for AM263Px"
> HOMEPAGE =3D "https://www.ti.com/tool/MCU-PLUS-SDK-AM263PX"
> LICENSE =3D "CLOSED"
>
> BBCLASSEXTEND =3D "nativesdk native"
>
> DEPENDS =3D " \
>     ti-cgt-armllvm-native \ ### RECIPE B ###
>     sysconfig-native \
> "
>
> FILES:${PN} +=3D " \
>     /usr/share \
> "
>
> do_install() {
>     install -d ${D}/usr/share
>     cp -r ${STAGING_DIR_NATIVE}/. ${D}/usr/share
> }
>
> My understanding is that adding the DEPENDS =3D "ti-cgt-armllvm-native" s=
hould install all files installed by ti-cgt-armllvm (recipe B) into the STA=
GING_DIR_NATIVE directory of recipe A; however, this is not occurring as th=
ere is no 'recipe-sysroot-native/usr/test2.txt' or 'recipe-sysroot-native/u=
sr/share/ti/test.txt' file in recipe A staging directory.
>
> The issue does seem to be with DEPENDS because recipe B does install the =
test files correctly when run independently. When looking into this further=
, I found that 'sysroot-components/x86_64/ti-cgt-armllvm-native' (recipe B =
sysroot components is empty):
>
> tmp-aec/sysroots-components/x86_64/ti-cgt-armllvm-native/
> =E2=94=94=E2=94=80=E2=94=80 sysroot-providers
>     =E2=94=94=E2=94=80=E2=94=80 ti-cgt-armllvm-native
>
>
> My understanding is that this directory should contain the test files; ho=
wever, I cannot figure out why it does not.
>
> Does anyone see any obvious mistakes that I am making?
>
> Apologies for the extensive email and thank you to anyone willing to help=
 with this!!!
>
> - Jared Weyer
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65963): https://lists.yoctoproject.org/g/yocto/messag=
e/65963
> Mute This Topic: https://lists.yoctoproject.org/mt/115908178/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

