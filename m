Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web10.10079.1588609993860904004
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 09:33:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IdogQATh;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id c2so12969764iow.7
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2020 09:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=JLmaS0XlWALrJd6ioY7KjVvS31dpwTnhtkgP9DKopF0=;
        b=IdogQAThwGdXuU/pFLC0nXFEz0vXHUz8pDQFqwkfDN84DpjKXbtXBUXbNpuV/w1+cS
         rZMgqbsdcNl2EHY+nRU6wPhO50DoKOwBgJDpTKpA1i7kO3uuZG/SYUkXBv52wlR+Syt4
         lSXQd1gxGXCXAx5OHIGGHwmUX2iO2q2tkFj7DlTcCq1rsMTutr32hM1QJimrAQPz1z12
         XaQhUCPkugdEc1VQpzA5RgmU+Dp49gC+5FNbNuBtlvTbc9X7PqevFtZM5fDFeg2kTlqT
         uOEy720tDkK+m+5IvhBq1SrEZxSZm8/yfNosQZv7vL5jB3mmSn3cuaRoSxPJXx51w3JI
         QkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=JLmaS0XlWALrJd6ioY7KjVvS31dpwTnhtkgP9DKopF0=;
        b=H9l0re+26NVWzcx7fEP/gWiYWnN2afXU3atwijLHUAJ1VFlgPEI9DKbXK3HgRgz7tV
         pZd36Ps4i04k+Ii8J2iyL9AoZOqkm4pqiJdfHMb0BNNN6VhTLSYUkHONRp09+8krjFe9
         Gwp9tkChYeBN/yMhTOXFHswq2sJJsE24uV+DeMH/7pZtPFUax0siMRhCUTQIA7E7X0Hl
         VbvW7rXZaH/5wwDEuKwoxGho8KE6coLFwnYFaZIjxb+LV/DH3DsHpY0etg8qJJtxAJyb
         2c6Y/dnH5zGvzd6KbdsstJvf4TCifcumDIQL09+CHNyVZxXeYS8aCAHzJbY8ka0Nb8G7
         QFhQ==
X-Gm-Message-State: AGi0PuawHHmUlZlZP1dbhms4kCYXY9GcYDKH2njGYdB8FwES0i9xA1KL
	+dqjQxvFY98EmvTBFnQM9Ts=
X-Google-Smtp-Source: APiQypJjOLS7kXXfQp7UdaGymMxYR++DOD6l9N85AYDkeWsMcn8mrz13gqm6EjhhfFvPxY7dAe74Iw==
X-Received: by 2002:a02:a787:: with SMTP id e7mr15634722jaj.92.1588609991761;
        Mon, 04 May 2020 09:33:11 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:fc34:7de0:8695:52a2? ([2605:a601:ac3d:c100:fc34:7de0:8695:52a2])
        by smtp.gmail.com with ESMTPSA id r2sm3527752ioo.51.2020.05.04.09.33.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 09:33:10 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] [WIC] Multiple WKS Files
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
References: <aaffec18-b081-bcc4-4508-9cd3f7c24c03@ibeeto.com>
 <CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=iLKaQyFTStJOg@mail.gmail.com>
 <9111327f-63da-fd2e-4485-9c08faa26ec9@ibeeto.com>
Message-ID: <556476fc-8a10-d4a1-45c3-70ce8cc2231d@gmail.com>
Date: Mon, 4 May 2020 11:33:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9111327f-63da-fd2e-4485-9c08faa26ec9@ibeeto.com>
Content-Type: multipart/alternative;
 boundary="------------E1AC85D2B9E98048DF385F6E"
Content-Language: en-US

--------------E1AC85D2B9E98048DF385F6E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 5/4/20 11:14 AM, Rudolf J Streif wrote:
>
>
> On 5/2/20 2:47 PM, Joshua Watt wrote:
>>
>>
>> On Sat, May 2, 2020, 1:22 PM Rudolf J Streif 
>> <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote:
>>
>>     eMMC devices commonly have three hardware partitions: two boot
>>     partitions and a user partition. I was looking for a convenient
>>     way to
>>     have wic build an image for the boot partition and one for the user
>>     partition. However, that does not seem to be possible right out
>>     of the
>>     box. The variable WKS_FILE only accepts one file and not a list. The
>>     class image_types_wic.bbclass uses WKS_FILES internally but that
>>     seems
>>     to be a search list and the code only builds the file it finds first.
>>
>>
>> I think part of the problem is that wks files are tied to a rootfs 
>> image, so it's not currently possible to have multiple because there 
>> is no way to differentiate them. Also because of that it's a little 
>> odd to have a wks file that doesn't reference the rootfs it's built with.
>>
>> You might be able to do it by making a simple dummy image recipe for 
>> the boot partition(s), then overriding the WKS_FILE variable for the 
>> image with a pn override in the machine.conf file (e.g. 
>> WKS_FILE_pn-my-emmc-boot = "emmc-boot.wks" )
>
> Thank you, Joshua. I might try your idea. I have noticed that it is 
> tied to the rootfs as I tried to use ondisk/ondrive to create images 
> for different partitions. But that did not work. Actually, the use of 
> the ondisk/ondrive parameter is not entirely obvious to me (but I also 
> have not dissected the code to figure it out).
>
I haven't used it a whole lot because of the way we provision our 
devices, but I think its mostly so that wic can create a valid fstab in 
the root file system that will mount all the partitions. This way, the 
root file system image can remain generic and work with different 
partitions layouts specified in the wks file.

