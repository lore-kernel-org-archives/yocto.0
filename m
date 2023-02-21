Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A954FC61DA3
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 04:12:44 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.34835.1676952755316279745
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 20:12:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=g7damej6;
 spf=pass (domain: mistywest.com, ip: 209.85.216.52, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f52.google.com with SMTP id pt11so4013408pjb.1
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 20:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0PiECUsZEPLxSy2v6GIUszFu9Lanns0kctViL62Sqc=;
        b=g7damej6pBw47/15COasPgEVgJI7PwOFa3qc0A6RiGjseBrrEoYz0Ks6/hzOXkalMk
         c9tCgqLHM8tCFRIMD3FGF3vi//GeKc2gc9DK/RJ3wO1xBjRWcnMCKMXozxS+A3r9FqoZ
         09QSdyPas5wnyXua3fARzIvt9YTPBWCdbspp1vr3exFABl5ick40i+3IuiTI+WoP/f/j
         pSeI5UgB76rmeLFIPfN27Vf+kt3u8vb/O6kylVVxuv7jQuDFfBOD+3sPj5Rx0vBI0UFt
         QsnFBJFJJQYfROgrZzjm5L0R5wpCV5bKY18OadXLmv2NAZBBQxhyQsnNZqcJZs9b8LMc
         sSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B0PiECUsZEPLxSy2v6GIUszFu9Lanns0kctViL62Sqc=;
        b=TK7zQXwLVCzLCYsek1DJA2F41NhOAll7TP5OyxZu6sdSDNxh675ljBhv9J0rhr6Duf
         5HChBH9TTgKca8Lqo/owIFeOJdzAx4WzYENFXqQmQDGXgX4Q6BJLdGC29Ydb3ERVWfjl
         ncLt4W+7vA+nQkRaE2NTvgcm6vzhVCwLa9fko3durOO5VfKmpuELcmQ6xjHwRgQ1Aw9h
         O15uwjebE4zUpYM0mUWk5YmMupV0FUcmRJ4wbCZWSRdPpxzsykXZO7x8vGDZLizgQGbJ
         y7TptY3jtR06pLcCA/y+nHnoLHroCVY4O44VDbAGBauqmeE4HzHlxiMP2O5hUJ6T8WNF
         aEeQ==
X-Gm-Message-State: AO0yUKVab2qIEZ2LGdYmPDWS98sOYx1NTEo9yUx6InBu9mm7/HdQRUQk
	5UIwa7sdPZr+lfRfua5flux3muW+2inSdKWJ5gE=
X-Google-Smtp-Source: AK7set8WuPfRG/XXCF8lLETcA0wrY+8FxcHeghYymPdog9IGug/2ZOlyeLV+incjgqYFXRsOua4W5w==
X-Received: by 2002:a17:903:284f:b0:19c:33fe:e140 with SMTP id kq15-20020a170903284f00b0019c33fee140mr4745206plb.42.1676952754211;
        Mon, 20 Feb 2023 20:12:34 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id p4-20020a1709026b8400b0019c33ae2f63sm1110025plk.88.2023.02.20.20.12.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Feb 2023 20:12:33 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------Os4A3OzICvvvQ03WmkkUMxtg"
Message-ID: <71fbfe4c-ada1-4f10-b93a-9ceecb54611e@mistywest.com>
Date: Mon, 20 Feb 2023 20:12:31 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [yocto] fltk recipe fails
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <e61cc66f-86de-f9fd-99a4-7118dbef9807@mistywest.com>
 <61465e9d-b58c-ed17-486d-9ac670b1c127@lineo.co.jp>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <61465e9d-b58c-ed17-486d-9ac670b1c127@lineo.co.jp>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 04:12:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59262

This is a multi-part message in MIME format.
--------------Os4A3OzICvvvQ03WmkkUMxtg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Takayasu,

Thank you for this. I have cloned the fltk/ dir from the dunfell branch 
to my build host. This seemed to help out with the fltk issue but I have 
to suspend work on this for now.

Thanks,

Ron

On 2/20/23 00:23, Takayasu Ito wrote:
> Hi Ron
>
> The patch file can be found at
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk 
>
>
>
> On 2023/02/20 16:51, Mistyron wrote:
>> Hi,
>>
>> I need too build fltk but the recipe from openembedded 
>> (http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk.bb?h=master) 
>> requires a patch file that I could not find. Hence I built my own 
>> recipe which looks something like:
>> [fltk.bb]
>> SUMMARY = "Fast Light Toolkit (FLTK) is a cross-platform GUI 
>> development library."
>> DESCRIPTION = "FLTK provides modern GUI functionality without the 
>> bloat and supports 3D graphics via OpenGL and its built-in GLUT 
>> emulation."
>>
>> LICENSE = "LGPLv2.1+"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=353c9fd4163eef6500f7e057aed0b083"
>>
>> SRCREV = "master"
>> SRC_URI = "git://github.com/fltk/fltk.git;branch=${SRCREV}"
>>
>> S = "${WORKDIR}/git"
>>
>> inherit autotools
>>
>> do_configure_prepend() {
>>      ${WORKDIR}/git/autogen.sh
>> }
>> [/fltk.bb]
>>
>> I'm running into an issue with autoge.sh tho, the script appears simple:
>> [autogen.sh]
>> #! /bin/sh
>> #
>> # This file is no longer referred to in the documentation, it's kept
>> # for backwards compatibility only.
>> #
>> # Just run `autoconf` instead to generate `configure` and you're done.
>> #
>> # The old README.Unix.txt stated that it should be executed from within
>> # the "FLTK source-code directory", hence changing directories is not
>> # useful and would break if the user's home directory contained spaces.
>> # Changing directories has been removed in FLTK 1.4.0 and this file
>> # has been simplified substantially.
>> #
>> # Instead of executing it as documented in pre-1.4 README files the 
>> new docs
>> # instruct to just execute `autoconf` which is sufficient and 
>> equivalent to
>> # the old instructions.
>>
>> autoconf --force || exit 1
>>
>> test -n "$NOCONFIGURE" || ./configure "$@"
>> [/autogen.sh]
>>
>> However, when I attempt to build my image, I get something like:
>> DEBUG: Executing shell function do_configure
>> autoconf: error: no input file
>> WARNING: exit code 1 from a shell command.
>> ERROR: Execution of 
>> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/fltk/1.0-r0/temp/run.do_configure.242968' 
>> failed with exit code 1
>>
>> The autoconf man page states:
>>
>> "-f, --force
>> consider all files obsolete"
>> i.e. I would expect it to work w/o any input files. What am I missing 
>> and how can I get fltk built succesfully?
>>
>>
>>
>>
>>
>>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59249):https://lists.yoctoproject.org/g/yocto/message/59249
> Mute This Topic:https://lists.yoctoproject.org/mt/97082226/7254380
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------Os4A3OzICvvvQ03WmkkUMxtg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi Takayasu,</font></p>
    <p><font size="2">Thank you for this. I have cloned the fltk/ dir
        from the dunfell branch to my build host. This seemed to help
        out with the fltk issue but I have to suspend work on this for
        now.</font></p>
    <p><font size="2">Thanks,</font></p>
    <p><font size="2">Ron<br>
      </font></p>
    <div class="moz-cite-prefix">On 2/20/23 00:23, Takayasu Ito wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:61465e9d-b58c-ed17-486d-9ac670b1c127@lineo.co.jp">Hi Ron
      <br>
      <br>
      The patch file can be found at
      <br>
