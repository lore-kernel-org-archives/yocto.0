Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web11.1449.1586397453346768533
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 18:57:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+lFZ0F3;
 spf=pass (domain: gmail.com, ip: 209.85.215.181, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f181.google.com with SMTP id g32so4229304pgb.6
        for <yocto@lists.yoctoproject.org>; Wed, 08 Apr 2020 18:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=doNn4cCRZSv/EDh0rQM18E0Km90sVy162NGb3a+s9AI=;
        b=s+lFZ0F3NFbMcwAZChgqesbuDFKMeZKQYKcd52HzT/pZfGMcwyLsTM1paNeE+B2JwR
         wwN+Yj4ERnH/J3lqYGevsgCQ8Kc/qr1J/7+qgA5ZNqhHk2P1p2Ymj5XGX4BpsxqhIvxX
         725kyWqGbj+Yr7Gz8/gxjoHEtV21uFGVioA+75rOHGloJeoO9KJyJ2mZDrYS2R+Cw5Qv
         I+VOPk9KoGC4iXnjWZgJG6bDAIWdVMmrPwwcPzkUmoDbmjvMD7HXGRbs6sORdwH55Zjc
         9+m97sL9nXEDQexe9IHKB/nAGiV7CybGZNcXKOQlNCYdnkLj0eQLLX5aWYKbZpsxbAzn
         8L+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=doNn4cCRZSv/EDh0rQM18E0Km90sVy162NGb3a+s9AI=;
        b=Vb8Ed/GmD9JvTXxHYb2yyVcuRQ9OmtqniQK+h/eqTm5nZuCdy2eF1/lBSzCUvJBfOe
         aPbs580Mpzgmuy+VdtSx7k4X28xoUbbABpfI+FYhSLrO2rYOPcamK8fwZaLBjVQ7nRWb
         1KDp3NzURTtxXKx5DoiS42wpD6P6EJCPL3x5TJ4G6TnKADiJUr/d4zxGG33nnysBgrtA
         Ze8DiKwx0Gjf3TCQ/6VDxf+aWxXQNhA8HfcotbZ1i48DL5rhovfkuSP9niCCeo2bY9cP
         DvX/oDabHJAHR287he5clecN2Z2psI/NQfFZUeAxc6ZDomibluNnM1ITKic5J2NA0TBH
         jAuA==
X-Gm-Message-State: AGi0PuafwouM0969VaEEy7MqMDc0S3/awNjroE2APC4p8YUPm+wMCZ8c
	YrrpBk9c7ZSkC2yzRZ7RCV8=
X-Google-Smtp-Source: APiQypJ2eRATfbOVbf/DLdv7PoGo8I+w6jvHWRq5BmW4Z7BKg5un+fW3GCn73lIRkrbEb8UJgRA+yQ==
X-Received: by 2002:a62:8f0c:: with SMTP id n12mr10635434pfd.226.1586397452633;
        Wed, 08 Apr 2020 18:57:32 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:4888:3169:3bd:8440? ([2601:202:4180:a5c0:4888:3169:3bd:8440])
        by smtp.gmail.com with ESMTPSA id j4sm17508832pfg.133.2020.04.08.18.57.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 18:57:31 -0700 (PDT)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc2)
To: Sangeeta Jain <sangeeta.jain@intel.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "akuster808@gmail.com" <akuster808@gmail.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <20200408040108.BA881414AB8@localhost>
 <4d89830f1cdc32700b6aa62cb1d92e7f460f2f16.camel@linuxfoundation.org>
 <CY4PR11MB1879614F7BCF0705E05D020AE3C10@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <1bc39220-a333-d718-2307-95c761c9fbdb@gmail.com>
Date: Wed, 8 Apr 2020 18:57:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879614F7BCF0705E05D020AE3C10@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------B1F6074FE01FF563E7F6C7F8"
Content-Language: en-US

--------------B1F6074FE01FF563E7F6C7F8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 4/8/20 6:18 PM, Sangeeta Jain wrote:
> Hi all,
>
> Intel and WR YP QA is now running QA execution for YP build yocto-3.1.rc2.
> We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
Has the manual testing situation changed from the last QA run?
>
> Runtime auto test for following platforms:
> 1. MinnowTurbot 32-bit
> 2. Coffee Lake
> 3. NUC 7
> 4. NUC 6
> 5. Edgerouter
> 6. Beaglebone
>
> ETA for completion is next Monday, April 13.
Sounds great.

