Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.6498.1588681554344753777
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 05:25:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=O4QFdoie;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id s8so2477097wrt.9
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 05:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=aiXBgyHBE+Vk5mdErEuqlAudmF8QUh9GSdNJ4TRnzqg=;
        b=O4QFdoieBWlP9X/mBzo+6zlqkJVJk+hWPFrh9KTjy46NNdiDaPSByk4yXMAX+QCFEZ
         SKVx2BeGu2P3ZlQPiRzJrLoAalmh4VLnvClVZt7Yk/JD72kebZCDp1v3iHTKSRev8x9m
         JTsoW/SQTwiUbsP/tRHxrSHXfrSCaHyFPfKkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=aiXBgyHBE+Vk5mdErEuqlAudmF8QUh9GSdNJ4TRnzqg=;
        b=BtGru+ORjB0B0V4pvDqtdwVnKHChinBQoiUdksJcGy7753Cj3DIkvO1Gv3BonWCJSW
         NXbtKUleNQrn/V3bVtVbb0SPpvwf6KNjJXJQ2JV+TXov+ZesMHkdZEjb37ZtxMZ9NpxO
         W6SUxi5+/6/SlbdOzG0Xre7BAXK5zwVHCknLuz7wrd8TAK6XyP9yNj7mEDMOj1IxY79x
         xzETUXj3j8Voo3XR2JR7eh8tw9Qn/WpwZ6ZnqrmgEyZ1kIoDOmQ5HbFmH/GHZjcf1Pl4
         eMff6+HDzHbzHlMlfgOKCKENsltn1R/qAtPCHdgpv4zVfxGhmLQ1L0rBKrYVt6dvXYfz
         BS6A==
X-Gm-Message-State: AGi0PuYX3I1M847AZWU6ZEXqDqa24O8ACESBwvOcATkDwQ0FQ+ga70Gb
	tU6ezt6pEZnKx4SA9DFn73LRiJFO5OY=
X-Google-Smtp-Source: APiQypJWOIniT2Fc7hKVe+FPdp3vjaKAV74oqkoDPqe6fH38FFfDnRVUf2aZnGPp6suASNmW8yRq0g==
X-Received: by 2002:adf:d0c5:: with SMTP id z5mr3750740wrh.410.1588681552514;
        Tue, 05 May 2020 05:25:52 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id 17sm3469035wmo.2.2020.05.05.05.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 05:25:51 -0700 (PDT)
Message-ID: <7678bbbeab464034e6e9248f3d05cab288f9bce8.camel@linuxfoundation.org>
Subject: Re: [yocto] oddities(?) when appending to an override
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, Yocto discussion list
 <yocto@yoctoproject.org>
Date: Tue, 05 May 2020 13:25:50 +0100
In-Reply-To: <alpine.LFD.2.21.2005041606030.7931@localhost.localdomain>
References: <alpine.LFD.2.21.2005041606030.7931@localhost.localdomain>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-05-04 at 16:28 -0400, Robert P. J. Day wrote:
>   i bring this up because i've run across occasional examples of that
> in the code base -- here's
> meta-gnome/recipes-connectivity/libnma/libnma_1.8.28.bb:
> 
>   EXTRA_OEMESON_mipsarchn32_append = " -Dvapi=false"
> 
> is that deliberate, or is it just asking for trouble?

I suspect its a mistake. If you want to create a list of the
potentially incorrect entries we can review them.

Cheers,

Richard

