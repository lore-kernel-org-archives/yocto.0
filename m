Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEFABC38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 10:55:19 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.99502.1674816918694309763
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 02:55:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OnebyNSg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id m14so4143266wrg.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 02:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=st5ecM3cTQ5MP/zDszCZVLpl89QIsumxjQmeYuEx4vI=;
        b=OnebyNSg+W+HXpzYef40c7RrFslHrLYsM3kK70SYi2k9RHA2YHiQYAaKNS+AhCVtpt
         TsDZnBAOgrm6MAr74HY0R15aocN27kMuXHqujeSz00ZxOMy4+bbKgLmWPypn62/TINA0
         XNLfW1rjsxoejp15lbS95XbRiLgnJKFl4SEmY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=st5ecM3cTQ5MP/zDszCZVLpl89QIsumxjQmeYuEx4vI=;
        b=dJGRpddk73y4lDPqr3DNscTe8BuomUh+AHju9LCRBXOq0RSYlmsSf92C2rubvwiDDw
         XTn7UxC2FpnlGSVYIpqVvdsLAMrLK7i2E8AFWwhMXqKYRFoaQKuKuOSwBhfILLQrv9o1
         d/psezxu5YM0zk/TR9CvPC8wFoOmNXWnZmw5SHQEWbre3Ybl34+JxUjcDob6W21u22Aa
         gqOCzTuYmuVC/UebmGNiZ2s7a6O6ZnFDpYI6LCB5aGYYAS385M95mt6ud/y7Hs5rIXCn
         Z6At7A5N/MsGkY8fDbP9q0jqoJf1i/+11sJW2fs7wPSGUi/bpA1mqAvw7Zu49ALqH4a+
         kMxQ==
X-Gm-Message-State: AO0yUKUKHSL8CrAvEfj7riBof6aCkBsq54wlnflOfVYytfwO4XuUlogg
	3L9LyHbrx2GTmgs0E6yI09vUyw==
X-Google-Smtp-Source: AK7set+cmWJXqEqtepw+WoTbEnserzKncFRXvaAsRwDN3aTgUiF3InTze7dae2NWVbL8mMNHlaFCHw==
X-Received: by 2002:adf:f705:0:b0:2bf:bb0a:e486 with SMTP id r5-20020adff705000000b002bfbb0ae486mr8226545wrp.30.1674816916728;
        Fri, 27 Jan 2023 02:55:16 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3876:ca46:43a6:4b49? ([2001:8b0:aba:5f3c:3876:ca46:43a6:4b49])
        by smtp.gmail.com with ESMTPSA id m3-20020a056000180300b002755e301eeasm3819290wrh.100.2023.01.27.02.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 02:55:16 -0800 (PST)
Message-ID: <b00a89e26884b619d48780dcba2cf4de2fa68af3.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.2_M2.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: Yocto TSC <tsc@lists.yoctoproject.org>, Bruce Ashfield
	 <bruce.ashfield@gmail.com>
Date: Fri, 27 Jan 2023 10:55:15 +0000
In-Reply-To: <01010185f1a4b508-6e5da1df-b525-4798-ad94-58ea11a96b76-000000@us-west-2.amazonses.com>
References: 
	<01010185f1a4b508-6e5da1df-b525-4798-ad94-58ea11a96b76-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 10:55:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59076

On Fri, 2023-01-27 at 05:13 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-4.2_M2.rc2) was completed on the autobu=
ilder and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-4.2_M2.rc2
>=20
>=20
>     Build hash information:=20
>=20
>     bitbake: c19035e8e71c419c5688a86bfc9c946c96f638e8
> meta-agl: 09135164a21a216c6e3e75d7decce896b92962f0
> meta-arm: d8383c11f3f8220d2b989ec73604e5faff988299
> meta-aws: 7b4f54b3e1f675e2033f6a589ac519e44e62b58b
> meta-intel: b3c7d3ee44e4ab71df44b5be3c48d2f47d89d8a0
> meta-mingw: 250617ffa524c082b848487359b9d045703d59c2
> meta-openembedded: ceceffcb1e3ef4f9ba7708f77c27e30a7aea61e5
> meta-virtualization: 31954471605ae3b41627a0ab7b0dcfe8c5851bd7
> oecore: 493f2d163718d78560a2b3ad5d3c0fb34caae8c0
> poky: 5e249ec855517765f4b99e8039cb888ffa09c211
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20

A reproducibility issue did occur in this release build in kernel-
devsrc and perf.=C2=A0

I think we should put this through QA and release note the issue. There
is a patch which I think should fix it but I don't want to rush it in.
We will fix the issue before final release of 4.2.

Cheers,

Richard

