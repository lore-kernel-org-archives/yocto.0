Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.829.1585263395537760411
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 15:56:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=X3Uo6+CW;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id e1so2716221plt.9;
        Thu, 26 Mar 2020 15:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=BZ4wjXeIWWlSYglPoWAiSl9bLJVPC9QfLAvRhq1vX4U=;
        b=X3Uo6+CWuOCnz5hf+ZJq3apxu0tr2qTtJEd8b1WydNLgO48gCuGnNJGxk9Xv31BxUg
         xS/zLP4kO35YwIvHUcIRbHHjXekggyepsW/ydTw+rOpMAImIBFifXQd8mOfyR7Ve4JKS
         urbKw1pCcNnig2giA9XR9bDWraKFpN8zjSL/8YQil0sUSWeEklSMjSc11ezz2kphqM04
         fqIh13XiBkm0UAg25WiuZ13hqWs0MEmUaSKqFZ+PfVlcaSRYO2yN0U6EXmpuDdFIGAvM
         0HQkNlVRwyMhGkp6kLIFy2qLxX1/0MkCUtabbdoA7GJXAC7UyHeYwwzC7/y0h9ugPE6I
         4uOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=BZ4wjXeIWWlSYglPoWAiSl9bLJVPC9QfLAvRhq1vX4U=;
        b=FKgoyDDA9Wf/tWdf6qO6+Hxr84jrksXi8XKnoTnl3IhYYaoZ+mt0akO4F36gaoUgzS
         5geoHFGU2/vU6HwEQhz7rKb7rFt5G+Szzph4xYb9b/N+druLWVme36A7hrNN8Aqc5iAZ
         iUF59J16VCjTBR8jMVP64kzSYkKKUDQvo05mT285Q25Ju8nvywjXe9Iu1KdQgQpoQphi
         OrZ0kfL2yr8nkW9iuFLuFXjotMK/MNuYXPrTr/utjmvzD/u65lYOViHXjNSIv/6VaFmo
         eVpWV1EKk9WUQ686OZOUWoYCC/oMFdY2SIbrv0PopXiVq7jPRSzQMWCf0f+7VJdM9t72
         M+iQ==
X-Gm-Message-State: ANhLgQ26HchuCzMgLnsxGqrb8q9QQfNcju9+/kWjgTFKdIZ5h8cnrJ9N
	MnbFvp3E92LYlB/hEcn6mEQ=
X-Google-Smtp-Source: ADFU+vutxszfepVh8VADWidiPAbUwtY2KvAgcbwo9BLLaaR/eSZHcHtCK/qmkT0uXoNyGxok3gpsCg==
X-Received: by 2002:a17:902:8608:: with SMTP id f8mr10449152plo.110.1585263395000;
        Thu, 26 Mar 2020 15:56:35 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:84d1:5d33:be2f:3f17? ([2601:202:4180:a5c0:84d1:5d33:be2f:3f17])
        by smtp.gmail.com with ESMTPSA id q8sm2334783pjq.28.2020.03.26.15.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 15:56:34 -0700 (PDT)
Subject: Re: [yocto-announce] [ANNOUNCEMENT]Milestone 3 for Yocto Project 3.1 (yocto-3.1_M3) now available
To: Vineela <vineela.tummalapalli@intel.com>,
 "'yocto-announce@lists.yoctoproject.org'"
 <yocto-announce@lists.yoctoproject.org>,
 "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>,
 "'yocto-request@eclists.intel.com'" <yocto-request@eclists.intel.com>
References: <BYAPR11MB2790A87C90CA2C306668F10088CF0@BYAPR11MB2790.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <02864cf3-797c-0ebc-0b0b-6c1d1b349df9@gmail.com>
Date: Thu, 26 Mar 2020 15:56:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB2790A87C90CA2C306668F10088CF0@BYAPR11MB2790.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------6ABEE7EDD158ED3A8334410F"
Content-Language: en-US

--------------6ABEE7EDD158ED3A8334410F
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 3/26/20 3:08 PM, Vineela wrote:
> Hello,
>
> We are pleased to announce the third milestone release for Yocto Project 3.1 (yocto-3.1_M3) is now available for download.

Thanks to all who got this out considering the new challenges we all face.

Armin
>
> Download:
>
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3
>
> bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 60773e8496370d821309e00f2c312128a130c22b
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
> poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7
>
> Full Test Report:
>
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/testreport.txt
>
> From 3.1_M3, the checksum used is moved from md5sum to sha256.
>
> Thank you.
>
> Vineela Tummalapalli
> vineela.tummalapalli@intel.com
> Yocto Project Build and Release
>
> 


--------------6ABEE7EDD158ED3A8334410F
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
    <div class="moz-cite-prefix">On 3/26/20 3:08 PM, Vineela wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BYAPR11MB2790A87C90CA2C306668F10088CF0@BYAPR11MB2790.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">Hello,

We are pleased to announce the third milestone release for Yocto Project 3.1 (yocto-3.1_M3) is now available for download.</pre>
    </blockquote>
    <br>
    Thanks to all who got this out considering the new challenges we all
    face.<br>
    <br>
    Armin<br>
    <blockquote type="cite"
cite="mid:BYAPR11MB2790A87C90CA2C306668F10088CF0@BYAPR11MB2790.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">

Download:

<a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3</a>

bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
meta-intel: 60773e8496370d821309e00f2c312128a130c22b
meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7

Full Test Report:

<a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/testreport.txt">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/testreport.txt</a>

From 3.1_M3, the checksum used is moved from md5sum to sha256.

Thank you.

Vineela Tummalapalli
<a class="moz-txt-link-abbreviated" href="mailto:vineela.tummalapalli@intel.com">vineela.tummalapalli@intel.com</a>
Yocto Project Build and Release
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------6ABEE7EDD158ED3A8334410F--
