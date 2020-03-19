Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.2384.1584635539888219269
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 09:32:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VQ7wDjNz;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id d25so1695193pfn.6
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 09:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=VF/RCiWbtHxteIpNy/1cLu0V/bU4RhkhW0ZSlsGYL1c=;
        b=VQ7wDjNzDtSzQEPutL3HQ2w8feRGDqX65baJ1SH0c6vOiCW/rG1Zhnei2XgHHoXFzk
         usRkepIThzhprTRw+dfBUPdK6+ZIOe8+Ja47iuvQkmDLlRVcUB/fxcmG2JNOJ5RUZMUQ
         Zy/Cnz6Evkgu49Xkdfm6ddF6aOHhrLLCknBb+x48H4EtjLMNIFku5Dv8FxGIJoLuhGgd
         cuhQWArV2ox0NAAMPuot+Ghx8gn1CeAP5AcF6Hx4co5Hkld1ciRbhK49b8ChNibV+2HR
         ENX1nLe9+tA81GYO3rKNRxtrl1788V4rR0pdheeFYtr7XrgISck8qrhuTElv3w/8CziA
         u9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=VF/RCiWbtHxteIpNy/1cLu0V/bU4RhkhW0ZSlsGYL1c=;
        b=SLb9v0t+6SJkTXT+xzlGTwzhKFVyv27ZH/ETG2L+JVxZo7akgQD8fNE4R0J83Zoo+w
         NxAzKwU1aCyFOMezcwdmXtRNgcM5W1M2t1YfBWWnjltNwfCJqhAnrmctwkIla3VMQyXL
         3JC+9zUjqAMDW3Niay8DchqD4HE1KSe0R5duFO+15xZcCRTODnpjTw4yUQxZPUo4Rtge
         EWwDflc9Sz201sX4++mpW+kxrq6ii6w4glvnwNEQXEpt6O1h9/UYnVKXvWGrkqZ3sN0/
         EVrE0ZRXQmvmJ5M2DQ8mBdceP3HA99dxRTsg1TRaCxjAufJzSgAeTFOCX0/YRe3XQHkz
         VH0g==
X-Gm-Message-State: ANhLgQ0FVn07xsZKY1fSGZ9ael2viCa/dx6AkY0j6rXR4RTCC5kIgm/a
	xHQYECEtBNznbUaWuA1Ktus=
X-Google-Smtp-Source: ADFU+vuHBTpSHPsr9npS0ozJOJAwDv+EhKwUM6V/aW9et72JAK7rW/j+xdj7+Yx6THXs8Yr36WzthA==
X-Received: by 2002:a63:2bd1:: with SMTP id r200mr4011074pgr.351.1584635539174;
        Thu, 19 Mar 2020 09:32:19 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:152a:39f6:f4c:9605? ([2601:202:4180:a5c0:152a:39f6:f4c:9605])
        by smtp.gmail.com with ESMTPSA id y3sm2990895pfy.158.2020.03.19.09.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 09:31:52 -0700 (PDT)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "pokybuild@ubuntu1804-ty-2.yocto.io" <pokybuild@ubuntu1804-ty-2.yocto.io>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
 <CY4PR11MB1879A561546B4A1182FDBBA0E3F40@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <9eac0173-7497-5994-7ce3-136cfd2806e9@gmail.com>
Date: Thu, 19 Mar 2020 09:31:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879A561546B4A1182FDBBA0E3F40@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 3/19/20 6:57 AM, Jain, Sangeeta wrote:
> Hello all,
>
> This is the full report for yocto-3.1_M3.rc1: =20
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tr=
ee/?h=3Dintel-yocto-testresults
>
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> No high milestone defects. =20
> No new defects are found in this cycle.
> Valgrind ptest failed (BUG id:13838).=20
>
> Note: Few failures are observed. These are setup issue since running te=
sts remotely, not real yocto issue.
Where any tests skipped do to lack of physical access to h/w? A quick
look at some of the manual tests do imply physical access.

- armin
> =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13838
>
> Thanks,
> Sangeeta
>
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On B=
ehalf
>> Of pokybuild@ubuntu1804-ty-2.yocto.io
>> Sent: Monday, 16 March, 2020 5:40 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Cha=
n,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
>> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: [yocto] QA notification for completed autobuilder build (yoct=
o-
>> 3.1_M3.rc1)
>>
>>
>> A build flagged for QA (yocto-3.1_M3.rc1) was completed on the autobui=
lder
>> and is available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M3.rc1
>>
>>
>> Build hash information:
>>
>> bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
>> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
>> meta-intel: 60773e8496370d821309e00f2c312128a130c22b
>> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
>> oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
>> poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>


