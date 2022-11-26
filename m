Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26E32C4332F
	for <webhook@archiver.kernel.org>; Sat, 26 Nov 2022 07:00:14 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.65593.1669446009928245162
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Nov 2022 23:00:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=OXwNfTKS;
 spf=pass (domain: mistywest.com, ip: 209.85.214.182, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f182.google.com with SMTP id io19so5716581plb.8
        for <yocto@lists.yoctoproject.org>; Fri, 25 Nov 2022 23:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ryYWVElGvQJkTvwGH1nGcyHviq4K/I6Pr0NmhcS0muQ=;
        b=OXwNfTKSJDtoHbHd68g0C/T+3s3dAnk8+ZW1XJkHwS69gwqvEINiSRot3ik1zn3vdJ
         jnQrSoN0EYVgnMexIim+pyLt4PCq36mvCf/+p79AqHOoGtETywVwvlVhQcshHSAUr6BM
         E8fEKB/iFTDK6XIWZyQndir530oyahhw9LEoVR67GZq3sLAIp30cEIaHuGgJopFA499a
         7IvE+o27RJI4PHEzNmT4IGWk+DrnGu0zQr9HN16XQ2nNdRcxoyqpKq/JphBW/Vdb2WX7
         EQT+sHC9wbDlcM65r9Y7fFC3Cx3yjtvhCB7ZHJOCuq9rxM6BxsSAu76d58LsgbGHfyP3
         lOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ryYWVElGvQJkTvwGH1nGcyHviq4K/I6Pr0NmhcS0muQ=;
        b=m28MFO8Pjx6oGmM0LidLip5exMNDy+Hvg+iGfm2/nFY1i02O2UMZUbr/MjWwp+gPMr
         2UztEpKt7Zbo2C7yLoRyE0TtgTgwQJOVzuNL6S9Pe21fyW0k9EETsogtRyC/ki1W2nCi
         rrJc+q+EDkntgQTHUe5KuHe43oXG3pp473JaTHP7dkVsjSQ7lZuxzapMvoGi+cOuNrf6
         vTvcg57A2rT51IqrUWKCHwr1gZ/3Aw5Q0fk8VFac0j/o3I7kKhUqe3rojTYowAWn5iLA
         DN99cgcYfFN2QyNfVX6LosY3O2rVxlgk0QTSKwOd2LnbpG7kvQftas6wgmobZldrU5fL
         bEYA==
X-Gm-Message-State: ANoB5plpyS50Qu9zfqIdFEKYiu8z96ph7iXSYGsMSR9l9aOAXMGp4Hd9
	KNrvKB6UFlC0tMGJLkPoPswyByn8uTHfgEK4
X-Google-Smtp-Source: AA0mqf6huzUaaJmKCfIS5pLgF/qLyBQFx/Owp+LplRIYNAZO2R99ePsvyH453evF2UZH77MKSejH3Q==
X-Received: by 2002:a17:902:ef93:b0:189:3998:17d4 with SMTP id iz19-20020a170902ef9300b00189399817d4mr19269748plb.25.1669446008872;
        Fri, 25 Nov 2022 23:00:08 -0800 (PST)
Received: from [192.168.99.2] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id x22-20020a170902821600b0016be834d54asm4461148pln.306.2022.11.25.23.00.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 23:00:08 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------qFjCicth0CXzYvzZwccG7kZG"
Message-ID: <676c7488-3db0-c606-82f3-7e8e05ebc090@mistywest.com>
Date: Fri, 25 Nov 2022 23:00:07 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] unable to find u-boot config file in existing BSP
To: yocto@lists.yoctoproject.org
References: <172AF1F3497B3C0B.368@lists.yoctoproject.org>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <172AF1F3497B3C0B.368@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Nov 2022 07:00:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58637

This is a multi-part message in MIME format.
--------------qFjCicth0CXzYvzZwccG7kZG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 11/25/22 13:43, Mistyron via lists.yoctoproject.org wrote:
>
> Hi,
>
> I'm interested in extracting the u-boot config from an existing BSP. 
> It does compile u-boot but I cannot find the config file and I 
> definitely can invoke bitbake u-boot separately, i.e. there must be a 
> .config file somewhere.
>
I did find the location of the bbapppends:

$ bitbake-layers show-appends | grep boot
u-boot_2021.10.bb:
/home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/u-boot_2021.10.bbappend 

u-boot_2021.10.bb (skipped):
/home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/u-boot_2021.10.bbappend

but searching in 
/home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/ 
for "*config*" did not yield any results.

> Background: I want to be able to compile u-boot separately with make, 
> outside of Yocto and re-use the same configuration.
> Can anyone give me any hints?
>
> Thanks,
>
> Ron
>
> -- 
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58635):https://lists.yoctoproject.org/g/yocto/message/58635
> Mute This Topic:https://lists.yoctoproject.org/mt/95262552/7254380
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------qFjCicth0CXzYvzZwccG7kZG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/25/22 13:43, Mistyron via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:172AF1F3497B3C0B.368@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <p><font size="2">Hi,</font></p>
      <p><font size="2">I'm interested in extracting the u-boot config
          from an existing BSP. It does compile u-boot but I cannot find
          the config file and I definitely can invoke bitbake u-boot
          separately, i.e. there must be a .config file somewhere. <br>
        </font></p>
    </blockquote>
    <p><font size="2">I did find the location of the bbapppends:</font></p>
    <p><font size="2">$ bitbake-layers show-appends | grep
boot                                                                                                                                                        
         <br>
u-boot_2021.10.bb:                                                                                                                                                                                                                        
         <br>
         
/home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/u-boot_2021.10.bbappend                                                                                                                               
         <br>
        u-boot_2021.10.bb
(skipped):                                                                                                                                                                                                              
         <br>
         
/home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/u-boot_2021.10.bbappend</font></p>
    <p><font size="2">but searching in </font><font size="2"><font
          size="2"> 
/home/yocto/rzv_vlp_v3.0.0/build/../meta-renesas/recipes-rzg2l/recipes-bsp/u-boot/</font>
        for "*config*" did not yield any results. <br>
      </font></p>
    <blockquote type="cite"
      cite="mid:172AF1F3497B3C0B.368@lists.yoctoproject.org">
      <p><font size="2"> Background: I want to be able to compile u-boot
          separately with make, outside of Yocto and re-use the same
          configuration. <br>
          Can anyone give me any hints?</font></p>
      <p><font size="2">Thanks,</font></p>
      <p><font size="2">Ron</font><br>
      </p>
      <div class="moz-signature">-- <br>
        RON EGGLER Firmware Engineer (he/him/his) <a
          class="moz-txt-link-abbreviated"
          href="http://www.mistywest.com" moz-do-not-send="true">www.mistywest.com</a></div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#58635): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/58635">https://lists.yoctoproject.org/g/yocto/message/58635</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/95262552/7254380">https://lists.yoctoproject.org/mt/95262552/7254380</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:ron.eggler@mistywest.com">ron.eggler@mistywest.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------qFjCicth0CXzYvzZwccG7kZG--

