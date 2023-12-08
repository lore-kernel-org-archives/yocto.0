Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20EE4C4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 03:11:20 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.12018.1702005073958336240
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 19:11:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j5aqhB9O;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1cfabcbda7bso20984655ad.0
        for <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 19:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702005073; x=1702609873; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MVbB73mjmndzx8UBFziRJ0gqv0tfVp/7YVSG278fYf4=;
        b=j5aqhB9OBXE867+Hz1rx+A2o/AwRJ5pd1W8UTyp6ivf/TMsTi/2uaRPzD7nY9vOi/7
         HkdSaTz1SfwyuMzsrDWzoSAifOKM715+UXPJuA9CoaUw5x97ABcod0uhav76mvzfQlZi
         O0seTmcpiFgX1KIHJ3/30l4qC6i35G1ABeHKsMTE+cpEoCkZXJKmFA/bdedJ6kU8p1UB
         iZp6SoMMtEu8Jlk0bNSKPH5E46cKzEsmzVJtQbCEbXqJBv0e3x77oTk+5wBr9QC4iqNE
         o8MAyC9a8szKFtOxvWIvkyQFK1DvdxpQ8OPDnmy4K2CSBpHBtC8StLV9//O7aRifCean
         Ty7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702005073; x=1702609873;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MVbB73mjmndzx8UBFziRJ0gqv0tfVp/7YVSG278fYf4=;
        b=fwvQQfMt1PZCWGYeaGn8ahQKpCUCzIWZJyZCH3Iy/ab8WZLdyBpm4X94hz3b0ImztQ
         zWa3qppfNj4/Jzuep1G1eoKY6OpTQz+RR6N+cSLiStAdDSVH6E2ieSQMFgvNtVgJ/FJE
         PLffToVE8qOldiwxah1M4gjO7IkVyCWGHUgpnyhVHXX8jQRS5+0HkgBV7N0kJq9yqBRJ
         M/L1U0YWdp11ayW0z81BYTgCeIOcbrfwc2IBfRY8A5oCHoQ5Nktxjy7B6L5pVMaSkFi2
         5DjhPhXHw7VxrhfEdCEiQhnZKWdNcrkxwl8gMNzrNI2npfQuimeSv2eigxDxKB3l9Wf/
         8vNg==
X-Gm-Message-State: AOJu0YzOze58/xquYkrNMdcasYyRqRmL0etBIgPbB5G4sep1R2npuYa1
	ODdkz/K2Uj6qqeZ6Et/mBcA=
X-Google-Smtp-Source: AGHT+IHrPsvpKdLvI9er/kdYnTTmvzAGw1AwavOems4LftNDXQAOdNVYsLtooTWaoU6RVEb6933CPQ==
X-Received: by 2002:a17:903:32c8:b0:1bc:edd:e891 with SMTP id i8-20020a17090332c800b001bc0edde891mr316598plr.1.1702005073159;
        Thu, 07 Dec 2023 19:11:13 -0800 (PST)
Received: from ?IPV6:2601:646:9100:3d00:8819:ac60:5666:52d8? ([2601:646:9100:3d00:8819:ac60:5666:52d8])
        by smtp.gmail.com with ESMTPSA id ja1-20020a170902efc100b001d04c097d1esm545904plb.271.2023.12.07.19.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 19:11:12 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------ApE7Xo0KPsGNRcDxagQLsSvu"
Message-ID: <420f5bcb-3c92-4fde-be0d-44acfd55776c@gmail.com>
Date: Thu, 7 Dec 2023 19:11:11 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Static library created by recipe arch is not correct #sdk
 #yocto
To: Iurascu Teodor <iurascu_teo@hotmail.com>, yocto@lists.yoctoproject.org
References: <mZaN.1701952094193943491.UbkB@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <mZaN.1701952094193943491.UbkB@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 03:11:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61835

This is a multi-part message in MIME format.
--------------ApE7Xo0KPsGNRcDxagQLsSvu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Can you run file command on libiobb.a it seems its not built for either 
correct architecture or is corrupted in SDK somehow.

It will be good to use AR/RANLIB/CC/CXX variables in your Makefile and 
weakly assign them e.g.

CC ?= cc

AR ?= ar

...


