Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.2438.1596088345021797707
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 22:52:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8JCd5tG;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id 74so6140742pfx.13
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jul 2020 22:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=j686x4IRNJo3uRNFvc82In74+pOQS+w5VHgV4TV4lQ0=;
        b=Z8JCd5tGXr/9HqXS5me0kdlXkRC3+9biqcZ7o/Zk329Tvlf4/KWvlFTful2Ihl9Nq+
         Zy3kNKkTsgSi2X8coF53hDzWSGI1wY5U7lr/h7q8KTzsiU/+eAcNYbxQ104NGrstz08b
         H80gCXCvfHn1mo6ddMVzGGmePPe6OfU50kdexh56KcgooRfNXIhQkA/tcKfrOAsRwbxs
         6tr0c1rMpvu0ufR6T7QhO1yMcvwI3Ar9Fixo76W50hYx4AUcysW0GX1ZRGlUQ1SRR88s
         N1uRxDXIZSLYkiuqBoHMZDEpNS7zPHRLwlJpcrm+ATAVUoTx5FkRHpd1S10yKZNQLmjs
         jiUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j686x4IRNJo3uRNFvc82In74+pOQS+w5VHgV4TV4lQ0=;
        b=uhFs1NHo+R9HJ3X7RPI+hxoBHRckKAN6SgtGGKqVjKapax1q7o9DMJWHzI4zSC37z7
         JtIJFHMxJ1pfmERod339HGHoUrMO9Yh5BenDaVbVxwIU+oIms+SWuwefoHNpMiWbNjIO
         CYRBeuXn/7WFs0TDC7AwIuGy+7AqOf/tvxMxEUcenCe1eeLPYy5i0TmgxORGxalj60Rs
         3L6mYuYF8QtybA/sydIvNUKazAzg2l/HMJ7AhKkkH+ybyZcP74ap0SRZg9EUx4Vz3e1z
         lkULSGxcyCmqm5WHvG8NfUxIbGVqaYjgELUIpO0wLTW/uhtmn/Pz0wGc0HIBNPGUlh6u
         6oyg==
X-Gm-Message-State: AOAM532upMEgctzqur4wVaTzbdkC4Yr8HXAbE4Q0uuHWN6nyAwYDsb6w
	5u9UGW7OiADYZVcFrk5rGvOij067xWs=
X-Google-Smtp-Source: ABdhPJxLurq7r/L//Z0gfItiC2iLcy9vgt+PxOvuHKP+IBYTGtAACt7hQUs/FKWvWq1+Yya3MjLASg==
X-Received: by 2002:a65:6645:: with SMTP id z5mr33230512pgv.123.1596088343952;
        Wed, 29 Jul 2020 22:52:23 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5ba:2655:68eb:112e? ([2601:646:9200:4e0:5ba:2655:68eb:112e])
        by smtp.gmail.com with ESMTPSA id e26sm365939pfj.197.2020.07.29.22.52.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jul 2020 22:52:23 -0700 (PDT)
Subject: Re: [yocto] Remove connman package from yocto sdk.
To: NIKHIL PATIL <nikhilvp29@gmail.com>, yocto@lists.yoctoproject.org
References: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <e23215cd-0f1a-3af0-bc78-95c3257c6af3@gmail.com>
Date: Wed, 29 Jul 2020 22:52:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 7/24/20 5:44 AM, NIKHIL PATIL wrote:
> Hi team,
>            We want to use NetworkManager to access internet using LTE 
> module . but connman and Networkmaanger both are installed.
>            I struggled so much to remove connman,  I tried as follows :-
>             1) Added IMAGE_INSTALL_remove = "connman"  in local.conf
>                              but it still come with sato image.
> 
>              2) Added DISTRO_FEATURE_remove = "connman"  in local.conf
>                              but it still come with sato image.
>      By default connman is coming in image , how to remove connman ?

try to find where its being added. Perhaps bitbake -g <image> should 
give you dependency file where you can check where it appear on right 
hand side of -> and equate to which package is bringing it in as dependency

> 
> 
> 
