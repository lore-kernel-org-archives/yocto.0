Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961A3EB64D7
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 20:56:41 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.2151.1686689799538492798
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 13:56:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=d9KTBZ3P;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-3f8c5d0b19dso15262935e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 13:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686689798; x=1689281798;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uq//R1le2sZPV8tkNPayhRAFa0uCnF6hGJoj5bmT0O8=;
        b=d9KTBZ3P2r7D8nu/ypmXxMyxSjaOG0pzD4qQRfYwM4nHIWmSOPChr2YFHhl8lcII5W
         Ze4z3aEDb4mHtyPIR3PBmOSAWzg0f8SeeekwLJ8kk62D+79qjo4ogc0EN75uwWrepjKk
         e90b0gcLGQ8WLu3ZVnErLSmONi9z8QYtg1Qlk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686689798; x=1689281798;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Uq//R1le2sZPV8tkNPayhRAFa0uCnF6hGJoj5bmT0O8=;
        b=XUwT2pLYK0GxVU6u7TO/VGRhEOxyuH1zBD6qjHS5Ae0LLYzVv7VDz+FNYLzvNr+pLS
         nDyPNMOjXhBNH8qcLqVHohDuFaDRF9eu9VCfBzsLXKqTai8RGUFPJaH9QGSTxWv9wrOE
         r4w9pl4hSgODcQGR+Y5CvIQjxII7qjuU9tiSoaoYFszZbfDdddy8AVUIoBToJTx32emj
         KH2gszWQ6m+L23hKRxp2hrwcuLEyHxxLS+28jhY9UTxX6bduoD9WG/0LIwbdicEjXbBc
         Ndk2ny0jp7ctW09on+WFb/5yIAZFj3E3FO6eLLoAu+mqTxWS3PHeJpcH23aBDL+7JFYl
         NRFA==
X-Gm-Message-State: AC+VfDzBMhkCxWKR4SYcPivpRy+FsUmIsaH3Jih90e5oC5iYdPBBvgY0
	gjRDwj0NhsPmYaTfRgd6LFr/FA==
X-Google-Smtp-Source: ACHHUZ5gH1QodXY6b+qp7RV3y+hOi4PUhqmVaOd8SWzizSwABLe2Dfn3Qq1sX/dPeRnMFaw+es2t3g==
X-Received: by 2002:a7b:c4c7:0:b0:3f7:f398:e1cc with SMTP id g7-20020a7bc4c7000000b003f7f398e1ccmr10856797wmk.36.1686689797786;
        Tue, 13 Jun 2023 13:56:37 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b? ([2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b])
        by smtp.gmail.com with ESMTPSA id t11-20020a7bc3cb000000b003f7ed463954sm15363146wmj.25.2023.06.13.13.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 13:56:37 -0700 (PDT)
Message-ID: <0da6a246265769516bff8190afd79dea1fa1946d.camel@linuxfoundation.org>
Subject: Re: [yocto] #fakeroot #pseudo-native #xattr #attr-native #yocto
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: jbarnesweb@yahoo.com, yocto@lists.yoctoproject.org
Date: Tue, 13 Jun 2023 21:56:36 +0100
In-Reply-To: <VGuf.1686678934669499865.B7Pb@lists.yoctoproject.org>
References: <VGuf.1686678934669499865.B7Pb@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 20:56:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60282