On 12/7/23 4:28 AM, Iurascu Teodor wrote:
> Hello,
>
> I have created a recipe to include the IOBB library in the SDK. Trying 
> to compile a .c file in the SDK environment gives me this error:
>
> $ ${CC} pb-test-inputs.c -liobb
> /opt/poky/4.2.2/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/12.3.0/ld: 
> /opt/poky/4.2.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/local/lib/libiobb.a: 
> error adding symbols: file format not recognized
>
> Recipe file:
>
> do_compile () {
>     # You will almost certainly need to add additional arguments here
>     oe_runmake cc=${CC}
> }
>
> do_install () {
>     # This is a guess; additional arguments may be required
>     oe_runmake install locatie=${D}
>     #rm ${D}/usr/local/lib/libiobb.a
> }
>
>
> Makefile:
>
> libiobb.a: ${LIB_PATH}BBBiolib.c ${LIB_PATH}BBBiolib.h 
> BBBiolib_PWMSS.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cfunc.o
> ${cc}-c ${LIB_PATH}BBBiolib.c -o ${LIB_PATH}BBBiolib.o
> ar -rs ${LIB_PATH}libiobb.a ${LIB_PATH}BBBiolib.o 
> ${LIB_PATH}BBBiolib_PWMSS.o ${LIB_PATH}BBBiolib_McSPI.o 
> ${LIB_PATH}BBBiolib_ADCTSC.o ${LIB_PATH}i2cfunc.o
>
> Thank you!
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61828):https://lists.yoctoproject.org/g/yocto/message/61828
> Mute This Topic:https://lists.yoctoproject.org/mt/103032949/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------ApE7Xo0KPsGNRcDxagQLsSvu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Can you run file command on <span
        style="font-family: monospace;">libiobb.a it seems its not built
        for either correct architecture or is corrupted in SDK somehow.</span></p>
    <p><span style="font-family: monospace;">It will be good to use
        AR/RANLIB/CC/CXX variables in your Makefile and weakly assign
        them e.g.</span></p>
    <p><span style="font-family: monospace;">CC ?= cc</span></p>
    <p><span style="font-family: monospace;">AR ?= ar</span></p>
    <p><span style="font-family: monospace;">... <br>
      </span></p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 12/7/23 4:28 AM, Iurascu Teodor
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:mZaN.1701952094193943491.UbkB@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hello,<br>
      <br>
      I have created a recipe to include the IOBB library in the SDK.
      Trying to compile a .c file in the SDK environment gives me this
      error:<br>
      <br>
      <span style="font-family: monospace;"><span
style="color: #000000; background-color: #ffffff; --darkreader-inline-color: #e8e6e3; --darkreader-inline-bgcolor: #181a1b;"
          data-darkreader-inline-color=""
          data-darkreader-inline-bgcolor="">$ ${CC} pb-test-inputs.c
          -liobb </span><br>
/opt/poky/4.2.2/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/12.3.0/ld:
/opt/poky/4.2.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi/usr/local/lib/libiobb.a:
        error adding symbols: file format not recognized<br>
        <br>
        Recipe file:<br>
        <br>
        do_compile () {<br>
            # You will almost certainly need to add additional arguments
        here<br>
            oe_runmake cc=${CC}<br>
        }<br>
        <br>
        do_install () {<br>
            # This is a guess; additional arguments may be required<br>
            oe_runmake install locatie=${D}<br>
            #rm ${D}/usr/local/lib/libiobb.a<br>
        }<br>
        <br>
        <br>
        Makefile:<br>
        <br>
      </span>
      <div
style="color: #cccccc; background-color: #1f1f1f; font-family: 'Droid Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px; line-height: 19px; white-space: pre; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #17191a;"
      data-darkreader-inline-color="" data-darkreader-inline-bgcolor="">
<div><span style="color: #dcdcaa; --darkreader-inline-color: #d8d89f;"
      data-darkreader-inline-color="">libiobb.a</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color=""> : </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib.c </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib.h BBBiolib_PWMSS.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cfunc.o</span></div>
<div><span style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color=""> </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">cc</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color=""> -c </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib.c -o </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib.o</span></div>
<div><span style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color=""> ar -rs </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">libiobb.a </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib.o </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib_PWMSS.o </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib_McSPI.o </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">BBBiolib_ADCTSC.o </span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">${</span><span
      style="color: #9cdcfe; --darkreader-inline-color: #87d5fe;"
      data-darkreader-inline-color="">LIB_PATH</span><span
      style="color: #ce9178; --darkreader-inline-color: #cf947b;"
      data-darkreader-inline-color="">}</span><span
      style="color: #cccccc; --darkreader-inline-color: #c8c3bc;"
      data-darkreader-inline-color="">i2cfunc.o</span></div>
</div>
      <span style="font-family: monospace;"><br>
        Thank you!<br>
        <br>
        <br>
      </span>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
You automatically follow any topics you start or reply to.
View/Reply Online (#61828): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/61828">https://lists.yoctoproject.org/g/yocto/message/61828</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/103032949/1997914">https://lists.yoctoproject.org/mt/103032949/1997914</a>
Mute #yocto:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto">https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto</a>
Mute #sdk:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk">https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------ApE7Xo0KPsGNRcDxagQLsSvu--

