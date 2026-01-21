Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E5BC44500
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 21:42:04 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.23169.1769031715204038009
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 13:41:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I15QF1zO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.46, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-59dd3e979ceso263440e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 13:41:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769031712; cv=none;
        d=google.com; s=arc-20240605;
        b=EzG19pUz1rNWP9/+aT1j/5zOqNxL9nPWoWK5psHokr/spiuVKabpnHLQ3lOIeZlaLu
         46fjB5WV50GRWM7AOHKAabT1BqrS0i54fZC8Zs3q23n2SPQ4KDCBbXPrlKnfIwLqiDLY
         CAZ2h9/hMCdyk4zGZAGP5umVrtJii7lcWI/gG6QiXdZUPzwfaq4FqoRuXS+Z3g+tUiF3
         yBF1WZ0vxAyIAZutv442+ESoa5lrmtEHiWPVjzCM0t8zqQffTbQW7e0nJxFZc2JqcTnA
         ikzgE3EQTIFFmvB2+tBz1v0C8dSvT0S3GhHOq8C/0k4mYqbFHGoGyWL0V3VkElxJWC4v
         Geug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vVp7RUvnHR8IclgMS/qi86fgOaSzKvRf6FEQK4sB8Fs=;
        fh=xv3D4X2esZd0z8K7MPeGrDgr+zIXxqPQoyHJef6M+mQ=;
        b=HA2VzTWRCJx4hgmjNfT9jSQ9ZFiBttQJNJW8KDHAHQEVCaUPsh0d6Xzr3bGcC55/dx
         8UK1veUefZS7vuapSkLWidjvZn1uAJYdHSoAVHXZpE7z9Q7vYYFs2zMnigV591nDDpeo
         BcX6xZAteCy0XTGecxUtQVTXHILJuoTC9Xb3NDtiBQLv7PWyzdiQosnT/I/mLXgi6VID
         C9rAH2WD3Nl07ebsTbm5lf/cpQ3KweH+f6yXulCPxQREX+CIwRNqQrcPYZAkXUbFmcrc
         FPBhmUaW01H5C8WMyIKTU0cgxxH+BLsrFESIa6QUA8PYG0x3QSY2yLgzZCPZO2jwD9Ni
         i0oA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1769031712; x=1769636512; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVp7RUvnHR8IclgMS/qi86fgOaSzKvRf6FEQK4sB8Fs=;
        b=I15QF1zOdw3avJvFE+1To9x64zEMx/YxaMj9xxtmOYJ6E4xkvN4+LXx5nlpPFxMR+M
         DOy53Bx6809BvahgAb4S1FYH4DBnbudzwAPt6C4QkoO8n7F6e3TvLM3Ibar1e+xYvoKh
         XNWbCNtnvTNjZQyPLobuptovSlXhDnTvtxjpU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769031712; x=1769636512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vVp7RUvnHR8IclgMS/qi86fgOaSzKvRf6FEQK4sB8Fs=;
        b=CrppiJJ97vCOy3+6FXOlCLuIgjhca8fD7mALIKkYtoHe6WrI/9Ei/MxmYjOiuAIGDI
         1PhkaH+r52SOyKDUAq/lWF36n5ulhpWxMY/ZpFelUylP1gJKaR/XavHsh/25spTJJOZz
         HMtNo2GYbABLwgXea++P2U1/ScZofv8AUL0URHjx1UflUKAwkjxAHpv+O4Nff2V4xS3S
         KYw7rUhSOF3XtwNEWIVA3QnpnBq0XCfe0U9eDNapCqTzYbVcLEwmKrx4zElvaAIpaTAq
         1Oi4NyF466XPwOP3Cmq2YrYEZ6xS9onWqN6eOkWSCZl7GbbUlBouitSrovReldKMRRRF
         MZKA==
X-Gm-Message-State: AOJu0YzDrwyo0NnvMYeMOizqGXbRDxYA39UWBvMXVJaWZRPca95NBC4E
	rSLK46Rc2VERkrT+JIsp8tjZ1uPUSGrHKrrWcCTejpEcHDJCdOJC/fkA63CRiWh2sB6ufxNWrzX
	l7fEuOo3BYxvWC3gAMmQ79ge7CCYzZozC2aCb44iROsMR3/A8wfCUSq44Fg==
