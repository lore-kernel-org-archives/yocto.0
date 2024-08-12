Return-Path: <uvv.mail@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93605C3DA7F
	for <webhook@archiver.kernel.org>; Mon, 12 Aug 2024 17:34:56 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.52454.1723484093332126112
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Aug 2024 10:34:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HUDflyF8;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: uvv.mail@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-428e0d184b4so31937815e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 10:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723484092; x=1724088892; darn=lists.yoctoproject.org;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AqERYxyeOznu6goMRomyOokFgUY0I44ERBIBZACpxiU=;
        b=HUDflyF81mwtBkb0XH5Y+gAK8eickgVWyMlnRE6TkfGjPMk0SQG3uOyNP675XI2d0N
         2KZkksrzfXlZpOUN6Et/tV2ggfWPSV9JYifGjswmcACf1LrN/gADdrQKDbYwv3xNkhR+
         KMq2H6uE4nJKq+Eb5/eH4MtquqGrH9ACMHy3mmmkWJU6IP3u/jWIP1YOeNmZvwUkYVv5
         MV5fZ9nle+QrG+kRzGw2j0p5DcWQc71R/0mkp+hvWE60ijGV7t8YhRBPYqwnl3oK43mP
         H8Bieie+3ZUQsSapZb1QHOIqE/RHHqDj0sx1JCUFEew1DlClbHbSXDpIsz7bIVSvhjdA
         WiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723484092; x=1724088892;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AqERYxyeOznu6goMRomyOokFgUY0I44ERBIBZACpxiU=;
        b=V3yyM2bXWtlaOOWkXg4Tj37vNBNlwHiuk+Vfu4AmpDGieQvD0IGNIH0FOrR1JrR/6t
         tFE0OElxlmGLA+yyjixlXEKFcC8L4fJ2OJ6WPORCIOvg3ArcU5oy6ZPnAtEjJFdVBVSH
         jc5FroA32RHMS2QAs7aGCeYI13uzxYdgX20BRiJNV3KYnAJNuopCBJXn9tkBJBvWyatF
         GVxNFavYXPKpwzBQ+wgkKjr12VWHodK2L0/3V6zfbcHEvi1MZFDyAuWSvMoVG1X4fM0M
         dY1ulgRB/VbPdBG9Tj4SI1Lr9textR8icdJlOAx0YAXyHro7cLD3MIevJTtZyLkoMXzO
         6VmA==
X-Forwarded-Encrypted: i=1; AJvYcCWTA0MWuKUGIpiMbll9HNe7avfYQKj2lR997+jBXbxg4v2q78Tz2GIosATneQKBjIkvbdpDeR1ALKWGimNssCHTVQ9liMoS4yTsWCT7
X-Gm-Message-State: AOJu0Ywwrjrw5AFBJWyFnhMW2cl6WT8HbY5qDjB1rs0Zev3ZEPgk9/v+
	xjXpxY5xI4ERkbrzNR66QO+oYAbwN4F6H3lqKcn9eZ40ZcSi5AYSE9J9QA1N
X-Google-Smtp-Source: AGHT+IE7l5rP+LvKwEXuu5KLRi11N1+xYHE586hYlWlHWYGbHPDqJNgMpcKI+VAOazWg6k0Fs+b0Zg==
X-Received: by 2002:a05:600c:5489:b0:427:d8f7:b718 with SMTP id 5b1f17b1804b1-429d488047fmr8500995e9.24.1723484090736;
        Mon, 12 Aug 2024 10:34:50 -0700 (PDT)
Received: from [10.139.7.128] ([154.47.27.147])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429c77374a5sm110141205e9.30.2024.08.12.10.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Aug 2024 10:34:49 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------WPIpANRm5RWTfXd0Fp8292ts"
Message-ID: <cf0cb40c-6bc0-4342-aea0-cff2054ff742@gmail.com>
Date: Mon, 12 Aug 2024 19:34:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Inquiry Regarding Docker Execution Issue in overlayfs
 Rootfs Configuration
To: chwoo@ls-electric.com, yocto@lists.yoctoproject.org
References: <CAKHfEahP6--RfW8tL=i4HOo2Nch_o+9T1fgPi_0zF165PwMObg@mail.gmail.com>
 <23984.1723427685656246747@lists.yoctoproject.org>
Content-Language: en-US
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
In-Reply-To: <23984.1723427685656246747@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Aug 2024 17:34:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63688

This is a multi-part message in MIME format.
--------------WPIpANRm5RWTfXd0Fp8292ts
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hey ChangHyun,
I was not aware of this layer. I guess you better ask the maintainer 
directly then.

When I was answering I referred to the solution currently present in 
openembedded-core layer, in particular:
https://git.openembedded.org/openembedded-core/tree/meta/recipes-core/initrdscripts
https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/overlayfs.bbclass
https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/overlayfs-etc.bbclass

What I meant is that container support was not fully/properly tested 
with the aforementioned classes yet.

Regards,
Slava

On 12.08.2024 03:54, ChangHyun Woo via Lists.Yoctoproject.Org wrote:
>
> Dear Slava,
>
> Thank you for your reply. However, there are a few points I don't 
> quite understand.
>
> I am using the 'initscripts-readonly-rootfs-overlay_1.0.bb' recipe 
> from the 'meta-readonly-rootfs-overlay' layer.
>
> When you asked about modules, were you referring to which recipe I'm 
> using?
>
> Which bbclasses should be turned off to handle containers?
>
> Thank you.
>
> Best regards,
>
> ChangHyun Woo
>

--------------WPIpANRm5RWTfXd0Fp8292ts
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Hey ChangHyun,<br>
      I was not aware of this layer. I guess you better ask the
      maintainer directly then.<br>
      <br>
      When I was answering I referred to the solution currently present
      in openembedded-core layer, in particular:<br>
<a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/tree/meta/recipes-core/initrdscripts">https://git.openembedded.org/openembedded-core/tree/meta/recipes-core/initrdscripts</a><br>
<a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/overlayfs.bbclass">https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/overlayfs.bbclass</a><br>
<a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/overlayfs-etc.bbclass">https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/overlayfs-etc.bbclass</a><br>
      <br>
      What I meant is that container support was not fully/properly
      tested with the aforementioned classes yet.<br>
      <br>
      Regards,<br>
      Slava<br>
      <br>
      On 12.08.2024 03:54, ChangHyun Woo via Lists.Yoctoproject.Org
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:23984.1723427685656246747@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>
        <p class="whitespace-pre-wrap break-words">Dear Slava,</p>
        <p class="whitespace-pre-wrap break-words">Thank you for your
          reply. However, there are a few points I don't quite
          understand.</p>
        <p class="whitespace-pre-wrap break-words">I am using the
          'initscripts-readonly-rootfs-overlay_1.0.bb' recipe from the
          'meta-readonly-rootfs-overlay' layer.</p>
        <p class="whitespace-pre-wrap break-words">When you asked about
          modules, were you referring to which recipe I'm using?</p>
        <p class="whitespace-pre-wrap break-words">Which bbclasses
          should be turned off to handle containers?</p>
        <p class="whitespace-pre-wrap break-words">Thank you.</p>
        <p class="whitespace-pre-wrap break-words">Best regards,</p>
        <p class="whitespace-pre-wrap break-words">ChangHyun Woo</p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------WPIpANRm5RWTfXd0Fp8292ts--

