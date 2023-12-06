Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7154BC10DCE
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 21:33:31 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.45778.1701898401161504171
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 13:33:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=dPADGUzk;
 spf=pass (domain: mvista.com, ip: 209.85.216.42, mailfrom: jpuhlman@mvista.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-286fb44eb16so241611a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 13:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1701898399; x=1702503199; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/tdU5ssHWjmvQ2lWdRan53yWq3dJy23tkzzRW5Vv6Hg=;
        b=dPADGUzkQlvX/RA0ggK94UnhaAaoOiOiN8nYpkJpbuNO0JarkYegbQaWKe628HnibM
         UxNuVgXwLvnfDKBqELgJ4Ku4C/FQ514KjoWaqP4mTCE0Yd0w0h6jCv0xS5LN7w0GxsrY
         m971Bw2UL9txWUkG2isWf3rzdOlckgF/PIBwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701898399; x=1702503199;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/tdU5ssHWjmvQ2lWdRan53yWq3dJy23tkzzRW5Vv6Hg=;
        b=Tracv+sqqFytToZd/IIT7/HY5AoQCGR3+gqOAXHFlWaD/gIKb33/24zRVKQG2yviqa
         taTrrjmcc3q+GjRhvZ9DnmyPYCt2sxDrUcsLhNNQhtGg0tq6RmiAK++sAz5gZjU3Qtpz
         AdeLGN3RbH3EUYbcaj6qV33vuz53S7OEY+Ehdt854sbK9DczvIwaxeO3DPBcHiHL/5VA
         EsVqOq8ExoyT2Kv9j+iGKgKqO5XwnHT4U+KwjTpxXWhdYgMRSJUJanfp4l+I/2Uft/dU
         VuX/3Dro0iDrNUL8Z3zA1SPxIpNBO4DzKlYzGMIZTgy2yxMdaXQ8Iy1Zp7pttnleMJub
         I7ZQ==
X-Gm-Message-State: AOJu0Yyl+G81AMUe9tv2KNVx41dP6bQIN1tmO94hiexzzuw8DP97zDML
	fKkpFNIrpEaThbHPRfr66LjgNUblLf4tRU9KqiE=
X-Google-Smtp-Source: AGHT+IHiZL1GIq2DKreF+9VH8fWBIPyE0I0LYPtygyx3JkuPOUwUkLwmVDap5D9znMYwNDA5Zpr6Lw==
X-Received: by 2002:a17:90b:1b43:b0:285:a160:df1b with SMTP id nv3-20020a17090b1b4300b00285a160df1bmr1407737pjb.7.1701898399437;
        Wed, 06 Dec 2023 13:33:19 -0800 (PST)
Received: from [192.168.1.9] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id 5-20020a17090a1a0500b002869616d2c0sm319209pjk.33.2023.12.06.13.33.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 13:33:18 -0800 (PST)
Message-ID: <c8ec51d7-3f15-4b5b-96ec-e1ce3963d519@mvista.com>
Date: Wed, 6 Dec 2023 13:33:16 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] "Replicating a Build Offline" not working as expected
 when Git data is removed
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <o2S3.1692955198371059896.EMq5@lists.yoctoproject.org>
 <CANNYZj9=HgFoctp0=_soxF6Wv3R8G5Og0SpEFL0y7CbbXRxJuw@mail.gmail.com>
 <CA+_BhBzFjDjrmWW6y22kHc_s1EkXa7ee9REMBDTDQMP+eDXidg@mail.gmail.com>
 <CANNYZj8Hv2YETSNd+uUmffSEA1Tv+q-gK7-u-WUOsrvqALr7Hg@mail.gmail.com>
From: Jeremy Puhlman <jpuhlman@mvista.com>
In-Reply-To: <CANNYZj8Hv2YETSNd+uUmffSEA1Tv+q-gK7-u-WUOsrvqALr7Hg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 21:33:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61817



On 8/28/2023 1:25 AM, Alexander Kanavin wrote:
> On Mon, 28 Aug 2023 at 08:16, Stephan Mühlstrasser
> <stephan.muehlstrasser@gmail.com> wrote:
>>> The documentation isn’t perfect. Sometimes it becomes outdated and no one notices, or it may be inaccurate to begin with. Personally I would never tamper with content of downloads and preserve it exactly as it is. Doesn’t have to be git lfs, plain artifact storage options work too.
>> If it doesn't work as documented, could someone elaborate what is
>> currently necessary to replicate a build offline? Is it possible to
>> reproduce a build only with the tarballs or is it actually necessary
>> to keep the cloned Git repositories in the download directory as well?
> It's well possible no one knows the definite answer, and the best
> advice is what I said: don't touch the downloads at all. In any case,
> if the documentation is not accurate, patches to make it accurate
> would be appreciated.
>
> Alex
>

For the core repositories, few if any use AUTOINC, they almost all 
specify the exact has of a git repository, if it is using one. For 
rebuilding offline, that works perfectly because you
have a copy of the git tarball or repository in your downloads 
direction. However, if you add a repository, as in the case NXP, where 
it is using AUTOINC to have a pull from tip of
specific branch recipe, it is required to fetch the current hash for the 
branch of that repository just to verify if the hash is in the 
downloaded git repository.

When this occurs on releases, we generally take the current value when 
we start the build and define the hash value for the recipe, either via 
bbappend, or a global override that
sets the value for the recipe, so it does not need to go fetch the 
value. That is more or less specifically the error he is running into.


> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60899): https://lists.yoctoproject.org/g/yocto/message/60899
> Mute This Topic: https://lists.yoctoproject.org/mt/100952497/2167262
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jpuhlman@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Jeremy Puhlman
jpuhlman@mvista.com


