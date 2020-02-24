Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.22329.1582557847513439075
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 07:24:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IS2y8vFc;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id ep11so4353617pjb.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2020 07:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=6bw7cQ40lQ5S3eqnmrN0G9JRAqTlUeZXVb9qV1RQdSY=;
        b=IS2y8vFc5t5vPN2XGnthm2rSP2vKL88QrH5sn/+8da+aL8MNxSyUk+1fw1qNlcwxdg
         IQT++QiebJXneoZga79rc+y1c2BsVmgT8tPMbR5WW4Mgy4rcg/iLDCvBKaBvVuVg+mqM
         HGFUkZNy53cKeXjSGOUo14btRiFa9R5yBbnlwIt6PPPd6yn2EgfYLD4EHXmydb7cHIR6
         JAq5Q7HBoIxDICZiKdSRb400mvAqP/2N00poed3ZZ1w5XCeRk9ad33RwAqrdkXdEWacZ
         9L1SsPYzkS5wMLSx2isOfK7QVQs34aY2XdOXxqseeFJmGSKfzrxvkNTxKG9x9zsp2MKP
         xb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=6bw7cQ40lQ5S3eqnmrN0G9JRAqTlUeZXVb9qV1RQdSY=;
        b=NxYXNVCp63jQFvF5z64uY1aRm/8KqkUhWsxytB2wokfM4JZgQ7MqfW4XXg4nMGTNrF
         F3H2eiyQ7fiHKxwI6MSFjmRj9wfELLla1gZqRu9CLnWqwNzgkXCDJ8CjQzpb+fY/k+cd
         8Lo7Q4PS9OXqvnFSGMJe8NnMi/daHarPvO6E25fYjUAlh+r18M3ey/3iFI119NdnYDTY
         BBTSWmQ6sZIq4xu6ZwVmeD6CkS+nnV3aosC0BHLDdQCbP/Ys2mNjL8Eze6tvNNvkP8ux
         5G5DIGZeKq9Iiuqjme464ZD2uJ4dEDdf/5exlrMiyK5tjO7q04WwlR0qz9q8S3hT9LmV
         QZ9A==
X-Gm-Message-State: APjAAAUYBE3+rYqJG5WtLlI9pYkzsAkNuV3RD/JXO4VTnuvIWMe3wh+W
	SyeKzrHdKWevQaSHnXK1FKE=
X-Google-Smtp-Source: APXvYqyNFktGNacSXHRSSUu1IKs4IYZpRw3tnkmvfbhWKQzNe/m8ZSA4n+u1GjwDBKUbvYglSEJ8jw==
X-Received: by 2002:a17:902:502:: with SMTP id 2mr49752478plf.151.1582557846884;
        Mon, 24 Feb 2020 07:24:06 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:7dff:acc3:c23d:7c90? ([2601:202:4180:a5c0:7dff:acc3:c23d:7c90])
        by smtp.gmail.com with ESMTPSA id o73sm13037428pje.7.2020.02.24.07.24.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 07:24:06 -0800 (PST)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.3.rc1)
To: Sangeeta Jain <sangeeta.jain@intel.com>,
 "pokybuild@centos7-ty-2.yocto.io" <pokybuild@centos7-ty-2.yocto.io>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "akuster808@gmail.com" <akuster808@gmail.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <20200221223222.D7B986126DBA@centos7-ty-2.yocto.io>
 <CY4PR11MB187930DC7FD12DB37CF2AC5FE3EC0@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0a061bac-4579-4efd-bd52-c7234de8864d@gmail.com>
Date: Mon, 24 Feb 2020 07:24:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB187930DC7FD12DB37CF2AC5FE3EC0@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------498614E4ABEA28845D5FBC87"
Content-Language: en-US

--------------498614E4ABEA28845D5FBC87
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/23/20 7:23 PM, Sangeeta Jain wrote:
> Hello All,
>
> Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.3.rc1. We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
>
> Runtime auto test for following platforms:
> 1. MinnowTurbot 32-bit
> 2. Coffee Lake
> 3. NUC 7
> 4. NUC 6
> 5. Edgerouter
> 6. MPC8315e-rdb
> 7. Beaglebone
>
>
> ETA for completion is next Thursday, February 27.

Sounds great.

thanks,
armin
>
> Thanks,
> Sangeeta
>
>> -----Original Message-----
>> From: pokybuild@centos7-ty-2.yocto.io <pokybuild@centos7-ty-2.yocto.io>
>> Sent: Saturday, 22 February, 2020 6:32 AM
>> To: yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
>> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: QA notification for completed autobuilder build (yocto-2.7.3.rc1)
>>
>>
>> A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuilder and is
>> available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1
>>
>>
>> Build hash information:
>>
>> bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
>> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
>> meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
>> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
>> oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
>> poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1
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


--------------498614E4ABEA28845D5FBC87
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/23/20 7:23 PM, Sangeeta Jain
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR11MB187930DC7FD12DB37CF2AC5FE3EC0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">Hello All,

Intel and WR YP QA is planning for QA execution for YP build yocto-2.7.3.rc1. We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. MPC8315e-rdb
7. Beaglebone


ETA for completion is next Thursday, February 27.</pre>
    </blockquote>
    <br>
    Sounds great.<br>
    <br>
    thanks,<br>
    armin<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB187930DC7FD12DB37CF2AC5FE3EC0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">

Thanks,
Sangeeta

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:pokybuild@centos7-ty-2.yocto.io">pokybuild@centos7-ty-2.yocto.io</a> <a class="moz-txt-link-rfc2396E" href="mailto:pokybuild@centos7-ty-2.yocto.io">&lt;pokybuild@centos7-ty-2.yocto.io&gt;</a>
Sent: Saturday, 22 February, 2020 6:32 AM
To: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:otavio@ossystems.com.br">otavio@ossystems.com.br</a>; <a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>; Sangal, Apoorv
<a class="moz-txt-link-rfc2396E" href="mailto:apoorv.sangal@intel.com">&lt;apoorv.sangal@intel.com&gt;</a>; Yeoh, Ee Peng <a class="moz-txt-link-rfc2396E" href="mailto:ee.peng.yeoh@intel.com">&lt;ee.peng.yeoh@intel.com&gt;</a>; Chan,
Aaron Chun Yew <a class="moz-txt-link-rfc2396E" href="mailto:aaron.chun.yew.chan@intel.com">&lt;aaron.chun.yew.chan@intel.com&gt;</a>;
<a class="moz-txt-link-abbreviated" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>; Jain, Sangeeta <a class="moz-txt-link-rfc2396E" href="mailto:sangeeta.jain@intel.com">&lt;sangeeta.jain@intel.com&gt;</a>
Subject: QA notification for completed autobuilder build (yocto-2.7.3.rc1)


A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuilder and is
available at:


    <a class="moz-txt-link-freetext" href="https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1">https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1</a>


Build hash information:

bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: <a class="moz-txt-link-abbreviated" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>



</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------498614E4ABEA28845D5FBC87--
