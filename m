Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web11.434.1585843836452072903
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 09:10:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ay6ZTIZR;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id f16so4124687ilj.9
        for <yocto@lists.yoctoproject.org>; Thu, 02 Apr 2020 09:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=Bw0b7/ujk8B848y55fCdanHI5TjRtepE0g9UZZkOPss=;
        b=Ay6ZTIZRTPAWzu+efum13G3NO7fgPCjbpgGkS4qnrsUMAYquynkb72AjTs/bvgwCr8
         lWuh4OVV/aBv7BKMKV006KRLHm6wdfDAYvXEAvYx75LbDlerakQ704P6KhoJ8pMVWBad
         NBDJhFZ+PS6Yax3YyJRbYfzhkG1+dflEd2vsk7wnghmEEaOO16q3V82rrKHtsQwWBgkS
         kxoY8uyUMg65ta6mUgeWFz+5+8zVyD6Jc8cx36gg/omvq+8SQJJo+UFwOVMpf57l3iXN
         QIOpv3E9ft0jpmYYwmMLPY8dnBGMHhxISABzR+Nngggs2u7fFYb1BCEbY5oCBK5WU/kD
         sjoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Bw0b7/ujk8B848y55fCdanHI5TjRtepE0g9UZZkOPss=;
        b=nVYnBcTfkVhUPJ5oMWCzObAwVJOMYmIq8OK/S9QliWJxWGcHrIEVzAQllmaQx8xk5h
         BF55YPXIq7I2Xwnx58HefGiDYF5LnMmIIxauWSEwxXO8h078ezBjkMWCzQF1oMJ8ulwy
         kONbF9haAtGrkv8JNyJyz2zYqkTinmMXWKZ63T3z/VDLLJjw6cYjvz9EW2B1K6VRQYsS
         jmX2cMtkiSFD/UeXzKQ3WkecUGQTQWohTP5jXZvrAf5NkrWLWKbzP05Xx5o5lEQcInnR
         wo46a2s74U4Sp6+6gUeubZQVPflpLQu5rz5WbLCAQHusv7hUoOzEQ4cl80GYGAWF9o7r
         uecg==
X-Gm-Message-State: AGi0Publ0vHZFzTmTxgcbq4Uk8AiLv6q2LjMBvqtVzQORAsHGxIw29UP
	9yF9QOvCljWI9AsA3Lj9RlE=
X-Google-Smtp-Source: APiQypIGx/FcyHYxNJ6FbbYotPllcT/TZVJFsxkpsSCR2H7UhxjF8dYS7jQlPP5xxETVZACkfD0UCA==
X-Received: by 2002:a92:c6cb:: with SMTP id v11mr4063624ilm.41.1585843835673;
        Thu, 02 Apr 2020 09:10:35 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:b44c:69fe:8097:ef03? ([2605:a601:ac3d:c100:b44c:69fe:8097:ef03])
        by smtp.gmail.com with ESMTPSA id 21sm955467iog.21.2020.04.02.09.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 09:10:33 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto][meta-spdxscanner][PATCH V2] Remove redundant code.
To: "Li, Xiaoming" <lixm.fnst@cn.fujitsu.com>, yocto@lists.yoctoproject.org
Cc: leimaohui@cn.fujitsu.com
References: <20200402164545.111457-1-lixm.fnst@cn.fujitsu.com>
Message-ID: <c498ab30-8ab8-a29f-d443-4e3c544c8524@gmail.com>
Date: Thu, 2 Apr 2020 11:10:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402164545.111457-1-lixm.fnst@cn.fujitsu.com>
Content-Type: multipart/alternative;
 boundary="------------9EC8A231F7F16F3BF43D555F"
Content-Language: en-US

--------------9EC8A231F7F16F3BF43D555F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 4/2/20 11:45 AM, Li, Xiaoming wrote:
> FOLDER_ID has already been assigned a defalut value "1", so there is no
> need add 'or "1"' here.
>
> Signed-off-by: Li Xiaoming <lixm.fnst@cn.fujitsu.com>
> ---
>   classes/fossology-rest.bbclass | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
> index 5c5ef70..69f4998 100644
> --- a/classes/fossology-rest.bbclass
> +++ b/classes/fossology-rest.bbclass
> @@ -230,7 +230,7 @@ def get_folder_id(d):
>           folder_name = d.getVar('FOLDER_NAME')
>           folder_id = create_folder(d, folder_name)
>       else:
> -        folder_id = (d.getVar('FOLDER_ID', True) or "1")
> +        folder_id = d.getVar('FOLDER_ID', False)

You probably shouldn't be disabling variable expansion here (i.e. 
passing False as the second argument)?

>   
>       bb.note("Folder Id =  " + str(folder_id))
>       return str(folder_id)
>
> 

--------------9EC8A231F7F16F3BF43D555F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/2/20 11:45 AM, Li, Xiaoming wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20200402164545.111457-1-lixm.fnst@cn.fujitsu.com">
      <pre class="moz-quote-pre" wrap="">FOLDER_ID has already been assigned a defalut value "1", so there is no
need add 'or "1"' here.

Signed-off-by: Li Xiaoming <a class="moz-txt-link-rfc2396E" href="mailto:lixm.fnst@cn.fujitsu.com">&lt;lixm.fnst@cn.fujitsu.com&gt;</a>
---
 classes/fossology-rest.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
index 5c5ef70..69f4998 100644
--- a/classes/fossology-rest.bbclass
+++ b/classes/fossology-rest.bbclass
@@ -230,7 +230,7 @@ def get_folder_id(d):
         folder_name = d.getVar('FOLDER_NAME')
         folder_id = create_folder(d, folder_name)
     else:
-        folder_id = (d.getVar('FOLDER_ID', True) or "1")
+        folder_id = d.getVar('FOLDER_ID', False)</pre>
    </blockquote>
    <p>You probably shouldn't be disabling variable expansion here (i.e.
      passing False as the second argument)?<br>
    </p>
    <blockquote type="cite"
      cite="mid:20200402164545.111457-1-lixm.fnst@cn.fujitsu.com">
      <pre class="moz-quote-pre" wrap="">
 
     bb.note("Folder Id =  " + str(folder_id))
     return str(folder_id)
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------9EC8A231F7F16F3BF43D555F--
