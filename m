Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CB08C433FE
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 22:30:58 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web08.12682.1667428247659232667
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Nov 2022 15:30:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=DdCAO6Mh;
 spf=pass (domain: mistywest.com, ip: 209.85.216.47, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f47.google.com with SMTP id u8-20020a17090a5e4800b002106dcdd4a0so3490863pji.1
        for <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 15:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Nww/4LkOHSEjegWmI3GGZ7N0QelXimJNmAW+UdGXJY=;
        b=DdCAO6Mhi+ddF6erQMEsDnpXMZFz/2g9B/C/6+/o53O6gMOY7ewzUFzae1NvyMzcaf
         PGOKMfPdwhN2PQYLafYwIYmsVvsdVY+b+SG+tpX+c5ANq8y5wmURgXyIklN2A845m4fE
         tYEwFzc1fwDyFhqWpiWJ+pgj5tzsDZ1xOHRC5JaOlJ9BHdtSVPhqatvXzWpL2KlWGMQ/
         2Em66J9TSZE+hTUOJ0tyheTRKe0BMY/OFrC3yFQSNkEuvqtyrFT3/y+c3Oere3EwVqS8
         KlNDSXI4i10jl/mu0l/qtXbAalqMKtuor/kVlGrYIe2VYAdGxtYtpc5sgU1dPkAh0c4u
         olgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Nww/4LkOHSEjegWmI3GGZ7N0QelXimJNmAW+UdGXJY=;
        b=SxyW0WzkGKLe4aAkK01aQte1iQczBTIJ8dniGDGkZtH6l5nZFzKjf85dTPk3Rp7cdj
         afcECzedOg9TTP3Y1MHKldGMwg+RAW3LX27hcqmx58rJg9B01hDn4PxUONRUkZXhnNIR
         i5bzDrkXoT5f/HiF5PD6zU3G0JaAdswvv/EwZ2WNbJyFZz8/FOsQh+8mx1uKl/bgJKwr
         fV6hIoQKFcQ++kXriu6syzl6WirSUNPesScp34b0EzomSce35SXiSrOBLPu2YzkWca/j
         8LolWzgfZfb9vt9CAeRg3L4ywp7s5yrObI05edYbWUVeaZswuWAQublBP60H8FCtmcwI
         YFOA==
X-Gm-Message-State: ACrzQf1g0+NJ579Yw4Yvw/JUcrSWB95aIUSjRkg4k8F/WiX5vylbg2ZE
	Ei5hZSdmVvkxlmJqpUc8eHZ9RlClAqWFkj5A
X-Google-Smtp-Source: AMsMyM7QR4r9M3r+xlLYLHx4S2PhxtGC3JQ85zNiJ6x0jQYgi+wMVQbsgGC9zyKwF1uI5g+y5WJttA==
X-Received: by 2002:a17:903:244e:b0:186:c41e:ce9e with SMTP id l14-20020a170903244e00b00186c41ece9emr27556539pls.100.1667428246694;
        Wed, 02 Nov 2022 15:30:46 -0700 (PDT)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id nn14-20020a17090b38ce00b00212e8945d97sm1920342pjb.56.2022.11.02.15.30.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 15:30:46 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------4c6V6ECzRBVxTRsHxls8A0qq"
Message-ID: <e0aa3970-f7fa-6427-d03c-5470ba43898f@mistywest.com>
Date: Wed, 2 Nov 2022 15:30:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] unable to install nmcli
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <679ffc7e-a0bf-c33b-6509-b304315ffe85@mistywest.com>
 <27361.1667425102484238162@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <27361.1667425102484238162@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 22:30:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58474

This is a multi-part message in MIME format.
--------------4c6V6ECzRBVxTRsHxls8A0qq
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2022-11-02 2:38 p.m., kapllaj.elvis@gmail.com wrote:
>
> Hi,
> I don't know it there is a mistake on your message, but you inserted 
> the lines on:
>
>   * recipes-packages/images/*sample-image-cp-lwb5plus*.bb
>
> but then you are searching the tar on image name "
>
>   * tmp/deploy/images/machine-name/*my-image-smarc-rzv2l-*<date>.rootfs.tar.bz2
>
> Unless you include/inherit the file sample-image-cp-lwb5plus.bb on 
> my-image-smarc-rzv2l.bb file, this wouldn't work.
> You should make sure the IMAGE_INSTALL is correctly appended on the 
> image file you are compiling. To debug this, you could print the 
> IMAGE_INSTALL variable for the image, and see if the nmcli package is 
> there:
>
> bitbake -e sample-image-cp-lwb5plus | grep "IMAGE_INSTALL="
>
> Another way to check what is installed on the image is to open the 
> manifest file on the deploy directory (*.manifest)
>
Oh, I see! I did not realize that I was changing the IMAGE_INSTALL 
variable in the wrong image to begin with . Thanks for directing me to 
the realization! :)

--------------4c6V6ECzRBVxTRsHxls8A0qq
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022-11-02 2:38 p.m.,
      <a class="moz-txt-link-abbreviated" href="mailto:kapllaj.elvis@gmail.com">kapllaj.elvis@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:27361.1667425102484238162@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p>Hi,<br>
        I don't know it there is a mistake on your message, but you
        inserted the lines on:</p>
      <ul>
        <li>recipes-packages/images/<strong>sample-image-cp-lwb5plus</strong>.bb</li>
      </ul>
      but then you are searching the tar on image name "<br>
      <ul>
        <li>tmp/deploy/images/machine-name/<strong>my-image-smarc-rzv2l-</strong>&lt;date&gt;.rootfs.tar.bz2</li>
      </ul>
      <p>Unless you include/inherit the file sample-image-cp-lwb5plus.bb
        on my-image-smarc-rzv2l.bb file, this wouldn't work.<br>
        You should make sure the IMAGE_INSTALL is correctly appended on
        the image file you are compiling. To debug this, you could print
        the IMAGE_INSTALL variable for the image, and see if the nmcli
        package is there:</p>
      <p>bitbake -e sample-image-cp-lwb5plus | grep "IMAGE_INSTALL="<br>
        <br>
        Another way to check what is installed on the image is to open
        the manifest file on the deploy directory (*.manifest)</p>
    </blockquote>
    <p>Oh, I see! I did not realize that I was changing the
      IMAGE_INSTALL variable in the wrong image to begin with . Thanks
      for directing me to the realization! :)</p>
  </body>
</html>

--------------4c6V6ECzRBVxTRsHxls8A0qq--

