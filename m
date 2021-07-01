Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web12.3672.1625122597498619221
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 23:56:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=HxijnYPe;
 spf=pass (domain: mvista.com, ip: 209.85.215.176, mailfrom: jpuhlman@mvista.com)
Received: by mail-pg1-f176.google.com with SMTP id v7so5244541pgl.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 23:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=eJTHTOMxRFsw2cZpY3P8jcpBK2qjk2ovkbq30QNQMoo=;
        b=HxijnYPeEjltdyp/7pd/oDaUKJVYJklkY7Dxk9FbE2XSesQYbyH0Pu0BcfIXy/cJTN
         xnMha2XmxwcGSov2bI1d5Bu/8LBTP0Stt7aLbwJHFOgO4ZCQCIS00IO5pR2GdFx88Z5a
         E9nZgZ7adSsOguurze0Z1byItACrWwauc3OlxdLC8HvOmTcoBg71/+AElhd8l9uR4h4L
         dB0I8T5PeLrUJRxyfX3PtYIzX1jfOLGZYf3tmeT7hfzJhL9Uf/sLhnPHOh1KlJ3luFZQ
         WFPeT6cIeKc+4yX94AyyQ7FUq69dtZhq1DgVolq/A/97dANVOTSH5QCuYxY7ya1xGxAz
         e45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=eJTHTOMxRFsw2cZpY3P8jcpBK2qjk2ovkbq30QNQMoo=;
        b=B61OIpamiD/GO4FV2np9WmC5hM98sd46F9QQC829nK8MkPTSirrZdoOyMj6YQkNLi0
         kIBlx6IMXL2VyqzlPJ7Y9+bZsnpXqoBK6OpQZXPONHM2szkjmh+pGXprHHnT8766jFbg
         VX0I1MDU3DDsyGaCwOr5zZVWgGVIhTA0wMuRgEB9VXMYmGfoVRXBFszn5D92wTwm9Tpm
         Px2oSNqkkj/7e8uF7fqumQD4O+6WCWa3GmM/bhRWCDe9wzgGr7l7I2KH3rV0D6rtKgy+
         hsJ+PfpqmxYfU7MBIo6U5bg2QzL6ItDu++vk1NMvQW6QZCNDZ/Mgcev8dDnxmlTAsEQo
         c8TQ==
X-Gm-Message-State: AOAM531JYWTGnQGq9ZECShu4K01IVMExpyO5wQk8jylqPfM46r0xqf9n
	rFIo7UYoX/7QmiKUfWeJIlBqiTd8BagltA==
X-Google-Smtp-Source: ABdhPJx/jy7OePd6gLIJTsqKkriNBrv4qIggwgWBlC9HY18HIIetzRrFj4dGB5PV69Pp6ou+2LfMvA==
X-Received: by 2002:a63:1c53:: with SMTP id c19mr37460707pgm.332.1625122596522;
        Wed, 30 Jun 2021 23:56:36 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from [192.168.1.17] (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id j6sm14396216pgq.0.2021.06.30.23.56.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jun 2021 23:56:36 -0700 (PDT)
Subject: Re: [yocto] [meta-cgl][PATCH] layer.conf: add hardknott to LAYERSERIES_COMPAT
To: yocto@lists.yoctoproject.org
References: <20210701051003.16407-1-Qi.Chen@windriver.com>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <8fabac2b-4a30-582b-a745-56862ada5c1f@mvista.com>
Date: Wed, 30 Jun 2021 23:56:35 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210701051003.16407-1-Qi.Chen@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------F3E77186330F37D98283896C"
Content-Language: en-US

--------------F3E77186330F37D98283896C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Merged. Thanks.

On 6/30/2021 10:10 PM, Chen Qi wrote:
> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
> ---
>   meta-cgl-common/conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
> index 8100e23..56ddbb9 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
>   
>   LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
>   
> -LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth"
> +LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth hardknott"
>   
>   require conf/distro/include/cgl_common_security_flags.inc
>
> 
>


--------------F3E77186330F37D98283896C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Merged. Thanks.<br>
    <br>
    <div class="moz-cite-prefix">On 6/30/2021 10:10 PM, Chen Qi wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20210701051003.16407-1-Qi.Chen@windriver.com">
      <pre class="moz-quote-pre" wrap="">Signed-off-by: Chen Qi <a class="moz-txt-link-rfc2396E" href="mailto:Qi.Chen@windriver.com">&lt;Qi.Chen@windriver.com&gt;</a>
---
 meta-cgl-common/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index 8100e23..56ddbb9 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -11,6 +11,6 @@ BBFILE_PRIORITY_cgl-common = "7"
 
 LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security selinux"
 
-LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth"
+LAYERSERIES_COMPAT_cgl-common = "warrior zeus dunfell gatesgarth hardknott"
 
 require conf/distro/include/cgl_common_security_flags.inc
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F3E77186330F37D98283896C--
