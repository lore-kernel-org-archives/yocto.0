Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4890BC27C40
	for <webhook@archiver.kernel.org>; Wed, 22 Nov 2023 23:36:23 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.78943.1700696181182943111
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Nov 2023 15:36:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Y+fIGw1R;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4083f613272so1900055e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 15:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1700696179; x=1701300979; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=P2NNqZj8m9N36SZAgpL/Af8dots/5nMFkvE3Bm6JOsM=;
        b=Y+fIGw1RztxyyofVAQQSplflYE9MWVA+3x37GLBpxYyFIIcmcSVaY8kWapIhSMjGjo
         9nLpIBw4A1M+2MlRWLEMnpIgMbKGSVv2KG4QWT6LlV0dFDBANBmXEz+kS767TQ5msa6m
         dpAwad4t787JgUYPai/WjL9LWH0EUHKvIiab4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700696179; x=1701300979;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P2NNqZj8m9N36SZAgpL/Af8dots/5nMFkvE3Bm6JOsM=;
        b=h5tbYDaYTw7ToE15GrU/bIwrGiXo72G3vbrYmC7+9RQO5WjBpYlXpg879wV08sxLDM
         v0rLFRaoXJj+Ed3GCusA4Hnxw++gUpOgKtiknEB568cPY7B3sGIWP5SqLKdqzhnxoYSP
         COxD24B7bIwwTg2w1kZgB3eLEz0jy87+HvAV8tNk+Lx6MZXxiRp7qeLk1W/eLX5CN9h1
         48nHU0RAXkilXcCtzznTfxd5+cmhRm2gzikltUIgnMWtn3iG1IOaDdDW3Z04w9W2+0h/
         rv4tZbgs+yriFWoWSnODGdMH+bE5mMD90GaQ9PQvEuXUOs3oz5Ypy6JGxyUDp+AwT87W
         c7Eg==
X-Gm-Message-State: AOJu0YzCT4kJmAN2EqB+nTP/ZL5hFTFNq7WNF9StZqekh09W3Gw9BKTg
	Gm5Oto2/WGgfysVXW77d4SFGvg==
X-Google-Smtp-Source: AGHT+IGLdkM5okpbMuQk2evcuNKH7c47xyQBhbJNgBPyP5owRhgXa75krtu2sh0fc8X2XWY9lVAXTA==
X-Received: by 2002:a05:600c:24d:b0:40a:2cc1:9af7 with SMTP id 13-20020a05600c024d00b0040a2cc19af7mr2581541wmj.14.1700696179480;
        Wed, 22 Nov 2023 15:36:19 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c511:4d31:367c:ab3c? ([2001:8b0:aba:5f3c:c511:4d31:367c:ab3c])
        by smtp.gmail.com with ESMTPSA id be7-20020a05600c1e8700b00405442edc69sm845465wmb.14.2023.11.22.15.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 15:36:19 -0800 (PST)
Message-ID: <6230b0b766c8ae81ab7a0337bf8f54ce9f15e7a9.camel@linuxfoundation.org>
Subject: Re: [yocto] [RFC] devtool: support multiple sources
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Julien Stephan <jstephan@baylibre.com>, Alexander Kanavin
	 <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, jon.mason@arm.com
Date: Wed, 22 Nov 2023 23:36:18 +0000
In-Reply-To: <CAEHHSvb9dajTiP358fEJzqcbRZcpuJd74jmkg168qiS-tN_jOw@mail.gmail.com>
References: 
	<CAEHHSvZYOg73Gx6Jv_UM+7Ot9TGf3fOzCxxZMQ9s1sq89mJtfg@mail.gmail.com>
	 <CANNYZj85qmQp=UPpTCd08n+VKq_06xOur2bEtDQ7yVi8CR8_8A@mail.gmail.com>
	 <CAEHHSvb9dajTiP358fEJzqcbRZcpuJd74jmkg168qiS-tN_jOw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 23:36:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61732

On Wed, 2023-11-22 at 13:53 +0100, Julien Stephan wrote:
> Le mar. 14 nov. 2023 =C3=A0 12:21, Alexander Kanavin
> <alex.kanavin@gmail.com> a =C3=A9crit :
> >=20
> > I think no one actually anticipated all these corner cases when
> > devtool was written. In general it's simply not designed to handle
> > multiple sources in SRC_URI, it can do (tarball or git)+patches, and
> > not any of the other options. No one is expecting a fix for all of
> > them, perhaps it's best to keep the scope to plain gitsm://.
> >=20
>=20
> Hi Alex,
>=20
> I sent a series to add submodule support. As you suggested I focused
> myself on gitsm recipes, but I had to handle the situation of a git
> tree extracted into S because it was throwing an error now with my
> submodule implementation (while it was not working but not throwing
> any error on master).
>=20
> > I don't have specific advice for the broader issue; if you have ideas,
> > it would be good to at least document them.
> >=20
> > Alex
>=20
>=20
> For the other cases,  I was thinking of using the newly merged API
> "unpack tracer"
> (https://git.yoctoproject.org/poky/commit/?id=3Def3e46afd910d4b7727d42c4c=
18b501525c65695)
> (suggested  by RP in this thread
> https://git.yoctoproject.org/poky/commit/?id=3Def3e46afd910d4b7727d42c4c1=
8b501525c65695).
> I really think that we could leverage this new api to create a devtool
> unpack tracer, so we can have a better idea of what is unpacked and
> where. This could help to solve the corner cases I described
> previously but also the bug 15162
> (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15162). I think it
> may also help to simplify devtool code in various places.
> Where should I document this?
> Should I open a new ticket?

Yes please, it would be good to at least document the idea as I do
think it could help devtool with a number of the corner cases. A
bugzilla bug for it is the place to do it.

Cheers,

Richard

