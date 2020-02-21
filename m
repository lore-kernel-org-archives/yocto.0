Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.12809.1582309484476262203
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 10:24:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UocP9l+F;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id n7so1670984pfn.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 10:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=FIe2KArvOgkFxmoPLgF8JoeuiNRVO181zORNqID4Sgc=;
        b=UocP9l+FNP1YGDa4FipUFqTr1HRueXnLEzc+c/tILbFjbxKEXfA6iCfBZ22NbWYem9
         HlOB1+4V0OZk47y0zgbNkjmcUYRkEjrG1kd12jVwTPX4l4wpLKVWjD3kwNpHbt1DnXxt
         nmXMz7aR/ozn/6bcMQN5Iy/SqyhaOKSQrLGSV2cHm28g6uLiF1brq1UopYehHiKtTXbs
         qlgNk1SHvhtD2wX1u6h1rPKYVx1uPJnr+WippF9UurImThYKHrQsyyyWjDquDFirXZGF
         3U3XV7hP3M7YKpge5Vr4w36/qBc+i/BV103H6sXzb5wl1O3/D7X5xD9wuibkx5exwLSg
         ZWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=FIe2KArvOgkFxmoPLgF8JoeuiNRVO181zORNqID4Sgc=;
        b=Hl6Y7XNZQTJvfrKkSxvuXjJlxiDsP60mVAZ1N7DmFkfPAJ+o7NhpQiH4yMNLcMcsG2
         z9YKH5k3qrciYY7DtNKWUU1o3CyEvFVWoYKcZ5qVGb/Um10nuCBaKrQ6GZmyTADfSNEY
         hTok2FstgVP7G/mAQYlVxW4WA2pxrAjPN1wBGGakwcSJ8Q/GoG+mVL65WDbVQvyWg3Eg
         CKceWl0XDyKAsd4k+wI6uetqCRRiE+8CqoeKX2M0KFQGEuVLjBRaTSGeewHLPFnpD/jI
         fHaUi45IrY92yiTbrSnXCMqPmEZSKuM4k1dbg/q1S5hdkkOmKZ7kIWWV6Obam3GHJHTd
         BkFQ==
X-Gm-Message-State: APjAAAWwXN3R+pnmR0dsMk4KxD+ruA8HuQq5yLt12T0J1PSK+P4pfqkS
	65XfJ4tgHBKWc53G3rnhW3U=
X-Google-Smtp-Source: APXvYqzdqkWE/eMzwlXdFBg3wiWgwcVXUxa+2jBWnvw187WS/zpio/zXlRRIf8w24ETl07EGImG8RQ==
X-Received: by 2002:a63:7d59:: with SMTP id m25mr38046477pgn.356.1582309483861;
        Fri, 21 Feb 2020 10:24:43 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:dda2:81fa:6982:d91f? ([2601:202:4180:a5c0:dda2:81fa:6982:d91f])
        by smtp.gmail.com with ESMTPSA id r66sm3646792pfc.74.2020.02.21.10.24.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 10:24:43 -0800 (PST)
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>, akuster808 <akuster808@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
 <BYAPR11MB279025D63172F1E8F7E18D8288120@BYAPR11MB2790.namprd11.prod.outlook.com>
 <9b875592a194c843343d4a03593be519a87c2072.camel@linuxfoundation.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <85beff10-bb0a-0890-32cd-c7f77fa2e9f5@gmail.com>
Date: Fri, 21 Feb 2020 10:24:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9b875592a194c843343d4a03593be519a87c2072.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------51E3681E4DC7A50D6D2E2BB4"
Content-Language: en-US

--------------51E3681E4DC7A50D6D2E2BB4
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2/21/20 9:38 AM, Richard Purdie wrote:
> On Fri, 2020-02-21 at 17:26 +0000, Tummalapalli, Vineela wrote:
>> [Vineela]: So we will have 3.0.2.rc3 as the release candidate and not
>> 3.0.2.rc2 as we see issues with that. Am I correct?
>> If so, in terms of release process I just have to redo the things
>> like staging 3.0.2.rc3 and do the release notes and test report and
>> get it reviewed once I get the test results for 3.0.2.rc3 from QA
>> team.
> Yes, however the QA team aren't going to rerun all the tests, only
> check the issue which regressed is fixed.
>
> A new build did complete but a QA email wasn't sent out. Armin started
> that build so I'm not sure whether that was the plan or not (the build
> wasn't configured to). Armin?
I did't think a full QA round was needed. Bash ptest just needs to be
double checked.

openssh has a fix but will be in the next dot release.

- armin
>
> Cheers,
>
> Richard
>
>
> 


--------------51E3681E4DC7A50D6D2E2BB4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/21/20 9:38 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:9b875592a194c843343d4a03593be519a87c2072.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Fri, 2020-02-21 at 17:26 +0000, Tummalapalli, Vineela wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">[Vineela]: So we will have 3.0.2.rc3 as the release candidate and not
3.0.2.rc2 as we see issues with that. Am I correct?
If so, in terms of release process I just have to redo the things
like staging 3.0.2.rc3 and do the release notes and test report and
get it reviewed once I get the test results for 3.0.2.rc3 from QA
team.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Yes, however the QA team aren't going to rerun all the tests, only
check the issue which regressed is fixed.

A new build did complete but a QA email wasn't sent out. Armin started
that build so I'm not sure whether that was the plan or not (the build
wasn't configured to). Armin?</pre>
    </blockquote>
    I did't think a full QA round was needed. Bash ptest just needs to
    be double checked.<br>
    <br>
    openssh has a fix but will be in the next dot release.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:9b875592a194c843343d4a03593be519a87c2072.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Cheers,

Richard

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------51E3681E4DC7A50D6D2E2BB4--