On Tue, 2023-06-13 at 10:55 -0700, jbarnesweb via lists.yoctoproject.org wr=
ote:
> I'm trying to understand why I get an Operation not permitted error (errn=
o EPERM) with a fakeroot function that calls setfattr.
> Using yocto packages pseudo-native/attr-native
> =C2=A0
> In my recipe, this function is called
> =C2=A0
> fakeroot label_sign_verity() {
> ...
> =C2=A0 =C2=A0 ls -l=C2=A0 ${FITIMAGE_PATH} >>${WORKDIR}/socosupdate_sign_=
and_package.txt
> #prints -rw-r--r-- 2 1000 1000 55097242 Jun 12 20:35 tmp/deploy/images/fi=
tImage-initramfs-nested-rootfs-overlake-overlake
> #1000 is the $USER uid
> =C2=A0
> =C2=A0 =C2=A0 ${DUMPIMAGE} -T flat_dt -p 0 -o ${SOCOS_IMAGEDIR}/Image ${F=
ITIMAGE_PATH}
> =C2=A0
> ...
> =C2=A0
> =C2=A0 =C2=A0 echo $(ls -l ${SOCOS_IMAGEDIR}/Image) >>${WORKDIR}/socosupd=
ate_sign_and_package.txt
> #prints -rw-r--r-- 2 1000 1000 55097242 Jun 12 20:35 tmp/deploy/images/Im=
age
> =C2=A0
> echo PSEUDO_PREFIX=3D${PSEUDO_PREFIX} PSEUDO_LOCALSTATEDIR=3D${PSEUDO_LOC=
ALSTATEDIR} ${FAKEROOTCMD} ${SETFATTR} -n security.ima -v ${IMA_HEADER}${HA=
SH_ALGO}${KEY_ID}${SIG_LENGTH}${IMAGE_SIG} ${SOCOS_IMAGEDIR}/Image >>${WORK=
DIR}/socosupdate_sign_and_package.txt
> =C2=A0
> #prints=C2=A0
> PSEUDO_PREFIX=3D/datadisk/LSG/main/LSG-linux-yocto/tmp/sysroots-component=
s/x86_64/pseudo-native/usr PSEUDO_LOCALSTATEDIR=3D/datadisk/LSG/main/LSG-li=
nux-yocto/tmp/work/aarch64-msft-linux/socosupdate/1.0-r0/pseudo/ /datadisk/=
LSG/main/LSG-linux-yocto/tmp/sysroots-components/x86_64/pseudo-native/usr/b=
in/pseudo /datadisk/LSG/main/LSG-linux-yocto/tmp/sysroots-components/x86_64=
/attr-native/usr/bin/setfattr -n security.ima -v 03020462ff80020100077DC6A2=
B32D1313FE072B1A44C10CC94C5FDE507A1B8A16ED5836E49A95EB4C1AC53D7A2E2D5E74F2C=
972B033F83FD405A5AD68DF6B8954EBB8803AF7A774D4573283A1AA0694B38379E8BF94E0B4=
378EF865E6606BB3E9534A0B916813F6C64DE53AB2B1B7CE579B54ADBA702BA7CF3F60B1776=
9318642804950EADB2E6417F24FFA88F8684B5F319D9731AC07B9B3BD82A52BFDFAD4D6212C=
5E5D9BA3F4249385F3DC67E21DEA99B00FDECE224B99142FCB81840D93A6AE007F799484B70=
B1399A674378C4001D03F7529A69F851E642374118E53AC24F1E8849ECD1BC69E75A120E540=
8E3B73C26D47C658DEA3A3BC1EF7B7738AB75B94B3B6DC06155EEF /datadisk/LSG/main/L=
SG-linux-y
> octo/tmp/work/aarch64-msft-linux/socosupdate/1.0-r0/deploy-socosupdate/so=
cosupdate1908//squashfs-root/opt/msft/ap/app/SocOsUpdate/images/Image
> #If I run the above in the same shell that I ran bitbake, it succeeds.
> =C2=A0
> ${SETFATTR} -n security.ima -v ${IMA_HEADER}${HASH_ALGO}${KEY_ID}${SIG_LE=
NGTH}${INITRD_SIG} ${SOCOS_IMAGEDIR}/Image=20
> # above fails with Operation not permitted, with or without fakeroot deco=
ration in function signature.
> =C2=A0
> I've also tried running the command with the pseudo preamble directly
> inside the recipe with and without the fakeroot decoration in the
> function signature. Fails the same way. When I echo $(whoami), it
> says root when fakeroot is used and $USER when not.

fakeroot context is a task level operation, not a function specific
one. Have you tried running the task calling this function under
fakeroot?

Cheers,

Richard

