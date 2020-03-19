Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4103.1584582871546986017
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:54:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=kXrOMvX9;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: jpuhlman@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6874AE01844; Wed, 18 Mar 2020 18:54:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFEFE017FC
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:54:30 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id w13so1055710oih.4
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:references:to:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=yKXqX2rFrnB3+oQQXWD+RgdjGfMaGjSa8P6Tzw1Q4J4=;
        b=kXrOMvX9cvMQ9LdHkPH1tkG2IaD4uvDu/gIxHUsXcHY17TJQQGp43i2EGCjO7THPta
         3bcDDhhE1x1B7o3Ax5SHMQwJ8um3t08yWTOHgrvvCQn72p7NqIiO5zZprmIKfUuvIqLQ
         pCP9V48jdqTAOl0lKAlZnA9sFCPUcuZPtI9pcS0NyVpTmMDZpOMfLFdwFhBRA/08/mCF
         CeFLCJRLxCDLAA9hvRife/ZLH559SfcphPEQk5hqU3dh4lckQwpS6hdxzZlNgbMAJi06
         +8tAnsEKxfs0PcxNfWMqU/O/04oeYcFkphf01vf1gyjrqns54kqNu3ijx/Nyp0Q3yn+6
         SLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:references:to:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=yKXqX2rFrnB3+oQQXWD+RgdjGfMaGjSa8P6Tzw1Q4J4=;
        b=f7AavlqXXDkv0UuA98mMpaJqIAq8jj15VtGqV+IQ9e8OYcz1MKn7amBWjE+T258bSP
         1eon6CVGKZDdQ44PayyPaeMfh3McI+PShIGlceXsCqrcZsiqdEyF2Ps8gXz4qpnL7IzL
         UB4dqxVs74Rhh5T8/EnuYKdkHknPnoeHWHAgoCmd8BtYp6SwKMN+juMdM3VumvMWsGU8
         y9hfIpQtmnL/tEeRE2Kdv/UE3XKTZnLNjZJXiy1Grv21mVjAMrnSjCkWIGitwr4oMxis
         M33pYu4juPhF8qtLzas0m/0KsCjrk6WX76gBI/MdMtkAk/t6R79rw9D2bNAJ0Gt+D/yI
         NNPg==
X-Gm-Message-State: ANhLgQ3ShzYVb4UcnAIEPK+pslDvPmnOMI2yUpbn+l4wDY7UfcRW4+rT
	xsxuoW8pv1Bz0QnnLGb+8DzlQXahiU8=
X-Google-Smtp-Source: ADFU+vtQApS15dcZ2FKZTYEmK36C63ch+gY6W5K49ckjots4D43+jt2/85wkED1N88Fl5pF6MshZrQ==
X-Received: by 2002:a05:6808:b2d:: with SMTP id t13mr705610oij.107.1584582869453;
        Wed, 18 Mar 2020 18:54:29 -0700 (PDT)
Received: from ?IPv6:2600:1700:4c90:60a0:5566:b07f:3f47:4a0e? ([2600:1700:4c90:60a0:5566:b07f:3f47:4a0e])
        by smtp.gmail.com with ESMTPSA id r20sm315554oic.56.2020.03.18.18.54.28
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 18:54:28 -0700 (PDT)
Subject: Re: [yocto] [meta-cgl][PATCH 01/20] monit: upgrade 5.25.2 -> 5.26.0
References: <15FD91AB7E42E2A2.29573@lists.yoctoproject.org>
To: yocto@yoctoproject.org
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <61e995a3-238a-af51-87b5-308c25548729@mvista.com>
Date: Wed, 18 Mar 2020 18:54:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <15FD91AB7E42E2A2.29573@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------C6AB598CA8E5EE90B162EB8D"
Content-Language: en-US

--------------C6AB598CA8E5EE90B162EB8D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Opps I went one to far, please disregard this one.

