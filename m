Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 893BFCD4931
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 22:43:04 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.3402.1695249774057749590
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 15:42:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gA6Lt2a0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40472f9db24so3414545e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 15:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695249772; x=1695854572; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lToZEXY86Ji1JsJUkHf+nbuy6ZfMrP3TZbHpU8g4HLQ=;
        b=gA6Lt2a0o0yy51ZKUQBeR2ttjrYH+RRyisD7bgIsSK4FQA5xvDbCalVBeGl0xIuUya
         DDbKsFIa7IsLQCRk3ulF5F+FhBABiII0eTNv54DRtHDq2gCfKoOGTAv1H4MdnQVKGMxn
         QlTzhNDmJL9rga0GOXypNtbRCtUerwj+sIp9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695249772; x=1695854572;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lToZEXY86Ji1JsJUkHf+nbuy6ZfMrP3TZbHpU8g4HLQ=;
        b=JjIIGrnDMvlXDyXldbf8cOy3CRCa3UtXPuRH7JmGLlCd2/LksxE0rRZqXTBFIwdVDt
         ijkl4Bln/9yotE4L2RxljitvzeQvLTAKeA2mxX4yB1YeBUANtOu+7ZwmO54pBObd/OHs
         dtXvB7NaO6832q8FDyycqTGL8OazK8VUaVGIKuBNYAj3yZ+/ET55Fab/SfKRltdjVqB4
         uE/ed7uMGKLDRvhcHdQCYnfGairwzU9BYBp4gRR2PScZMqR7cnsMZKp5ncHCesTuKW3G
         0SJEyh37t5odvG+I78qSxWrGlN1QQcD06lXCLPCqHnjb41vQVQseno4KPp/WStZkbxTF
         EuGg==
X-Gm-Message-State: AOJu0YzSVFS6OQgm4S0yiLQJN/G2qIZgrWZdzItG4cf8TX3x5CQAwJo3
	fS8mnnPczWsnZ5huXpe7ujLAB0axEYF7j2zEU9E=
X-Google-Smtp-Source: AGHT+IE05K18c7QfnwscM5aHfeSEiBNOi1MgPo3uhpF0AZtTQJ3mY4LxMUiDzkZTSG9E6qUbwa4ufQ==
X-Received: by 2002:a7b:cd9a:0:b0:3fe:5053:1a0b with SMTP id y26-20020a7bcd9a000000b003fe50531a0bmr3363458wmj.11.1695249772385;
        Wed, 20 Sep 2023 15:42:52 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a109:22f2:cbec:fa4e? ([2001:8b0:aba:5f3c:a109:22f2:cbec:fa4e])
        by smtp.gmail.com with ESMTPSA id u11-20020a7bc04b000000b003fee6e170f9sm236287wmc.45.2023.09.20.15.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 15:42:51 -0700 (PDT)
Message-ID: <709c23c885a9825fda7a1a9d6ea7a9eebb5f3a4f.camel@linuxfoundation.org>
Subject: Re: [yocto] Forcing uninative?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, Alexandre Belloni
	 <alexandre.belloni@bootlin.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Date: Wed, 20 Sep 2023 23:42:51 +0100
In-Reply-To: <9c210e65-35af-17f9-8d27-ac32bc079a8a@ibeeto.com>
References: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com>
	 <2023092021160802de53c6@mail.local>
	 <9c210e65-35af-17f9-8d27-ac32bc079a8a@ibeeto.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 22:43:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61060

On Wed, 2023-09-20 at 14:39 -0700, Rudolf J Streif wrote:
> Thank you, Alexandre.
>=20
> On 9/20/23 14:16, Alexandre Belloni wrote:
> > Hello,
> >=20
> > On 20/09/2023 13:59:54-0700, Rudolf J Streif wrote:
> > > I need to resurrect a Yocto Project build environment based on honist=
er. My
> > > dev system has since moved on to a newer glibc etc. As expected, I am
> > > getting this warning
> > >=20
> > > WARNING: Your host glibc version (2.37) is newer than that in uninati=
ve
> > > (2.34). Disabling uninative so that sstate is not corrupted.
> > >=20
> > > The distro's gcc now is 13.2.1.
> > >=20
> > > Now the following packages do not compile anymore:
> > >=20
> > >   * rust-llvm-native : which there is a patch (applied to kirkstone):
> > >     https://lore.kernel.org/openembedded-core/CANPvuR=3DG1NxfJb67xD19=
FoNh4eTDsTM4TDyF+vDbh6crNH=3Ddgw@mail.gmail.com/T/
> > >   * libdnf-native : because std::uint32_t does not exist anymore
> > >=20
> > > I don't care about the sstate as I am creating a new one. However, ho=
w can I
> > > force uninative to be used and would it even solve the problem (I wou=
ld
> > > think so as the idea of uninative is to isolate the build from the ho=
st
> > > libraries)?
> > >=20
> > You should rather use buildtools. You can install those with
> > scripts/install-buildtools. The -r option is there to allow you to
> > select a target release. You can try something like:
> >=20
> > poky/scripts/install-buildtools -d ~/YP/buildtools -r yocto-3.4.4 --ins=
taller-version 3.4.4
> >=20
> > This will then tell you to source buildtools/environment-setup-x86_64-p=
okysdk-linux
> OK, I did that. The environment only adds the paths. Then I sourced the=
=20
> build environment as usual. Unfortunately, it still fails with the same=
=20
> error messages.
>=20

By using an older buildtools-extended tarball you should be able to
gain an older host compiler version which will avoid the compile
failures you mention. I suspect uninative will need to be disabled but
that shouldn't matter for your use case as you're not sharing the
sstate.

Cheers,

Richard



