Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web11.9960.1586442356939095093
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 07:25:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=To4RJlIJ;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id s4so5036099pgk.10
        for <yocto@lists.yoctoproject.org>; Thu, 09 Apr 2020 07:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=+FHGNfvebp75AWvC3jw4TCMzv+LZ4AhuTNGHcDuyblI=;
        b=To4RJlIJRVCv/0H2bYmN/vBLtfL4ckiBsmCKCB8J1qJWqhaqhjCK6hCzHdNPkQMe5N
         7nRIs1REEIXlv0/FnblMCbecq+9SsxAH0Lvrjzg2/UZrZjX2QKEh1kzVVrKMHDsln+vC
         pUdfBZCsLk1+HkPznv1eexYBqbkxZts5upGRTvK5K0YwxFfa7fZAUGWQkUhoTY6LBVr6
         7F7sNPyM43eWumVFKZbhvAkbUtvTkLu8rnnNx3TZ1Le5NKeR1j2JWi4UMmi74yx9MSWZ
         8pgCsL13qaTDLXSkgycqMEvgxEhAuovDhsBey/X+PFfBbctV2k+wymAOhPkRWihPJE+p
         uOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=+FHGNfvebp75AWvC3jw4TCMzv+LZ4AhuTNGHcDuyblI=;
        b=S+IpTCajDokHKsz2PygOe+nHJb9u4uYT/Yc3L/wc/mKdSV08HK4gOGSh2q7RmLOS4Z
         vifV4v5rVyHJ1R2XFpNf7y05STkclvF20IsX74dMMZfl0055B/X+DeeYFqLITwXIxGga
         k/x6TNFxVUPxXry6f2AwpPvSG+n23T+fdcPv4TIQMIv6UefVt12JE4Wx2hxJ4OYl18C1
         78WdRcLPtfss4NEcKGB74/QEAa/a5cJW06mXCaq2too7vDtAd3/vVidihkh09/oTbQSK
         13Jiux+cCm5JyVexUbQndY5y9SMaDctUppgQmAx2KkPYmgSyV9DjyQidUOm2lZEAEmly
         ZfHw==
X-Gm-Message-State: AGi0Pua3FOP3w6iOWR461uhSy1dJCrZyWcmpIZRuGkPXIvuW+bYrQF5e
	f7moyBno/g6WYceWRhfIEMD3Wx+kF2A=
X-Google-Smtp-Source: APiQypLOijOY5vpFknXERjEauIWvCk52DuOesau8fllnRKHHbUpAqSFe6CQV+CM5PNZz6ZccAihOMg==
X-Received: by 2002:aa7:947c:: with SMTP id t28mr12540995pfq.239.1586442356095;
        Thu, 09 Apr 2020 07:25:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:4888:3169:3bd:8440? ([2601:202:4180:a5c0:4888:3169:3bd:8440])
        by smtp.gmail.com with ESMTPSA id e9sm19592035pfl.179.2020.04.09.07.25.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 07:25:55 -0700 (PDT)
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] config: Fix giturl for meta-virtualization Layer
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@lists.yoctoproject.org
References: <20200316112702.14576-1-aaron.chun.yew.chan@intel.com>
 <6393.1585794458195083547@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0e63d129-7c26-6974-cd55-893b59589518@gmail.com>
Date: Thu, 9 Apr 2020 07:25:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <6393.1585794458195083547@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------55454759141E9095062CA73B"
Content-Language: en-US

--------------55454759141E9095062CA73B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


This fails in the ab.

https://errors.yoctoproject.org/Errors/Build/100954/
https://errors.yoctoproject.org/Errors/Details/401501/


On 4/1/20 7:27 PM, Aaron Chan wrote:
> Could someone please fix this simple piece?
>
>=20


--------------55454759141E9095062CA73B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    This fails in the ab.<br>
    <pre class="row log" style="height: 542.5px; overflow-y: auto; display: block;"><span class="ng-scope" style=""><span class="no-wrap log_o ng-binding" data-linenumber-content="123"><span class=""><a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Build/100954/">https://errors.yoctoproject.org/Errors/Build/100954/</a>

<a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/401501/">https://errors.yoctoproject.org/Errors/Details/401501/</a>
</span></span></span></pre>
    <br>
    <div class="moz-cite-prefix">On 4/1/20 7:27 PM, Aaron Chan wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:6393.1585794458195083547@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Could someone please fix this simple piece?
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------55454759141E9095062CA73B--
