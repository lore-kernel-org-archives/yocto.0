Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6A6C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 10:21:12 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web08.30562.1635157271034833437
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 03:21:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fr8mG7F7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id d3so7728918wrh.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=OFCAKY/UQdaWgXwhhVZdoUiwY3nJjPy9vmgW20NEbG0=;
        b=fr8mG7F7NSkG18vyek4IFE0REV53kMwEtxUHCPaCJ56xr5DqFrxZdG0196pAubssyC
         3WuflcBGANNMGIDiHyRfzNhExcXM91OgCVUSthkOFafWJ1ML6Yf4wwvVEtitb/rJ8eO/
         5tjBwGP3ZKVhvi4YjSjy84vCKynHI7Mzalmos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OFCAKY/UQdaWgXwhhVZdoUiwY3nJjPy9vmgW20NEbG0=;
        b=h+FE2Ad/VKu48P77Z6pb+OQiw/Z/cy1Hs30hBq1/F/nMtajyCHCjV2epjuPseVIabs
         5zp3pbrau3zHOUZ70dfhy+wJOuKb5gPcys1w5PFpJob4izzpUKhkL6t4igNHVvi0fdt4
         grKXCIUq1bgLU/78RJv1/lSF/QpkudR9HKwWXx0rGE6jK13x8RQ16RXmCQvGvd6R9afc
         jJv/KwYvswINj3fTcGhmmM1AB8HWr8pouz6ZDbM47swOeyAQlDrOOZCiDRzRCwOUq1kq
         LLAJdnJZ0ht7viXCz+PjYKRxktpcZvjCss6k5JKjl7MTm3igNegyecV3Mpn6yY/SocT9
         U5Mg==
X-Gm-Message-State: AOAM530Hlo8n8hWTR2/UshhILzxKeI4gZqcKisle3R03s2tpOzrVGn6u
	mOLuatZzYyLz+YrfZxf7WpUmNg==
X-Google-Smtp-Source: 
 ABdhPJzlc6qnjTzrghs/GOGVUA2yHUiJpcOr+C8Ccg3rtRgXKZr6biV+fzvT+urp5vkqGfDNyAzFAw==
X-Received: by 2002:a5d:4b51:: with SMTP id w17mr22708725wrs.47.1635157269214;
        Mon, 25 Oct 2021 03:21:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5fb2:414a:7b8b:6fb3?
 ([2001:8b0:aba:5f3c:5fb2:414a:7b8b:6fb3])
        by smtp.gmail.com with ESMTPSA id
 s18sm13768403wrb.95.2021.10.25.03.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 03:21:08 -0700 (PDT)
Message-ID: 
 <31bc3d89241386e397e8d90dd35a6fdb71f938e1.camel@linuxfoundation.org>
Subject: Re: [yocto] dunfell: pkgconfig-native build fails in existing Yocto
 BSP
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Matthias Klein <matthias.klein@optimeas.de>,
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Mon, 25 Oct 2021 11:21:07 +0100
In-Reply-To: 
 <AM0PR10MB31073A9D434C38BC2EF8A48B99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
	<AM0PR10MB31073A9D434C38BC2EF8A48B99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 10:21:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55134

On Mon, 2021-10-25 at 06:50 +0000, Matthias Klein wrote:
> Hello,
> 
> our dunfell based yocto no longer builds in the pkgconfig-native section. I tried it in an Ubuntu 18.04 and Debian 10 Docker container.
> The build always aborts as follows:
> 
> checking thread related cflags... -D_REENTRANT
> > checking for pthread_create/pthread_join... no
> > checking for pthread_create/pthread_join in -lpthread... no
> > checking for pthread_create/pthread_join in -lpthread32... no
> > checking for pthread_create/pthread_join in -lpthreads... no
> > checking for pthread_create/pthread_join in -lthread... no
> > configure: error: I can't find the libraries for the thread implementation
> >                  posix. Please choose another thread implementation or
> >                   provide information on your thread implementation.
> > configure: error: ../../git/glib/configure failed for glib
> > NOTE: The following config.log files may provide further information.
> > NOTE: /work/yocto-optimeas/build/tmp/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/build/glib/config.log /work/yocto-optimeas/build/tmp/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/build/config.log
> > ERROR: configure failed
> > WARNING: /work/yocto-optimeas/build/tmp/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.243679:1 exit 1 from 'exit 1'
> > ERROR: Execution of '/work/yocto-optimeas/build/tmp/work/x86_64-linux/pkgconfig-native/0.29.2+gitAUTOINC+edf8e6f0ea-r0/temp/run.do_configure.243679' failed with exit code 1
> ERROR: Task (virtual:native:/work/yocto-optimeas/yocto/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_configure) failed with exit code '1'
> ERROR: ninja-native-1.10.0-r0 do_compile: Execution of '/work/yocto-optimeas/build/tmp/work/x86_64-linux/ninja-native/1.10.0-r0/temp/run.do_compile.319277' failed with exit code 1
> ERROR: Logfile of failure stored in: /work/yocto-optimeas/build/tmp/work/x86_64-linux/ninja-native/1.10.0-r0/temp/log.do_compile.319277
> Log data follows:
> > DEBUG: Executing shell function do_compile
> > ninja: fatal: posix_spawn: Operation not permitted
> > bootstrapping ninja...
> > wrote build.ninja.
> > bootstrap complete.  rebuilding...
> > Traceback (most recent call last):
> >   File "./configure.py", line 709, in <module>
> >     subprocess.check_call(rebuild_args)
> >   File "/usr/lib/python3.7/subprocess.py", line 347, in check_call
> >     raise CalledProcessError(retcode, cmd)
> > subprocess.CalledProcessError: Command '['./ninja']' returned non-zero exit status 1.
> > WARNING: /work/yocto-optimeas/build/tmp/work/x86_64-linux/ninja-native/1.10.0-r0/temp/run.do_compile.319277:1 exit 1 from 'python3 ./configure.py --bootstrap'
> > ERROR: Execution of '/work/yocto-optimeas/build/tmp/work/x86_64-linux/ninja-native/1.10.0-r0/temp/run.do_compile.319277' failed with exit code 1
> ERROR: Task (virtual:native:/work/yocto-optimeas/yocto/poky/meta/recipes-devtools/ninja/ninja_1.10.0.bb:do_compile) failed with exit code '1'
> 
> 
> I also tried using the commits from dunfell-next in the poky repo as a test. But then the build doesn't even start and I get the following error:
> 
> ERROR: ParseError at /work/yocto-optimeas/yocto/meta-openembedded/meta-oe/recipes-extended/libimobiledevice/libplist_2.1.0.bb:9: Could not inherit file classes/python3targetconfig.bbclass                                                                               | ETA:  --:--:--
> 
> 
> Does anyone have any idea what is causing this? does anyone have the same behavior?

I just backported a uninative upgrade to dunfell which should address this
issue.

Cheers,

Richard




