Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.175.1618327768615410399
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:29:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bH6DN25f;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id y16so11657917pfc.5;
        Tue, 13 Apr 2021 08:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=B+r8Sbp+eFlnlq/RrRqMhmnnB4YmDKVXOVv0Xab6PZc=;
        b=bH6DN25fQUqixwBNmeSiHosYlLgt4NE2dM5IpNvopkrL9JvrihA3j0W9+V2ylYkafL
         IRqd+Q+viLkblwKuKUyyaPmPw6slYZqJvNUA2JZjuVA1dTu2n86UY4oZjF3mssIjVwQ+
         w8d1cG71OK4Ee6DTK0O4FxzaKy32O3oo/ZcqaTy7dhfK6ZXSpPmXAay0P3V336lQaEns
         dxVasI19SZqvrmTn2QtdB0CZ8XyUc2admNuWMapLLJVZwjvNQSqBrD6pBdAzhj+8z2La
         jsyVIfwHuyZr4Axrp1hcJd8pby91o/0zCbxbQ8WSlZwZSVTf4uLQ6E4ktrblLMByQmsk
         i6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=B+r8Sbp+eFlnlq/RrRqMhmnnB4YmDKVXOVv0Xab6PZc=;
        b=Qy/S2FOLiYnqDw5HLqb8swYpzAm0xjCe1z4z45Gd2VDfzmhZ1CaDcyWsDCY+MF9dJ1
         hAG3bCBZfJPcKKAxVrma+EFh0qd54wPl89tswEuWKAF1MjGAGccA6RPFDKbZ85QCrRHf
         svwllSkSURSWxQ3YGwWznSxYEq1fga7hRYEy3GbZwU5Y8LAx5+wFGOLIMsEgNJ0XXysR
         NRqSW67RKAcwemfYm1s6Fdy/Wds6sFwPDJwOAheq6oh67xBH0zrbIJWLPa2jg3vH6cOE
         vDlh2c4t9Ni09Pd9CjshBZUXe9gVkJ2MSsKoSIwViHP+F2FbOC7a49FWSwVeMkc9DJmn
         mEPQ==
X-Gm-Message-State: AOAM533m/M8wkagMZgcJ90nnwRj3K27Tz8qLYA/bDZ1f6E4MpwtmWOEU
	SaqaSbB22tYG2ie9MjNZvORQ6J6CUmQbuQ==
X-Google-Smtp-Source: ABdhPJw9fE/hygAS0IfgFZT0bYR2Lfe8JLhel52zjHSaieYzHkII60g0uNweUDLKdM8nBh6yUU83Cw==
X-Received: by 2002:a63:1109:: with SMTP id g9mr33139025pgl.88.1618327767813;
        Tue, 13 Apr 2021 08:29:27 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:45ab:75b7:17a:f9f9? ([2601:646:9200:a0f0:45ab:75b7:17a:f9f9])
        by smtp.gmail.com with ESMTPSA id 192sm13659085pfz.16.2021.04.13.08.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:29:27 -0700 (PDT)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.3.rc2)
To: Sangeeta Jain <sangeeta.jain@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 openembedded-core <openembedded-core@lists.openembedded.org>
Cc: "qa-build-notification@lists.yoctoproject.org"
 <qa-build-notification@lists.yoctoproject.org>
References: <20210407121531.21CDF41B5B@centos7-ty-4.yocto.io>
 <BYAPR11MB3624ADCD655AB8D038AB418AE34F9@BYAPR11MB3624.namprd11.prod.outlook.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e24a0693-3567-d916-b9cb-a03f98779967@gmail.com>
Date: Tue, 13 Apr 2021 08:29:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB3624ADCD655AB8D038AB418AE34F9@BYAPR11MB3624.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

LGTM

On 4/13/21 2:48 AM, Sangeeta Jain wrote:
> Hello All,
> 
> This is the full report for yocto-3.3.rc2:
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
> 
> ======= Summary ========
> No high milestone defects.
> 
> No new issue found.
> 
> 
> Thanks,
> Sangeeta
> 
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf
>> Of Pokybuild User
>> Sent: Wednesday, 7 April, 2021 8:16 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: qa-build-notification@lists.yoctoproject.org
>> Subject: [yocto] QA notification for completed autobuilder build (yocto-3.3.rc2)
>>
>>
>> A build flagged for QA (yocto-3.3.rc2) was completed on the autobuilder and is
>> available at:
>>
>>
>>      https://autobuilder.yocto.io/pub/releases/yocto-3.3.rc2
>>
>>
>> Build hash information:
>>
>> bitbake: a1848a481e36b729c8e4130c394b1d462d4b488a
>> meta-arm: 219fd34b7676ffedd1a1ad3626ec4337391975f4
>> meta-gplv2: 9e119f333cc8f53bd3cf64326f826dbc6ce3db0f
>> meta-intel: 01cfc99a8f960917433a8a46b41bb4febb5b1993
>> meta-kernel: 29329d7cacc71595cecfdd05a455a0cfb164564d
>> meta-mingw: 422b96cb2b6116442be1f40dfb5bd77447d1219e
>> oecore: 14241ed09f9ed317045cf75a6d08416d3579bb8d
>> poky: e1839b58ebe05242a52fe050aa9a08140136aa0a
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>
>>
>>
>> 
>>
