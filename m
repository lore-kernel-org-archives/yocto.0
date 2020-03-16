Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.63470.1584347742865216636
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 01:35:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=VNKV7HHu;
 spf=pass (domain: googlemail.com, ip: 209.85.221.47, mailfrom: matthias.schoepfer@googlemail.com)
Received: by mail-wr1-f47.google.com with SMTP id x11so15269971wrv.5
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2020 01:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=r0ub8ZoIhIuQwz9uqgoj8r+U2E+YMqb1LFrIBtjCVuY=;
        b=VNKV7HHudWUModaK/eBISRasJl7YAZe88VQidTYRIMyhoFL2D55rTrWhYG0TmS6WUr
         X1b6LXU0DwXHOFxQ5c+Wa1nclfdWqIORzJB4zZD6BIquCosqUGbWOmLwxxd8yCzL5LRP
         ajvvM0K6ig8CsFdTYqhpmR87t4IeTlJoYlKFvkTW2lTnHhZB54WDx8Ejo9ktpS6inCeU
         5+5p5P5NItv1nKb8wLxF4bWyEV/zcJBXB8FjnqZhw6B6eINat3RoJQMk1t/xQVK1KtCG
         7nDpybyB8CPLJRwKqdbzZkfrTEegTlryIKAJKVZhqK18tlh/XWNX+djRaQaakK7m/17Z
         0aAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=r0ub8ZoIhIuQwz9uqgoj8r+U2E+YMqb1LFrIBtjCVuY=;
        b=n6pZryS6iexbEdMq1ed4ckaQ4lxoRDFXLPgjLBztsdfOsE5HD7YubKulVWnski6eF1
         nutTdtUmAx3JOaSeDSowv+aHdSVEGIc1O8pqGmdwwFXNKQc44LVZ0aOsjtC69zbbc6aH
         OTS8v4LXHoAd2TIFDJQoxIDpbEI9HQQ3mdqDMcZHKbyy1ibqOLONpqm7xuvJ7oKdL1hQ
         pf/OhwVzDgVuwVCiqpRQ+b1HlhxnQ6yox47WXCZ3EJXqOyPmnbgSyQCZ6y87Oyo2KrZQ
         as9pBQBzLsGkJssKvSvsNg3GNP9lxY/hHHsd95LS2tJqtheit982o10fTifcMoz4CZOP
         jYmA==
X-Gm-Message-State: ANhLgQ3vC4r+F5BfJgJY8B9cAWoI37VaXhP4tNho3rhliAa1DlPMaGHi
	A8Vl4GcbBLMGNrQZqF0Wq2cniOIx
X-Google-Smtp-Source: ADFU+vtljWB+2eZpjagbt1iuHJ/NPzB4aRufrdfr4g1RK2iJHLdjc6xzXMgTt49EzynqEp2URfsSeQ==
X-Received: by 2002:a5d:6544:: with SMTP id z4mr34255555wrv.298.1584347740824;
        Mon, 16 Mar 2020 01:35:40 -0700 (PDT)
Return-Path: <matthias.schoepfer@googlemail.com>
Received: from ?IPv6:2003:e5:1719:5600:7d4d:3d78:3409:ca00? (p200300E5171956007D4D3D783409CA00.dip0.t-ipconnect.de. [2003:e5:1719:5600:7d4d:3d78:3409:ca00])
        by smtp.googlemail.com with ESMTPSA id t5sm14433861wmi.34.2020.03.16.01.35.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 01:35:40 -0700 (PDT)
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, yocto@lists.yoctoproject.org
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
 <20200313162915.GM1578@denix.org>
 <ec9fb315-af0f-8d9b-18aa-43640e6a7df7@googlemail.com>
 <CANNYZj_==0Xsvp+_6YnkPDUSGOFKJE7orEQNubaTr_giG+qv4Q@mail.gmail.com>
From: "Matthias Schoepfer" <matthias.schoepfer@googlemail.com>
Message-ID: <1ff9ea04-a995-606c-45c6-d51bc4839b57@googlemail.com>
Date: Mon, 16 Mar 2020 09:35:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CANNYZj_==0Xsvp+_6YnkPDUSGOFKJE7orEQNubaTr_giG+qv4Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Alexander,

does it solve the Problem of a SRCREV, that has been fetched (for 
example for a _git testbuild) and now gets a tag applied and build with 
the _<version> build. The problem is *not* that the yocto PV package is 
wrong *nor* that the wrong version of the software gets build! The 
problem is, that the tag does not get fetched and our software gets its 
version from the git tags. Since this is very convenient to have the 
version information in one place only, we will not change this.

Thanks and Regards,

   Matthias

On 3/15/20 5:02 PM, Alexander Kanavin wrote:
> On Sun, 15 Mar 2020 at 15:04, Matthias Schoepfer via 
> Lists.Yoctoproject.Org <http://Lists.Yoctoproject.Org> 
> <matthias.schoepfer=googlemail.com@lists.yoctoproject.org 
> <mailto:googlemail.com@lists.yoctoproject.org>> wrote:
> 
>     2) It allows for very convenient bump of versions. We develop a
>     product,
>     so, version bumps are on daily or weekly basis. All that is needed
>     is to
>     rename the .bb file. No need to edit SRCREV.
> 
> 
> You can trivially script SRCREV updates ('devtool upgrade'/'devtool 
> finish'). The disadvantage of using tags is that you lose 
> reproducibility, as tags can be moved or deleted, and so I wouldn't 
> encourage this practice.
> 
> Alex


-- 

Dr.-Ing. Matthias Schoepfer
Mobile: +49 175 2062739
email: matthias.schoepfer@googlemail.com
