Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B6EC021B8
	for <webhook@archiver.kernel.org>; Wed, 26 Feb 2025 10:10:19 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.2510.1740564616453803841
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2025 02:10:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FDNOPKlb;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7c0155af484so967349685a.0;
        Wed, 26 Feb 2025 02:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740564615; x=1741169415; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UjP7pTeBOsmONyvsW0Ufa5kXFczOBT5nlgkz6HjaBg0=;
        b=FDNOPKlblKjA4LlZ2nM4CiqAjOQBlYn+vprTx1VIEdj/RAuKaMzGqsUuSXn9K/pxeg
         uwtIWzs/6oOWjFuZORbOaDQElDkhS9kfEBTcaAAI9Um5wIpk9Ya/dQtigYqFRtFyeDNf
         OcPfSlAP6KuSa+oxY6iq98E0aoGReh+soDLgiUj7XGIcTqubmFW4FzHykkKjRs9SZP2S
         G7YwRe+QQMTPxwqEjTc/egKuJC47wAZAQX9plYmapKKTqOUdB9HIGkQTJWaWw9c9Z4M/
         FZsV6GmRCzGqETLyEnz3bvWrMzHK/uAHboiIav3oIvcydRV0dLTNsPnbeqepOBWZXHZD
         Oi+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740564615; x=1741169415;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UjP7pTeBOsmONyvsW0Ufa5kXFczOBT5nlgkz6HjaBg0=;
        b=dAckcT6qPzPmSE6ozMebCTTlEoWX80YeMMUf9OvMWIrjTi07Yf+c23qL8bN4grvj62
         vRx90nLNaQqSNqgbHMJoaNr2ivTFZiG55TjQUpnyvO4MmdQ9L0nadnuRta3d/jL24b83
         C6QRHnpIT8Y1M7XgR7DxjALtLZ3v2t963auJYT2Lxc7Phn5vKFjUmeGJLmrOtz/g+foT
         8prsD98FdR11CKXF3dYpJdO3XsRYbJaFGapNB4X0dLcHf8Et7Pm2s5I128iXG30i4LaA
         lgObqg2Z+CGjYjIuK0QmM3PDlEZ3FykiJegWsuyYzUZ/+HVcIkVziLIE+Eh9IL61fU9u
         9sIA==
X-Forwarded-Encrypted: i=1; AJvYcCX2rB9KUATDL7TorU7TObqIUitUzYv04ZnpcLODZG3CozmDEGBd4eC0oDRCMBbq/OxW0+DnndIvqQqYDE9Dgd+NUiy/ucwN@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwR3umPtgD+J/lnQ/2+8T2/TTAltvDjGvNz3WUAGcKTPIc5z4IS
	1MAlzAyHHVl3sirODBs4NyKmyXwyWiK9g+XYK8qsTTTjzwuElwj8elV3IjbVuRU3aYjq3dvYfD8
	XY0ZQKCQpXIHdnu2cImMGwyal/Ew=
X-Gm-Gg: ASbGncsTDpu2WiwF9xz+k/tjAPxuL2I4LSn7EInGEEr9Kq2G9QEIm9aOl+fiRwPdXZr
	5reGQkO5RaCMgr5O7gbLeVprSltgCHQB+q12XGm/sO4kJ3G1Hd/wu8IcUmE9eDkB6NFtXNBw/P6
	UsMlHA8m74
X-Google-Smtp-Source: AGHT+IEBFKlnsRM4EN1XETReOcOEuX85ON0nV8UFsmiVVUmmPU5T7ZCC7Q2Yzya0t1K3yfilg2FMmkHwO/MizE1ebWE=
X-Received: by 2002:a05:620a:17aa:b0:7c0:c282:702c with SMTP id
 af79cd13be357-7c23bdfc903mr1049887385a.5.1740564615350; Wed, 26 Feb 2025
 02:10:15 -0800 (PST)
MIME-Version: 1.0
References: <751653524.2812887.1740495957756@webmail.strato.de>
 <CANNYZj9hSsTKV5PEHztiJ6z+9DBTaQTLzCor0K7xi4mfUq-m5Q@mail.gmail.com> <199985764.584582.1740550886762@webmail.strato.de>
