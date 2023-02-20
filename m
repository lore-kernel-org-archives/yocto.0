Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EB9C05027
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 07:51:08 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.8201.1676879466712706833
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Feb 2023 23:51:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=UQV/aGID;
 spf=pass (domain: mistywest.com, ip: 209.85.216.44, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f44.google.com with SMTP id g14so432067pjb.2
        for <yocto@lists.yoctoproject.org>; Sun, 19 Feb 2023 23:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=H32QpA/c1Gp68U9ZsQwNk3o+RNWWJv7Q7LtkOfkFQF0=;
        b=UQV/aGIDSMVVAhsVR7df7qP14EvqbWp9m0/IdGp9AeDMQf0qjFjKKURN7tbbpklJU/
         VAt0bFc1V7RRWH3dPglOWitA6kY/RB6kEGJm1SiWuiAbLjefjtTpLksfIexGkv73jad9
         ysu5gPQO7xHHbP+RMY9wBdlzEYGdLfpdFVVyMqw4yvk0HZOWvAH0PKbXZjMiPjpRDO8L
         yUczBFlRjV7qg/+858YDnLGRpTLeFoggdMfG8nBZeI9z+idT5sUEPjjsEaAvmGQK4nHK
         1/Va7N+5gykx3foTpjD3euzPGxInVgPdrZkTlzmX+jHZzwwrIibFPXSFNksfbp94dF7r
         pXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H32QpA/c1Gp68U9ZsQwNk3o+RNWWJv7Q7LtkOfkFQF0=;
        b=a7o8bg8NmB1INHBaKT32TYA7UjKWOz6fifQORYnn2FjzymzV3HPiHtiZMKRQ+q8gkP
         3pm5BiKmixl90xWPTPcgnIByCSt5Rs1H9xh5fIN2RKbeYjLCM0dr//RGzLNQf4sB9iZU
         u3RHhuW/I7fumgXth9Yp54L+2vPfatK+GR0ww8gfP3ZqL0G0aOWVtA5HFc8t2fEEbKBu
         2ibqDqEhXuCc2yRVUgEFmQ8pI5ulQ9bS/N6pCqYUp+UqNxNtAJFRM14WoB2mFeMoIUV1
         K5YZQeYWCpNwfp+d0Zr8nkxqDcrAA4Vf4/gpOTsBw6PTGNvEVSowo/61isp89IoWwhVa
         iCPQ==
X-Gm-Message-State: AO0yUKXivi9FOaZLMaivsF9okKGcdMjTTIEplKzTnJsK0+8G+mwXy5NZ
	YosWc1bmQLPZkYVbK/6QhjZb9pZYJDcEz8xvxtc=
X-Google-Smtp-Source: AK7set9gX7VWg1WBO6zR/982m5Hfovx+ZqarLHJArzRieXkI+MXP3VbExNlLnsLln5uAsD0r35A9ow==
X-Received: by 2002:a17:903:183:b0:196:3bbb:e9e3 with SMTP id z3-20020a170903018300b001963bbbe9e3mr1535412plg.28.1676879465567;
        Sun, 19 Feb 2023 23:51:05 -0800 (PST)
Received: from [192.168.1.222] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id m1-20020a170902bb8100b0019952745898sm1297246pls.161.2023.02.19.23.51.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Feb 2023 23:51:05 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------OsvBoRfdurWSiLc3odewB27n"
Message-ID: <e61cc66f-86de-f9fd-99a4-7118dbef9807@mistywest.com>
Date: Sun, 19 Feb 2023 23:51:03 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: fltk recipe fails
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 07:51:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59248

This is a multi-part message in MIME format.
--------------OsvBoRfdurWSiLc3odewB27n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I need too build fltk but the recipe from openembedded 
(http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk.bb?h=master) 
requires a patch file that I could not find. Hence I built my own recipe 
which looks something like:
[fltk.bb]
SUMMARY = "Fast Light Toolkit (FLTK) is a cross-platform GUI development 
library."
DESCRIPTION = "FLTK provides modern GUI functionality without the bloat 
and supports 3D graphics via OpenGL and its built-in GLUT emulation."

LICENSE = "LGPLv2.1+"
LIC_FILES_CHKSUM = "file://COPYING;md5=353c9fd4163eef6500f7e057aed0b083"

SRCREV = "master"
SRC_URI = "git://github.com/fltk/fltk.git;branch=${SRCREV}"

S = "${WORKDIR}/git"

inherit autotools

do_configure_prepend() {
     ${WORKDIR}/git/autogen.sh
}
[/fltk.bb]

I'm running into an issue with autoge.sh tho, the script appears simple:
[autogen.sh]
#! /bin/sh
#
# This file is no longer referred to in the documentation, it's kept
# for backwards compatibility only.
#
# Just run `autoconf` instead to generate `configure` and you're done.
#
# The old README.Unix.txt stated that it should be executed from within
# the "FLTK source-code directory", hence changing directories is not
# useful and would break if the user's home directory contained spaces.
# Changing directories has been removed in FLTK 1.4.0 and this file
# has been simplified substantially.
#
# Instead of executing it as documented in pre-1.4 README files the new docs
# instruct to just execute `autoconf` which is sufficient and equivalent to
# the old instructions.

autoconf --force || exit 1

test -n "$NOCONFIGURE" || ./configure "$@"
[/autogen.sh]

However, when I attempt to build my image, I get something like:
DEBUG: Executing shell function do_configure
autoconf: error: no input file
WARNING: exit code 1 from a shell command.
ERROR: Execution of 
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/fltk/1.0-r0/temp/run.do_configure.242968' 
failed with exit code 1

The autoconf man page states:

"-f, --force
consider all files obsolete"
i.e. I would expect it to work w/o any input files. What am I missing 
and how can I get fltk built succesfully?


--------------OsvBoRfdurWSiLc3odewB27n
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi,</font></p>
    <p><font size="2">I need too build fltk but the recipe from
        openembedded
(<a class="moz-txt-link-freetext" href="http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk.bb?h=master">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/fltk/fltk.bb?h=master</a>)
        requires a patch file that I could not find. Hence I built my
        own recipe which looks something like:<br>
        [fltk.bb]<br>
        SUMMARY = "Fast Light Toolkit (FLTK) is a cross-platform GUI
        development library."<br>
        DESCRIPTION = "FLTK provides modern GUI functionality without
        the bloat and supports 3D graphics via OpenGL and its built-in
        GLUT emulation."<br>
        <br>
        LICENSE = "LGPLv2.1+"<br>
        LIC_FILES_CHKSUM =
        <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=353c9fd4163eef6500f7e057aed0b083">"file://COPYING;md5=353c9fd4163eef6500f7e057aed0b083"</a><br>
        <br>
        SRCREV = "master"<br>
        SRC_URI = "git://github.com/fltk/fltk.git;branch=${SRCREV}"<br>
        <br>
        S = "${WORKDIR}/git"<br>
        <br>
        inherit autotools<br>
        <br>
        do_configure_prepend() {<br>
            ${WORKDIR}/git/autogen.sh<br>
        }<br>
        [/fltk.bb]<br>
      </font></p>
    <p>I'm running into an issue with autoge.sh tho, the script appears
      simple:<br>
      [autogen.sh]<br>
      #! /bin/sh<br>
      #<br>
      # This file is no longer referred to in the documentation, it's
      kept<br>
      # for backwards compatibility only.<br>
      #<br>
      # Just run `autoconf` instead to generate `configure` and you're
      done.<br>
      #<br>
      # The old README.Unix.txt stated that it should be executed from
      within<br>
      # the "FLTK source-code directory", hence changing directories is
      not<br>
      # useful and would break if the user's home directory contained
      spaces.<br>
      # Changing directories has been removed in FLTK 1.4.0 and this
      file<br>
      # has been simplified substantially.<br>
      #<br>
      # Instead of executing it as documented in pre-1.4 README files
      the new docs<br>
      # instruct to just execute `autoconf` which is sufficient and
      equivalent to<br>
      # the old instructions.<br>
      <br>
      autoconf --force || exit 1<br>
      <br>
      test -n "$NOCONFIGURE" || ./configure "$@"<br>
      [/autogen.sh]</p>
    <p>However, when I attempt to build my image, I get something like:
      <br>
      DEBUG: Executing shell function do_configure<br>
      autoconf: error: no input file<br>
      WARNING: exit code 1 from a shell command.<br>
      ERROR: Execution of
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/fltk/1.0-r0/temp/run.do_configure.242968'
      failed with exit code 1<br>
      <br>
      The autoconf man page states:<br>
    </p>
    <div class="moz-signature">"-f, --force<br>
      consider all files obsolete"<br>
      i.e. I would expect it to work w/o any input files. What am I
      missing and how can I get fltk built succesfully?</div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature"><br>
    </div>
  </body>
</html>

--------------OsvBoRfdurWSiLc3odewB27n--

