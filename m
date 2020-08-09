Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
 by mx.groups.io with SMTP id smtpd.web11.18383.1596945065253531740
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Aug 2020 20:51:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=RqeqSw/0;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.160.193, mailfrom: jpuhlman@mvista.com)
Received: by mail-qt1-f193.google.com with SMTP id s23so4344030qtq.12
        for <yocto@lists.yoctoproject.org>; Sat, 08 Aug 2020 20:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=P09nEo1Tf2Mk0PhW73RFbzIEEKDt2ATt607MK+vfALQ=;
        b=RqeqSw/0320hZauJm+JfSikapbCcsKP0fVMJTd+DMyZbX4lOlBjpjEfwuVCMBn8lVF
         AzcTJDWf5d3+u17cZDh6PO+ppWpD7uhvppl5JaRi4SCpIeYYthW8H11923e6339nk8Kp
         yR4hmnWNAVs+AqUR/2LwXHyUKskKnIiAY/BxNkKbtifutaU8mIKcXLeZxkjRDkgAF3Li
         ffBL3nNtJHofZ+lAMSU2aa3h+38tAtjXtihILdAW+8sFgEnM4G/tadv19PeMQvRnBUyv
         +lXpgOrdtRNjYwpv/mxSxL3GkgWc2H6vFwljCJpw6+fOlKgHojOhJRZbFigGHNMQf7OD
         YbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=P09nEo1Tf2Mk0PhW73RFbzIEEKDt2ATt607MK+vfALQ=;
        b=N/mOuRFpmtOahWtfm5f+xaGcRoLkI7FOZqSl2ogPmUVPmvkiWL3gIgVdUAlUUh1NU9
         cXeMSutPTDJbDjLoLfZUFvCgfhRNH3xB+8Av9LqLex4H1QLp3iZ2eGBF2maY/9BaAFVQ
         D5iVZbuwf7jyEl9QWrWzrwmqLmn6s86yIMAJokC2tz92Z70S2wJKFPJMq9e/tMEgmkPZ
         +WONHugSKu13tmrPTyPWs9bzLWdN3z0yp6w1iJV+kyOFGekLraZGFkMYFErdNvetUxd+
         3IUk+b1D3lZzOkXYzeb4K7njsOFQH+gh63MsQcf82Ftd0Q5wPaLJzkPlyvms0VfUgVb4
         PMCw==
X-Gm-Message-State: AOAM532fYkOyoykw20yTCPT2s4/eg1KAdRvNMc1QQGXOuvu+axrbYVRd
	0L4HRRFOjXt+G7nE+tvAoVR6hw==
X-Google-Smtp-Source: ABdhPJxBbeFrdTrUFyDa9c2rdh+0Pe8yJMsnyVZWL9SzKyC0qN2fIRwx9TXp+tzdtyLNLHgU6ppY+w==
X-Received: by 2002:ac8:7959:: with SMTP id r25mr20433659qtt.85.1596945064425;
        Sat, 08 Aug 2020 20:51:04 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from ?IPv6:2600:1700:4c90:60a0:60de:efe0:93f3:c162? ([2600:1700:4c90:60a0:60de:efe0:93f3:c162])
        by smtp.gmail.com with ESMTPSA id u37sm12797238qtj.47.2020.08.08.20.51.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Aug 2020 20:51:03 -0700 (PDT)
Subject: Re: [yocto] [meta-cgl][PATCH] ucarp: don't hardcode the path for ifconfig
To: yocto@lists.yoctoproject.org, mingli.yu@windriver.com,
 Mingli <mingli.yu@windriver.com>
References: <20200807084715.3024520-1-mingli.yu@windriver.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <7cdd8ff6-6af2-b8a2-3560-f604e3cad514@mvista.com>
Date: Sat, 8 Aug 2020 20:51:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200807084715.3024520-1-mingli.yu@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------7FCC7CAED49AA47839D19721"
Content-Language: en-US

--------------7FCC7CAED49AA47839D19721
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Merged.

On 8/7/2020 1:47 AM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
>
> Don't hardcode the path for the ifconfig command in case the path
> for ifconfig on the system may be different from the hardcoded.
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh | 2 +-
>   meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh   | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
> index a431c32..27e0d2b 100644
> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
> @@ -4,4 +4,4 @@ exec 2> /dev/null
>   #/sbin/ip addr del "$2"/24 dev "$1"
>   
>   # or alternatively:
> -/sbin/ifconfig "$1":254 down
> +ifconfig "$1":254 down
> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
> index c1b8a4f..f81d578 100644
> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
> @@ -4,4 +4,4 @@ exec 2> /dev/null
>   #/sbin/ip addr add "$2"/24 dev "$1"
>   
>   # or alternatively:
> -/sbin/ifconfig "$1":254 "$2" netmask 255.255.255.0
> +ifconfig "$1":254 "$2" netmask 255.255.255.0
>
> 

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------7FCC7CAED49AA47839D19721
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Merged.<br>
    <br>
    <div class="moz-cite-prefix">On 8/7/2020 1:47 AM, Yu, Mingli wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200807084715.3024520-1-mingli.yu@windriver.com">
      <pre class="moz-quote-pre" wrap="">From: Mingli Yu <a class="moz-txt-link-rfc2396E" href="mailto:mingli.yu@windriver.com">&lt;mingli.yu@windriver.com&gt;</a>

Don't hardcode the path for the ifconfig command in case the path
for ifconfig on the system may be different from the hardcoded.

Signed-off-by: Mingli Yu <a class="moz-txt-link-rfc2396E" href="mailto:mingli.yu@windriver.com">&lt;mingli.yu@windriver.com&gt;</a>
---
 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh | 2 +-
 meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
index a431c32..27e0d2b 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-down.sh
@@ -4,4 +4,4 @@ exec 2&gt; /dev/null
 #/sbin/ip addr del "$2"/24 dev "$1"
 
 # or alternatively:
-/sbin/ifconfig "$1":254 down
+ifconfig "$1":254 down
diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
index c1b8a4f..f81d578 100644
--- a/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
+++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp/vip-up.sh
@@ -4,4 +4,4 @@ exec 2&gt; /dev/null
 #/sbin/ip addr add "$2"/24 dev "$1"
 
 # or alternatively:
-/sbin/ifconfig "$1":254 "$2" netmask 255.255.255.0 
+ifconfig "$1":254 "$2" netmask 255.255.255.0
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a></pre>
  </body>
</html>

--------------7FCC7CAED49AA47839D19721--
