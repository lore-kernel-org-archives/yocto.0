Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0627C43334
	for <webhook@archiver.kernel.org>; Wed,  8 Jun 2022 15:54:39 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.8255.1654703669324896696
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jun 2022 08:54:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=DJhVMGxY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id x17so28944924wrg.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jun 2022 08:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=oul3SfCCrzEdGu6cPsHDyqY0ydw367qpya66UX+dZik=;
        b=DJhVMGxYZXWxpfp16j9FmAsldCgpnE86h6iQh2GgRT9DtVHXWBmm6jDd0aHTOn2PRu
         OoxFPqYW+2Vd2vhAYl2/ZKsAkGydVq8RanmZpYhdgDEsMQELcTcArNWgRelMTQss2Yhv
         hStW10zJR/cEqq8qMz/yoAi8W3DixEmqaaYZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=oul3SfCCrzEdGu6cPsHDyqY0ydw367qpya66UX+dZik=;
        b=yuyxk/N8YYqoM8uajuzfvwjdgqS/8hDxO78FopSUFKUf6sw3+dEjumT+qWHqVL5R9t
         304Ae8PqYTCo4CFVYtzrU+QhVK0xCYWx+DlQKzoWIYw2yDO7F1n2/Z3CYj4iJfPLIA4c
         HBnWgDLe0qVH+hqb2JkZhAPgZ8lr+ySdwBt0m+7ujX30eSd6cK5tB96dnuKLREjTNk5e
         3fcCPPUJ+wBKFv1py8SSxz3O9Jq/DDDph1+XbdBRS/vlx97dGrwsRYs2GS8+8KnXRsDw
         /8VtQ87QDqa4hCo55VgPQQfvgSXoKxXNc4enSxxhuORDCAkFxdjTjmtoJeBf2SIsrDe7
         BujQ==
X-Gm-Message-State: AOAM531EZOYrxNXm0UWTJiMKinJ5c15Gr66sOK8zBIyHGsp3VXQmJV7b
	sC7YmZpuP5enUDjuTOHwRG6KEQ==
X-Google-Smtp-Source: 
 ABdhPJzZglnYFOKZL0NnjN1oDZ46WxAtBs4rgmEv/NwiQi40QayhbNmwc1+oOKaOfkiifovki6MQog==
X-Received: by 2002:a5d:414d:0:b0:213:be00:a35 with SMTP id
 c13-20020a5d414d000000b00213be000a35mr27406182wrq.97.1654703667649;
        Wed, 08 Jun 2022 08:54:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2793:ec22:da5d:8e52?
 ([2001:8b0:aba:5f3c:2793:ec22:da5d:8e52])
        by smtp.gmail.com with ESMTPSA id
 h6-20020adfa4c6000000b0020fe61acd09sm22812175wrb.12.2022.06.08.08.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 08:54:26 -0700 (PDT)
Message-ID: 
 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
Subject: Re: [yocto] Force binary package install
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, Chuck Wolber
	 <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto
	 <yocto@lists.yoctoproject.org>
Date: Wed, 08 Jun 2022 16:54:26 +0100
In-Reply-To: <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
	 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
	 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
	 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
	 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
	 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
	 <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Jun 2022 15:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57306

On Tue, 2022-06-07 at 18:17 -0700, Rudolf J Streif wrote:
>=20
> On 6/7/22 4:36 PM, Chuck Wolber wrote:
> =C2=A0
> > =C2=A0
> >=20
> > =C2=A0
> > > =C2=A0
> > > > =C2=A0
> > > > > =C2=A0>> Is there an elegant way around it?
> > > > > =C2=A0>>
> > > > > =C2=A0>>
> > > > > =C2=A0>> Error:
> > > > > =C2=A0>>=C2=A0 =C2=A0 Problem: conflicting requests
> > > > > =C2=A0>>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2 needed =
by
> > > > > =C2=A0>> xxx-single-group-0.1-r0.cortexa53_crypto
> > > > > =C2=A0>>=C2=A0 =C2=A0 =C2=A0- nothing provides libdl.so.2(GLIBC_2=
.0) needed by=20
> > > > >=20
> > >=20
> >=20
> > Could this be considered a bug in the package_rpm.bbclass? It seems
> > to me that if you skip files-rdeps,
> > we might not want to be adding anything into splitpreinst.
> > Otherwise it seems silly to tell insane.bbclass
> > to skip something that RPM is going to ding you on later anyway. Or
> > maybe I am confused...
> >=20
> > In any case, I believe what you may be seeing can be viewed as an
> > RPM-ism, and not necessarily a
> > yocto-ism per se. So you might consider trying one of the following
> > to work around the problem:
> >=20
> It's Yocto that creates the spec file for rpm. Apparently, besides
> relying on what is declared in RDEPENDS, it
> =C2=A0actually iterates over the files and appends the dependencies (and
> their versions). It results in this:
> Requires: libc.so.6
> =C2=A0Requires: libc.so.6()(64bit)
> =C2=A0Requires: libc.so.6(GLIBC_2.0)
> =C2=A0Requires: libc.so.6(GLIBC_2.1)
> =C2=A0Requires: libc.so.6(GLIBC_2.1.3)
> =C2=A0Requires: libc.so.6(GLIBC_2.17)(64bit)
> =C2=A0Requires: libc.so.6(GLIBC_2.2)
> =C2=A0Requires: libc.so.6(GLIBC_2.28)(64bit)
> =C2=A0Requires: libc.so.6(GLIBC_2.3)
> =C2=A0Requires: libc.so.6(GLIBC_2.3.4)
> =C2=A0Requires: libc.so.6(GLIBC_2.4)
> =C2=A0Requires: libc.so.6(GLIBC_2.7)
> Removing anything but the first two lines would probably do the
> trick. So if file-rdeps is declared in INSANE_SKIP
> =C2=A0it should simply only use the declared RDEPENDS and not analyze the
> files.
> =C2=A0


If that works at runtime it makes me wonder if our glibc shouldn't be
providing some of those things? What does our glibc package say it  is
providing? How does that compare to what objdump says?

Cheers,

Richard

