Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.12547.1596568049749266389
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 12:07:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqnWGlfv;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id t10so18414271plz.10
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 12:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=O5lnlgPkD96yJujeoOoWsPN/u9+fLmyr+mMonmEbAEg=;
        b=UqnWGlfvcB1/QRFQx0HRIpq4JT/alcNGDHh9j8E5X4GjnK/0bgh77pT1ZpuGnBcs8M
         pwBtlWPBntNwR2d1ZKz9rPiL9g1sTAN2CtJ91xcZ4YNU8Jh1CsEMiy0IZtM6S+/37aF2
         K4swdFEsQ/N5o8fvDj+86OrvePLKDP+9kjSqu6GvPZcaVDTJ7ikjDeEgvRsNfBalGguP
         BezePTJxQDBiN+n2r8bWEoluEA7c5NPunxrdCvqqPV4U4McJznFlFam+UqVf1GBsWgU/
         NwuPhJsSYVUG9w/4a73cZMwAQstz9GgyGq4Ub4PfQC093QHKhs+cADSKF8SgrIxdGZi5
         /OUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=O5lnlgPkD96yJujeoOoWsPN/u9+fLmyr+mMonmEbAEg=;
        b=P/bubCBp3UouJNuurYRDUGbRn5lReIxOu4u/G+lPXqqbOXWkMPEZ9bhjSLFwqpGDnF
         s7r3zy28CrhDecHcMHBzjUdS8e8hRBa4martT3PTcEuMyTd65/kkOZU/ZLmNvBQ4rrfz
         Xb2KnJXvJskvdjVtgJYXREdR6Rj7L7RQOY6cdFbVyt1X2oxJ7+1EReB0XOLqWG9Ydma4
         AdC6uf7YiqY6bV9naRfcDAVmc1xzN2WrvlCYZePz+jUQYNhcuGXV94kFDuO6w59opWgJ
         8PbsTrghE175q6/nHE2w5ywjX3Tv83L/K6RTgNIQegQhazoYL0ob3qMEx4zvOz8+sT6u
         TjdA==
X-Gm-Message-State: AOAM531C9RJczTAtcpsXIi/sZ97havwwHHaHB632G1gtPnk3zfpDG2Sz
	+yk5nJxgMOgzRznskkrgfGud/uck
X-Google-Smtp-Source: ABdhPJy0VSLdf4+Hh/jd/5HClkIFPwOp1Q3K5mQl5Wto1VdW4bnaDyA4nrqaLHJnfdJWE9hOz+/lyA==
X-Received: by 2002:a17:902:6bca:: with SMTP id m10mr20429814plt.210.1596568049134;
        Tue, 04 Aug 2020 12:07:29 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c4da:b5d8:5d6:2f89? ([2601:202:4180:a5c0:c4da:b5d8:5d6:2f89])
        by smtp.gmail.com with ESMTPSA id s67sm25971021pfs.117.2020.08.04.12.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Aug 2020 12:07:28 -0700 (PDT)
Subject: Re: [yocto] Yocto build failure -- supposedly due to opkg-4.2 download
To: "Alex G." <mr.nuke.me@gmail.com>, yocto@lists.yoctoproject.org
References: <a2dcb62c-763f-ecfa-622e-abfbd84db1f3@gmail.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <7a89b948-9cb8-32dc-122d-dc892f6e6b5a@gmail.com>
Date: Tue, 4 Aug 2020 12:07:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a2dcb62c-763f-ecfa-622e-abfbd84db1f3@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------E218A4C3F01DFAB8BF3B9FA9"
Content-Language: en-US

--------------E218A4C3F01DFAB8BF3B9FA9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 8/4/20 12:00 PM, Alex G. wrote:
> Hi,
>
> I'm trying to get started with yocto builds. My builds keep failing
> trying to build the qemu-x86 image.

If I am not mistaken, many of the servers are down including
downloads.yoctoproject.org.

-armin
>
> Here's what I did:
>
> 1. I got poky from git://git.yoctoproject.org/poky.git -b dunfell
> 2. $ source path/to/poky/oe-init-build-env
> 3. $ time bitbake core-image-minimal
>
> I keep getting the following error:
>
> ERROR: opkg-1_0.4.2-r0 do_fetch: Fetcher failure for URL:
> 'http://downloads.yoctoproject.org/releases/opkg/opkg-0.4.2.tar.gz'.
> Unable to fetch URL from any source.
>
> The file doesn't seem to be present on the server. I'm stuck. How do I
> fix this?
>
> Alex
>
> 


--------------E218A4C3F01DFAB8BF3B9FA9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 8/4/20 12:00 PM, Alex G. wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:a2dcb62c-763f-ecfa-622e-abfbd84db1f3@gmail.com">Hi,
      <br>
      <br>
      I'm trying to get started with yocto builds. My builds keep
      failing trying to build the qemu-x86 image.
      <br>
    </blockquote>
    <br>
    If I am not mistaken, many of the servers are down including
    downloads.yoctoproject.org.<br>
    <br>
    -armin<br>
    <blockquote type="cite"
      cite="mid:a2dcb62c-763f-ecfa-622e-abfbd84db1f3@gmail.com">
      <br>
      Here's what I did:
      <br>
      <br>
      1. I got poky from git://git.yoctoproject.org/poky.git -b dunfell
      <br>
      2. $ source path/to/poky/oe-init-build-env
      <br>
      3. $ time bitbake core-image-minimal
      <br>
      <br>
      I keep getting the following error:
      <br>
      <br>
      ERROR: opkg-1_0.4.2-r0 do_fetch: Fetcher failure for URL:
      '<a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/opkg/opkg-0.4.2.tar.gz">http://downloads.yoctoproject.org/releases/opkg/opkg-0.4.2.tar.gz</a>'.
      Unable to fetch URL from any source.
      <br>
      <br>
      The file doesn't seem to be present on the server. I'm stuck. How
      do I fix this?
      <br>
      <br>
      Alex
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------E218A4C3F01DFAB8BF3B9FA9--
