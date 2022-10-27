Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D315FA3740
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 15:53:30 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.8179.1666886004355577600
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 08:53:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Hal+y6eM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id h9so3044864wrt.0
        for <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 08:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E2Ge9X/LkcjV99KPzgev5B3uvdDKBfk7zi9/i8HxDbE=;
        b=Hal+y6eMHbWA9v6xYYftiOZl+iSGB1DbTju18Eb8gCm1IFO/nxOFCqT+8GyVakBtOc
         Pa1MkJVyLQyC+ZDbCqb0BOGYZ/hnCUDNP2k7yeKoxppeFY28xtNoGm9Vr38up0IJmfgL
         9UCYxUBwZ5lb4j5xf+DhrZ3uP1mzY0miAMjHI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E2Ge9X/LkcjV99KPzgev5B3uvdDKBfk7zi9/i8HxDbE=;
        b=vLB3ZT4Av96MWLbXh+s6PCd4m8MyWFLK0UaYRxwZrfjKvo4TszGtBNCYKxgUBgcCVE
         oWPcVYHdydT3PhFHGTpEgYgmFhucC2ymEhcYijiYs6F4KtOsjcz3bgzVDn3BuJe2JOjf
         D8nN4W+epUc7/D97uEoDpxSI9XEwZ0CJVbP5fH/axxpjr599Na4HaIZChWAcAvi+FkxR
         ikGqPYCbGksYnP3xauujWGRCUCUV7pkYeHYXX3DGNJ/Hhke1ssF7vuXFhZysCZSVhJLA
         meG/rEILN+u008sQRcCPbWes6ZiFz4rfcsx2GVPSAFI70g1nP4giEB7ZaTUOQK1i9myo
         ZbRw==
X-Gm-Message-State: ACrzQf3+vhblvdElebWN8+rt+wm8TbmU7WF1OmsU5obChPqB7GtpYzjw
	YkexcobWN8VbIy2wNYw5WrNkoQ==
X-Google-Smtp-Source: AMsMyM7qNHlH4PVxfUbjmJ9rjNQaV4ov/rq+/3YM6demRVZ1BFxRFLS5RKhhJzdyEMGOSudg2/gdJw==
X-Received: by 2002:a05:6000:1ac7:b0:232:b68c:9e0 with SMTP id i7-20020a0560001ac700b00232b68c09e0mr33761996wry.54.1666886002281;
        Thu, 27 Oct 2022 08:53:22 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a815:5d52:bbbb:d081? ([2001:8b0:aba:5f3c:a815:5d52:bbbb:d081])
        by smtp.gmail.com with ESMTPSA id 12-20020a05600c22cc00b003c6b70a4d69sm1824741wmg.42.2022.10.27.08.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Oct 2022 08:53:21 -0700 (PDT)
Message-ID: <f9d5e35885aed643de685d29d0362f55ddafbb3d.camel@linuxfoundation.org>
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 10/27/2022
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Sakib Sajal <sakib.sajal@windriver.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield
 <bruce.ashfield@gmail.com>,  daiane.angolini@foundries.io,
 "jpewhacker@gmail.com" <jpewhacker@gmail.com>,  luca.ceresoli@bootlin.com,
 pavel.zhukov@huawei.com, "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
 "Wold, Saul" <saul.wold@windriver.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, Steve Sakoman <steve@sakoman.com>, 
 tim.orling@konsulko.com, akuster808 <akuster808@gmail.com>,
 ross@burtonini.com,  michael.opdenacker@bootlin.com,
 valery.chernous@gmail.com,  aryaman.gupta@windriver.com, pavel@zhukoff.net
Date: Thu, 27 Oct 2022 16:53:19 +0100
In-Reply-To: <c50f7dcd-31d8-876c-dadc-f516e78757aa@windriver.com>
References: <c50f7dcd-31d8-876c-dadc-f516e78757aa@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 15:53:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58423

On Thu, 2022-10-27 at 11:38 -0400, Sakib Sajal wrote:
> Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage
> Attendees: Richard Purdie, Steve Sakoman, Stephen Jolley, Randy
> Macleod, Joshua Watt, Alexandre Belloni, Ross Burton, Bruce Ashfield,
> Tim Orling, Michael Opdenacker, Zheng
> ARs:=20
> Richard:=C2=A0 review bug 13897=20

Closed as NOTABUG, I agree with Chris Larson.

Cheers,

Richard

