Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46BA6C44506
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 20:29:44 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.21460.1769027380520757779
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 12:29:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IcsGnGF5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.50, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-59b679cff1fso191509e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 12:29:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769027377; cv=none;
        d=google.com; s=arc-20240605;
        b=EmJx7Cc35lmu1koWMU8AZ3neTBwSKjlrnDWxu9cXOPxHyXzg0f/CNp3JgzQZT+W9pF
         ZQypOorow3CQBBVBRoIYfX+oQ6YyOakeJlNtdxj3jOWOAgKqbCIyFAuH9vxxM6OvjAQm
         KuYJUu+zOZEhlFJm3xtvG4tun+pyoZsbBQV/Gs6KtyEQdL+vo312+gBGwGG//lqUyoS1
         6Ey20KTClaN0I+wFp0Uz9KP+RR4A311TU2ezFgdHLbBJQoAKAppwwZHb0HL/gJlQ35sK
         o2GmirOY52jM/tSaCN/rZ6cBYloU3f2zZVgEGS93Gza9MZ1dcb8U3AtE72B3bGVHldiI
         lhKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=p/YcQ70hvGO2AepoEk8smY8x2D4uD5r/IUjfPBsxjBM=;
        fh=lt7YRkz41oTjqi8EyNDQ9NhNMwOZsP75mEpj+jwmyac=;
        b=CdItZ1pntZa9iuEpfZzOhk5H5Q6YQf9fnX1Mh/+7At82ts1Xk4zckB/g1RZFr/twpA
         WUtcty5mhSQq3708+/olX5n8aSmulXNU71G+2rw9okJwQsYCBzPMzsw+r4UByaxptrKI
         oABHHJpoCWnFlq6303yzNqMHivvZNL7kHC0qiHNbtM9ynnmzOrXmVzp/mqZ7vgODpVHN
         cVhGb8Eqr0sJt0ETt+mCLolm7o5qR99E++vPpE4a4iLEPwpwgbbq3Nu3vAS19C4qfAPD
         oojdD6boaPf/hsq6EpWqPskUBREpJnGEl7bLW0wsrr3kzTpnn4LY7e09UFtAUalTpuxF
         Zldg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1769027377; x=1769632177; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/YcQ70hvGO2AepoEk8smY8x2D4uD5r/IUjfPBsxjBM=;
        b=IcsGnGF5952eP2pWJ/U5m5qazzWfkOZ5QsBPlCbCpY9FdhKOLQ57l8oFIkT5/FkoY5
         jAFN8dTR/LCynw/qnxi2235RyFCaNWaijNUxvNMmRNPVxHzMgoHYL/sNHEpRx0ibn6y6
         ETad17j/PNkRR3iaOgCqVjHxG3rmUBxti/6Wo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769027377; x=1769632177;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p/YcQ70hvGO2AepoEk8smY8x2D4uD5r/IUjfPBsxjBM=;
        b=o/aIFV2nPqN4yGesOrzVpWmhPog6kW9gauueojD34yy9dmwBPtr7q9Yi/+XsvIhvDM
         WfnpsYvnJ15l8TrXmf6q/9zjEVE06H1C/251zdLyBQj0ZsRFbr3jppyhxzgsi977Fhnt
         tTBXPr9cRs8bOPmCo42IATEjSb7iPD/OPvhF02idqaKC/LjD9VoxTfJHAuImvD0yfS1f
         gRUKnSn8l/JWCI14CyOpFLuRo8IbnkMO/f6cnoxomufX7uy5E/pxgPPoV2Tzi6eoGr9n
         Cv2e8y4N6/DcT7uG6wT57vD+gHC0nn1b8MqfueS8zZZEz4d3CNETLAnkeMzjigd2fPqk
         84zw==
X-Gm-Message-State: AOJu0YwtoTm3iydokpz93fOeZ7Ny0q0F4w33RQlyrUarApmCjsOTtmrq
	I9EDdJAMuUL9fHarv7thPrFXWRgtkI/hJq1B1HPZaVR8EPX/s5Y1PaFn0u3Xe/OjmogjFQRb5Ey
	XDuTLIiGZQm6QZkNKOIh0iqlnxXJa1UG1q3Csjp0o/HckMoIwk/RNN0qc1Q==
X-Gm-Gg: AZuq6aIrQjnhaO5mHyq9fWG0lF+x5sqXcLykpnHR/ZgA5031nb4JzfNS+iiSJJ+cp+9
	iIon0VnXYhmo8BpPffdXdXcJKL4LlA5lpZrfGkvBHRT+N1X9T0O1gul5yipQVRNeFplUQEgm1TU
	/7qJFNO/lS/VIKSBOKGJD2OF7iFE8GvDlH5LcKD1REXTUlyqRUba4uAlpZCIcrcVCHgODtUmM/m
	/EOegDCDXEqy1DawugZhro2kPTxqrx/yqF6coheZ8R0eZ4P8onLjzwnk3z+2d0vJsjmaf19wA6n
	DcCum2OJVm4a69amEVE=
X-Received: by 2002:a05:6512:12cc:b0:598:f1a1:9611 with SMTP id
 2adb3069b0e04-59dc9347df4mr2294568e87.32.1769027377426; Wed, 21 Jan 2026
 12:29:37 -0800 (PST)
MIME-Version: 1.0
References: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
 <39e25689-f4d2-40d3-8495-00aadb0c331e@vaisala.com> <290988d9663a7b5f9ee57e1fe0c393ebba9d5696.camel@pbarker.dev>
