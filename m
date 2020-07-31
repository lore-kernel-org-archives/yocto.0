Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web12.295.1596212142098473623
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 09:15:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=rgC9jfj2;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.215.182, mailfrom: akuster@mvista.com)
Received: by mail-pg1-f182.google.com with SMTP id h12so4914202pgf.7
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jul 2020 09:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=RLhKcaouyXK2X5iMvorBLOhU3olyRR6RnAMTUyqn4jc=;
        b=rgC9jfj2auOQXgkK3cdQ2Rc2AnsJtb3Sh1vkCPSlPim6fRi/GFEnhbBiw5JzAbKplw
         qacqQdckDQvQmqLAB328326jd+tooGCBg4ojg7B80uUPOtl0uTXv8fOgkUfitUC6Q2Ml
         vO+yKsVrXrSH2or9KLbIcrB8DAs9iGw7IX+g7htXkXhig5K4SlctDF2YsaQufti0aWUp
         Qb0V9iXX8xzxWfNKw0jpUcMNuLeBiUIph2ZGACCGXuLsNoMuHf+ByaPKffAGjxmHp7HK
         sDtIDIab/GxGVe3Sjz/aLGrm2sNmLVTdhU98WzjZxZPeMjzCbCzshCaRDJc9p+QYJ+cP
         LWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=RLhKcaouyXK2X5iMvorBLOhU3olyRR6RnAMTUyqn4jc=;
        b=O7wYpqC/MHgSPHbwVJo9vCzDrTkSHJ2sW4l6jKhn+1+SHROYttT5siFTn0lManRXtM
         L2fUrlR6p3rLrko1ZjJsWU6RFpCpM2ynh87+S6QTMfMh00GeS6Kmxz36UXUFqAyqBRtP
         d0oxzK4P1Y/NwedNsZ3fzzpNPuzet5T+9pF3PnPGhvkaN3ponER0fmF235DV8YwNFIop
         Lpry4J0RuhZSsjgXz9eDGcQL/L7q4ODxVycSDtUmps5bR9O5oHEmBV0GB1D8StH2BeJc
         NQcPiP/H7W6sCmxPlX/yApxbp7ygltHFMPwlWL858uaNVi4oXMZOJp4/I7E/Xs0uG1cR
         VwZw==
X-Gm-Message-State: AOAM533+Ts49kxqM4QReju+6L4y2C2Jpguqr6bv6ANGtiNqf9ZtlYnwU
	th9Xm0XYnPjW6NwfiKUvqvhSS4tf6so=
X-Google-Smtp-Source: ABdhPJwg4deVZ3Q/cH14aH3QgkwQU5f52WH8/FfKoixaZlJccxuP+DJ0mPDfpVd/2NBl4Fl901fVvQ==
X-Received: by 2002:a63:907:: with SMTP id 7mr4459660pgj.193.1596212141139;
        Fri, 31 Jul 2020 09:15:41 -0700 (PDT)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:cd39:b98e:a1ce:2c8f? ([2601:202:4180:a5c0:cd39:b98e:a1ce:2c8f])
        by smtp.gmail.com with ESMTPSA id lx16sm10233877pjb.1.2020.07.31.09.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 09:15:40 -0700 (PDT)
Subject: Re: [yocto] cannot build PDF docs
To: Rob Prowel <rprowel@comcast.net>, yocto@lists.yoctoproject.org
References: <de5d2fa6-d353-9113-72cf-f75d2544707c@comcast.net>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <511d121e-885a-b163-03d9-9993c3125054@mvista.com>
Date: Fri, 31 Jul 2020 09:15:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <de5d2fa6-d353-9113-72cf-f75d2544707c@comcast.net>
Content-Type: multipart/alternative;
 boundary="------------8D95F9BB6A77ED0D21BBBA29"
Content-Language: en-US

--------------8D95F9BB6A77ED0D21BBBA29
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Rob,


On 7/31/20 8:19 AM, Rob Prowel wrote:
> Is there some magic to building the PDF versions of the yocto docs?
> I've tried on multiple machines running debian and differing versions
> of ubuntu and consistently the PDF docs fail to build.
>
> Font substitution errors are trivial, but not being able to locate the
> images that get are inserted is a pretty serious build bug.
>
> What's the secret to building PDF docs, or where are they online?  and
> no, not interested in referring to cloud based HTML docs.  I want
> offline PDF documentation.
>

I believe you are hitting a known bug: 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13767

regards,
Armin

