Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3191FD116EA
	for <webhook@archiver.kernel.org>; Fri, 28 Nov 2025 06:45:18 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10491.1764312308942257631
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Nov 2025 22:45:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=huBM06Fv;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47798ded6fcso7525265e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 27 Nov 2025 22:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764312307; x=1764917107; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BVFrcG8QzJc8FCAU7UyO3RyKH9kAJCxgLM2o15OgLz4=;
        b=huBM06Fvr1uImt8MvviZYoh4Iu7lC4mkizWwfyhYPtj9fW+tiE/FI7CyEtAhSV03rD
         LBzlqAXgJ6tI+cFR/jbpeuHUnKNTfzn9gD1K6SQq8zVgj080Ul13z2xZ+ItWE+O9+0uA
         laXr8vNV5fdhLVsp5sb6SgwI36Ht+KicQ8KrVKUapddRc5OYLE/U4plsRUSGVXtWo/A6
         mR/H9CaQruD2w/XXDLmy5qTzdOMb9QWNoxvwNFcA7FlYMHHdN5gIuugv3ZNl31ElAJiP
         oYbH0u/h8Zvh/CR/BJsLNYO7irMzncv1NmNCFD8TuDhVz3MUMpIdbAcCoaT512D+CN6y
         I/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764312307; x=1764917107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BVFrcG8QzJc8FCAU7UyO3RyKH9kAJCxgLM2o15OgLz4=;
        b=Pn/SEHgXdRdJBXTpQEmAvpa5xf7G9lR1qwd+MPBw4WbqzhMoFgmD9g43hAmD3Cf9R/
         hztXse1sUTuJ0op69tFUKHPrAxzpWijJss7yYFd2jn9i3HbFe9y2VUj6lQ4HrRfYrm7o
         8A7SqiFPhwtYS+FWr4tSMUZmUDjvDDCJFzbs/AdvAbKQTUdo5A1W9cTE7bFfk3e/65j5
         0luWrnEd3Jg+wdfaHodB1K7o3KqFOuP38HlkkCa80QWCEcZRzrOFHfPBCTmFGP/Y71+9
         2XGHQYOmDHa6iPntVUOxbckqzf1sYasW46oNgmbbKjKUbR1yqc5SaiIafEKhDYSDjnRr
         RnRA==
X-Gm-Message-State: AOJu0YyWGGpb5A6CrWtOWvSov8H940nZ/lnCJVWX5rHHvSNYvS6h0Bql
	s9co1v8dvc7JB1p3uqov7HmjWpZu53k8CMxoXPY0gKYkLL6jt5EuN52ZgTwC7g==
X-Gm-Gg: ASbGncuRe1SvCokxBHMWKbnlFusk9rtdcmXSatmC4H8Ao0I3SC4Y/N0Egn/BBEPpgUX
	ZDaFXEpl4Arjg0oVkDPPyUdSM0HH/9j/BrtgfkBhY9qmHrNKvEbT7Y2PvCRmfTbdVC7s8pm+Cbd
	25fd5wYK6Ry0J31ld5K3uQ3IC7FgVZEsPe1XUkTLIZevePJB7eP5KSrI4bC2fDAJTOHWRnocL64
	YTnOt5BM4YPQhCR77STNk0d7VhadIBYf1Y/CtFfGmf2yd4hYZX2M+52MEXcoR42JhGEZ3PANB/F
	jZAhYKs14a0yweRTn9MhzE7lpde6jjd8oStf040AgfX6UOrQyp0AjJTthP2tx497ef5m7WJsCHS
	zzqUui74ruFuC+EZoHtCNEd6tXWVAXsorNBjoo2PyQg9nn5EdmN4LFLdHytkufQiur6M658wlkv
	mTf6I7eyyL//e6ipzZw+k=
X-Google-Smtp-Source: AGHT+IHucaEQyF6bBL9Uscl4Y8Y55z4v5kGXKTyr/DgVeLB2rywxvXDNBFXgRSiiCtCGghpxpDx0PQ==
X-Received: by 2002:a05:600c:5489:b0:477:b0b8:4dd0 with SMTP id 5b1f17b1804b1-477c1119c31mr249709135e9.17.1764312307130;
        Thu, 27 Nov 2025 22:45:07 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790b0c3a1dsm137844255e9.10.2025.11.27.22.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 22:45:06 -0800 (PST)
Message-ID: <d3ef3016-373b-4def-9293-e8a55b30864c@gmail.com>
Date: Fri, 28 Nov 2025 07:45:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: yocto@lists.yoctoproject.org, jarno.katajainen@solotop.fi
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
 <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com>
 <564360.1763630492381329900@lists.yoctoproject.org>
 <46e999f4-7254-453d-8414-b019d0381209@gmail.com>
 <686098.1763993744038185859@lists.yoctoproject.org>
 <d8c5fc86-eac2-486c-9dec-c03b076a3e5e@gmail.com>
 <699212.1764085168440917647@lists.yoctoproject.org>
 <4bdd99dc-9607-45de-b4a0-66f99c692241@gmail.com>
 <704596.1764176322563402932@lists.yoctoproject.org>
 <730623.1764247072485929200@lists.yoctoproject.org>
 <727649.1764273168052317374@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <727649.1764273168052317374@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Nov 2025 06:45:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66078

On 11/27/25 20:52, Jarno via lists.yoctoproject.org wrote:
> as stated earlier i'm still a novice and this took me a while to
> solve. There was a devtool created layer which had
> weston_13.0.1.bbappend deleting it and rebuild i got this working with
> '0001-Adapt-weston-to-64-bit-plane-IDs.patch' than you Gyorgy Sarvari._
> _

Happy to hear, thanks for the feedback.