<a class="moz-txt-link-freetext" href="http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk</a>
      <br>
      <br>
      <br>
      On 2023/02/20 16:51, Mistyron wrote:
      <br>
      <blockquote type="cite">Hi,
        <br>
        <br>
        I need too build fltk but the recipe from openembedded
(<a class="moz-txt-link-freetext" href="http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk.bb?h=master">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk.bb?h=master</a>)
        requires a patch file that I could not find. Hence I built my
        own recipe which looks something like:
        <br>
        [fltk.bb]
        <br>
        SUMMARY = "Fast Light Toolkit (FLTK) is a cross-platform GUI
        development library."
        <br>
        DESCRIPTION = "FLTK provides modern GUI functionality without
        the bloat and supports 3D graphics via OpenGL and its built-in
        GLUT emulation."
        <br>
        <br>
        LICENSE = "LGPLv2.1+"
        <br>
        LIC_FILES_CHKSUM =
        <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=353c9fd4163eef6500f7e057aed0b083">"file://COPYING;md5=353c9fd4163eef6500f7e057aed0b083"</a>
        <br>
        <br>
        SRCREV = "master"
        <br>
        SRC_URI = "git://github.com/fltk/fltk.git;branch=${SRCREV}"
        <br>
        <br>
        S = "${WORKDIR}/git"
        <br>
        <br>
        inherit autotools
        <br>
        <br>
        do_configure_prepend() {
        <br>
             ${WORKDIR}/git/autogen.sh
        <br>
        }
        <br>
        [/fltk.bb]
        <br>
        <br>
        I'm running into an issue with autoge.sh tho, the script appears
        simple:
        <br>
        [autogen.sh]
        <br>
        #! /bin/sh
        <br>
        #
        <br>
        # This file is no longer referred to in the documentation, it's
        kept
        <br>
        # for backwards compatibility only.
        <br>
        #
        <br>
        # Just run `autoconf` instead to generate `configure` and you're
        done.
        <br>
        #
        <br>
        # The old README.Unix.txt stated that it should be executed from
        within
        <br>
        # the "FLTK source-code directory", hence changing directories
        is not
        <br>
        # useful and would break if the user's home directory contained
        spaces.
        <br>
        # Changing directories has been removed in FLTK 1.4.0 and this
        file
        <br>
        # has been simplified substantially.
        <br>
        #
        <br>
        # Instead of executing it as documented in pre-1.4 README files
        the new docs
        <br>
        # instruct to just execute `autoconf` which is sufficient and
        equivalent to
        <br>
        # the old instructions.
        <br>
        <br>
        autoconf --force || exit 1
        <br>
        <br>
        test -n "$NOCONFIGURE" || ./configure "$@"
        <br>
        [/autogen.sh]
        <br>
        <br>
        However, when I attempt to build my image, I get something like:
        <br>
        DEBUG: Executing shell function do_configure
        <br>
        autoconf: error: no input file
        <br>
        WARNING: exit code 1 from a shell command.
        <br>
        ERROR: Execution of
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/fltk/1.0-r0/temp/run.do_configure.242968'
        failed with exit code 1
        <br>
        <br>
        The autoconf man page states:
        <br>
        <br>
        "-f, --force
        <br>
        consider all files obsolete"
        <br>
        i.e. I would expect it to work w/o any input files. What am I
        missing and how can I get fltk built succesfully?
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
      </blockquote>
      <br>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#59249): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/59249">https://lists.yoctoproject.org/g/yocto/message/59249</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/97082226/7254380">https://lists.yoctoproject.org/mt/97082226/7254380</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:ron.eggler@mistywest.com">ron.eggler@mistywest.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------Os4A3OzICvvvQ03WmkkUMxtg--

