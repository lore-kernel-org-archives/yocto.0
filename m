Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1893BEB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 13:15:37 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.10354.1687353328470564346
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 06:15:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=dwfGA4cx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3110a5f2832so5598728f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 06:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687353327; x=1689945327;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5kn4M2Txm4CgRQRNvoQFC2StEg3kqxLD5+EcgtawNAM=;
        b=dwfGA4cxEOSc3fudt+BXjS7UF1t8gjAqXHVGTicQr+bH3vY4Kgbar0a5XT+YlFxQwt
         zJhdLmtBOnfU5hMJ9khqOCxsHK48bdG5/jFXtJ+6coSqwqigC9aT65hcILFS5SKo2DS5
         oV99fwxMlXalp7eJw93c6ZOGVY0e/SFhM+1Vc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687353327; x=1689945327;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5kn4M2Txm4CgRQRNvoQFC2StEg3kqxLD5+EcgtawNAM=;
        b=UjLIKj3Xf7+b215xQ5rKzUy7UNra9AK9R91HmEgw51wVNxgYZt2Bt6/ofjGKiiGaU7
         42x0Tm/jAVtbKzueFkG4uUp5z5sCGUv4m9npdJAFlfdTcfCqy7z8B4H6Z++XxLpTQ5Mz
         47TLCREH8t8MVFvwLuI5dCrjv+Upkt2KF7IsekdTQMBiwa1rbQ52frEGL9daxuAVI0tv
         VyEzGankOIb/RFDheGNEjlHFwZ0CAwgJr6nVw9iL4oWLXAQlIXmPO6aNgrMIo3M2eIh+
         6jj9F5tCMyjxkPVFSfjOPPWVo5c2BZokuugrGiRlDUev90olj4c/SNVXA88ZblRZkyoW
         0Wiw==
X-Gm-Message-State: AC+VfDyKGlzZB0zLHXHBkaOJvOHvyVmnv/o6BmeKUSGbkaLo2+tgwEgN
	6CHP9wwU9C/bbzxehpjlblGfCQ==
X-Google-Smtp-Source: ACHHUZ5wLYIPbczgZPPVsR6ZKlfkg9W28H6g24kFlYIw7knhZomJVp+Sj6+OEEc2sZ4UCSxQKJcRcQ==
X-Received: by 2002:a5d:6585:0:b0:311:281e:ad3c with SMTP id q5-20020a5d6585000000b00311281ead3cmr11212272wru.28.1687353326632;
        Wed, 21 Jun 2023 06:15:26 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5335:faf6:2a9e:df29? ([2001:8b0:aba:5f3c:5335:faf6:2a9e:df29])
        by smtp.gmail.com with ESMTPSA id z11-20020a5d4c8b000000b0030c4d8930b1sm4427400wrs.91.2023.06.21.06.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 06:15:26 -0700 (PDT)
Message-ID: <ed9ef499fc4b52b47b6d4d8a4863a8eb8d7d5e10.camel@linuxfoundation.org>
Subject: Re: [yocto] python3-speechrecognition building using yocto recipe
 #yocto
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: lavkhush2208@gmail.com, yocto@lists.yoctoproject.org
Date: Wed, 21 Jun 2023 14:15:25 +0100
In-Reply-To: <rvOk.1687345847828201897.bXBi@lists.yoctoproject.org>
References: <rvOk.1687345847828201897.bXBi@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 13:15:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60374

On Wed, 2023-06-21 at 04:10 -0700, lavkhush2208@gmail.com wrote:
> Hi all,=C2=A0
>=20
> I want to create .deb file of package python3-speechrecognition=C2=A0 , I=
=C2=A0
> successfully builded natively on target board riscv platform and i
> copied binary from target board and with using=C2=A0 recipe i am copying
> binary in path: /usr/lib/python3.8/site-packages and trying=C2=A0 to
> create .deb file from using yocto environment.
>=20
> speechrecognition recipe is-
>=20
> DESCRIPTION =3D "speechrecognition Packages with dependencies library's
> "
> =C2=A0
> LICENSE =3D "CLOSED"
> =C2=A0
> SRC_URI +=3D "file://speechrecognition"
> =C2=A0
> S =3D "${WORKDIR}/speechrecognition"
> =C2=A0
> do_install() {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d=C2=A0 ${D}${libdir}/
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp -r ${S}/lib/* ${D}${libdir}/
> }
> =C2=A0
> FILES_${PN} +=3D "${libdir}/*"
>=20
>=20
> I am facing one issue here:-
>=20
> ERROR: speechrecognition-3.9.0-r0 do_populate_sysroot: Fatal errors occur=
red in subprocesses:
> Command '['riscv64-oe-linux-strip', '--remove-section=3D.comment', '--rem=
ove-section=3D.note', '/home/kush/khu/sources/khu-build/tmp-glibc/work/risc=
v64-oe-linux/speechrecognition/3.9.0-r0/sysroot-destdir/usr/lib/python3.8/s=
ite-packages/flac-linux-x86']' returned non-zero exit status 1.
> > Subprocess output:riscv64-oe-linux-strip: Unable to recognise the
> > format of the input file `/home/integration-
> > team/kush/khu/sources/khu-build/tmp-glibc/work/riscv64-oe-
> > linux/speechrecognition/3.9.0-r0/sysroot-
> > destdir/usr/lib/python3.8/site-packages/flac-linux-x86'


I'll make a wild guess that the binary in "flac-linux-x86" is an x86
one and the riscv strip doesn't like x86 binaries.

I suspect your riscv target device doesn't like them much either.

Cheers,

Richard

