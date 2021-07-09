Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8324.1625819636168432543
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 01:33:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=U71MOfby;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5364538C0839
	for <yocto@yoctoproject.org>; Fri,  9 Jul 2021 08:33:54 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id k31-20020a05600c1c9fb029021727d66d33so4240421wms.0
        for <yocto@yoctoproject.org>; Fri, 09 Jul 2021 01:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=J/z3F/TdHrp45pkgWdCzsTH1s67+7yIxUe4tbSdcqG0=;
        b=U71MOfbyeRpx+yXKdtRYCNljkA3jDdopLjpmp4ngOLtK9/ccItL+2kDC/4ia2MvBUn
         p5ZW36o427nXxE8SElZ+d0I0wOPEF5VeDGJcd7TLAlWy4DTby71uPa/3PSjjmEdeZpyZ
         uuIcKekW/dgLT7F+y30BTZuStCeuKSfP0otw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=J/z3F/TdHrp45pkgWdCzsTH1s67+7yIxUe4tbSdcqG0=;
        b=LNvq9pdYiCiR3xo/OwWCX0MAh/bE6poQXMcG6mG6lYwL11C2pYI2tNxnK2QZSEi4RH
         OtiWQq+jt35qQtyCi6RFk/m0ujsAyeBCpmefu0tuBI8Oklqi+0VeVPSaxjxhHSq7D8a0
         icHNzQFwlw95pxmLkWoV1ehvhwY2zQVYIK22LO5glihIiTpVqJJioWjuuHT5NlmxAEKb
         eifTsyB0ic+E3HES/rJDVRNKbEnWi2bMKsBcvSkHZh7CWjynD28p/O8m8clBYt95tXjm
         f2/CVVjjf7XrJgvhM6pZ5Ypd5/j/pFytXX/5hJwLexusVoEJtQXlhO4FQCgwPAO5PHOH
         akSA==
X-Gm-Message-State: AOAM531D4V4rGDvzc6/qQ/Yq8hj7WVe6X+QNZ9qXoekOfmSS7wxVJwZM
	GvJ/F/h7RIghn5e+nWaeWqX/ew==
X-Google-Smtp-Source: ABdhPJxSoLG4rpE46LeDZjJDqwZk/P7Y4tVFn7LjyDkZPMBlZlqkeW3fXPUvu+QVxRlhGBMlXgJZxA==
X-Received: by 2002:a05:600c:3794:: with SMTP id o20mr33568060wmr.0.1625819631725;
        Fri, 09 Jul 2021 01:33:51 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8784:9f68:1c6d:5aac? ([2001:8b0:aba:5f3c:8784:9f68:1c6d:5aac])
        by smtp.gmail.com with ESMTPSA id r13sm4573534wrt.38.2021.07.09.01.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 01:33:51 -0700 (PDT)
Message-ID: <31be281c79720bda006e4c6bc5746aabb1a3e2ab.camel@linuxfoundation.org>
Subject: Re: [yocto] [error-report-web][PATCH] report-error.bbclass: Add layer and bitbake version info to error report
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Milan Shah <mshah@mvista.com>
Cc: yocto@yoctoproject.org, Paul Barker <pbarker@konsulko.com>, Armin Kuster
	 <akuster@mvista.com>
Date: Fri, 09 Jul 2021 09:33:50 +0100
In-Reply-To: <CA+=qD9N42rg5_Vdj6H5SV-YKYV=NPREG-6yA0yGAJHTP47+sZA@mail.gmail.com>
References: <1609940317-21943-1-git-send-email-mshah@mvista.com>
	 <CA+=qD9M-rk13kgw0fVvn3ChzCVrO6VQk-uxWspE7PKUG_Y99Aw@mail.gmail.com>
	 <CA+=qD9O1A-Cp=3z336qpeKgMCvdgbK=NATA8uqLuAPcbF=EPUw@mail.gmail.com>
	 <CA+=qD9N2mxJ55Aaz1ahNrrivgam0wBqMx5vk1duqM+Fd_ENZBQ@mail.gmail.com>
	 <CA+=qD9O1gf9quyPuQ9JBbR79=hL=aQ0gMCtke92Kp0uHt-w2hg@mail.gmail.com>
	 <CA+=qD9NoNqBWv+ATf_tw-cc+Vz0xaDO6biCMFmx_M2Xq0LpA2A@mail.gmail.com>
	 <7b5173bb8a6359a3c7597341c60ec2726d8f6108.camel@linuxfoundation.org>
	 <166FE1E7B1DE5E9C.21604@lists.yoctoproject.org>
	 <CA+=qD9N42rg5_Vdj6H5SV-YKYV=NPREG-6yA0yGAJHTP47+sZA@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2021-07-09 at 10:51 +0530, Milan Shah wrote:
> Hello All,
>=20
> My Patch has not been reviewed for the past 7 months. Looking forward=C2=
=A0
> to see some updates on this.
>=20
> Please find related links below.
> https://lists.yoctoproject.org/g/yocto/message/51891
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9700
>=20

http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/classes/report-erro=
r.bbclass?id=3D8b299a62c55aa8d1583aff4b8428f16def7231b7

It appears to have merged 5 months ago?

Also, looking at the patch that inherit base should not be there and need=
s
to be removed since everything always inherits base.

In the future please send OE-Core changes to the openembedded-core mailin=
g
list as that will speed up review and patch handling (as per the repo's R=
EADME).

Cheers,

Richard

