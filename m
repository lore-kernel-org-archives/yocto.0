Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
 by mx.groups.io with SMTP id smtpd.web10.36823.1628862510027110898
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 06:48:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQJjHbjC;
 spf=pass (domain: gmail.com, ip: 209.85.210.53, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f53.google.com with SMTP id a7-20020a9d5c870000b029050333abe08aso12050982oti.13
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 06:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=uTQiMg6Xp89rFvOS+sEhG1HNftNXhXik9gzZE4FYBcs=;
        b=lQJjHbjCtAHMlcVrR/m3hRzHizazJ0CwNalGA+vlaQfRX5yG8hTjGyba6JGCHONEmL
         Kll94G0QmXXTpqYbhkcgn9i61Tw8/3jBPT4D18xLJhp4+gfPbHI9ZIl0qe3JhTHElOm2
         RnCMZetSw1E+dAQLVM0hmAT8Xyejju2WppEDcyWfOWsDTeuHgHNRAMMNr8t3AaN/37UX
         dBdsavx3WMNSh1N2OlrwEkod4TgNeh7cTW2yFFF3Eus880VGRew3RFrvJM3ugzgnAWqd
         NrAP6/WE0QgyBUELiJO6PEYw/2ArPh+zh6GZr2k0ZdofRehsNbSGHYIz+J73XeUgW44X
         zOmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=uTQiMg6Xp89rFvOS+sEhG1HNftNXhXik9gzZE4FYBcs=;
        b=GMd19WGjfrINXAy4KVUf0RWg4ZuKqoRny19++XroM4aYkuBlg6spLGXC5c1xea1sSD
         JIzqNqnMxpIEM8IxnNfX7Nvwgh1po9boddS+klQaj12R3+0C6zzxpwZGSBdkgWrUHuZ3
         XB0i1j1aQOYAHnmMt9ZNbT54JKCq8GpN5Rgq0clNWsRfF+4blUQLge15QEk06nU8BlFX
         EjzVfSb/3+4y+Sxq20RHbJH5f7vVe1/LhveupT1f1LJWZMtVt3W2eJegV4an5blHv3Cz
         UHa3sOeGedS3+iIbnnfapMI9w+KU2eXTxoiyE+PqK97gY6ZaiOPvh1E/YWvdpYPQXWxV
         Tk4g==
X-Gm-Message-State: AOAM5319QElWmhC116JeANF5mwCxr67KgLD8jtvWRoa9BP/QFlFDwGO3
	ZKaWYOiP394aathZmPAvheWGP9sjvLzVJg==
X-Google-Smtp-Source: ABdhPJxfICA1RQazSBhGOQFJO7xPEGQ727tEVpqPIjqxtZr/hAfBaLPlvkY68+KEhNU3ckpPZrCkgA==
X-Received: by 2002:a9d:738b:: with SMTP id j11mr2131878otk.297.1628862509124;
        Fri, 13 Aug 2021 06:48:29 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id bj14sm343233oib.32.2021.08.13.06.48.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 06:48:28 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH] binutils: Package static libdep linker plugins
To: Samuli Piippo <samuli.piippo@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <16642F2E6B14B52A.594@lists.yoctoproject.org>
 <CABXoSoX9y-7UrzvHkA65jW-oWM0Hf+g5jYD6bnvBJn46uXqvBQ@mail.gmail.com>
Message-ID: <2fa024f8-282e-5ff1-2533-7df81c3cd754@gmail.com>
Date: Fri, 13 Aug 2021 08:48:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CABXoSoX9y-7UrzvHkA65jW-oWM0Hf+g5jYD6bnvBJn46uXqvBQ@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------CBCEEEC7D42102A34E2C8902"
Content-Language: en-US

--------------CBCEEEC7D42102A34E2C8902
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 8/13/21 2:05 AM, Samuli Piippo wrote:
> ping.
>
> I'm still seeing problem with this on hardknott, at least when 
> building for qemux86 target:
> agent:2021/08/13 06:00:50 build.go:391: ERROR: binutils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA Issue: non -staticdev package contains static .a library: binutils-cross-canadian-i686 path '/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a'
> agent:2021/08/13 06:00:50 build.go:391: non -staticdev package contains static .a library: binutils-cross-canadian-i686 path '/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a' [staticdev]
> agent:2021/08/13 06:00:50 build.go:391: ERROR: binutils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.

