Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.11520.1611935550395137319
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 07:52:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ep9Dn5kd;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ed1-f52.google.com with SMTP id g1so11077055edu.4
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 07:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=Y8uRwiYKmO5ZLjGjbgXFDso//uUAoAqyBxJPTZWlxYA=;
        b=Ep9Dn5kd59kxQV+8ayCW7x7XLAXP8WsiwxiUDD3UYrVBnN9sg+HOKZ+gUokAJRke0F
         l0ZxIDNdaiAmKaAYH8qP7/4CBWFPCy2596x1AHb3D55zyPLvfxk/tEkx9AiTWQQgmPL/
         XLou6lCEmeOcAJ4kwguAE6JIPnkkB+KbfNzAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Y8uRwiYKmO5ZLjGjbgXFDso//uUAoAqyBxJPTZWlxYA=;
        b=Ctc3QwuYu2I7EUU+3d42sOu1YFsYf9wcEoJTbzEQCf3letyFTrNCil8MLZ+qjOaPKS
         duCwlqyluqXNZpi7Tuhrlaxn1xzjGcuv4YoMusNLJRjckrU1YB9KaXaJiOidUmdgaPVv
         F1ZIeVECafx+xHOBUgcKAdE3cVJQ7Lr8jogTC3iz/sUdXmdYS11V37uEN5Tlia/Cq1yu
         QPYh9Wnve4TzoABSHTDm+Afhwp7jB5FcvQdQ/KShz7NKd43dHp1Zm8KIdwOl+vU+VfkO
         TMJRl6TbJ9dlBEdr4mMxnIsRG3ZCGryA774a7cqAgwYfcvseSyxFbTREOdd8vCiVgwKX
         VwZg==
X-Gm-Message-State: AOAM533HbuugSrRPaVEhvrPWs1QyXZq3uKC2F9Sm20HPaOkyqcDvQeeS
	VGT9SqwxCCDOuKcsGHUSM3R6og==
X-Google-Smtp-Source: ABdhPJwzi/IfcKF8iBb9jTRwzvvLaoT+BVlsbRKKrxHBHIMi1a07NQ4Kj0FMrQvV54nB29v3YZ5P4A==
X-Received: by 2002:a05:6402:1751:: with SMTP id v17mr5872133edx.289.1611935548954;
        Fri, 29 Jan 2021 07:52:28 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:93ef:509c:4f16:14ff? ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id g3sm4656045eds.69.2021.01.29.07.52.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 07:52:28 -0800 (PST)
Message-ID: <a5d20604428c2581ee69977d9c0221e2e5b2d01f.camel@linuxfoundation.org>
Subject: Re: [yocto] SDKMACHINE and ppc64le issue with latest head?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Andrew Geissler <geissonator@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 29 Jan 2021 15:52:25 +0000
In-Reply-To: <YHUN.1611931136335118962.V0j6@lists.yoctoproject.org>
References: <YHUN.1611931136335118962.V0j6@lists.yoctoproject.org>
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2021-01-29 at 06:38 -0800, Andrew Geissler wrote:
> Over in OpenBMC, we utilize a mix of x86 and ppc64le machines for our
> CI.
> 
> Our latest rebase of poky master
> (https://gerrit.openbmc-project.xyz/c/openbmc/openbmc/+/39533/) has
> started failing to compile on our ppc64le machines with the below
> error.
> 
> I can workaround it by setting "SDKMACHINE=x86_64" but that seems a
> bit weird on a ppc64le machine?
> 
> + bitbake obmc-phosphor-image obmc-phosphor-debug-tarball
> ERROR: OE-core's config sanity checker detected a potential
> misconfiguration.
>     Either fix the cause of this error or at your own risk disable
> the checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
> 
>     Specified SDKMACHINE value is not valid

What was SDKMACHINE set to before?

Cheers,

Richard

