Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web11.1324.1587621587202254036
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 22:59:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HBfjceyf;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: xerofoify@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id y19so2295287qvv.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Apr 2020 22:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=IS3zI/7a2625ufWuIOh/2fRw3tHzHIccELJxf61v/rs=;
        b=HBfjceyfpxamon0OA6+5cug3uSmiexkvkKKbyUeUiFaB8s6TjU3gL47TOpgfVOoXiK
         woAQ9N+kNkJy6Mc1F7ee0g0ZHqInjB/YX+TTEHnGO6j8XGhP6+S7+lMQqEOcyfVqXnr7
         5GNp8ZBkx/F2+lEsAQVDrnOLsVZPak/EdtVw56pUKNUCsfJz3hDDoWi5t4ipdBVDT4rU
         63Vx7KtFvFvf8T16eyYcvQu8YaFVKdEogSTeIVrPMkHadCjTdm1amx0kzJtv54hVNr9K
         Tx3vYL9zVsGMgt9QtdwmHCuS+G3WAjaWiqnxr4VswlwMWsQzkNnOlkQg4eDqK/xvnl7Q
         /uTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=IS3zI/7a2625ufWuIOh/2fRw3tHzHIccELJxf61v/rs=;
        b=KPdbz3BJ9K8wAoEEuQ5SU3RJKwDDdroXEOCY4syZ/2TjBy9Fm7F8AsZpDxyB17WGUE
         FBgWu019g5lRLDYMB52nyotBbhuf6R1cZLW+z8hnjZTGK5zPkO1OZ1NN1tuR9TuK2xR/
         1Se16o2x0D0HwEnn569OY6Egfyb8ffoF7rSvm3E6GW06aEQWtV2JPlSnoNpzs1ji66ZX
         pa2ExrTYNg85e6Kvr5MveJMD2tDpY4V1KPLonkFhQFnWLVBRYbsaes6c7kwDJcDk2xNY
         SXJrJ6F3g/I26hyEFspSrGfZzkQRzr5jRM9VEpuF2zv3k3/jPKf6frydSPPqCjc4xPTV
         gW3w==
X-Gm-Message-State: AGi0Pub98tXUpE5zjgaHhZbYaQfor5SUO4DFJVKTq6BeAwGLmvWFfipI
	4UH3cSRaElggdvDcQ9wPHVVm3hk3KT0=
X-Google-Smtp-Source: APiQypLCYdLXrfpzN9uHGYK37MN3UYyzuXmpWj9j7UuEJ3hu5qpkrNVWhFb5KTFA6crhF6TLgZieGw==
X-Received: by 2002:a0c:da0e:: with SMTP id x14mr2593674qvj.47.1587621585850;
        Wed, 22 Apr 2020 22:59:45 -0700 (PDT)
Return-Path: <xerofoify@gmail.com>
Received: from [192.168.1.101] (173-230-163-45.cable.teksavvy.com. [173.230.163.45])
        by smtp.gmail.com with ESMTPSA id p11sm999237qki.25.2020.04.22.22.59.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 22:59:45 -0700 (PDT)
Subject: Re: [yocto] meta-javascripts
To: per@hallsmark.se, yocto@lists.yoctoproject.org
References: <lz1S.1587619716614083620.LFsb@lists.yoctoproject.org>
From: "Nicholas Krause" <xerofoify@gmail.com>
Message-ID: <a1d40a2e-aa70-d56f-4761-9eb2d4726dac@gmail.com>
Date: Thu, 23 Apr 2020 01:59:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <lz1S.1587619716614083620.LFsb@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------879F7DC11E7C6FC6AED65C2A"
Content-Language: en-US

--------------879F7DC11E7C6FC6AED65C2A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 4/23/20 1:28 AM, per@hallsmark.se wrote:
> Hello fellow Yocto developers,
>
> To be able todo efficient HTML5 programming we of course needs some 
> javascript libraries.
> I've not seen Yocto have them packaged so I made up this idea of 
> putting them into their own /usr/lib/js path
> with a subdir for each javascript library. It is published here :
>
> https://gitlab.com/saxofon/meta-javascripts
>
> With an example usage here :
>
> https://github.com/Wind-River/device-remote-gui
>
> Would this be something yoctoproject is interested of perhaps?
>
> BR,
> Per

Hi,

I'm not a maintainer but you may want to see if you or other  people are 
able to maintain
then as a open embedded layer as part of the index. Not sure if someone 
else can
chip in if this is a useful recipe set to add to the open embedded index.

That would ideally be where you would want this to go if this is useful 
and maintained,

Nick
>
> 


--------------879F7DC11E7C6FC6AED65C2A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/23/20 1:28 AM, <a class="moz-txt-link-abbreviated" href="mailto:per@hallsmark.se">per@hallsmark.se</a>
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:lz1S.1587619716614083620.LFsb@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hello fellow Yocto developers,<br>
      <br>
      To be able todo efficient HTML5 programming we of course needs
      some javascript libraries.<br>
      I've not seen Yocto have them packaged so I made up this idea of
      putting them into their own /usr/lib/js path<br>
      with a subdir for each javascript library. It is published here :<br>
      <br>
      <a href="https://gitlab.com/saxofon/meta-javascripts"
        target="_blank" rel="noopener" moz-do-not-send="true">https://gitlab.com/saxofon/meta-javascripts</a><br>
      <br>
      With an example usage here :<br>
      <br>
      <a href="https://github.com/Wind-River/device-remote-gui"
        target="_blank" rel="noopener" moz-do-not-send="true">https://github.com/Wind-River/device-remote-gui</a><br>
      <br>
      Would this be something yoctoproject is interested of perhaps?<br>
      <br>
      BR,<br>
      Per
      <br>
    </blockquote>
    <br>
    Hi,<br>
    <br>
    I'm not a maintainer but you may want to see if you or other  people
    are able to maintain<br>
    then as a open embedded layer as part of the index. Not sure if
    someone else can<br>
    chip in if this is a useful recipe set to add to the open embedded
    index.<br>
    <br>
    That would ideally be where you would want this to go if this is
    useful and maintained,<br>
    <br>
    Nick<br>
    <blockquote type="cite"
      cite="mid:lz1S.1587619716614083620.LFsb@lists.yoctoproject.org">
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------879F7DC11E7C6FC6AED65C2A--