In-Reply-To: <199985764.584582.1740550886762@webmail.strato.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Feb 2025 11:10:04 +0100
X-Gm-Features: AQ5f1JoWgDGke6rVwUbmIVCD4arN0qUaSTjvvQHwXpcRlNgY0oUVEJC_k6arfuk
Message-ID: <CANNYZj-YO5S1Ti6KUakxUMucPz2gC5hOFp49yKd431pj3BzMsA@mail.gmail.com>
Subject: Re: [yocto] Yocto Dunfell - Modify OpenSSH configuration
To: Daniel Kampert <kontakt@daniel-kampert.de>
Cc: yocto@lists.yoctoproject.org, 
	"Alexander Kanavin via lists.yoctoproject.org" <alex.kanavin=gmail.com@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2025 10:10:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64878

Only the tips I already gave you. You did not actually follow the tip
about checking packages-split/, so please do so.

Alex

On Wed, 26 Feb 2025 at 07:21, Daniel Kampert <kontakt@daniel-kampert.de> wr=
ote:
>
> Hi Alex,
>
> I=C2=B4ve checked several files for informations.
>
> 1. log.do_rootfs: OpenSSH is added but I can=C2=B4t see anything about my=
 modifications
> 2. files-in-package.txt for aarch64-tdx-linux openssh gives me the follow=
ing output
>
> drwxr-xr-x root       root             4096 ./home
> drwx------ root       root             4096 ./home/root
> drwxr-xr-x root       root             4096 ./home/root/.ssh
> -rw------- root       root              106 ./home/root/.ssh/authorized_k=
eys
>
> 3. log.do_install doesn=C2=B4t list my file
>
> Do you have any other tips?
>
> Thanks!
>
> > Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3Dgmail.com@=
lists.yoctoproject.org> hat am 25.02.2025 17:02 CET geschrieben:
> >
> >
> > Either the needed changes aren't being packaged correctly (check
> > ${WORKDIR}/packages-splt for openssh recipe), or the needed package
> > isn't being installed into the image (check
> > ${WORKDIR}/temp/log.do_rootfs for the image).
> >
> > Alex
> >
> > On Tue, 25 Feb 2025 at 16:06, Daniel Kampert via
> > lists.yoctoproject.org
> > <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
> > >
> > > Hi,
> > >
> > > I=C2=B4m working on a Dunfell BSP (Toradex BSP5) and want to add and =
modify the OpenSSH configuration. So I=C2=B4ve added "recipes-connectivity/=
openssh/openssh_%.bbappend" with this content
> > >
> > > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> > >
> > > # Apply the SSH configuration
> > > # - Disable password authentication
> > > # - Disable X11 forwarding
> > > # - Enable public key authentication
> > > do_install_append () {
> > >   sed -i -e 's:^#PubkeyAuthentication.*$:PubkeyAuthentication yes:g' =
${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e 's:^#PasswordAuthentication.*$:PasswordAuthentication no:=
g' ${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e 's:^#ChallengeResponseAuthentication.*$:ChallengeResponse=
Authentication no:g' ${D}${sysconfdir}/ssh/sshd_config
> > >   sed -i -e 's:^#UsePAM.*$:UsePAM no:g' ${D}${sysconfdir}/ssh/sshd_co=
nfig
> > >   sed -i -e 's:^#X11Forwarding.*$:X11Forwarding no:g' ${D}${sysconfdi=
r}/ssh/sshd_config
> > >
> > >   install -d 0700 ${D}${ROOT_HOME}/.ssh
> > >   install -m 0600 "${TOPDIR}/keys/ssh/${DEPLOY_ENV}/id_ed25519.pub" $=
{D}${ROOT_HOME}/.ssh/authorized_keys
> > > }
> > > FILES_${PN} +=3D "${ROOT_HOME}/.ssh/*"
> > >
> > > And I added TASK_BASIC_SSHDAEMON =3D "openssh-sshd openssh-sftp opens=
sh-sftp-server" to my OS configuration. The generated image contains OpenSS=
H (I=C2=B4ve checked the version) but no authorized_keys or modified config=
uration.
> > >
> > > What is wrong here?
> > >
> > > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> > >
> > > Ing. Daniel Kampert, M. Sc.
> > > Embedded Systems Solutions
> > > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > > Phone: +49 (0)174 6932561
> > > E-Mail: kontakt@daniel-kampert.de
> > > Web: www.daniel-kampert.de
> > >
> > >
> > >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#64867): https://lists.yoctoproject.org/g/yocto/mess=
age/64867
> > Mute This Topic: https://lists.yoctoproject.org/mt/111378266/9229641
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@dani=
el-kampert.de]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de (https://www.daniel-kampert.de)

