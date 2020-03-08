Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web12.28200.1583639622808351516
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 19:53:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZD+y3wr;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id w12so2586739pll.13
        for <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2020 19:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=x9aC4kN6Fs+BjX5m6+BHcalsVyTtU9gPZCEVWfXxKv0=;
        b=aZD+y3wr8oI6SlEWleb4+ZAB+AoOFLQqAxtJm/8FYp/sR6QFDQKQARwSrFTGhulQ61
         qZsbRLoU35nmRSrTJS1DpzxFmzFgoI09+psV9BC0MAMxIexwEDu818dOA5ETcHExTQ7k
         ss605/oTP+MN0dCawQd8rZBd2H674eDcX2cXoNcJvfJaF4d+zu4gBXogxvbQ1TKXEkCJ
         dS+C+kRKkyWpFLK29fPYinzgZGapRNKFH8jRirTMoKuwJasBbm6qCLm6Y3zhp6mxByQx
         GpKE4phfYgEilTGo7TQAB8WFBQ821RGaaSG62X3On3Qjk+HL/MQ8ppE6nzlj1FIueHWI
         1xzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=x9aC4kN6Fs+BjX5m6+BHcalsVyTtU9gPZCEVWfXxKv0=;
        b=qRonSqU5VFkQCumjcqpqX5/+PapCC+2FMJGLVO81O5Pg6WBKUMcu9OyqXomw4HYrH1
         wDbMxdwk0cX8knSNN7CFtARrkj/VWWozhG5c4tJn+Tg7PmfuMnRIOZ5/ZjEBA4lznPc5
         zXRe8VMtswzSmg4CohA+m1G0QWVi4x48HM5NhiQOc3sk2deWXrTkyb2W3h1U2z6dQPgy
         8dPqzLAfM7vrBzAcRDo9ba6frAS/6CBiwSRaMkliJp+kAr4yrG0/igPJLmY6ziyQIcs/
         Zv8DBfgKrojdY+BRrWSFKUzwbyvIEcro7uxTuHLQV95K7vzMp+3kSOb5/9QjXJk7LE/d
         FPyQ==
X-Gm-Message-State: ANhLgQ1rGj9xDl53cv0Nhnoq03XKoWimje81Z1dHIWI2YCXGBbs1KrCq
	tWOZ+Ge7hJIaLoIduAPzI+SFFa0a
X-Google-Smtp-Source: ADFU+vvW/v6Rna2jOF/tgwYYk1bVYxqp3cVOsQqJW07+r9GCZKklVfhPqK9+/AYgtEZ+9kDbcgjPuw==
X-Received: by 2002:a17:90a:5218:: with SMTP id v24mr11282760pjh.90.1583639621640;
        Sat, 07 Mar 2020 19:53:41 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:6c62:7a1c:e667:70? ([2601:202:4180:a5c0:6c62:7a1c:e667:70])
        by smtp.gmail.com with ESMTPSA id k67sm39538126pga.91.2020.03.07.19.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 19:53:39 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH] libseccomp: update to 2.4.3
To: Denys Dmytriyenko <denis@denix.org>
Cc: yocto@lists.yoctoproject.org
References: <20200307203849.3117-1-akuster808@gmail.com>
 <20200307221807.GG1578@denix.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <0a683d7a-a61b-acb3-abe9-44a976bfc407@gmail.com>
Date: Sat, 7 Mar 2020 19:53:38 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200307221807.GG1578@denix.org>
Content-Type: multipart/alternative;
 boundary="------------A25012CC0497072813C80853"
Content-Language: en-US

--------------A25012CC0497072813C80853
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 3/7/20 2:18 PM, Denys Dmytriyenko wrote:
> On Sat, Mar 07, 2020 at 08:38:49PM +0000, akuster wrote:
>> dropped patch now included in update
> Do you want to remove the patch?
yeah.. I should.

v2 shortly

thanks,
Armin
>
>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  .../libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb}    | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>  rename recipes-security/libseccomp/{libseccomp_2.4.2.bb => libseccomp_2.4.3.bb} (90%)
>>
>> diff --git a/recipes-security/libseccomp/libseccomp_2.4.2.bb b/recipes-security/libseccomp/libseccomp_2.4.3.bb
>> similarity index 90%
>> rename from recipes-security/libseccomp/libseccomp_2.4.2.bb
>> rename to recipes-security/libseccomp/libseccomp_2.4.3.bb
>> index 07db82a..9ca41e6 100644
>> --- a/recipes-security/libseccomp/libseccomp_2.4.2.bb
>> +++ b/recipes-security/libseccomp/libseccomp_2.4.3.bb
>> @@ -4,10 +4,9 @@ SECTION = "security"
>>  LICENSE = "LGPL-2.1"
>>  LIC_FILES_CHKSUM = "file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"
>>  
>> -SRCREV = "1b6cfd1fc0b7499a28c24299a93a80bd18619563"
>> +SRCREV = "1dde9d94e0848e12da20602ca38032b91d521427"
>>  
>>  SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
>> -           file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch \
>>             file://run-ptest \
>>  "
>>  
>> -- 
>> 2.17.1
>>
>
> 


--------------A25012CC0497072813C80853
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/7/20 2:18 PM, Denys Dmytriyenko
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20200307221807.GG1578@denix.org">
      <pre class="moz-quote-pre" wrap="">On Sat, Mar 07, 2020 at 08:38:49PM +0000, akuster wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">dropped patch now included in update
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Do you want to remove the patch?</pre>
    </blockquote>
    yeah.. I should.<br>
    <br>
    v2 shortly<br>
    <br>
    thanks,<br>
    Armin<br>
    <blockquote type="cite" cite="mid:20200307221807.GG1578@denix.org">
      <pre class="moz-quote-pre" wrap="">


</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
 .../libseccomp/{libseccomp_2.4.2.bb =&gt; libseccomp_2.4.3.bb}    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
 rename recipes-security/libseccomp/{libseccomp_2.4.2.bb =&gt; libseccomp_2.4.3.bb} (90%)

diff --git a/recipes-security/libseccomp/libseccomp_2.4.2.bb b/recipes-security/libseccomp/libseccomp_2.4.3.bb
similarity index 90%
rename from recipes-security/libseccomp/libseccomp_2.4.2.bb
rename to recipes-security/libseccomp/libseccomp_2.4.3.bb
index 07db82a..9ca41e6 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.2.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.3.bb
@@ -4,10 +4,9 @@ SECTION = "security"
 LICENSE = "LGPL-2.1"
 LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f">"file://LICENSE;beginline=0;endline=1;md5=8eac08d22113880357ceb8e7c37f989f"</a>
 
-SRCREV = "1b6cfd1fc0b7499a28c24299a93a80bd18619563"
+SRCREV = "1dde9d94e0848e12da20602ca38032b91d521427"
 
 SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
-           <a class="moz-txt-link-freetext" href="file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch">file://0001-tests-rely-on-__SNR_xxx-instead-of-__NR_xxx-for-sysc.patch</a> \
            <a class="moz-txt-link-freetext" href="file://run-ptest">file://run-ptest</a> \
 "
 
-- 
2.17.1

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
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

--------------A25012CC0497072813C80853--