> It might be worthwhile looking into enhancing wic to be able to create 
> multiple images. Devices now also use universal flash storage (UFS) 
> which supports multiple logical disks like a SCSI drive once it is 
> provisioned.
>
Yes, that would be really nice. I don't think that wic currently has any 
concept of "hardware partitions" (e.g. the emmc boot partitions or the 
UFS SCSI LUNs), just GPT/MBR partitions. I'm not sure how you would add 
support for it.


>>
>>
>>     Is my understanding correct?
>>
>>     Any smart ideas to make this work?
>>
>>     Thanks,
>>     Rudi
>>
>>
>>
>>
>>
>>
> -- 
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
> 

--------------E1AC85D2B9E98048DF385F6E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/4/20 11:14 AM, Rudolf J Streif
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9111327f-63da-fd2e-4485-9c08faa26ec9@ibeeto.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 5/2/20 2:47 PM, Joshua Watt wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=iLKaQyFTStJOg@mail.gmail.com">
        <meta http-equiv="content-type" content="text/html;
          charset=UTF-8">
        <div dir="auto">
          <div><br>
            <br>
            <div class="gmail_quote">
              <div dir="ltr" class="gmail_attr">On Sat, May 2, 2020,
                1:22 PM Rudolf J Streif &lt;<a
                  href="mailto:rudolf.streif@ibeeto.com"
                  moz-do-not-send="true">rudolf.streif@ibeeto.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex">eMMC
                devices commonly have three hardware partitions: two
                boot<br>
                partitions and a user partition. I was looking for a
                convenient way to<br>
                have wic build an image for the boot partition and one
                for the user<br>
                partition. However, that does not seem to be possible
                right out of the<br>
                box. The variable WKS_FILE only accepts one file and not
                a list. The<br>
                class image_types_wic.bbclass uses WKS_FILES internally
                but that seems<br>
                to be a search list and the code only builds the file it
                finds first.</blockquote>
            </div>
          </div>
          <div dir="auto"><br>
          </div>
          <div dir="auto">I think part of the problem is that wks files
            are tied to a rootfs image, so it's not currently possible
            to have multiple because there is no way to differentiate
            them. Also because of that it's a little odd to have a wks
            file that doesn't reference the rootfs it's built with.</div>
          <div dir="auto"><br>
          </div>
          <div dir="auto">You might be able to do it by making a simple
            dummy image recipe for the boot partition(s), then
            overriding the WKS_FILE variable for the image with a pn
            override in the machine.conf file (e.g.
            WKS_FILE_pn-my-emmc-boot = "emmc-boot.wks" )</div>
        </div>
      </blockquote>
      <p>Thank you, Joshua. I might try your idea. I have noticed that
        it is tied to the rootfs as I tried to use ondisk/ondrive to
        create images for different partitions. But that did not work.
        Actually, the use of the ondisk/ondrive parameter is not
        entirely obvious to me (but I also have not dissected the code
        to figure it out).</p>
    </blockquote>
    <p>I haven't used it a whole lot because of the way we provision our
      devices, but I think its mostly so that wic can create a valid
      fstab in the root file system that will mount all the partitions.
      This way, the root file system image can remain generic and work
      with different partitions layouts specified in the wks file.</p>
    <blockquote type="cite"
      cite="mid:9111327f-63da-fd2e-4485-9c08faa26ec9@ibeeto.com">
      <p>It might be worthwhile looking into enhancing wic to be able to
        create multiple images. Devices now also use universal flash
        storage (UFS) which supports multiple logical disks like a SCSI
        drive once it is provisioned.</p>
    </blockquote>
    <p>Yes, that would be really nice. I don't think that wic currently
      has any concept of "hardware partitions" (e.g. the emmc boot
      partitions or the UFS SCSI LUNs), just GPT/MBR partitions. I'm not
      sure how you would add support for it.<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:9111327f-63da-fd2e-4485-9c08faa26ec9@ibeeto.com">
      <blockquote type="cite"
cite="mid:CAJdd5GY1yCS0Wnvqh_n3xoq6fNqbiTuodPbk=iLKaQyFTStJOg@mail.gmail.com">
        <div dir="auto">
          <div dir="auto"><br>
          </div>
          <div dir="auto">
            <div class="gmail_quote">
              <blockquote class="gmail_quote" style="margin:0 0 0
                .8ex;border-left:1px #ccc solid;padding-left:1ex"> <br>
                Is my understanding correct?<br>
                <br>
                Any smart ideas to make this work?<br>
                <br>
                Thanks,<br>
                Rudi<br>
                <br>
                <br>
                <br>
                <br>
                <br>
              </blockquote>
            </div>
          </div>
        </div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
      <pre class="moz-signature" cols="72">-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------E1AC85D2B9E98048DF385F6E--
