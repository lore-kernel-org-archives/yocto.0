Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web11.206.1615838398669855238
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 12:59:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LEULkQzs;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id x28so7573456otr.6
        for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 12:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=/ed0cJPFp9vuQkj+rLFnXMqWWkP2W1OI1kG9zF5Hzh4=;
        b=LEULkQzs7M0+FnNOcxHEKDObW0zNhKGlor6SngLIfjAx8fHOheOJvjWkb08SAuTwK3
         Dr9FIgoJfMDW3TalZYR424D8ooP2IffdSAAPT05c/AYp+wBEbIM41FYJ9VvyZfD9Zd1R
         vbhhVUL3sambCPVueLATWGF4waRREFMyNIZxdahYzA/FHwwkHme6+0vuIUCMqvIiAs6I
         9BKU6WNNsqaxD5pRVI8ryCBIZdbjPGTjpXd8inOkQZeTENcnEfeBHJhVsv04A7fjqqzZ
         nBxbJk5i4xLNyJVKz7be3vzcCdPp5LOT4sjmiomzyWXupBaCgq0M2r2X3SDr/mU4myis
         d+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=/ed0cJPFp9vuQkj+rLFnXMqWWkP2W1OI1kG9zF5Hzh4=;
        b=EyHD0+J8F3f62vt7/TIcgFnzIQfWjqoerkuA43B47oDb+7DGivwYOGhuL7yNZyHYJr
         aTMI0a9ZSQeye1AlHJVbQ6heOedMRj37EWp3UvV8JlTil80A0ON/fyA+IzN3w43GIMgL
         qIbUZ6zhuJDJVzevaozDQVVNM2HyoIex/SicDeeTtMBOgU2wGTjCJIeXvIQ9eIJO2jcw
         d4b/CNMGgUUUNujJ0vfIV0YkVVGNUXzu75k3kNiKWdIj/FB0Ma2twYaBlZXKzCAS496b
         oqwezHGjNQb+2ghiF9GBkzfoXEL34qqOlJFGXvZ/pLIEFuWliZTlbLql7AdA08Tru+WL
         wtDQ==
X-Gm-Message-State: AOAM532+Ze0fKbiU8nUYyzN292v9qgVcS+F2or7uauFSXCU7RdCBHuwJ
	OiCc9hWd4SHMTxro8rDw4Bbr9LTfCpc=
X-Google-Smtp-Source: ABdhPJxHtNm78tgXf37qQ+7DNi7G5luzdwchmm87V8r5nlTUlBCX2HOcw9UthMiNhKkPGFQGEd27zw==
X-Received: by 2002:a9d:65cf:: with SMTP id z15mr603700oth.310.1615838397704;
        Mon, 15 Mar 2021 12:59:57 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id i11sm6977196otp.76.2021.03.15.12.59.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 12:59:57 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
To: p32@tuta.io, yocto@lists.yoctoproject.org
References: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
 <29235.1615763811371292564@lists.yoctoproject.org>
Message-ID: <d42ee04e-8732-daec-96e8-246a1fdf5d16@gmail.com>
Date: Mon, 15 Mar 2021 14:59:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <29235.1615763811371292564@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------7849A9BCFF24CAE51EBDCEEF"
Content-Language: en-US

--------------7849A9BCFF24CAE51EBDCEEF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 3/14/21 6:16 PM, p32 via lists.yoctoproject.org wrote:
> Thank you very much. I figured out that you can have Yocto create a 
> suitable U-Boot wrapper as follows (from the image recipe):
> IMAGE_FSTYPES = "cpio.xz.u-boot"
>
> Now there is only one last issue that I wasn't able to solve yet: I 
> would like Yocto to not only generate this U-Boot file but also add it 
> to the boot partition of a wic.gz image. I tried to extend the image 
> recipe as follows:
> IMAGE_FSTYPES = "cpio.xz.u-boot wic.gz"
> IMAGE_BOOT_FILES_append += 
> "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio.xz.u-boot"
>
> Unfortunately, there is a dependency issue here. BitBake schedules the 
> do_image_wic task before the do_image_cpio task, which creates the 
> u-boot file. I tried to fix it as follows (from the image recipe):
> do_image_wic[depends] = "my-image-recipe:do_image_cpio"
>
> While the dependency graph acknowledges this dependency, BitBake does 
> not seem to care about it. Whatever I try, do_image_wic is always 
> executed first and, obviously, does not succeed. I think the problem 
> is comparable to the unsolved one outlined here:
> https://stackoverflow.com/questions/58954170/yocto-creating-a-dependency-for-wic-to-cpio-gz-image
>
> How can I instruct Yocto to execute do_image_cpio first?

