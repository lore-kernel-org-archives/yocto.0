Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E04EB64DB
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 16:14:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.17110.1686759237239296186
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 09:13:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=av1eV9fU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-30af159b433so6720518f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 09:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686759235; x=1689351235;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDzxO7QlKXd7gbBKnnc9Nt7YRzZ7bj+ZRvjjZcQanLU=;
        b=av1eV9fUlK50S2Wn1iYXZF60l8PGDeJN2twwRiKwrqGQP5AVdRZ871/lzSHTH8f3ka
         65+8XSX1fpRsDdJHwAqYEox0Eo2eaTcagN0FS4Uu7EWxYWLvSpLel4rS+uYPHBSlcs6I
         sdDJrJj9Cr45qAxvDl1njvPGDG9Sv2z8d4ly0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686759235; x=1689351235;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MDzxO7QlKXd7gbBKnnc9Nt7YRzZ7bj+ZRvjjZcQanLU=;
        b=fPjpafjHQC/7BJSgxM1DddnjutqlwrEkvWLxcrenGxjs6JBpIw6zB20h5LZdJoSHPg
         RK8XoL6wJGhfG5KYXUhKuhdO6uIhLWNhw5SRUAWWkPJiFEyYjCz7jhrZ+henXoMYS3GO
         EJ9fi/8kj60la+If+yTENCWrMamXCZJ7+HrGfkUIOdcFQo5svUmOK8qx2vuWiqkHK3by
         OMK26KYlfWrIvy7bBUnGbO+6rKhHz7y1SnkZ2IehezBkg+GHTgHetlEeqLibdU2BYMmW
         ddBYg3+RZGKOTRZGGQcJzPrMRU/qx2IkrHH5JLyKV0iwc3XJZOKRPGqNvSofliFP/Dh4
         eqCQ==
X-Gm-Message-State: AC+VfDygatEy6fgM1EolAjSszLRr49kIXFzMkjPPaKyN6MQ4FnG8GA7W
	tW3x2XlCq0lqudfEfCdMVB0MWg==
X-Google-Smtp-Source: ACHHUZ7qaP8fKaeUmcgHuO6ZTFUavg0aXhWWu6WXQXdbjxIvbFv+XELSzcCYOSo8ZxM34FzAzuuaKQ==
X-Received: by 2002:adf:e38a:0:b0:30f:cb50:7918 with SMTP id e10-20020adfe38a000000b0030fcb507918mr5772597wrm.57.1686759235480;
        Wed, 14 Jun 2023 09:13:55 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b? ([2001:8b0:aba:5f3c:5d56:2e19:9720:bd3b])
        by smtp.gmail.com with ESMTPSA id q7-20020adff947000000b0030af72bca98sm18532421wrr.103.2023.06.14.09.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 09:13:54 -0700 (PDT)
Message-ID: <4131aa4d611ef052a4236a9568bffef98d2b968c.camel@linuxfoundation.org>
Subject: Re: [yocto] #fakeroot #pseudo-native #xattr #attr-native #yocto
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: jbarnesweb@yahoo.com, yocto@lists.yoctoproject.org
Date: Wed, 14 Jun 2023 17:13:54 +0100
In-Reply-To: <10784.1686757680483461481@lists.yoctoproject.org>
References: 
	<0da6a246265769516bff8190afd79dea1fa1946d.camel@linuxfoundation.org>
	 <10784.1686757680483461481@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 16:14:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60307

On Wed, 2023-06-14 at 08:48 -0700, jbarnesweb via lists.yoctoproject.org wr=
ote:
> Thanks for your reply, Richard.
>=20
> The=C2=A0 task was elided above. Here's what the recipe looks like now. (=
I removed the fakeroot decorator from the function signature). It still sto=
ps with Operation not permitted.
>=20
> label_sign_verity() {
> ...
> =C2=A0 =C2=A0 ${DUMPIMAGE} -T flat_dt -p 0 -o ${SOCOS_IMAGEDIR}/Image ${F=
ITIMAGE_PATH} #Does this contribute to the error?=C2=A0
> ...
> =C2=A0 =C2=A0 echo ${WHOAMI} >>${WORKDIR}/socosupdate_sign_and_package.tx=
t # prints root
> ...
> =C2=A0 =C2=A0 ${SETFATTR} -n security.ima -v 0x${IMA_HEADER}${HASH_ALGO}$=
{KEY_ID}${SIG_LENGTH}${DTB_SIG} ${SOCOS_IMAGEDIR}/Image # Operation not per=
mitted.
> }
> ...
> fakeroot do_sign_and_package() {
> ...
> =C2=A0 =C2=A0 label_sign_verity ${SOCOSUPDATEDIR}/ ${FITIMAGE_PATH} >>${W=
ORKDIR}/socosupdate_sign_and_package.txt
> }
> ...
> addtask sign_and_package after do_deploy before do_build


Extended attributes aren't something we've done a lot of work with. In
theory pseudo does have support for them but it does get complicated as
there are things we need to emulate and things we shouldn't as they
relate to the host system.

It looks like pseudo does have xattr enabled by default. it is possible
setfattr is calling some glibc function we don't intercept, or it is
calling a syscall directly and bypassing glibc.

The code in pseudo is here:

https://git.yoctoproject.org/pseudo/tree/ports/linux/xattr/pseudo_wrappers.=
c#n155

called from here:

https://git.yoctoproject.org/pseudo/tree/ports/linux/xattr/guts/fsetxattr.c


You could put:

export PSEUDO_DEBUG =3D "nfoPdeViDxywc"

into the recipe in question and have a look at what the pseudo logfile
says (${WORKDIR}/pseudo/pseudo.log), see if it is catching this at all.
It will log a lot of info with that.

Cheers,

Richard