Hmm, I'm not sure why I missed this. However, why is the MinGW build 
producing the .a files and not all the builds? It seems like this could 
go in the oe-core version of the recipe (w/o the override) instead of 
the bbappend?

>
> On Tue, 16 Feb 2021 at 11:07, Samuli Piippo via lists.yoctoproject.org 
> <http://lists.yoctoproject.org> 
> <samuli.piippo=gmail.com@lists.yoctoproject.org 
> <mailto:gmail.com@lists.yoctoproject.org>> wrote:
>
>     this is new plugin added in binutils 2.36
>
>     Signed-off-by: Samuli Piippo <samuli.piippo@qt.io
>     <mailto:samuli.piippo@qt.io>>
>     ---
>      recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend | 2 ++
>      1 file changed, 2 insertions(+)
>
>     diff --git
>     a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
>     b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
>     index 5845fe0..0d376bb 100644
>     --- a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
>     +++ b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
>     @@ -3,3 +3,5 @@ LDFLAGS_append_sdkmingw32 = " -Wl,-static"
>
>      DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
>      DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
>     +
>     +FILES_${PN}-staticdev_append_sdkmingw32 = "
>     ${libdir}/bfd-plugins/lib*.a"
>     -- 
>     2.17.1
>
>
>     
>

--------------CBCEEEC7D42102A34E2C8902
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/13/21 2:05 AM, Samuli Piippo
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CABXoSoX9y-7UrzvHkA65jW-oWM0Hf+g5jYD6bnvBJn46uXqvBQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>ping.</div>
        <div><br>
        </div>
        <div>I'm still seeing problem with this on hardknott, at least
          when building for qemux86 target:</div>
        <div>
          <pre>agent:2021/08/13 06:00:50 build.go:391: ERROR: binutils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA Issue: non -staticdev package contains static .a library: binutils-cross-canadian-i686 path '/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a'
agent:2021/08/13 06:00:50 build.go:391: non -staticdev package contains static .a library: binutils-cross-canadian-i686 path '/opt/poky/3.3.2/sysroots/x86_64-w64-mingw32/usr/lib/i686-poky-linux/bfd-plugins/libdep.dll.a' [staticdev]
agent:2021/08/13 06:00:50 build.go:391: ERROR: binutils-cross-canadian-i686-2.36.1-r0 do_package_qa: QA run found fatal errors. Please consider fixing them.</pre>
        </div>
      </div>
    </blockquote>
    <p>Hmm, I'm not sure why I missed this. However, why is the MinGW
      build producing the .a files and not all the builds? It seems like
      this could go in the oe-core version of the recipe (w/o the
      override) instead of the bbappend?<br>
    </p>
    <blockquote type="cite"
cite="mid:CABXoSoX9y-7UrzvHkA65jW-oWM0Hf+g5jYD6bnvBJn46uXqvBQ@mail.gmail.com">
      <div dir="ltr">
        <div>
          <pre>
</pre>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Tue, 16 Feb 2021 at 11:07,
          Samuli Piippo via <a href="http://lists.yoctoproject.org"
            moz-do-not-send="true">lists.yoctoproject.org</a>
          &lt;samuli.piippo=<a
            href="mailto:gmail.com@lists.yoctoproject.org"
            moz-do-not-send="true">gmail.com@lists.yoctoproject.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">this
          is new plugin added in binutils 2.36<br>
          <br>
          Signed-off-by: Samuli Piippo &lt;<a
            href="mailto:samuli.piippo@qt.io" target="_blank"
            moz-do-not-send="true">samuli.piippo@qt.io</a>&gt;<br>
          ---<br>
 recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend | 2 ++<br>
           1 file changed, 2 insertions(+)<br>
          <br>
          diff --git
          a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend
b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend<br>
          index 5845fe0..0d376bb 100644<br>
          ---
          a/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend<br>
          +++
          b/recipes-devtools/binutils/binutils-cross-canadian_2.%.bbappend<br>
          @@ -3,3 +3,5 @@ LDFLAGS_append_sdkmingw32 = " -Wl,-static"<br>
          <br>
           DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"<br>
           DEPENDS_remove_sdkmingw32 = "nativesdk-flex"<br>
          +<br>
          +FILES_${PN}-staticdev_append_sdkmingw32 = "
          ${libdir}/bfd-plugins/lib*.a"<br>
          -- <br>
          2.17.1<br>
          <br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------CBCEEEC7D42102A34E2C8902--
