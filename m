Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web09.164.1632262125920259241
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 15:08:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=iP1LQ0z7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id w29so905975wra.8
        for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 15:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=itrPLOqvCd+jC0a+V8J/TQ+LUN85V+2nA0t5joxKwdI=;
        b=iP1LQ0z7Bv23eBBV0JyVAPsFsLSn3o3zExG2JWuxUVk7oyWBTGywS8PxTjyXybrL3e
         8EtgAo+iETRivcJEq/kOCwjMYtF2fh3uXZZnU6is0JOxFKP5D00NCG+5UATdkRljyzCl
         cdFwOS3P3GJjTG0Wyjdqj7nf2rkJelOiskJk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=itrPLOqvCd+jC0a+V8J/TQ+LUN85V+2nA0t5joxKwdI=;
        b=X9GCdhn4kV8qdOYHP87rzPNAaJXSAjIvwFRoutBZSfLDBq2jD1JK5ONJbu6EKZ9Ups
         jOFhcnWlmqo7mkZ5mSaY2hUNciagfOIVw9f1VjizN2BYosRhSG+IGqHC/XSUzVtijFQs
         xew6lt8E+FMMWQINrh+h9PVyuI37LQDxgZid7H7AuY5LVMv/7I0pD6gFxvQ6kODGvRDg
         MN6VhhbXD8iGEDnNdc89g09hZwgbxiU6A4of/AGori34ChT/KYrbtSwcGF14HZbVJysZ
         FuKO4Kx16dmYRggfEpRgp4kATIeOKlcO0G6JBRrw9RKAsgoVPi3N5Stw8pV5Z8JmXIgq
         citQ==
X-Gm-Message-State: AOAM5336nNOOG9j//XQ2IN4tDmITsPpP01zmtgtHe7HW9U2wv3FkAuHT
	SGFN6l2PfVJTVmxo4YCE3e+u9g==
X-Google-Smtp-Source: ABdhPJx+UxLmYvry8TdfsYKKKdgIbmJ7vb5tfgp8oPdXov9aQIzbZuAJnoPEV3M2FY9r3/tPzDq14Q==
X-Received: by 2002:a1c:80cd:: with SMTP id b196mr7148520wmd.36.1632262124143;
        Tue, 21 Sep 2021 15:08:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:4259:df2c:1481:cafd? ([2001:8b0:aba:5f3c:4259:df2c:1481:cafd])
        by smtp.gmail.com with ESMTPSA id y197sm4834482wmc.18.2021.09.21.15.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 15:08:43 -0700 (PDT)
Message-ID: <02273086d73c29b85e37d3a430b4e07e9ebd7430.camel@linuxfoundation.org>
Subject: Re: [yocto] Switch to a different Python3 version
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Lijun Chen <lijchen@blackberry.com>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Tue, 21 Sep 2021 23:08:42 +0100
In-Reply-To: <91a33a503a4a4dfa8c1fa0aae18d4d1c@blackberry.com>
References: <91a33a503a4a4dfa8c1fa0aae18d4d1c@blackberry.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-09-21 at 20:00 +0000, Lijun Chen wrote:
> Hi,
> 
> Currently we are building a Yocto image based on Hardknott release, which
> includes python 3.9.4. Due to a App constraint, we have to downgrade Python3
> to 3.8. I tried copying over 3.8.5 bb file andassociated poky/meta/recipes-
> devtools/python/python3/ folder, but the building failed. What is the best way
> to switch/downgrade python3 version?
> 

Hard to say without understanding how it failed. What was the error?

You probably need to match python3 and python3-native versions but I don't know
if you did.

Cheers,

Richard

