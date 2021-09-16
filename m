Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web09.7459.1631774174576690112
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 23:36:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I0V+sMLc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id q11so7628647wrr.9
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 23:36:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=7iRcroh4W23q9hY0xGqSH4dQ6ygzdR8y/JISNiWthaY=;
        b=I0V+sMLcV85jFKrIP87GidYGd4ov10lM530TqW0wDzOB+P2Q15m/EjChtu0WUnsCkY
         tAa0TVmRU3L2H+uxMTQZmux5OwZ4i2yi5KbgZfwspgYeD8pcvC5aOa+eVPc76nnKpPdQ
         IyY0sZnp1ZeeXm7ghNWK5wZ9D5lT+WVUwDjJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=7iRcroh4W23q9hY0xGqSH4dQ6ygzdR8y/JISNiWthaY=;
        b=4RLKDur48lr8dUnBl9RqVtWN1ESXDzEKv44iya/G93+90RYJYMZgZLo8yzC9nCI5Um
         wE7myQ2MipCi9716vSBfK7n6MEvc03OJg3UU2wYTaE3wf1w6wPxtbB+Lp2OrAewlmhtj
         tLf/YF3HnQEx5yTgL0l0VPheApwkAkQh0z2kDUMF3JEhZ+bbfAFzDel52UN+pM1tsaaW
         4CUjUJUH1yHEOUYUpFSWa8DmUyf2/GjKZqrNFNEoZfFbUtK7h+eUj+t753WI/4prYgoh
         5i5GsPRy5+fEOystvz/00tUoFs8TnTpukJxo4GTpkL4Mde27BhLLAlTFGh0FjddKtvIV
         xNIA==
X-Gm-Message-State: AOAM531U72cB1th2nJKtPQ4OQJzmrmkG1AyGHXO5cOG1kCkjX3uvyEMI
	uHpvbd9kjjBG6hoMCKUuxaA42QeioRJx0dLF
X-Google-Smtp-Source: ABdhPJxY+jL78bdw3wEQaKFfw2+cnNEV3fnFZ8B3/JzZqkBQMyAh6GRHo46CU8jgknnDD7znaV03sg==
X-Received: by 2002:adf:f545:: with SMTP id j5mr4122725wrp.9.1631774172790;
        Wed, 15 Sep 2021 23:36:12 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f11f:8fd1:42b2:e87c? ([2001:8b0:aba:5f3c:f11f:8fd1:42b2:e87c])
        by smtp.gmail.com with ESMTPSA id a10sm2262091wrd.51.2021.09.15.23.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 23:36:12 -0700 (PDT)
Message-ID: <c6530d49069932111797e610258038660a9f903c.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.1.11.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Thu, 16 Sep 2021 07:36:09 +0100
User-Agent: Evolution 3.40.2-1build1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A build flagged for QA (yocto-3.1.11.rc2) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.1.11.rc2


Build hash information: 

bitbake: c2a3bda3a29e12472ef7862e424ea1552fab2959
meta-agl: 60344efa7a50dc2548fc4b5d68b5ad4d60c4023a
meta-arm: ce535dfb96de4d2529f091d7d85a7172c626001c
meta-aws: c5164c1a795c21f7caccc3b68bb2e81a55bddb0e
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 6837552365d3cac5f8044a5ae910aa874435f766
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
meta-openembedded: 2e7e98cd0cb82db214b13224c71134b9335a719b
oecore: c7d2281eb6cda9c1637c20b3540b142073bca235
poky: 74b22db6879b388d700f61e08cb3f239cf940d18



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