- armin
>
> Thanks,
> Sangeeta
>
>> -----Original Message-----
>> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>> Sent: Wednesday, 8 April, 2020 9:21 PM
>> To: pokybuild@localhost.yoctoproject.org; yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc2)
>>
>> On Wed, 2020-04-08 at 04:01 +0000, pokybuild@localhost.yoctoproject.org
>> wrote:
>>> A build flagged for QA (yocto-3.1.rc2) was completed on the
>>> autobuilder and is available at:
>>>
>>>
>>>     https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc2
>>>
>>>
>>> Build hash information:
>>>
>>> bitbake: 4618da2094189e4d814b7d65672cb65c86c0626a
>>> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
>>> meta-intel: bd539ea962ee285eb71053583e3c17fa166fc610
>>> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
>>> oecore: 1795f30d8ab73d35710ca99064c51190dc84853e
>>> poky: 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478
>>>
>>>
>> There were two failures in this build due to collect-results failing. I fixed the
>> missing dependency on that autobuilder worker (there was already an open bug
>> but it wasn't fixed yet) and reran the collections scripts so the results were
>> added and handled.
>>
>> Cheers,
>>
>> Richard
>
> 


--------------B1F6074FE01FF563E7F6C7F8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/8/20 6:18 PM, Sangeeta Jain wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879614F7BCF0705E05D020AE3C10@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">Hi all,

Intel and WR YP QA is now running QA execution for YP build yocto-3.1.rc2.
We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw</pre>
    </blockquote>
    Has the manual testing situation changed from the last QA run?<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879614F7BCF0705E05D020AE3C10@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. Beaglebone

ETA for completion is next Monday, April 13.</pre>
    </blockquote>
    Sounds great.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879614F7BCF0705E05D020AE3C10@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">

Thanks,
Sangeeta

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: Richard Purdie <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a>
Sent: Wednesday, 8 April, 2020 9:21 PM
To: <a class="moz-txt-link-abbreviated" href="mailto:pokybuild@localhost.yoctoproject.org">pokybuild@localhost.yoctoproject.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:otavio@ossystems.com.br">otavio@ossystems.com.br</a>; <a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>; Sangal, Apoorv
<a class="moz-txt-link-rfc2396E" href="mailto:apoorv.sangal@intel.com">&lt;apoorv.sangal@intel.com&gt;</a>; Yeoh, Ee Peng <a class="moz-txt-link-rfc2396E" href="mailto:ee.peng.yeoh@intel.com">&lt;ee.peng.yeoh@intel.com&gt;</a>; Chan,
Aaron Chun Yew <a class="moz-txt-link-rfc2396E" href="mailto:aaron.chun.yew.chan@intel.com">&lt;aaron.chun.yew.chan@intel.com&gt;</a>; <a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>; Jain, Sangeeta <a class="moz-txt-link-rfc2396E" href="mailto:sangeeta.jain@intel.com">&lt;sangeeta.jain@intel.com&gt;</a>
Subject: Re: QA notification for completed autobuilder build (yocto-3.1.rc2)

On Wed, 2020-04-08 at 04:01 +0000, <a class="moz-txt-link-abbreviated" href="mailto:pokybuild@localhost.yoctoproject.org">pokybuild@localhost.yoctoproject.org</a>
wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">A build flagged for QA (yocto-3.1.rc2) was completed on the
autobuilder and is available at:


    <a class="moz-txt-link-freetext" href="https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc2">https://autobuilder.yocto.io/pub/releases/yocto-3.1.rc2</a>


Build hash information:

bitbake: 4618da2094189e4d814b7d65672cb65c86c0626a
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: bd539ea962ee285eb71053583e3c17fa166fc610
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: 1795f30d8ab73d35710ca99064c51190dc84853e
poky: 5d47cdf448b6cff5bb7cc5b0ba0426b8235ec478


</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
There were two failures in this build due to collect-results failing. I fixed the
missing dependency on that autobuilder worker (there was already an open bug
but it wasn't fixed yet) and reran the collections scripts so the results were
added and handled.

Cheers,

Richard
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------B1F6074FE01FF563E7F6C7F8--