On 3/18/2020 6:53 PM, Jeremy Puhlman via Lists.Yoctoproject.Org wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
> ---
>   .../recipes-cgl/monit/{monit_5.25.2.bb => monit_5.26.0.bb}          | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>   rename meta-cgl-common/recipes-cgl/monit/{monit_5.25.2.bb => monit_5.26.0.bb} (90%)
>
> diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
> similarity index 90%
> rename from meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
> rename to meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
> index ab9e922..6ec1a21 100644
> --- a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
> +++ b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
> @@ -9,7 +9,7 @@ HOMEPAGE = "http://mmonit.com/monit/"
>   LICENSE = "AGPLv3"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"
>   
> -DEPENDS = "openssl zlib"
> +DEPENDS = "openssl zlib virtual/crypt"
>   
>   SRC_URI = "\
>   	http://mmonit.com/monit/dist/${BP}.tar.gz \
> @@ -17,8 +17,8 @@ SRC_URI = "\
>   	file://init \
>   	"
>   
> -SRC_URI[md5sum] = "890df599d6c1e9cfbbdd3edbacb7db81"
> -SRC_URI[sha256sum] = "aa0ce6361d1155e43e30a86dcff00b2003d434f221c360981ced830275abc64a"
> +SRC_URI[md5sum] = "9f7dc65e902c103e4c5891354994c3df"
> +SRC_URI[sha256sum] = "87fc4568a3af9a2be89040efb169e3a2e47b262f99e78d5ddde99dd89f02f3c2"
>   
>   INITSCRIPT_NAME = "monit"
>   INITSCRIPT_PARAMS = "defaults 99"
>
> 
>
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------C6AB598CA8E5EE90B162EB8D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Opps I went one to far, please disregard this one.<br>
    <br>
    <div class="moz-cite-prefix">On 3/18/2020 6:53 PM, Jeremy Puhlman
      via Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:15FD91AB7E42E2A2.29573@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
Signed-off-by: Adrian Dudau <a class="moz-txt-link-rfc2396E" href="mailto:adrian.dudau@enea.com">&lt;adrian.dudau@enea.com&gt;</a>
---
 .../recipes-cgl/monit/{monit_5.25.2.bb =&gt; monit_5.26.0.bb}          | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta-cgl-common/recipes-cgl/monit/{monit_5.25.2.bb =&gt; monit_5.26.0.bb} (90%)

diff --git a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
similarity index 90%
rename from meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
rename to meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
index ab9e922..6ec1a21 100644
--- a/meta-cgl-common/recipes-cgl/monit/monit_5.25.2.bb
+++ b/meta-cgl-common/recipes-cgl/monit/monit_5.26.0.bb
@@ -9,7 +9,7 @@ HOMEPAGE = <a class="moz-txt-link-rfc2396E" href="http://mmonit.com/monit/">"http://mmonit.com/monit/"</a>
 LICENSE = "AGPLv3"
 LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51">"file://COPYING;md5=ea116a7defaf0e93b3bb73b2a34a3f51"</a>
 
-DEPENDS = "openssl zlib"
+DEPENDS = "openssl zlib virtual/crypt"
 
 SRC_URI = "\
 	<a class="moz-txt-link-freetext" href="http://mmonit.com/monit/dist/$">http://mmonit.com/monit/dist/$</a>{BP}.tar.gz \
@@ -17,8 +17,8 @@ SRC_URI = "\
 	<a class="moz-txt-link-freetext" href="file://init">file://init</a> \
 	"
 
-SRC_URI[md5sum] = "890df599d6c1e9cfbbdd3edbacb7db81"
-SRC_URI[sha256sum] = "aa0ce6361d1155e43e30a86dcff00b2003d434f221c360981ced830275abc64a"
+SRC_URI[md5sum] = "9f7dc65e902c103e4c5891354994c3df"
+SRC_URI[sha256sum] = "87fc4568a3af9a2be89040efb169e3a2e47b262f99e78d5ddde99dd89f02f3c2"
 
 INITSCRIPT_NAME = "monit"
 INITSCRIPT_PARAMS = "defaults 99"
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

--------------C6AB598CA8E5EE90B162EB8D--