X-Gm-Gg: AZuq6aIKzakRBb5IwVvJgwXvMcFgIlMzg4+URtidYCdW1hu7uoJ8ZMrLrZHE6FNUi6D
	P9PO0agUKXbHUkxbI7F7pEn5ZUw92rYGTi6knWHq1Jb7FnIs8aUSpvZC5lQowRIG5dtOfDWGiay
	frBJ1gAXLk3NHvyth58RXI4+9uugswbEQPX+ztth65RjQoBoYQPWasYRKuGjBZoQjVLF7YgsZGg
	I7wL22s3RAjWHwjLs1+Q8wkHE2M6hjpV+O6X8TgviJFm+Spu/Or/E/A8c+DI7BS+iXf9MtFpT6Y
	/sY2QZhQj6rMO5IcRUXEdnomCuCzhA==
X-Received: by 2002:a05:6512:234c:b0:59a:1a38:6123 with SMTP id
 2adb3069b0e04-59baffbf282mr6315481e87.32.1769031712051; Wed, 21 Jan 2026
 13:41:52 -0800 (PST)
MIME-Version: 1.0
References: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
 <39e25689-f4d2-40d3-8495-00aadb0c331e@vaisala.com> <290988d9663a7b5f9ee57e1fe0c393ebba9d5696.camel@pbarker.dev>
 <188CD907CCAE25D9.3547823@lists.yoctoproject.org>
In-Reply-To: <188CD907CCAE25D9.3547823@lists.yoctoproject.org>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 21 Jan 2026 13:41:40 -0800
X-Gm-Features: AZwV_QiZQbYbpqnSxv9nNxBx0hyK6FiR62Ih1vNHFACDnLYYoFeEzRJ9Dvum8jM
Message-ID: <CADfgfobPR8m5a32xC=iHvMW1ADvEs6Or86_sf-5Ao5wKvm=GfA@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is Released
To: yocto@lists.yoctoproject.org, mhalstead@linuxfoundation.org
Cc: chee.yang.lee@intel.com, niko.mauno@vaisala.com, paul@pbarker.dev, 
	Yoann Congal <yoann.congal@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 21:42:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66177

Paul Barker pointed out the yocto-docs tags also pointed at a commit
on the master branch instead of the correct spot. New yocto-docs tags
are in place requiring a git pull --force on that repo.  I've removed
the previous tarballs and generated the correct ones, updated the
release notes, and uploaded fresh signatures.

Removed yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
Added yocto-docs-b0f5cc276639916df197435780b3e94accd4af41.tar.bz2


On Wed, Jan 21, 2026 at 12:29=E2=80=AFPM Michael Halstead via
lists.yoctoproject.org
<mhalstead=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
>
> I've removed the bad meta-yocto tag and added new ones for
> 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535.
>
> https://git.yoctoproject.org/meta-yocto/tag/?h=3Dyocto-5.0.15
> https://git.yoctoproject.org/meta-yocto/tag/?h=3Dscarthgap-5.0.15
>
> I have removed https://downloads.yoctoproject.org/releases/yocto/yocto-5.=
0.15/meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2*
> which contained
>
> DISTRO_VERSION =3D "5.2.99+snapshot-${METADATA_REVISION}"
> DISTRO_CODENAME =3D "whinlatter"
>
> and created a new tarball with the correct data and updated the
> RELEASENOTES, checksums, and signatures.
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto=
-9bb6e6e8b016a0c9dfe290369a6ed91ef4020535.tar.bz2
>
> What else, if anything, needs to be changed?
>
> On Wed, Jan 21, 2026 at 5:39=E2=80=AFAM Paul Barker via lists.yoctoprojec=
t.org
> <paul=3Dpbarker.dev@lists.yoctoproject.org> wrote:
> >
> > On Wed, 2026-01-21 at 04:40 -0800, Niko Mauno via lists.yoctoproject.or=
g
> > wrote:
> > > On 1/21/26 12:02 PM, Lee Chee Yang via lists.yoctoproject.org wrote:
> > > > Hi
> > > >
> > > > We are pleased to announce the Yocto Project 5.0.15 Release is now =
available for download.
> > > >
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky=
-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://downloads.yoctop=
roject.org/releases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d=
5f4fe715c.tar.bz2>
> > > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391=
008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2 <https://mirrors.kernel.org/yocto/yo=
cto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2>
> > > >
> > > > A gpg signed version of these release notes is available at:
> > > >
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELE=
ASENOTES <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RE=
LEASENOTES>
> > > >
> > > > Full Test Report:
> > > >
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/test=
report.txt <https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/=
testreport.txt>
> > > >
> > > > Thank you for everyone's contributions to this release.
> > > >
> > > > Chee Yang
> > > > chee.yang.lee@intel.com
> > > > Yocto Project Build and Release
> > > >
> > > >
> > > > --------------------------
> > > > yocto-5.0.15 Release Notes
> > > > --------------------------
> > > >
> > > > Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have =
seen obtuse failures in the execution of tar in various tasks after recent =
host distro updates. These newer versions of tar contain a CVE fix
> > > > which uses a new glibc call/syscall (openat2). The fix is to update=
 to a newer pseudo version which handles this syscall. This is not included=
 in this stable release but we aim to include it in the next one.
