Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.711.1586991917111791228
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 16:05:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=vz6ijQK/;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.216.44, mailfrom: akuster@mvista.com)
Received: by mail-pj1-f44.google.com with SMTP id a32so489750pje.5
        for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2020 16:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=NpepBA0VgaFyZQXpvlnPW6WledO4zG/wONfeTLqsL7k=;
        b=vz6ijQK/WJr3yARR5x5hsNHjPIrDhVVvZE9ekIJ0RcVcqQJpXgwg96LCHbCP38bRcq
         8n3Adtv8/eJTEzRwrODc3kGc07xHIS6LtRTwUjnAwd6bzY/rTk8MAcc/LC/TuoiH1inq
         BwvvrKJxVHVj+xiLrsURosqm0znO2/CAq1q7ecm59NXMH4indkAzrcgHi3VESEr53PRc
         Txe0d7xlnicMzpDkXhfSwYfQPvI0eB1AeBTASH8FOt4vW8CsCoW+d4w6kciBFBAr67TZ
         tVFLBgWFxwd6gZh7C4Uoa8lADtZEv16KIfvRehe0/bZR4ZFanleB1WdTiCHo+GjzTH9J
         wT2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=NpepBA0VgaFyZQXpvlnPW6WledO4zG/wONfeTLqsL7k=;
        b=kOMqDNHvezKMadMEUK5oMe3/YGm/0Dg/rT9TkKJHJeYPcjAq4gVKmoQH9Gm12vOJFj
         nESSUWCCKvlx+d6vwb42fmIKQ7mj0DvsCaXsV+x4xLparhU6xJjfCuUW8XJt9MkKB1OR
         lcv36QAnt1qQ9RU3ib9g7lqbrWIka9FqS+/KJawL0lUYF7A3wwLTI8N0hnPri1nX5Mtp
         oF4o/tK6Zou7AEY0oqLJpgdPf+1BGldUhxoGHURNyN/O9UurFk1FD6xSHypk9L/5fpFc
         4l26O7gF2IOc9TVTCECdzGYddjsll4b3j3EbEXkJ9FQTVEvfQ3mUJqZRP7BEhC+oYp1w
         esoA==
X-Gm-Message-State: AGi0PuYLjkv4RhuWGk916pKcftcDD8DBifDzTo2/k8S/EeBiqeHbga2f
	yzSZzXwolLOgqAb5x7LhnwsR1Q==
X-Google-Smtp-Source: APiQypI7IWJ5dMBshZ+PdWUfO3IErrfSpxtgwuwusiPybBNi9Ev/CXjSfzxfc1Rl2kyhV85broD7CQ==
X-Received: by 2002:a17:90b:1b04:: with SMTP id nu4mr1636276pjb.81.1586991916544;
        Wed, 15 Apr 2020 16:05:16 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:c885:40f8:b7ee:f5bd? ([2601:202:4180:a5c0:c885:40f8:b7ee:f5bd])
        by smtp.gmail.com with ESMTPSA id t12sm9380764pgm.37.2020.04.15.16.05.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 16:05:15 -0700 (PDT)
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.1.rc2)
To: Paul Eggleton <bluelightning@bluelightning.org>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "akuster808@gmail.com" <akuster808@gmail.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <20200408040108.BA881414AB8@localhost>
 <c64c8afa26ab7f89e46dce8c8fd8e794499947fc.camel@linuxfoundation.org>
 <SN6PR11MB279783ED5D18450811B1189988DA0@SN6PR11MB2797.namprd11.prod.outlook.com>
 <8722103.eVOfdP6EDU@linc>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <f80632f7-825b-f932-e34a-3f5739f52440@mvista.com>
Date: Wed, 15 Apr 2020 16:05:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8722103.eVOfdP6EDU@linc>
Content-Type: multipart/alternative;
 boundary="------------F3139A02E1E5B6999C981BE7"
Content-Language: en-US

--------------F3139A02E1E5B6999C981BE7
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 4/15/20 3:25 PM, Paul Eggleton wrote:
> Release notes draft attached, including a dedication to Scott (wasn't su=
re where to put that so I've just left it at the top) and contributors list=
. Let me know if you notice anything missing/incorrect.=20
Thanks for pulling this together.
>
> I've also sent out the 3.1 migration guide for the reference manual, Ric=
hard has just merged the changes:
I see the review window is down to an hour before merging. Is code
review by twitter the next new thing ; )

=A0I responded the patches on the docs list.

- armin

>
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Ddunfell&id=
=3Dc31ddaba1f3181c577fdaa3ce519a42b6f8f2d9a
>
> Publishing to the website is still TBD, but some review there would be g=
reat as well.
>
> Cheers,
> Paul
>
>=20


--------------F3139A02E1E5B6999C981BE7
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/15/20 3:25 PM, Paul Eggleton
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:8722103.eVOfdP6EDU@linc">
      <pre class="moz-quote-pre" wrap="">Release notes draft attached, including a dedication to Scott (wasn't sure where to put that so I've just left it at the top) and contributors list. Let me know if you notice anything missing/incorrect. </pre>
    </blockquote>
    Thanks for pulling this together. <br>
    <blockquote type="cite" cite="mid:8722103.eVOfdP6EDU@linc">
      <pre class="moz-quote-pre" wrap="">

I've also sent out the 3.1 migration guide for the reference manual, Richard has just merged the changes:</pre>
    </blockquote>
    I see the review window is down to an hour before merging. Is code
    review by twitter the next new thing ; ) <br>
    <br>
     I responded the patches on the docs list.<br>
    <br>
    - armin<br>
    <br>
    <blockquote type="cite" cite="mid:8722103.eVOfdP6EDU@linc">
      <pre class="moz-quote-pre" wrap="">

  <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&amp;id=c31ddaba1f3181c577fdaa3ce519a42b6f8f2d9a">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=dunfell&amp;id=c31ddaba1f3181c577fdaa3ce519a42b6f8f2d9a</a>

Publishing to the website is still TBD, but some review there would be great as well.

Cheers,
Paul
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F3139A02E1E5B6999C981BE7--
