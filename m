Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37E48C6FD1C
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 18:00:25 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.50727.1679508017340547918
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 11:00:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=VQtIM8eZ;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.46, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f46.google.com with SMTP id mp3-20020a17090b190300b0023fcc8ce113so9396454pjb.4
        for <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 11:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112; t=1679508016;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kVSc7mNQIHgJvpwC7g8g5aOnoAwvK+9Agu+smFvrty4=;
        b=VQtIM8eZNR96tfzEIMkc5y0gq//j3M3em8Musg/ZthmLGh4cooIexzLnGbOlV7Sn9j
         OAhE5vmwHy2eZpuSiboMxlV3bTsIkVXT9oX/nmvE0EXzgn8Ai25uX4FY9SgOKFPrk/Kk
         WNOO6gsrQlZqM5PceYY5vdXfStBVJBXW5qyiQDWo9KVAxEdaIpS5hgpxSZpDJGvW6Bvq
         Mh22uEqN1Wzlby2vFobHaKlmalaGSuO9WcdoMIEAaxdsHR5P1V5LbHwHSdQfv5jjKUed
         K9Vcl2EPXm/3nzqdJymH5IlPNpkzpf3ncmP4z0ohCnU2cUbzkgNu5nG2xYs6Kl4qDLWN
         M0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679508016;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kVSc7mNQIHgJvpwC7g8g5aOnoAwvK+9Agu+smFvrty4=;
        b=kSsnYfGopuS7VHQHMJ2CFqWKYo4mSnWlrSOGA8I+fVsa0bfA/Q1rDy3fTuNelRK3X2
         U242ZM1KUU93kbQwbGKQi7on+093a9Z6b6Vfe7ZnbTB4xTGRph1NBNvac/90ECtosjxo
         xnXBdvSheXJkOthWarEgOK4WK0l+c4dTkD0STRWV0JwuhQb8/EVYIhE25ifUjmyH5tmz
         WdRMgrMaEVQov4nDa4Dy4fZKg0oVX9+nNXT/sw2SwmOgxUBUzk9IA8R5phVXr1upVHgT
         lllGDjhdG8o7mg9Zn6LNywULqlzxOV27wPIXF06rb4l4BLXdVDbLhnF20EYS43orWc9c
         lfyw==
X-Gm-Message-State: AO0yUKXPUe9HUFI12GVcA+r1+XLKRVLwWKXs3457M5azZogRdQkHQxZP
	DuclnbFIOFzcFTl7Z2TsnMSgUg==
X-Google-Smtp-Source: AK7set+qAEXnxoK8LWeMlu/PFRG7mn6rUJq/0lTT/tVypwaAadcv14Z200MZ30CHLgYXsH0NgZZBPQ==
X-Received: by 2002:a17:90b:3803:b0:234:e0c:caaa with SMTP id mq3-20020a17090b380300b002340e0ccaaamr5042200pjb.6.1679508016290;
        Wed, 22 Mar 2023 11:00:16 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id c3-20020a17090aa60300b0023b29b464f9sm10018066pjq.27.2023.03.22.11.00.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 11:00:16 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------uJcAanlRKEoJaJVXH05IsAnf"
Message-ID: <3d23bd0f-4c26-b49f-9593-bff9d1f2b652@ibeeto.com>
Date: Wed, 22 Mar 2023 11:00:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] Network Isolation and CMake FetchContent
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <2efc4ead-5dbb-1a47-3068-0fc388b296f7@ibeeto.com>
 <CANPvuRmH3b4aCYq6KfeTcukpuo3XWiY1MF+B0qj+_9Lutj5TwQ@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
In-Reply-To: <CANPvuRmH3b4aCYq6KfeTcukpuo3XWiY1MF+B0qj+_9Lutj5TwQ@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 18:00:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59494

