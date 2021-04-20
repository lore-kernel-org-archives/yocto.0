Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web08.12999.1618934512889038044
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 09:01:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kpdlW3Lm;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id f29so26922112pgm.8
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 09:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=f9SC2nlIhN3z8KEqTZ5gbjUdu4HXnrkxoHRlOnqzmP4=;
        b=kpdlW3LmqwZLI7f6j0bwRwI6VFe14oHXXsJf1iDOBClDG8NfivNFfv/C/G4dbSQaEe
         5V4dGHu+5jhL+31YifSxzu3XdDOnljuY3gIJ6G1UwU1n4hfIECucOU10mjRPHJq14j2n
         H2tBZE4za6fJu+9OxvZMuHp4RYgMl9kleTTVC1qTruTnVuEIVIsV5qbD/ovVQySO9csj
         DbJEMlRcfd4LqOVasfSYUsRV/tIb52kThnIijeov+BKGJ5kjLbq0GROWyvumiwkMlNo7
         TYr/MKDd0EeNR1WirxzpWXVDnsv2o6wMQeDWLxUoY6+RLDdyBCz2PPeuiB4keYQauEXc
         wEAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=f9SC2nlIhN3z8KEqTZ5gbjUdu4HXnrkxoHRlOnqzmP4=;
        b=Q5i0FtGcljJioo7dZ+NT3tz8ZaeFa5Z1ku8jQbqFMUhZyxO/tfZT8aN1yBLO46X6Gj
         dQkaXW9qKXuM/f2GyYE5guIpPiKhG2mXhijSstvUAdK2Q9f/WEpCD/BxluczhbpiJVTX
         7RwHjH7GeSZsATQ2zCGO+MQHdmehmdvqisPIEIBGBkQPpgA+F1Dj6fIs1ondiOacs4Az
         y2AkEUL2XH4XgPVKd2ukTEOQqvJGXibV7PQN4mqUvkhnGqUe+vr32See1gp62GzWfhoz
         Nb9fppu+rX5apnQxl/Z/C7SSKYQDLXV4s6TOKvu3J5lNcJo6VMV6dkXpIZQf9faPQzCO
         b1Sw==
X-Gm-Message-State: AOAM530AMIqKY0o4cPp286eTWmfRsoppP2mMUY6n8RNIqDk69WJ5WCyb
	c8yBFq5BUriqRhAO1vvT83OgyZR3iGpPYw==
X-Google-Smtp-Source: ABdhPJxF182k1fYbzmQDrMqF1nQ/tmPFf/qW2lrTR+jCfg1gynXpaDkSEe8+u/v8Tr7JDISOekLhqQ==
X-Received: by 2002:a65:4082:: with SMTP id t2mr17846806pgp.396.1618934511943;
        Tue, 20 Apr 2021 09:01:51 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:692a:2f5c:cdd4:70fe? ([2601:646:9200:a0f0:692a:2f5c:cdd4:70fe])
        by smtp.gmail.com with ESMTPSA id n39sm12783067pfv.51.2021.04.20.09.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 09:01:51 -0700 (PDT)
Subject: Re: [yocto] #yocto llvm support
To: steven.monsees@baesystems.com, Anton Antonov <anton.antonov@arm.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.167795E0A720E61F.782@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <43166f11-0856-8eb4-cffe-f2598a0495df@gmail.com>
Date: Tue, 20 Apr 2021 09:01:50 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.167795E0A720E61F.782@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 4/20/21 7:00 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> I noticed similar behavior…
> 
> I am running zeus 3.0.4, “devtool sdk-install llvm” will get llvm 8.0.1…
> 
> When I build meta-clang, and I set TOOLCHAIN?=”clang” in local.conf it 
> appears to grab llvm-project-source-9.0.1-9.0.1…
> 

this is intentional, when you use meta-clang, then llvm is preferred 
from LLVM since them we have consistent version of llvm for clang and 
others.

> *From:*yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On 
> Behalf Of *Anton Antonov
> *Sent:* Tuesday, April 20, 2021 9:51 AM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto llvm support
> 
> *_External Email Alert_*
> 
> *This email has been sent from an account outside of the BAE Systems 
> network.*
> 
> Please treat the email with caution, especially if you are requested to 
> click on a link, decrypt/open an attachment, or enable macros.  For 
> further information on how to spot phishing, access “Cybersecurity 
> OneSpace Page” and report phishing by clicking the button “Report 
> Phishing” on the Outlook toolbar.
> 
> 
> Hi Steven,
> 
>    I used meta-clang in my recipes and I noticed that:
> 1. The current release of poky uses LLVM v11.1.0 by default 
> (poky/meta/recipes-devtools/llvm/llvm_git.bb)
> 2. Meta-clang requires LLVM v12.0.0 (meta-clang/conf/layer.conf defines 
> LLVMVERSION = "12.0.0")
> 
> As a result just including meta-clang into bblayers.conf will require 
> bitbake to build a new version of LLVM and rebuild everything which uses it
> 
> Anton
> 
> 
> 
> 
> 