In-Reply-To: <290988d9663a7b5f9ee57e1fe0c393ebba9d5696.camel@pbarker.dev>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 21 Jan 2026 12:29:25 -0800
X-Gm-Features: AZwV_Qg4U3GLRPEdD9_VWcKp6ddTqwOywzpsmLp_JhiaqjJ3zpgfhy2Z2s0_gd0
Message-ID: <CADfgfob1o1U4Awqi8RbYgrNu1oKRETnzm__QxhxxPEmjYvVN5w@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is Released
To: yocto@lists.yoctoproject.org, chee.yang.lee@intel.com
Cc: niko.mauno@vaisala.com, paul@pbarker.dev, 
	Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 20:29:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66176

I've removed the bad meta-yocto tag and added new ones for
9bb6e6e8b016a0c9dfe290369a6ed91ef4020535.

https://git.yoctoproject.org/meta-yocto/tag/?h=3Dyocto-5.0.15
https://git.yoctoproject.org/meta-yocto/tag/?h=3Dscarthgap-5.0.15

I have removed https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.=
15/meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2*
which contained

DISTRO_VERSION =3D "5.2.99+snapshot-${METADATA_REVISION}"
DISTRO_CODENAME =3D "whinlatter"

and created a new tarball with the correct data and updated the
RELEASENOTES, checksums, and signatures.

https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto-9=
bb6e6e8b016a0c9dfe290369a6ed91ef4020535.tar.bz2

What else, if anything, needs to be changed?

On Wed, Jan 21, 2026 at 5:39=E2=80=AFAM Paul Barker via lists.yoctoproject.=
org
<paul=3Dpbarker.dev@lists.yoctoproject.org> wrote:
>
> On Wed, 2026-01-21 at 04:40 -0800, Niko Mauno via lists.yoctoproject.org
> wrote:
> > On 1/21/26 12:02 PM, Lee Chee Yang via lists.yoctoproject.org wrote:
> > > Hi
> > >
> > > We are pleased to announce the Yocto Project 5.0.15 Release is now av=
ailable for download.
> > >
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-7=
2983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://downloads.yoctopro=
ject.org/releases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f=
4fe715c.tar.bz2>
> > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac39100=
8ebceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://mirrors.kernel.org/yocto/yoct=
o/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2>
> > >
> > > A gpg signed version of these release notes is available at:
> > >
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEAS=
ENOTES <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELE=
ASENOTES>
> > >
> > > Full Test Report:
> > >
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testre=
port.txt <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/te=
streport.txt>
> > >
> > > Thank you for everyone's contributions to this release.
> > >
> > > Chee Yang
> > > chee.yang.lee@intel.com
> > > Yocto Project Build and Release
> > >
> > >
> > > --------------------------
> > > yocto-5.0.15 Release Notes
> > > --------------------------
> > >
> > > Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have se=
en obtuse failures in the execution of tar in various tasks after recent ho=
st distro updates. These newer versions of tar contain a CVE fix
> > > which uses a new glibc call/syscall (openat2). The fix is to update t=
o a newer pseudo version which handles this syscall. This is not included i=
n this stable release but we aim to include it in the next one.
> > >
> > > --------------------------
> > >   Repositories/Downloads
> > > --------------------------
> > >
> > > Repository Name: yocto-docs
> > > Repository Location: https://git.yoctoproject.org/yocto-docs
> > > Branch: scarthgap
> > > Tag: yocto-5.0.15
> > > Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
> > > Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518
> > > sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099
> > > Download Locations:
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-=
docs-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
> > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d91=
6d4fc505e8386693306b6a90b0064c0518.tar.bz2
> > >
> > > Repository Name: poky
> > > Repository Location: https://git.yoctoproject.org/poky
> > > Branch: scarthgap
> > > Tag: yocto-5.0.15
> > > Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> > > Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> > > sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd
> > > Download Locations:
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-7=
2983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
> > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac39100=
8ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
> > >
> > > Repository Name: openembedded-core
> > > Repository Location: https://git.openembedded.org/openembedded-core
> > > Branch: scarthgap
> > > Tag: yocto-5.0.15
> > > Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
> > > Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
> > > sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819
> > > Download Locations:
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore=
-6988157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad9=
83978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> > >
> > > Repository Name: meta-yocto
> > > Repository Location: https://git.yoctoproject.org/meta-yocto
> > > Branch: scarthgap
> > > Tag: yocto-5.0.15
> > > Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
> > > Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815
> > > sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19
> > > Download Locations:
> > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-y=
octo-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
> > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363a=
a3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
> >
> > Hi, curious if the 'yocto-5.0.15' tag for meta-yocto is on appropriate =
commit, since the layer compatibility at that point seems to be whinlatter,=
 not scarthgap: https://git.yoctoproject.org/meta-yocto/tree/meta-poky/conf=
/layer.conf?h=3Dyocto-5.0.15#n12
> >
> > This seems to induce following error, when bitbake is issued:
> >
> >    ERROR: Layer yocto is not compatible with the core layer which only =
supports these series: scarthgap (layer is compatible with whinlatter)
> >
> > BR, Niko
>
> Hi Niko,
>
> This does look wrong, thanks for the report! We're looking in to it...
>
> In meta-yocto, the commit that should have been tagged is
> 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535. In the poky repository that
> commit was picked up and everything looks right.
>
> We think we've found the root cause of the wrong commit being tagged,
> patches for the autobuilder configuration are incoming.
>
> Best regards,
>
> --
> Paul Barker
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66172): https://lists.yoctoproject.org/g/yocto/messag=
e/66172
> Mute This Topic: https://lists.yoctoproject.org/mt/117378981/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mhalstead@linu=
xfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Michael Halstead
Linux Foundation / Yocto Project
Staff IT Engineer