> Thanks!
>
> $ make DOC=adt-manual pdf
> cd adt-manual; ../tools/poky-docbook-to-pdf adt-manual.xml
> ../template; cd ..
> Note: namesp. cut : stripped namespace before processing
>             Yocto Project Application Developer's Guide
>
> Making portrait pages on A4 paper (210mmx297mm)
> Attributed 561 IDs for element, cleaned up 0
> [warning] /usr/bin/fop: JVM flavor 'sun' not understood
> Picked up _JAVA_OPTIONS: -Dawt.useSystemAAFontSettings=on
> -Dswing.aatext=true
> [INFO] FopConfParser - Default page-height set to: 11in
> [INFO] FopConfParser - Default page-width set to: 8.26in
> [ERROR] FOUserAgent - Image not found. URI: figures/adt-title.png.
> (See position 2:38206)
> [WARN] FOUserAgent - Font "Symbol,normal,700" not found. Substituting
> with "Symbol,normal,400".
> [WARN] FOUserAgent - Font "ZapfDingbats,normal,700" not found.
> Substituting with "ZapfDingbats,normal,400".
> [ERROR] FOUserAgent - Image not found. URI: figures/adt-title.png. (No
> context info available)
> [INFO] FOUserAgent - Rendered page #1.
> [INFO] FOUserAgent - Rendered page #2.
> [INFO] FOUserAgent - Rendered page #3.
> [INFO] FOUserAgent - Rendered page #4.
> [INFO] FOUserAgent - Rendered page #5.
> [ERROR] FOUserAgent - Image not found. URI:
> figures/using-a-pre-built-image.png. (See position 736:275)
> [WARN] FOUserAgent - Font "veramono,italic,400" not found.
> Substituting with "veramono,normal,400".
> [WARN] FOUserAgent - The contents of fo:block line 1 exceed the
> available area in the inline-progression direction by more than 50
> points. (See position 496:372)
> [WARN] FOUserAgent - The contents of fo:block line 1 exceed the
> available area in the inline-progression direction by more than 50
> points. (See position 496:372)
> [WARN] FOUserAgent - The contents of fo:block line 1 exceed the
> available area in the inline-progression direction by more than 50
> points. (See position 496:372)
> [WARN] FOUserAgent - The contents of fo:block line 1 exceed
>
> 


--------------8D95F9BB6A77ED0D21BBBA29
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    Rob,<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/31/20 8:19 AM, Rob Prowel wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:de5d2fa6-d353-9113-72cf-f75d2544707c@comcast.net">Is
      there some magic to building the PDF versions of the yocto docs?
      I've tried on multiple machines running debian and differing
      versions of ubuntu and consistently the PDF docs fail to build.
      <br>
      <br>
      Font substitution errors are trivial, but not being able to locate
      the images that get are inserted is a pretty serious build bug.
      <br>
      <br>
      What's the secret to building PDF docs, or where are they online? 
      and no, not interested in referring to cloud based HTML docs.  I
      want offline PDF documentation.
      <br>
      <br>
    </blockquote>
    <br>
    I believe you are hitting a known bug: 
    <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13767">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13767</a><br>
    <br>
    regards,<br>
    Armin<br>
    <br>
    <blockquote type="cite"
      cite="mid:de5d2fa6-d353-9113-72cf-f75d2544707c@comcast.net">Thanks!
      <br>
      <br>
      $ make DOC=adt-manual pdf
      <br>
      cd adt-manual; ../tools/poky-docbook-to-pdf adt-manual.xml
      ../template; cd ..
      <br>
      Note: namesp. cut : stripped namespace before processing
      <br>
                  Yocto Project Application Developer's Guide
      <br>
      <br>
      Making portrait pages on A4 paper (210mmx297mm)
      <br>
      Attributed 561 IDs for element, cleaned up 0
      <br>
      [warning] /usr/bin/fop: JVM flavor 'sun' not understood
      <br>
      Picked up _JAVA_OPTIONS: -Dawt.useSystemAAFontSettings=on
      -Dswing.aatext=true
      <br>
      [INFO] FopConfParser - Default page-height set to: 11in
      <br>
      [INFO] FopConfParser - Default page-width set to: 8.26in
      <br>
      [ERROR] FOUserAgent - Image not found. URI: figures/adt-title.png.
      (See position 2:38206)
      <br>
      [WARN] FOUserAgent - Font "Symbol,normal,700" not found.
      Substituting with "Symbol,normal,400".
      <br>
      [WARN] FOUserAgent - Font "ZapfDingbats,normal,700" not found.
      Substituting with "ZapfDingbats,normal,400".
      <br>
      [ERROR] FOUserAgent - Image not found. URI: figures/adt-title.png.
      (No context info available)
      <br>
      [INFO] FOUserAgent - Rendered page #1.
      <br>
      [INFO] FOUserAgent - Rendered page #2.
      <br>
      [INFO] FOUserAgent - Rendered page #3.
      <br>
      [INFO] FOUserAgent - Rendered page #4.
      <br>
      [INFO] FOUserAgent - Rendered page #5.
      <br>
      [ERROR] FOUserAgent - Image not found. URI:
      figures/using-a-pre-built-image.png. (See position 736:275)
      <br>
      [WARN] FOUserAgent - Font "veramono,italic,400" not found.
      Substituting with "veramono,normal,400".
      <br>
      [WARN] FOUserAgent - The contents of fo:block line 1 exceed the
      available area in the inline-progression direction by more than 50
      points. (See position 496:372)
      <br>
      [WARN] FOUserAgent - The contents of fo:block line 1 exceed the
      available area in the inline-progression direction by more than 50
      points. (See position 496:372)
      <br>
      [WARN] FOUserAgent - The contents of fo:block line 1 exceed the
      available area in the inline-progression direction by more than 50
      points. (See position 496:372)
      <br>
      [WARN] FOUserAgent - The contents of fo:block line 1 exceed
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------8D95F9BB6A77ED0D21BBBA29--