> > > >
> > > > --------------------------
> > > >   Repositories/Downloads
> > > > --------------------------
> > > >
> > > > Repository Name: yocto-docs
> > > > Repository Location: https://git.yoctoproject.org/yocto-docs
> > > > Branch: scarthgap
> > > > Tag: yocto-5.0.15
> > > > Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
> > > > Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c05=
18
> > > > sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c0=
99
> > > > Download Locations:
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yoct=
o-docs-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
> > > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d=
916d4fc505e8386693306b6a90b0064c0518.tar.bz2
> > > >
> > > > Repository Name: poky
> > > > Repository Location: https://git.yoctoproject.org/poky
> > > > Branch: scarthgap
> > > > Tag: yocto-5.0.15
> > > > Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> > > > Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> > > > sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4e=
dd
> > > > Download Locations:
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky=
-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
> > > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391=
008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
> > > >
> > > > Repository Name: openembedded-core
> > > > Repository Location: https://git.openembedded.org/openembedded-core
> > > > Branch: scarthgap
> > > > Tag: yocto-5.0.15
> > > > Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
> > > > Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
> > > > sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f8=
19
> > > > Download Locations:
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oeco=
re-6988157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> > > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157a=
d983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
> > > >
> > > > Repository Name: meta-yocto
> > > > Repository Location: https://git.yoctoproject.org/meta-yocto
> > > > Branch: scarthgap
> > > > Tag: yocto-5.0.15
> > > > Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
> > > > Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a8=
15
> > > > sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc=
19
> > > > Download Locations:
> > > > https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta=
-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
> > > > https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e136=
3aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
> > >
> > > Hi, curious if the 'yocto-5.0.15' tag for meta-yocto is on appropriat=
e commit, since the layer compatibility at that point seems to be whinlatte=
r, not scarthgap: https://git.yoctoproject.org/meta-yocto/tree/meta-poky/co=
nf/layer.conf?h=3Dyocto-5.0.15#n12
> > >
> > > This seems to induce following error, when bitbake is issued:
> > >
> > >    ERROR: Layer yocto is not compatible with the core layer which onl=
y supports these series: scarthgap (layer is compatible with whinlatter)
> > >
> > > BR, Niko
> >
> > Hi Niko,
> >
> > This does look wrong, thanks for the report! We're looking in to it...
> >
> > In meta-yocto, the commit that should have been tagged is
> > 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535. In the poky repository that
> > commit was picked up and everything looks right.
> >
> > We think we've found the root cause of the wrong commit being tagged,
> > patches for the autobuilder configuration are incoming.
> >
> > Best regards,
> >
> > --
> > Paul Barker
> >
> >
> >
> >
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Staff IT Engineer
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66176): https://lists.yoctoproject.org/g/yocto/messag=
e/66176
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

