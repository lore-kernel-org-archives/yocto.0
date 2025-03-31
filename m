Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B378C3600B
	for <webhook@archiver.kernel.org>; Mon, 31 Mar 2025 18:42:36 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.347.1743446550832433977
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Mar 2025 11:42:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lRJuPm8e;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e6167d0536so4865982a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 11:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743446549; x=1744051349; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=86SEYheNgjiiniSKAsEkD/KsNHwrI1R3Swn4wyyreTg=;
        b=lRJuPm8eDlBLz4ANdG3M7JQTjl/UA7w9V+F6sW1YW3pOU/o27mVFS6nUb1hK7pRJUP
         Ekyj3Zm3lqNpYJhH0N0e014/WlCGc33UR/gmBNgjST22OZga5sS6zaIjpxGnTt64zVdF
         AgCgX4DMvgIR/IaGwa35iy8Z5V1yFA7LHHQxKoxLsqwg9eowlLEktYc3tY/rZ6apgHyl
         lbGEBpQOCGRPqJxIQp6Z+tDQM7OouYhreDEUzCPpaT1/3dGcx/CW2kl+gW1OPm0JIN+p
         W9lQXd7NSAwUMvfhYA5jQ9aoqICi9PPqKDKnQfMMx53/tbI+wDu1SWItbzVX//gEIUZ0
         EKHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743446549; x=1744051349;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=86SEYheNgjiiniSKAsEkD/KsNHwrI1R3Swn4wyyreTg=;
        b=aGhErUrJZIAphFlq82K80QRMCXZaqHieHryTSOU3a6Voin5mZ5/A+6Lpa3JLY6HicS
         W6fCRz4ymbvzb4fJe41wb6zoh0rqQWq/CU5+utzEPMwIqj0nkUFa3nBeibjwLl4rrfBh
         Huzo29FMn06rSyoQGxOrpTbPZTT//VxJP0PIcvO+hoEEsGNQ1RA27P86uT+NPeNmrGlu
         lLdVhNWrEoJk/9nlImAsr1v2cA3O+SvoUsgMqmj9AzABUB/IfYhNzkX9nxo/gfjeU7+X
         419d2KVXCXJzrVvACU3FaZJjHEu5In1h6qTjVNiRSFeQzg2LKuR3OqgllB4XcBxmiQAx
         9NWQ==
X-Gm-Message-State: AOJu0YznFUhUP0fPG7ws0T+kTc5KGk+Y+v+i8St4flp4LPJ4HeVq7JQQ
	9FJSQgdIqa0Y2E5pONRzLNHhN/hwvRmxX3VjqQ4yO+qOAkn6ViSzIbCVsg==
X-Gm-Gg: ASbGnctsThb4mAftISseojw/yRZMDcqePnRMOkA6cFXMm+G8wKIAi9I3E+3aW3xdPjr
	kJDGgl7V6nNUl9JwGh8gRvCDxcyRh+nMHQLdENF2o5Znz8oJpDLH9mE8JcA9bVQqu5i+sVBnpNg
	2XQbeGYj+ds/wItbDRYMG/2nTOXZvnqqkboA1q8xTUuRR9UWiD7sV63O3Mjh0qfVNEnVpCVGoMB
	elMfWFjrZeebyGWXoFk+mngCMc+zCZBW+q4DzPDDLT9HjqCl9RrkHs+1FOar37EzwHPPk6gywWP
	FAjYZgMhVMOWyGWwuqPcI280iziptdmd37X62cM1RtcBk8P0PvS6S4eIka19QwM=
X-Google-Smtp-Source: AGHT+IFW55zCkgaQqmhYmAIY6TfGcGyh+TqGqWWd2Pjbi/5hoELKKab/ewcghvneznhiXejA9BdP0A==
X-Received: by 2002:a17:907:c28:b0:ac2:b826:1e6b with SMTP id a640c23a62f3a-ac782af62damr25882766b.4.1743446548657;
        Mon, 31 Mar 2025 11:42:28 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7196ee610sm668651266b.172.2025.03.31.11.42.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 11:42:28 -0700 (PDT)
Message-ID: <985756c6-f604-4d46-9e71-a2eb2a089926@gmail.com>
Date: Mon, 31 Mar 2025 20:42:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] ERROR: linux-qoriq-6.12.3+git-r0 do_unpack: Directory
 name ${@d.getVar('S') contains unexpanded bitbake variable. This may cause
 build failures and WORKDIR polution.
To: yocto@lists.yoctoproject.org, jdowd@slashdevslashnull.org
References: <8dqs.1743440945224096658.swJ0@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <8dqs.1743440945224096658.swJ0@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Mar 2025 18:42:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65039

On 3/31/25 19:09, John via lists.yoctoproject.org wrote:
> So I get the error, but the only place I can see this construct
> occurring in the ENTIRE yocto project is in
> "poky/meta/classes-global/base.bbclass" which is one of yours, correct?
>  
> Line 158:
>
>     do_unpack[cleandirs] = "${@d.getVar('S') if
>     os.path.normpath(d.getVar('S')) !=
>     os.path.normpath(d.getVar('WORKDIR')) else os.path.join('${S}',
>     'patches')}"
>
>  
>  
> I am getting this while building like this: "bitbake linux-qoriq"
>  
> I have no mods to the yocto or meta-qoriq layers (I'm lying here, I
> took the 2 layers under meta-qoriq and moved them both up so they are
> at the same level). I'm just trying to build the recipe linux-qoriq.
>  

What version of Yocto are you using? Also, could you please share a link
to this linux-qoriq recipe?

Random thought: I wonder if your kernel recipe was written for
Walnascar/master (and it uses the UNPACKDIR variable for some reason
explicitly), while you are using an older release of Yocto.


> There are no direct references to the do_unpack() method in any of the
> referenced files for linux-qoriq so I'm puzzled here. How is this
> happening and how do I fix it? I assume that there isn't a bug in
> Yocto (meta-qoriq is another matter) but I can't be the only person to
> have seen this happen.
>  
> Cheers!!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65038): https://lists.yoctoproject.org/g/yocto/message/65038
> Mute This Topic: https://lists.yoctoproject.org/mt/112008518/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