You might try splitting it up with two images; one that makes your CPIO 
and one that makes the wic image. Since the wic image (presumably?) 
doesn't even have the rootfs specified, it probably doesn't even matter 
what the image is (e.g. you could use core-image-minimal as a test, or 
try to make some even slimmer empty image).

I think by doing that you could do something like:

  IMAGE_BOOT_FILES += "my-cpio-image.cpio.xz.u-boot"

  IMAGE_FILE_DEPENDS += "my-cpio-image"

Then:

  bitbake core-image-minimal

Would sort of do what you are asking

I think they key is that you need a "root file system image" that is 
*not* your CPIO because wic expects to be tied to one that it can write 
to the .wic image, even if thats not actually what you are doing.

>
> 
>

--------------7849A9BCFF24CAE51EBDCEEF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 3/14/21 6:16 PM, p32 via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:29235.1615763811371292564@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Thank you very much. I figured out that you can have Yocto create
      a suitable U-Boot wrapper as follows (from the image recipe):<br>
      IMAGE_FSTYPES = "cpio.xz.u-boot"<br>
      <br>
      Now there is only one last issue that I wasn't able to solve yet:
      I would like Yocto to not only generate this U-Boot file but also
      add it to the boot partition of a wic.gz image. I tried to extend
      the image recipe as follows:<br>
      IMAGE_FSTYPES = "cpio.xz.u-boot wic.gz"<br>
      IMAGE_BOOT_FILES_append +=
      "${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.cpio.xz.u-boot"<br>
      <br>
      Unfortunately, there is a dependency issue here. BitBake schedules
      the do_image_wic task before the do_image_cpio task, which creates
      the u-boot file. I tried to fix it as follows (from the image
      recipe):<br>
      do_image_wic[depends] = "my-image-recipe:do_image_cpio"<br>
      <br>
      While the dependency graph acknowledges this dependency, BitBake
      does not seem to care about it. Whatever I try, do_image_wic is
      always executed first and, obviously, does not succeed. I think
      the problem is comparable to the unsolved one outlined here:<br>
<a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/58954170/yocto-creating-a-dependency-for-wic-to-cpio-gz-image">https://stackoverflow.com/questions/58954170/yocto-creating-a-dependency-for-wic-to-cpio-gz-image</a><br>
      <br>
      How can I instruct Yocto to execute do_image_cpio first?<br>
    </blockquote>
    <p>You might try splitting it up with two images; one that makes
      your CPIO and one that makes the wic image. Since the wic image
      (presumably?) doesn't even have the rootfs specified, it probably
      doesn't even matter what the image is (e.g. you could use
      core-image-minimal as a test, or try to make some even slimmer
      empty image).</p>
    <p>I think by doing that you could do something like:</p>
    <p> IMAGE_BOOT_FILES += "my-cpio-image.cpio.xz.u-boot"</p>
    <p> IMAGE_FILE_DEPENDS += "my-cpio-image"<br>
    </p>
    <p>Then:<br>
    </p>
    <p> bitbake core-image-minimal <br>
    </p>
    <p>Would sort of do what you are asking</p>
    <p>I think they key is that you need a "root file system image" that
      is *not* your CPIO because wic expects to be tied to one that it
      can write to the .wic image, even if thats not actually what you
      are doing.<br>
    </p>
    <blockquote type="cite"
      cite="mid:29235.1615763811371292564@lists.yoctoproject.org"><span
        class="permalink"></span>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------7849A9BCFF24CAE51EBDCEEF--
