Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5042C77B7C
	for <webhook@archiver.kernel.org>; Thu,  3 Jul 2025 11:26:55 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web10.20148.1751542006989935260
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jul 2025 04:26:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Vo1QzrsZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6ecf99dd567so75407166d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 04:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751542006; x=1752146806; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eGLwnwU9CZYG96L8WwXqGVcdg67dwYGEiesAdNNjpek=;
        b=Vo1QzrsZ47rI/YTzTFlKF2JFyTZjUJctGI2RoHa/zHf3ym1uB+diAlGuKbG7yS40E0
         U0srdQH8Ad1GdmpFVIFzrTVY0pOm86Zd6z0VW+1uwOC3gByuN9FYLWDdSWmRpRrH0S1Z
         2Qr76d7Wjy6ME89jQW8seqzrSthGsP+RY+9SLb5RjDCoKnY0eUkA1/eJ66I0doj0SwKb
         Dk8oUL28wqg5DxYcZUXcAt38grLq7VZ01UQiTJLC8DNyEs1s3EjdZdLzE/J83rM6nokC
         hJvEpAhdkCX6ius9lqFFOutbltdFtzHLptWBTLqmRnNePTcTjhWp4tM7i56BSemnXO0y
         33lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751542006; x=1752146806;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eGLwnwU9CZYG96L8WwXqGVcdg67dwYGEiesAdNNjpek=;
        b=FzTiADnJmrTFqJzk0shnpujAwMQvs6dA8vS/Z7bvKAzS1Pai+XGR1zP1IwC2ShNifC
         Gg59GUKRwt4uDc7wctSiCRLRRLDeqDv2cuyFW2R6mBpAhklET577+/1vvLAHWcxf0CgI
         LjtoGVX36cxQJI60ZZOr2Dpwh9SL2ZxaXrGJGM5cQ8xlSHZaLSl3O+ChftWjD1IifW0I
         jlHlnQvKHefA7HvyCISLxKw2B0qENkCMjcirAd+oHUwlKFIGSFf93iYpP5x/txOUG460
         0ocTKl3JLm7G7ujhudmFUs6TIMtBqBSL5/RopjYqKO3zqimwhqCx5UnIN4Q75uCw0Mje
         alYw==
X-Gm-Message-State: AOJu0Yz83HgT+nQkI0+vsdGEa4slLzRPecKJzC/xLEfryOu/3inWjK5f
	TMfSCdvjeGlnYZzWK5LRobTNPKrcJjseJJVnQTCTbqirFhx+tsxZ0gX9E+1+RxwNcPu7AOyqaH8
	sPMC2hlXhp/2OVq8wkPZtlkQy6SXpahbNSQ==
X-Gm-Gg: ASbGncvN3XPoqTaBwkkxZgyLCfUKovqY6sqrWWQxwO/bHmdzvKTA3griaJozyiMLeQH
	g00w9H/xS7T/3S+PWToP+0wkY98M0kQRMpEkFFCo7O+6vifCzu1nM8HfENiKof9AW9YWy1HRGOf
	88YAidEbXFQ+mKgeJIVgIWe+cYSQBBL66xNENflUSFyVhdMBLrfbx6PnJScOCULsVFVw1/mqxAR
	C0=
X-Google-Smtp-Source: AGHT+IFmJ9mHwMUmDTeMnlfNpQb/lbfiWdRPmTAEoYxYHF9VIp0xTVipGi018ZMeVNLUdCnWXR2Ck3kDQpRpB6Pu4B4=
X-Received: by 2002:a05:6214:224d:b0:6fd:74bf:6062 with SMTP id
 6a1803df08f44-702b1a5780cmr101653716d6.17.1751542005938; Thu, 03 Jul 2025
 04:26:45 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-6mE-j=cOUfbDuFb2She1OQzmmeWX048v-yo+eAKqGSQ@mail.gmail.com>
 <6459.1751540427875724875@lists.yoctoproject.org>
In-Reply-To: <6459.1751540427875724875@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Jul 2025 13:26:33 +0200
X-Gm-Features: Ac12FXxwzDJkA6VLXb2XGX0MBOb7C0wDSK-uAwBtBJ_q2DBgjerQ1MqIx8aakzo
Message-ID: <CANNYZj9V4K0PjCr_oOdefLTb8jHE40oKY7Ha8FyQf3mhYa7fPQ@mail.gmail.com>
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on e-cores)
To: yocto@lists.yoctoproject.org, akarnil@witekio.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Jul 2025 11:26:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65604

On Thu, 3 Jul 2025 at 13:00, Alen Karnil via lists.yoctoproject.org
<akarnil=3Dwitekio.com@lists.yoctoproject.org> wrote:

> By adding TASKSET to BB_ENV_EXTRAWHITE, you ensure that when BitBake runs=
 tasks, it includes the TASKSET variable in the environment. This allows yo=
u to use taskset to control which CPU cores the BitBake tasks can run on, e=
nabling you to manage CPU affinity effectively.
>
>
> Comparing with the manual, https://docs.yoctoproject.org/bitbake/bitbake-=
user-manual/bitbake-user-manual-ref-variables.html#term-BB_ENV_PASSTHROUGH_=
ADDITIONS
>
> It looks to match up, the only thing I can't figure out where TASKSET is =
defined or how it knows what to do with it

So basically AI couldn't answer the actual question about the specific
local.conf statement and instead gave a lecture about how passing
through environment variables works in Yocto, that it learned from the
manuals.

The reason you can't find where TASKSET is used is that we're almost
certainly looking at an AI hallucination.

Alex

