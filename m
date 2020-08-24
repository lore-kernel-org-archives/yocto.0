Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web11.194456.1598274630858664396
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 06:10:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PIPxZMmJ;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id v2so7164706ilq.4
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 06:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=ggAh2unO6UG6TpzCBiWSg8dx3NvANYoHDLd0gy2oUmg=;
        b=PIPxZMmJWUSgRMkRdS13ImqSlELxmtMSNXWU5u6udxeL9EkHXEabJsGVWr+/qqwnOU
         YBmK1hMPom15gvKyrcv8pq+5cASO9nxRtUGQqnVz5rJ+2Q1/1VvKHfIqHrA/fmQj+VpJ
         ccjzN4OVRTl6fkDU2S2Bdmw6cnlLmgqz2bt7rItdNSbnQ+MIzsOv37xLRGcP5jBsZpwj
         V9BrqToLQ2wkC6uVEjmOTBU2fOdQhp5VWBeJEUBO3+coFBxM+WJ6ozyaAuTkbsSA5de4
         E/vUmpEnKKeEOk/8pFwr3IVy5PLFEx+qm59cnME0QD7/XhiSNG/DunRFH/1bK1AHxo6t
         QxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=ggAh2unO6UG6TpzCBiWSg8dx3NvANYoHDLd0gy2oUmg=;
        b=POoVL/x+rihQIai4WC1/G7T8G8SQxJFj4OUUZpng3KktS0YyPgTXckpscotrHTbVWc
         UdgMRpRXaHoGcGCKRdkdHAiA8WDJGRqVyc8XDQobhdpzDwK1NJZffC3O7BtmbEfpM3l/
         LDQriRqvMvk872eYHdDT7BpJz+15pDJePleCX9TJ0r6LrE8bPDDMO2mY9R1Cdd4JvMkr
         RaOYDTVWMDL8/mml4vSYgZ+USLFfHdWq2lBgSPoOteJlXgT27t6nbKTKH3Xxq3q5Nsk7
         9oEz+Yzyi5ZwKON8aNEIf4b+RxsnIZKfPA4iZtEIanrCORSowZHskHQk6gh+M+DKOocv
         70CQ==
X-Gm-Message-State: AOAM5338cdomlPK5Y9ng6kqDEzMi7h/xKmp3WBORgd5XJF/oApL4sk8d
	iOSkmv3oM9VT2PFlFLPPfQiD/ZXbpVE=
X-Google-Smtp-Source: ABdhPJwM0ihuutQWXX30myiXWcIvy5D/J/yF86vHFIBZUyZkiJ2snjO7TN+ug5rpbiqaNHAhFBdgZg==
X-Received: by 2002:a92:6a0c:: with SMTP id f12mr4543893ilc.213.1598274627772;
        Mon, 24 Aug 2020 06:10:27 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:6dae:a176:f106:40a2? ([2605:a601:ac3d:c100:6dae:a176:f106:40a2])
        by smtp.gmail.com with ESMTPSA id 202sm7236410ila.59.2020.08.24.06.10.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 06:10:27 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] Additional log handler
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Konrad Weihmann <kweihmann@outlook.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
 <e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org>
Message-ID: <5e250483-1277-7e3e-8422-a245e3978e15@gmail.com>
Date: Mon, 24 Aug 2020 08:10:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------D05EAB3146E2A394ACC15C2E"
Content-Language: en-US

--------------D05EAB3146E2A394ACC15C2E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 8/24/20 3:53 AM, Richard Purdie wrote:
> On Sun, 2020-08-23 at 17:01 +0200, Konrad Weihmann wrote:
>> Hi all,
>>
>> when running bitbake in CI I would like to add an additional log
>> handler to used python logging to catch *ALL* (task warnings,
>> dangling append, qa issues, a.s.o.), instead of manually grepping
>> through the console  log.
>> The information coming from this should be ideally be written to a
>> file, file, which can then serve as some sort of report.
>>
>> Is there a way to do that?
>>
>> In theory it should be possible to hook to an (obviously non-
>> existing)
>> event and handle it from there, right?
>>
>> Or am I thinking in the wrong direction?
>>
>> Any pointers are appreciated from my side...
> On the autobuilder the code simple watches the console log, filtering
> on WARNING: and produces a separate warning stream. A non empty file
> triggers the build to show a having warnings.
>
> At the bitbake level it would also definitely be possible, the log
> messages are seen in the UI code as events and it can do whatever it
> wants with them.
>
> There was a also much more advanced log handling added recently through
> the BB_LOGCONFIG variable. I'm not sure if that can define a completely
> separate stream or not, I've not tried that.

The newer log handling uses Python's structure logging configuration 
[1], so you should be able to use whatever capabilities it has 
(including logging different domains/levels to a separate file). In 
fact, this is the only way logging is handled by core bitbake now; all 
of the other logging mechanisms used by the UI are additional 
configuration specified on top of the user's BB_LOGCONFIG file. If you 
are interested, you can see this in bitbake/lib/bb/ui/knotty.py. In that 
file is an additional tool that might be helpful. Around line 553, there 
are two commented lines of code:

     #import logging_tree
     #logging_tree.printout()

uncommenting them and installing the logging_tree python package will 
make bitbake dump the entire structured logging configuration to stdout 
on startup so you can look at it.


[1]: https://docs.python.org/3/library/logging.config.html

>
> Cheers,
>
> Richard
>
>
> 

--------------D05EAB3146E2A394ACC15C2E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 8/24/20 3:53 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Sun, 2020-08-23 at 17:01 +0200, Konrad Weihmann wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi all,

when running bitbake in CI I would like to add an additional log
handler to used python logging to catch *ALL* (task warnings,
dangling append, qa issues, a.s.o.), instead of manually grepping
through the console  log.
The information coming from this should be ideally be written to a
file, file, which can then serve as some sort of report.

Is there a way to do that?

In theory it should be possible to hook to an (obviously non-
existing) 
event and handle it from there, right?

Or am I thinking in the wrong direction?

Any pointers are appreciated from my side...
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
On the autobuilder the code simple watches the console log, filtering
on WARNING: and produces a separate warning stream. A non empty file
triggers the build to show a having warnings.

At the bitbake level it would also definitely be possible, the log
messages are seen in the UI code as events and it can do whatever it
wants with them.

There was a also much more advanced log handling added recently through
the BB_LOGCONFIG variable. I'm not sure if that can define a completely
separate stream or not, I've not tried that.</pre>
    </blockquote>
    <p>The newer log handling uses Python's structure logging
      configuration [1], so you should be able to use whatever
      capabilities it has (including logging different domains/levels to
      a separate file). In fact, this is the only way logging is handled
      by core bitbake now; all of the other logging mechanisms used by
      the UI are additional configuration specified on top of the user's
      BB_LOGCONFIG file. If you are interested, you can see this in
      bitbake/lib/bb/ui/knotty.py. In that file is an additional tool
      that might be helpful. Around line 553, there are two commented
      lines of code:</p>
    <p>    #import logging_tree<br>
          #logging_tree.printout()<br>
    </p>
    <p>uncommenting them and installing the logging_tree python package
      will make bitbake dump the entire structured logging configuration
      to stdout on startup so you can look at it.<br>
    </p>
    <p><br>
    </p>
    <p>[1]: <a class="moz-txt-link-freetext" href="https://docs.python.org/3/library/logging.config.html">https://docs.python.org/3/library/logging.config.html</a><br>
    </p>
    <blockquote type="cite"
cite="mid:e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">

Cheers,

Richard

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------D05EAB3146E2A394ACC15C2E--