This is a multi-part message in MIME format.
--------------uJcAanlRKEoJaJVXH05IsAnf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 3/22/23 10:56, Jose Quaresma wrote:
> Hi Rudolf,
>
> Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia quarta, 
> 22/03/2023 à(s) 16:58:
>
>     I have a vendor project which uses CMake FetchContent.
>
>     It's simple to override FETCHCONTENT_FULLY_DISCONNECTED=ON which
>     is set
>     in the cmake class. However, that does not fix the issue since
>     network
>     isolation prevents the CMake from downloading the content.
>
>     I have not found a way to override the network isolation. Is there
>     one?
>
>
> please try in a recipe bbappend with
>
> do_configure[network] = "1"
>
Thank you. That did the trick. I should have known that. It's one of 
these days...
> Jose
>
>
>     Now this is not a discussion about whether FetchContent or not is
>     a good
>     idea and any potential other issues that could arise from using
>     it. For
>     me it's to quickly enable a functionality without jumping through
>     hoops
>     of patching the vendor sources etc.
>
>     Cheers,
>     Rudi
>
>
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>     Links: You receive all messages sent to this group.
>     View/Reply Online (#59492):
>     https://lists.yoctoproject.org/g/yocto/message/59492
>     Mute This Topic: https://lists.yoctoproject.org/mt/97782979/5052612
>     Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [quaresma.jose@gmail.com]
>     -=-=-=-=-=-=-=-=-=-=-=-
>
>
>
> -- 
> Best regards,
>
> José Quaresma

-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386

--------------uJcAanlRKEoJaJVXH05IsAnf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body vlink="#551A8B" text="#000000" link="#0B6CDA" bgcolor="#ffffff"
    alink="#EE0000">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 3/22/23 10:56, Jose Quaresma wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CANPvuRmH3b4aCYq6KfeTcukpuo3XWiY1MF+B0qj+_9Lutj5TwQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi Rudolf,</div>
        <br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">Rudolf J Streif &lt;<a
              href="mailto:rudolf.streif@ibeeto.com" target="_blank"
              moz-do-not-send="true" class="moz-txt-link-freetext">rudolf.streif@ibeeto.com</a>&gt;
            escreveu no dia quarta, 22/03/2023 à(s) 16:58:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">I have a vendor project
            which uses CMake FetchContent.<br>
            <br>
            It's simple to override FETCHCONTENT_FULLY_DISCONNECTED=ON
            which is set <br>
            in the cmake class. However, that does not fix the issue
            since network <br>
            isolation prevents the CMake from downloading the content.<br>
            <br>
            I have not found a way to override the network isolation. Is
            there one?<br>
          </blockquote>
          <div><br>
            please try in a recipe bbappend with <br>
            <br>
            do_configure[network] = "1"</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    Thank you. That did the trick. I should have known that. It's one of
    these days...<br>
    <blockquote type="cite"
cite="mid:CANPvuRmH3b4aCYq6KfeTcukpuo3XWiY1MF+B0qj+_9Lutj5TwQ@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div>Jose<br>
             </div>
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <br>
            Now this is not a discussion about whether FetchContent or
            not is a good <br>
            idea and any potential other issues that could arise from
            using it. For <br>
            me it's to quickly enable a functionality without jumping
            through hoops <br>
            of patching the vendor sources etc.<br>
            <br>
            Cheers,<br>
            Rudi<br>
            <br>
            <br>
            <br>
            -=-=-=-=-=-=-=-=-=-=-=-<br>
            Links: You receive all messages sent to this group.<br>
            View/Reply Online (#59492): <a
              href="https://lists.yoctoproject.org/g/yocto/message/59492"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/message/59492</a><br>
            Mute This Topic: <a
              href="https://lists.yoctoproject.org/mt/97782979/5052612"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/mt/97782979/5052612</a><br>
            Group Owner: <a
              href="mailto:yocto%2Bowner@lists.yoctoproject.org"
              target="_blank" moz-do-not-send="true">yocto+owner@lists.yoctoproject.org</a><br>
            Unsubscribe: <a
              href="https://lists.yoctoproject.org/g/yocto/unsub"
              rel="noreferrer" target="_blank" moz-do-not-send="true"
              class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/unsub</a>
            [<a href="mailto:quaresma.jose@gmail.com" target="_blank"
              moz-do-not-send="true" class="moz-txt-link-freetext">quaresma.jose@gmail.com</a>]<br>
            -=-=-=-=-=-=-=-=-=-=-=-<br>
            <br>
          </blockquote>
        </div>
        <br clear="all">
        <div><br>
        </div>
        <span>-- </span><br>
        <div dir="ltr">
          <div dir="ltr">Best regards,
            <div><br>
              José Quaresma</div>
          </div>
        </div>
      </div>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386</pre>
  </body>
</html>

--------------uJcAanlRKEoJaJVXH05IsAnf--

