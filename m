Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.210.1583361728221416550
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 14:42:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MQrat6CC;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCA3FE01782; Wed,  4 Mar 2020 14:42:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4572BE0177F
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2020 14:42:07 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id z15so4588532wrl.1
        for <yocto@yoctoproject.org>; Wed, 04 Mar 2020 14:42:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=RSZhiCz5yJ8BfeuIaSE6uiuJfuaXmkeWy8KRHeoGaR8=;
        b=MQrat6CCBhtHPaX4K6EK/lTc0BW7sMbY7OhyQNQ/8ShWal9KzixwwlJc5feeerbVf8
         R+sd1tHEpTV89Z4eFyEOzeeGHjA79HpkSrrTh9ZqiWs93FkJmNd2JA+R4s5nHov5rDnw
         C8NdJeN7cNLRWytAXfo2t6yMpDbXOIr3y2u0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RSZhiCz5yJ8BfeuIaSE6uiuJfuaXmkeWy8KRHeoGaR8=;
        b=U6n4C8B6Ho/BjgLdoJRFOWwxUtY8HtlbbHNQieVp/OrgcBanEFFwHJijtSUx64JL5E
         0pvtSNy86Uajscmj9GHj4jl/bsMFHpSfoNGemP6S6FvzuOBBpM1GTAFKK8Js/xA3M9h/
         DLHMJUrGHZ5nJNfhXgKHhJgsZquoEZJe7KC6iTxHQhvI+l6iQ96atbVeW3+VBWCHnx3V
         C3riWGlwL9pT2ip2OMft0/yA+zMR5dggymiyHdBya51bP9NcRP1irJJxFyiYJIsdx/Q9
         K0dDqpHuFmBwGax98GSREDlVj+lrgnkLGyFkLCF5hHNUVipHnBbhYU8jd4Z1MK/6pgwc
         in9w==
X-Gm-Message-State: ANhLgQ0nD+/N/LWAv+LeLcCais8qVpQSAFJSBb28QKkxVIpBILndGdP3
	q8cv8FPYJy/fQ19fqcRVCIfy/g==
X-Google-Smtp-Source: ADFU+vuf34WNCAMoQOxlSvcFOFJ5IFuRriN7W/byXh7m6Yjlm0lPHqsLOFDvsyCgoludSSHR8mSgOw==
X-Received: by 2002:adf:9521:: with SMTP id 30mr6048368wrs.349.1583361726321;
        Wed, 04 Mar 2020 14:42:06 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id o27sm43530272wro.27.2020.03.04.14.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2020 14:42:05 -0800 (PST)
Message-ID: <efd0caee261782a0b8d752c728c25be23f69cbae.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status WW09'20
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Stephen K Jolley
	 <sjolley.yp.pm@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, OE-core
	 <openembedded-core@lists.openembedded.org>
Date: Wed, 04 Mar 2020 22:42:04 +0000
In-Reply-To: <CANNYZj83rytWFgGPj6BS6R874eqa6_KCoeoMA5afgnx-_YBunw@mail.gmail.com>
References: <107c01d5f174$bbf566a0$33e033e0$@gmail.com>
	 <CANNYZj83rytWFgGPj6BS6R874eqa6_KCoeoMA5afgnx-_YBunw@mail.gmail.com>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-03-04 at 14:00 +0100, Alexander Kanavin wrote:
> On Tue, 3 Mar 2020 at 16:59, <sjolley.yp.pm@gmail.com> wrote:
> > coreutils ptest blocked on libmodule-build-perl reproducibility
> > issue
> > 
> 
> I sent a patch for this.

Thanks!

Just FYI I think there may also be a couple of other packages coreutils
pulls in and they may also have reproducibility issues (gettext-ptest,
glibc-locale-* and procps*).

Cheers,

Richard

