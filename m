Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A3B2D10BFD
	for <webhook@archiver.kernel.org>; Sat, 26 Oct 2024 14:23:16 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.11400.1729952593870903294
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Oct 2024 07:23:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ixG4Sm8D;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a9a6acac4c3so447046066b.0
        for <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 07:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729952592; x=1730557392; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T3qrYXL1SrY9Ttx2RNaUivc1VSfVU0Xam921+jRB8sk=;
        b=ixG4Sm8Da4VFBjQ2mJX7xjkjFa8BGl+Q+fwl7I+X7+jsY7krHu8AgYJmhszlWiKYBJ
         MbblUEPQsWCp3sptXN3lRuBV6U2iKTu9H7Wj4sPvELtJyx8CexcFsxADP6Qw3w9PSYsZ
         5/WHmxJruLNpLyqup71BmWOYGLLciPQkRoqNie//d3QbZA1YHbHR8RtcYEjsuwczvNIy
         +OW5VSiuLWo2Lx2MTMbx2EALTRlYSSeBTk27JVxG+QyOdEjiBhilVtYt6gLrMMViq9Rv
         E28t9i9eCGSs5ycvdPvoeWv3zulM/b29vjXZcjjXG2EFeqibFbc5n/Y0q/NL0KMwedfI
         gulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729952592; x=1730557392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T3qrYXL1SrY9Ttx2RNaUivc1VSfVU0Xam921+jRB8sk=;
        b=Yr3UQHyHyLVsovxtMIEqYvv4iYw1k/AABIipN/stk8wFfI7lE3Zlvy0nm0onP6GKF2
         ScrXGXgUdi+folN+sap2wrOKF6Q9MXQKeCzmffB3D/WCvAg8yLBLz4okOqqUfcAQEt20
         Lp3URDuhOBNLoiAWH4g4bMQ2FbdHb6lGrOC7r0pAMNbiRI0maFUnc8e/aFNol/y/wznM
         5nZkOv/1Jyjzvh3buoVWEQO5g3Qw5SKA8+EGkbQn9Lw6AoCg0f0Vzeri4uUVcaT1nNE/
         8TmEPQLMayRE8jZP2QpK7YIynjXOJyCOPRT1c3GZvo3+Z3ioQ7Es1+zpVg5ANgNtiKRy
         O5Bw==
X-Gm-Message-State: AOJu0YyYHRGoV0slvaoieJULPyKYVC897uzgYiJYb0vdGoKoceDb0H+F
	tqEjeCnCKnim6vJEn8XCln0YKf3njd+m3DBAwyRDV7H5cTh6tdxi
X-Google-Smtp-Source: AGHT+IE5nljya7kpcmU/T/pA3uZam70PGJrL9/K45v8mI8Ed+AUnWsn1XoKFA1r0OWLVpV/cAB9tCw==
X-Received: by 2002:a17:907:7e88:b0:a9a:bbcf:a3a2 with SMTP id a640c23a62f3a-a9de5f6775emr220973566b.34.1729952591974;
        Sat, 26 Oct 2024 07:23:11 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b1f0298fdsm178861666b.54.2024.10.26.07.23.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2024 07:23:11 -0700 (PDT)
Message-ID: <d8d28f79-8b34-4309-8778-49bae8267cf8@gmail.com>
Date: Sat, 26 Oct 2024 16:23:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to set real time patch correctly? #honister
To: =?UTF-8?B?15fXmdeZ150g15HXm9eo?= <haimbachar2008@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <mi4v.1729941968245217599.qLzF@lists.yoctoproject.org>
 <f2383bbc-427f-48b0-95e0-dda647ba9241@gmail.com>
 <CAOJpL53RCmNZY=dS+Wm14z=HqUbeNd9Qt0fJ6Oansy6mor8NXw@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAOJpL53RCmNZY=dS+Wm14z=HqUbeNd9Qt0fJ6Oansy6mor8NXw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Oct 2024 14:23:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64141

On 10/26/24 15:59, חיים בכר wrote:
> Hi and what if the recipe is linux-xlnx then set 
> PREFFERED_PROVIDER_virtual/kernel = “linux-xlnx-rt”?
> 
> By the way what the different between linux-yocto and linux-xlnx?
> 

linux-yocto (and its -rt variant) is the default kernel coming with 
Yocto. linux-xlnx comes from Xilinx, with their own modifications, and 
looking at meta-xilinx layer, there doesn't seem to be a recipe with the 
RT patch available.

If you are not using the default kernel, then possibly the simplest 
would be to create a bbappend for your kernel recipe, where you add the 
patch's uri to SRC_URI (assuming it applies cleanly on the vendor's 
kernel still), e.g:

SRC_URILappend = " 
https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.15/older/patch-5.15.36-rt41.patch.gz"

After fetching the source bitbake will extract the patch and apply it 
automatically before compiling.

(If the patch doesn't apply on the xlnx kernel, then maybe Xilinx 
support has some extra info on this? Adapting that patch could be a 
non-trivial task)

