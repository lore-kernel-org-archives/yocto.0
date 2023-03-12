Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6127C6FD1C
	for <webhook@archiver.kernel.org>; Sun, 12 Mar 2023 08:11:21 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.62908.1678608671540065904
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Mar 2023 00:11:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=4aInjQt/;
 spf=pass (domain: mistywest.com, ip: 209.85.214.182, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f182.google.com with SMTP id i3so9866777plg.6
        for <yocto@lists.yoctoproject.org>; Sun, 12 Mar 2023 00:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112; t=1678608671;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=spDB86FksTF1/P3zMTxGUhG9bAj7B7/YrmF4joQLWFQ=;
        b=4aInjQt/bas5neeZEjZmJ03vXKJ1WdUA9mME4KU2cJzjjEoI+VQLKnIdJvlN9GSC6M
         geofODw3aCC76pydmCnwY/xqrHcfTozzgqVIq3vIchAe9jvejvAHQQ4+EgG0z9V6ktMd
         6HUnfeG/p1oWHBq5oCk+Ei9yLsdumKYnBPiysickn5fyN03xIPvQt9gKG6+yjz/seJuF
         5UfmV01nsaj1MxeMMdtgsBAQ+m1U2J+O1lJOdbVxdSlsjqqCHRKewXFSL7dt7eJ6yjHZ
         IRMf8xNX8vOTic4pjMT5fAaPbzUGY5sN7/9Z1hYLGvV+D5ekqEZc7StyfwCk/CJKobIb
         MrSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678608671;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=spDB86FksTF1/P3zMTxGUhG9bAj7B7/YrmF4joQLWFQ=;
        b=fJGQi9dhUycMS/LDqjCBOqV1iPuwmj/J7X/vl+y9bmuzT31l0foLo4ZYEPHNeK4i9D
         IyZWYoqOGhTAk/1UM0mqU8ECZ3+Bs86hdggZB2rPLmf9awN++Sj3DyCyv8Jw8hTBMK5D
         aeXQnya4YtCcNL1oIQlT5yqdhvU7N0jV/BWDgpxVbubrr95rA50ACUxrC3AfOYQ8Ef9H
         7+VcDMzyRbFmoRkSvn9k6WjWEhDbw0KLTsu2memh5bEmjxZnS4bCxg1SR7ieMgdpGilF
         adk2zEwGTdEuIc5tMaFVGBTN/SAnUgKpBAU4j1VODrFmkoBifqPlKRTVBsifVA/sAMfi
         Q4Yg==
X-Gm-Message-State: AO0yUKX/SQK5jAsBucARHzPWMpSXoCXHxkqftKi6qgbxZDbYK074KTX8
	JKzzRpQwpHUDP1yiVlvXbHTrt9I2D2+wh0bzsac1ww==
X-Google-Smtp-Source: AK7set+yXLQ/0Lo36yGkY3YIV7hQFddd21wm5xnKCTz4WX3tFRial/idEZPE/8vB3r6Zs930YZP8/w==
X-Received: by 2002:a17:902:ce89:b0:19e:6cb9:4c8f with SMTP id f9-20020a170902ce8900b0019e6cb94c8fmr38656636plg.41.1678608670341;
        Sun, 12 Mar 2023 00:11:10 -0800 (PST)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id ku3-20020a170903288300b0019aaab3f9d7sm2495169plb.113.2023.03.12.00.11.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 00:11:10 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------itaHZ07iNwXIN0mcLCIOEJa7"
Message-ID: <92722b8d-ae42-62ec-1c67-f802c0c379e5@mistywest.com>
Date: Sun, 12 Mar 2023 00:11:08 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [yocto] setup in Ubuntu on VMWare #ubuntu
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <itaD.1678596723864035619.vjmt@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <itaD.1678596723864035619.vjmt@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Mar 2023 08:11:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59404

This is a multi-part message in MIME format.
--------------itaHZ07iNwXIN0mcLCIOEJa7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Crane

On 2023-03-11 20:52, Crane wrote:
> Hello,
>
> I want to run Yocto project build on Ubuntu 22.04 running on VMWare. 
> In the documentation at this link 
> <https://docs.yoctoproject.org/current/dev-manual/start.html#setting-up-to-use-cross-platforms-crops>, 
> there are three cases, but none of them is for Linux running on 
> virtual machine.
To install Ubuntu on a VMware virtual machine, you can follow a guide 
like this one e.g.: 
https://www.thecoderworld.com/how-to-install-ubuntu-on-vmware-workstation-player/
> I wonder if it belongs to the category of "Native Linux Host". If not, 
> how to set up Ubuntu 22.04 on VMWare.

Once you've got Ubuntu installed on a virtual machine, you should be 
able to follow the instructions as if it was a native host, however, 
your performance (i.e. build time) will likely be significantly worse 
than if it was run directly on the host (w/o virtualization).

Ron

>
> Thanks!
> Crane
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59403):https://lists.yoctoproject.org/g/yocto/message/59403
> Mute This Topic:https://lists.yoctoproject.org/mt/97554667/7254380
> Mute #ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------itaHZ07iNwXIN0mcLCIOEJa7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Crane<br>
    </p>
    <div class="moz-cite-prefix">On 2023-03-11 20:52, Crane wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:itaD.1678596723864035619.vjmt@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hello,<br>
      <br>
      I want to run Yocto project build on Ubuntu 22.04 running on
      VMWare. In the documentation at <a
href="https://docs.yoctoproject.org/current/dev-manual/start.html#setting-up-to-use-cross-platforms-crops"
        target="_blank" rel="noopener" moz-do-not-send="true">this link</a>,
      there are three cases, but none of them is for Linux running on
      virtual machine. <br>
    </blockquote>
    To install Ubuntu on a VMware virtual machine, you can follow a
    guide like this one e.g.:
<a class="moz-txt-link-freetext" href="https://www.thecoderworld.com/how-to-install-ubuntu-on-vmware-workstation-player/">https://www.thecoderworld.com/how-to-install-ubuntu-on-vmware-workstation-player/</a><br>
    <blockquote type="cite"
      cite="mid:itaD.1678596723864035619.vjmt@lists.yoctoproject.org">I
      wonder if it belongs to the category of "Native Linux Host". If
      not, how to set up Ubuntu 22.04 on VMWare.<br>
    </blockquote>
    <p>Once you've got Ubuntu installed on a virtual machine, you should
      be able to follow the instructions as if it was a native host,
      however, your performance (i.e. build time) will likely be
      significantly worse than if it was run directly on the host (w/o
      virtualization).</p>
    <p>Ron<br>
    </p>
    <blockquote type="cite"
      cite="mid:itaD.1678596723864035619.vjmt@lists.yoctoproject.org"><br>
      Thanks!<br>
      Crane
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#59403): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/59403">https://lists.yoctoproject.org/g/yocto/message/59403</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/97554667/7254380">https://lists.yoctoproject.org/mt/97554667/7254380</a>
Mute #<a class="moz-txt-link-freetext" href="ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu">ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:ron.eggler@mistywest.com">ron.eggler@mistywest.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------itaHZ07iNwXIN0mcLCIOEJa7--

