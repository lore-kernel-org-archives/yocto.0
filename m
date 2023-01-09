Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50BCC5479D
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 10:43:17 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.68654.1673260995520745578
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 02:43:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=E1vzUmC8;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id m3so5949977wmq.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 02:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=49qUxjTDKIgYQv/VWGJBcViJ++oZ+y4PN3ip5SEeYWs=;
        b=E1vzUmC84dWySrpMokEWKNbjCd0Ruf2DNQFgBRWPsdpecZky5IwtbiuysgsElmW0LP
         Sl80RrSJJGa+Aw50iW2+8YROxDbCa8jsIcxhCEHYbsa8u3AWkRfoRAloJXeiGSO/7tvw
         FpGjBD+w0PDk267kKGH/py9QMZ4oqsMoplaMw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=49qUxjTDKIgYQv/VWGJBcViJ++oZ+y4PN3ip5SEeYWs=;
        b=0siqY8d7wcPWmqeyWQ8gFGctdRn6GgKaMfe+EI/jKgnHX6jBEveHCF7BknIpTE6vgw
         oyEJ4jQGgK+kiTixROpu40XzoE8lygau7hTc/qc8BANd4F4NxxGPIC5NcsfVauvhUSjt
         At3gwKMOmBfXAwPiEIyBXZjZ6235poYY+H6gOqA1DXnpwswJCliwP83/s4oASC85NCBh
         UWFZK1JQYTEdImvDG7GCcjomHHlXshCI0lIm8yOb+SBHjGTmkwu96eltFZ3bTw03OPpW
         W91Wekq51LdJJLja3NBWGcGybxiRwAM7FB4sy7tJ25kyiMY9PXsXQQmEqjP11ssOfcg9
         vvTA==
X-Gm-Message-State: AFqh2kpEhi8cKJ4YkggZd3Zp7lZwZIhbpe4iaxpGF/fxrBglFUDl9x+B
	K3japwlJgNZ0ptK1/eEAjWOHFQ==
X-Google-Smtp-Source: AMrXdXuwDuZeqlpPG3QBkJhNfT/zVUMTIgusP3M6OXpr9enkSDHVzR2dH9mL5g4evUQ03TsfOJczxg==
X-Received: by 2002:a05:600c:22d9:b0:3d3:56e6:4f0d with SMTP id 25-20020a05600c22d900b003d356e64f0dmr46529542wmg.7.1673260993779;
        Mon, 09 Jan 2023 02:43:13 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:bf05:daf1:cc08:7166? ([2001:8b0:aba:5f3c:bf05:daf1:cc08:7166])
        by smtp.gmail.com with ESMTPSA id 16-20020a05600c22d000b003b4a699ce8esm14672842wmg.6.2023.01.09.02.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 02:43:13 -0800 (PST)
Message-ID: <1727d025c543dc13f0d067e072ade145c98c65f5.camel@linuxfoundation.org>
Subject: Re: [yocto] bitbake controlling memory use
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Ferry Toth <fntoth@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>, Quentin Schulz
	 <quentin.schulz@theobroma-systems.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>, trevor.gamblin@windriver.com, 
	martin.jansa@gmail.com
Date: Mon, 09 Jan 2023 10:43:12 +0000
In-Reply-To: <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
	 <10280.1623316977582274550@lists.yoctoproject.org>
	 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
	 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
	 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
	 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
	 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
	 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
	 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
	 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
	 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
	 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
	 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
	 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
	 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
	 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
	 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
	 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
	 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 10:43:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58942

On Mon, 2023-01-09 at 11:39 +0100, Alexander Kanavin wrote:
> On Sun, 8 Jan 2023 at 23:13, Ferry Toth <fntoth@gmail.com> wrote:
>=20
> > Now it works I'm not sure what to do. Richard marked the original patch
> > as WIP. Maybe it's not appropriate for including into poky? If so I
> > wouldn't mind carrying it in meta-intel-edison.
> >=20
> > Or may be with a little work (from me) and a run on the CI servers we
> > could make it go in?
>=20
> I'd rather teach make/ninja upstream to watch memory consumption
> and/or host pressure directly (e.g. similar to how it handles -l). And
> offer any resulting patches to upstream first.

Whilst teaching make/ninja about pressure is probably a nice idea, I
think there is a use case for sharing the job pool between bitbake
tasks rather than having a job pool per task since that scales badly.

One issue that comes to mind with the patch is that it is currently
writing into /tmp/ and we likely need to work out a better location for
the job server fifo. Currently that would break things on the
autobuilder as there are multiple builds on a given host.

Cheers,

Richard



