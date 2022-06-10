Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8743C433EF
	for <webhook@archiver.kernel.org>; Fri, 10 Jun 2022 21:11:41 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web09.32501.1654895496465167652
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jun 2022 14:11:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KN5JE2b6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id p10so82030wrg.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jun 2022 14:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=kYSL1Bm+C/xO5peQW+p0aNvlWcOuONJROXrSSVc6sFc=;
        b=KN5JE2b6J9uUkqx4/yiVAHDiaUMIO7zoPMw+txgKT4Gbjvq8l8rqHR3cArC2oNGaGB
         DZ2J4gmvKkN6tgrE3HLfd1ww80JefckxVnSQ9J4CXAS3luAZPjq1bB1cCWeSGXllcDmV
         yeFojMQROOCFcWTUIA+fd9Xn3BTlx1NX+0WNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=kYSL1Bm+C/xO5peQW+p0aNvlWcOuONJROXrSSVc6sFc=;
        b=lUbyXoSdCBaMJfH6z79+RIMoRIvZkFHtxQiQZ9acffA4n428hNC0ww5B5NiLaourIS
         qQWAI9u0eI+OI/rujQD7MLk90rQUgEuwL5iy4P7c+e0H+zbhCvLj2gHfNuwJrHaQWvoJ
         gW0TLn2KCo0t3NjKN36z7J1YGUudRUd1RnVPNZDOBXcByNiQZS2AtXHOjJDKtFoa1tZO
         3UJoRl8jE58jyFFWvcmBPNI3U0LWggtNFkBIAiRnBJlBlI60T4mDuJZmSOOIDcy8sNCc
         HVx/PBGOwo127lcdE8prkmzd+mqeRLgeDEh161F6nhYtrqLFPbRayZptivk8hMAafBFF
         iUKw==
X-Gm-Message-State: AOAM5336bELCzx0gD/939vNci0L2tp+c0CGJ2j8txB/XlyXVkx3xQwIL
	edhsj5Z16a7HSpQgyvDJuM+qJQ==
X-Google-Smtp-Source: 
 ABdhPJxsVqJoqNzQCG4xVpdGHBjoct3PE17XBN8iHt6GT1i2vxJHeT0II5U8BIaJjO17PjEBJ5vEmg==
X-Received: by 2002:a05:6000:18a9:b0:218:891d:815c with SMTP id
 b9-20020a05600018a900b00218891d815cmr14493860wri.311.1654895494922;
        Fri, 10 Jun 2022 14:11:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:63a8:fe2d:d040:79fd?
 ([2001:8b0:aba:5f3c:63a8:fe2d:d040:79fd])
        by smtp.gmail.com with ESMTPSA id
 4-20020a05600c024400b0039c811077d3sm168478wmj.22.2022.06.10.14.11.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 14:11:34 -0700 (PDT)
Message-ID: 
 <bbff00030abef49a53d877a67e739be43667de7b.camel@linuxfoundation.org>
Subject: Re: [yocto] Question about psuedo abort errors
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rusty Howell <rustyhowell@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 10 Jun 2022 22:11:33 +0100
In-Reply-To: <6602.1654880744216726314@lists.yoctoproject.org>
References: 
	<dbf9862962fa521be487b43664368587dc73052c.camel@linuxfoundation.org>
	 <6602.1654880744216726314@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Jun 2022 21:11:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57319

On Fri, 2022-06-10 at 10:05 -0700, Rusty Howell wrote:
> Thanks for the response, Richard.=C2=A0=C2=A0 Is the pseudo database loca=
ted
> inside TMPDIR?=C2=A0=C2=A0 I have deleted the TMPDIR at times to try to g=
et my
> build back to a working state. If the pseudo db is outside TMPDIR,
> then that would be the most likely cause of this error. But I would
> think that other OSS recipes would generate this same error after I
> delete TMPDIR, not just my company ones.

The pseudo database is per workdir (i.e. per recipe) in WORKDIR/pseudo.

Cheers,

Richard

