Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.2383.1596087425425742960
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 22:37:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GxThkGzo;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id r4so2529320pls.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 22:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=sWsHDsHiDYlQQx3CHo8P+jMep6BNgYL+IdRNASqDCQA=;
        b=GxThkGzoBCfH84/l9OaivKH0jgmZFJoAkuCSNz3Y3s9bk8UfYFAjDQoE4m3yfWPfov
         UrhJaLljIQwVKEqHNeH8qgSgGgWy7oyfok34tSSrmRvK0TSPuGtt+c5azODj7AY7UMGn
         hvIbDu4O0Ph0B/Sf8hMOQCki7kFxHWYL2F0QEk6p2K8dmUJRanKFchhLqh8sFNnmq29g
         hf7HKsVCDIizXK+1XKwag+Wotb1nNAhcyfRk1ny+dLA5OOxZuD9Dxmb30s4kP9/TNjrH
         oKcjuwIWhVGHEF6etmmx2h1ygRnLXoPf09WS0cBAiCm/XBC7To+FE2gUESas4ytvGRdO
         8y0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=sWsHDsHiDYlQQx3CHo8P+jMep6BNgYL+IdRNASqDCQA=;
        b=eseGJWE/CAumaowFd/7g2q+JPfclbKpz6epVLWstnrqomBS9OaD6lF1AyMWujCNJa7
         DyAhwXWt3PDYCXaZcugOwtcNsUqB04pBw7wETOR9evupl5c1JJplA3fQyUoxiqcbObuR
         AHCMq7YiEcRZhIADPP2hjcACArW5yGzmyqmR0AJE9NYSIOA/tMAOU6HGiQzUkhZvvXwV
         0vdbLI4n+PewXVrlkwom0OiZjHrn+/sBUIXRmlGEbRx6dUfWDBKbanZ/wB9OZ2PYxEQ7
         4O5d15WN5T4bGV2Nos7w2RsJeYUGHM+zDZDW54p4Lx/f4+HEqpBE4PdGapc5hZfERF9T
         rJhA==
X-Gm-Message-State: AOAM5311+YxWYLCOP0Ho89NZT+FBv4lmIchYzpJVfvAg0iGlIE9QfPJB
	TcGquszq+q9mmYUxkZUJ4j1XB3bJZis=
X-Google-Smtp-Source: ABdhPJyKQNMuVCLW5Uen6LdWbvhiRtAcA7tSc56AeU/OiBooNIC/28SChprFc2HozVoeeywYe9fzgw==
X-Received: by 2002:a17:90a:fa92:: with SMTP id cu18mr12947383pjb.215.1596087424300;
        Wed, 29 Jul 2020 22:37:04 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5ba:2655:68eb:112e? ([2601:646:9200:4e0:5ba:2655:68eb:112e])
        by smtp.gmail.com with ESMTPSA id y9sm4100265pja.13.2020.07.29.22.37.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 22:37:03 -0700 (PDT)
Subject: Re: [yocto] #toolchain #yocto #devtool #linux
To: andymishra97@gmail.com, yocto@lists.yoctoproject.org
References: <qEDV.1595912993747746816.6I57@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <c05fea9b-ce7a-0a66-64be-a3fe4f28e033@gmail.com>
Date: Wed, 29 Jul 2020 22:37:02 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <qEDV.1595912993747746816.6I57@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 7/27/20 10:09 PM, andymishra97@gmail.com wrote:
> Hi,
> I am trying to build a yocto *demo-coreip-cli* image for my custom 
> RISC-V SOC which only supports *imafd* instructions. For the compilation 
> of cross toolchain that is used by Bitbake, I tried changing 
> cross-binutils.inc recipe and cross-gcc.inc recipe in openembedded-core 
> layer by including “*–with-arch=rv64imafd*” in "*EXTRA_OECONF* " 
> variable. Is there anything else I am missing or doing wrong? Thank You.

I think you could start by defining new tune files for this look into
meta/conf/machine/include/riscv/arch-riscv.inc and also tune-riscv.inc 
to understand the underlying mechanism, we currently have lp64 and ilp32 
options available, its not clear what particular ABI you are looking for 
( is it rv32 ? ) but you can encode it there and then use the right 
tunes in your machine to use it.

> 
> 
> 
