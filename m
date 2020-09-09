Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.14845.1599661719623095372
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 07:28:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJctv1Jz;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id t7so1417669pjd.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Sep 2020 07:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=PBILSNfNYAqtE2fR1fck/CSAP3j3mDz3qYxj6A3eXfw=;
        b=iJctv1JzH7feDfsx4XPiDoO7QVLuAuXtdCUj39Y+++5nlLVUcZMstfpDEMLhw8KdLw
         bfbeZoYyJrhypr7XvipsoE6oCdHuK3uiVQfX+SLrgSI3HMlWqOi4VtJZFZe975KTgUAj
         wS8vRazxyvWGlNhs4Dtgp7gjiIDqNyU2Y5ZRvsv71guLAFOF7ebBNpTwXK5vCiOlR5lE
         B8L3oO0CmV0M+3sgWAQr/1Ip5IgOJWpidq/nINWfezCAJQP2sYsrTz+1iarWvsjkqbbJ
         +O+eXFOYvkbaaszvpZ58PYlAdvLQl3UWNFsbQGNDkrPfG6sn/qaHYbMYaV8BhTs4PfWd
         RAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=PBILSNfNYAqtE2fR1fck/CSAP3j3mDz3qYxj6A3eXfw=;
        b=c1n2mZioJu/RBWdGQU83d//RptWcOIfULmSNV4ybPb8FEMFiy4S6/WHoA0wkDk7xBe
         Bxv1Jeczm5Qw8pyTnDDsdHZv9doI9DtvCuK2VMgqdb8PIGcMZZ54N+P21vXpp/mfrtk5
         WZefzQ53LE0Y/w1O6nfQb9XTP0jDtD3oHTWtIFBgugvhSj4/PQBcX9gjsIiJEH72reHO
         BDl0szzxLb7kLHYN0kCGaCbE0eX2UsE+xr/GTpQr8lcg2Yw1bCbs4zPo4T9exVrjtEit
         FYlkbGCtEVZOj9lCRIZCBBb4OeJXjHqNAv84dXpoyP4H5++w2n4mcGMnkx9CupMZCt7b
         85lw==
X-Gm-Message-State: AOAM530KOBZKkCuYAg3ZjDGluBNURa/oRnGbZ/nxAcWPT/DB0FBKO/zu
	WO9KMNKZ/ckb1Wjb6nl86ZQ=
X-Google-Smtp-Source: ABdhPJz10YAkNQyIdq9M7MitCpnrXwFuwJD90nMK2bKfJr0A6gsOPV2F0LF0s4q86BbI0LSE9E0q7g==
X-Received: by 2002:a17:90a:5588:: with SMTP id c8mr1035672pji.224.1599661719123;
        Wed, 09 Sep 2020 07:28:39 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:812e:2d2f:a669:186f? ([2601:202:4180:a5c0:812e:2d2f:a669:186f])
        by smtp.gmail.com with ESMTPSA id y23sm2927837pfp.65.2020.09.09.07.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 07:28:38 -0700 (PDT)
Subject: Re: [yocto] Outreachy internship project - license tracing enhancement
To: paul.eggleton@microsoft.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
 "Richard Purdie (richard.purdie@linuxfoundation.org)"
 <richard.purdie@linuxfoundation.org>
References: <KU1P153MB0101B0B12FE45FCAA37F173BFE260@KU1P153MB0101.APCP153.PROD.OUTLOOK.COM>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <466d0ae1-09e8-7d82-b077-50d0db3d07ec@gmail.com>
Date: Wed, 9 Sep 2020 07:28:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <KU1P153MB0101B0B12FE45FCAA37F173BFE260@KU1P153MB0101.APCP153.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 9/9/20 3:51 AM, Paul Eggleton via lists.yoctoproject.org wrote:
> Hi folks
>
> I'd like to propose we put forward the following project proposal for an Outreachy internship (https://www.outreachy.org/communities/cfp/). I'm prepared to be the mentor for the project and Microsoft will provide funding. (Note that we haven't got our community re-registered with Outreachy or set this up as an intern project proposal yet - deadline for YP community registration is September 17th and for project submissions is September 24th). Here's the brief:

This sounds great.

Are you looking for YP to take action on  registration or are you
handling this?

-armin
>
> -------------
> Yocto Project License tracing enhancement
>  
> The Yocto Project build system is typically used to build customised Linux images from source for embedded applications. Along with the image, a manifest of packages and their corresponding licenses is prepared, however the accuracy of the license information is dependent on the accuracy of the metadata we have for each package (i.e. what is in the recipe file). As part of the build, we have an internal mapping from output files to source files which is currently used to prepare source packages to aid in debugging, however with the presence of SPDX headers in source files it could also be used to allow tracing the license of sources used in building a package/image to help improve our metadata and future license manifests. A proof-of concept implementation of this has been put together [1] - during this internship a successful intern will:
> 1) take the proof-of-concept implementation and get it to a state where it can be merged into the poky repository
> 2) use the functionality to examine the accuracy of our license tagging (LICENSE fields in recipes); look for errors / noise in the comparison, and produce a simple report with the results
> 3) run a check over sources in a world build looking for percentage coverage of SPDX headers, and run it for several past releases to see the change over time
>  
> Bonus: assess the current state of meta-spdx-scanner; investigate what it would take to produce SPDX documents from build output (would likely require integration with Fossology).
>
> [1] http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=rpurdie/license-experiments-osls
> -------------
>
> I'm making the assumption that we're OK with merging the PoC functionality in rather than just keeping it separate and using it for analysis - let me know if otherwise. What I'd really like to know is do people think that this is sufficient for a 3-month internship, assuming that the intern has limited to moderate familiarity with our codebase? Do we need to flesh it out further? Any modifications that you'd suggest to the work?
>
> Thanks
> Paul
>
> 

