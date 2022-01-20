Return-Path: <peter@berginkonsult.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8892C433F5
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 07:21:03 +0000 (UTC)
Received: from mailrelay4-2.pub.mailoutpod1-cph3.one.com
 (mailrelay4-2.pub.mailoutpod1-cph3.one.com [46.30.212.3])
 by mx.groups.io with SMTP id smtpd.web10.8715.1642663259932952187
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 23:21:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@berginkonsult.se header.s=rsa2 header.b=j1djbGd8;
 spf=none, err=permanent DNS error (domain: berginkonsult.se, ip: 46.30.212.3,
 mailfrom: peter@berginkonsult.se)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=rsa2;
	h=content-type:in-reply-to:mime-version:date:message-id:from:references:to:
	 subject:from;
	bh=4SooFOehniBXDOqMjsY0UuHrmNXLc0QYHA+N38Vgg7w=;
	b=j1djbGd8PAnO8lpI0KBF4kC1QEFnfLreWlgoPNuaB5J10emonjpOEdo2TqrEsp8vaM91fplf8sanz
	 ETtJ0vax8pbjdCuujpq0o2tHCwdM1c6aVL1twTPauDvmlkV7g8Lzz5wymYd3NRxAUw5Hcxr2+bVdSD
	 NSi5GiRSM/bV83llFz+DRPgAgxI6/07peu1nnEPqpEO1UpGAfiQylLZjpWvTdjVU/wYs4INP5+BDqT
	 FfcF7+7SsKqqr0sTk7v5qrw5k2pXoAS2Y60Gf5CeQbGCF84hl68iSbSz2HK83nqX1bj70RC4R8DuBe
	 4RTT2KWtyZynRCn9HVm+4lwNZgXuBwQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=ed2;
	h=content-type:in-reply-to:mime-version:date:message-id:from:references:to:
	 subject:from;
	bh=4SooFOehniBXDOqMjsY0UuHrmNXLc0QYHA+N38Vgg7w=;
	b=Rj5kI/U4plqeHrkaQsaoKDazGsGVtSWIiWWbpr60vpu3Fvx8B44aZ4WNOvyY3vrJe+9HUuYPrEGcq
	 uwVOdP3AQ==
X-HalOne-Cookie: 64644d569454fb7afc422e21bde55de212db4bba
X-HalOne-ID: 827340de-79c1-11ec-b095-d0431ea8bb10
Received: from [192.168.12.23] (h-79-136-99-68.na.cust.bahnhof.se
 [79.136.99.68])
	by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 827340de-79c1-11ec-b095-d0431ea8bb10;
	Thu, 20 Jan 2022 07:20:56 +0000 (UTC)
Subject: Re: [yocto] Alsa configuration error
To: yocto@lists.yoctoproject.org
References: <Yrh0.1642658739129816571.C8ne@lists.yoctoproject.org>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <e8b73883-edc2-f0b5-1eaf-e7f86d2d11ca@berginkonsult.se>
Date: Thu, 20 Jan 2022 08:20:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <Yrh0.1642658739129816571.C8ne@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------BFA8AFA847E98A09A93F406A"
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 07:21:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55928

This is a multi-part message in MIME format.
--------------BFA8AFA847E98A09A93F406A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2022-01-20 07:05, mihirdave36@gmail.com wrote:
> *recently tried to add ALSA support to core-image-minimal . by adding 
> following lines into local.conf: MACHINE_FEATURES+="alsa" 
> DISTRO_FEATURES+="alsa" CORE_IMAGE_EXTRA_INSTALL+="alsa-utils" but got 
> error of which I have attached image. *
> please guide me what should I do to solve it.
>
Check available sound cards in your system. 'aplay -L' It seems you have 
no suitable default one for speaker-test to use. If you have sound cards 
in your machine and want to point out another one that speaker-test 
shall use you can pass that as an argument. 
https://linux.die.net/man/1/speaker-test

/Peter


--------------BFA8AFA847E98A09A93F406A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2022-01-20 07:05,
      <a class="moz-txt-link-abbreviated" href="mailto:mihirdave36@gmail.com">mihirdave36@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:Yrh0.1642658739129816571.C8ne@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <strong><span style="color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', Helvetica, Arial, sans-serif; white-space: pre-line; background-color: rgba(0, 0, 0, 0.08);">recently tried to add ALSA support to core-image-minimal . by adding following lines into local.conf: MACHINE_FEATURES+="alsa" DISTRO_FEATURES+="alsa" CORE_IMAGE_EXTRA_INSTALL+="alsa-utils" but got error of which I have attached image. </span></strong>
      <div><span style="color: rgba(0, 0, 0, 0.9); font-family: -apple-system, system-ui, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Fira Sans', Ubuntu, Oxygen, 'Oxygen Sans', Cantarell, 'Droid Sans', 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Lucida Grande', Helvetica, Arial, sans-serif; white-space: pre-line; background-color: rgba(0, 0, 0, 0.08);">
please guide me what should I do to solve it.</span></div>
      <br>
    </blockquote>
    <p>Check available sound cards in your system. 'aplay -L' It seems
      you have no suitable default one for speaker-test to use. If you
      have sound cards in your machine and want to point out another one
      that speaker-test shall use you can pass that as an argument.
      <a class="moz-txt-link-freetext" href="https://linux.die.net/man/1/speaker-test">https://linux.die.net/man/1/speaker-test</a></p>
    <p>/Peter<br>
    </p>
  </body>
</html>

--------------BFA8AFA847E98A09A93F406A--

