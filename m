Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3B6C43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 10:41:51 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.39812.1669891307335618663
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 02:41:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UbSwrqJF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id m7-20020a05600c090700b003cf8a105d9eso1154254wmp.5
        for <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 02:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mJ/8NZcigIg9UrpJfc8Y/eps3E3uOp3Dsl2afTvUEwM=;
        b=UbSwrqJFHNjvo9ysumq2/JaYmELaBx+TofvptRNOlBHXHlKboQXDwaQl83XmQjlHFr
         3H/nJCVCzM1U1KNVuTL8laHEwEM/LHoOmpDaBL9XWY6LfS9aCWEYYU8S/l6AxTp20U8C
         CSptyx0GT/Q+bbdjKItkE8/JwJCZ73O3+mSVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mJ/8NZcigIg9UrpJfc8Y/eps3E3uOp3Dsl2afTvUEwM=;
        b=N3NqoSu1lbRiDR4vPA9IV00es0EDH3w0b6Y3RNFELZ3T5vWAHFc6y2NvaEUcuoA6Sn
         xkuvm8Bnm34Oip/MdPKWLzeOufgtevBEFSr8hkx0z4tVPCJblIcrfy7tMZ2KmpsXOXdC
         8f2z6DGdIuFTqfyYqw0QvvowgyZMBlph8ba3bsDLvAkc/b7JRlxOF4iIVDh49KOBpW8I
         T/zx/yBkwDZGBjObyn4fd1+7pJEomhwc0WJMK3pYGVtuL9cFjd/CDicDN/hDHA55WHtU
         OCMRvZG0zJjJMHdYse/PinUa8kcnc7wzCQtcveUn1GWRIzCkRF67QBO+5HQOfUcuR6CI
         D8oA==
X-Gm-Message-State: ANoB5pmXLl5x6OoVkptuH0GJcC/DmheR8XZsX7RTt9//Jya9E8VF3u/Z
	Y+vtaTByPUj7zzW0R+RD9JXnOg==
X-Google-Smtp-Source: AA0mqf5kjvkbRCGujFSlcfnWmoxgFfVJ+ErXwVD2TXLV0iyb/xyNXeA8FxHSkmVaLt7p+6QaOH5RPA==
X-Received: by 2002:a05:600c:3543:b0:3cf:74bb:feb1 with SMTP id i3-20020a05600c354300b003cf74bbfeb1mr46803081wmq.102.1669891305272;
        Thu, 01 Dec 2022 02:41:45 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3f4c:de93:c029:9984? ([2001:8b0:aba:5f3c:3f4c:de93:c029:9984])
        by smtp.gmail.com with ESMTPSA id m21-20020a05600c4f5500b003b4fe03c881sm9556237wmq.48.2022.12.01.02.41.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 02:41:44 -0800 (PST)
Message-ID: <7fb32274d35f9948a4962e9723f7eae684304c92.camel@linuxfoundation.org>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Martin Jansa
	 <Martin.Jansa@gmail.com>, s.mueller-klieser@phytec.de, n.wesp@phytec.de
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, Zoran
	 <zoran.stojsavljevic@gmail.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Date: Thu, 01 Dec 2022 10:41:42 +0000
In-Reply-To: <CANNYZj8uXJ189UckEVktdEuRgLpAcn+driQqnxj0KLaGYSU=wQ@mail.gmail.com>
References: 
	<CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
	 <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
	 <CA+chaQcphLsdya8v9SD=+XAb2bNWQ1bWxCdCRWOVpjwyiZePQg@mail.gmail.com>
	 <CANNYZj8uXJ189UckEVktdEuRgLpAcn+driQqnxj0KLaGYSU=wQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 10:41:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58698

On Thu, 2022-12-01 at 11:09 +0100, Alexander Kanavin wrote:
> And this is the commit that did this:
> https://git.phytec.de/meta-phytec/commit/conf/layer.conf?id=3D8261e896d2b=
43211e7377feb38e919336d47c39f
>=20
> Shame on you, phytec. Shame on you. What you do in your layers perhaps
> doesn't matter so much, but you also give everyone a bad example to
> follow.

That commit really is not in the spirit of things and I'm not happy
people are doing that. I'd not be surprised if that stopped working
soon.

We had a huge problem with unmaintained layers where it was unclear
which releases a master branch worked or had been tested with. An
actively maintained layer should have no problem with updating this a
couple of times a year. If that is an issue, it isn't actively
maintained and it makes that clear.

Cheers,

Richard

