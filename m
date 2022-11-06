Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A28CC4332F
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 17:36:55 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.803.1667756210416275729
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 09:36:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=I76vBhFk;
 spf=pass (domain: mistywest.com, ip: 209.85.215.169, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pg1-f169.google.com with SMTP id v3so8544203pgh.4
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 09:36:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzEdP6yuW/iBt6yRNIn7N+e9CB3csn3HfpD51T5buXw=;
        b=I76vBhFkaIuCdiA7EjnndzVpZKjOLWt1k8m0MQN9F3EKpRMxSJSrSXklWWpoPkkfcG
         BIntBkypyx18vbHwEulC5Cgoj4kGd9b5t8T/pIhM1iGD0kL2qVS2OH8rQc9jfNlKxIcP
         NnSSVfysZpjwskc3fua/hWas7yv9reQfj+QIzmmgnlrqJsSErgueeSdnq7S5ieOtYos+
         72kDaIBrKUwDO5bJniQaaMqAsbjF9ny6tJJoqVeqxI+tf0wJYceKH5eCcx0lJsx9mSBI
         1sRIxM0ZvBS8bIMNK6ueGm9cbbxBTyBgow+6SCX+YR3ozoUZ8e1oJ8t/9EssUWx3itpA
         q9rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FzEdP6yuW/iBt6yRNIn7N+e9CB3csn3HfpD51T5buXw=;
        b=nX6XIm7lRROCuUgtSmLs5L5tVVge93N7kuT42TszB6wjw511x3jE4lD+pk2JNAnuMw
         jPtuPk8KEsVok75kbhUwa8CNL8GlZZrYkZwRkEtz/Dg+s6nI4+tqDZ8LmDJoKAj+SUug
         LfdbIxhn+/FFkHwt7ANsTnVj4a4Au0sqtSGgzxAlemSN2DU52Eu8NFk0PkbCJRwriTHN
         2RncWty6I8m/bhYMN9rvOSNe9pUUp19IbNvLiOxLG6BsfuIGgyVFMxT9Y4LJhYgG9RZc
         XadDh3SAbA6jtnYBdoIGhM/mHXpm7KZ3O2dbMLzFMeDjarE7bJ7yHb6B70mswRxTGPSx
         SxSg==
X-Gm-Message-State: ACrzQf0HGb2KF20F75FU0CtnbktXN3B/GOG7uGGkJVZ0ttfzaOXJXwPC
	FoR/frunIulod5LSwsssuqLUNA==
X-Google-Smtp-Source: AMsMyM4rARveYVb325zN2BltgjjJh5sINSbVbQXEEbGEgsFWW2rVTRX3S20gvdMQRk14imcA0c6zVg==
X-Received: by 2002:a05:6a00:230d:b0:53d:c198:6ad7 with SMTP id h13-20020a056a00230d00b0053dc1986ad7mr47043020pfh.67.1667756209634;
        Sun, 06 Nov 2022 09:36:49 -0800 (PST)
Received: from [192.168.1.223] (S01067898e84c4253.vc.shawcable.net. [24.87.53.111])
        by smtp.gmail.com with ESMTPSA id r26-20020aa79eda000000b0056c7b49a011sm2830189pfq.76.2022.11.06.09.36.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 09:36:49 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------A0fHyaD2M0nr5b0kxYbXXJHT"
Message-ID: <cbe95fad-8ce9-3e72-2626-e1185505ede5@mistywest.com>
Date: Sun, 6 Nov 2022 09:36:48 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [yocto] undefined reference problem persists
Content-Language: en-US
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 17:36:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58501

This is a multi-part message in MIME format.
--------------A0fHyaD2M0nr5b0kxYbXXJHT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 11/6/22 08:48, Anders Montonen wrote:
> Hi,
>
>> On 6 Nov 2022, at 18:02, Mistyron <ron.eggler@mistywest.com> wrote:
>>
>> On 11/6/22 02:26, Anders Montonen wrote:
>>> On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
>>>> Hi,
>>>>
>>>> I'm working with dunfell and want to compile and install the 
>>>> drivers for the Laird LWB5+ module (available from 
>>>> https://github.com/LairdCP/meta-laird-cp).
>>>> I have included the path to the layer in meta-laird-cp-pre-3.4 in 
>>>> my `bblayers.conf` and since I need the networkmanager and with 
>>>> information from their support team (don't trust the README 
>>>> apparently), I've added `lrd-networkmanager-sterling` to the 
>>>> `IMAGE_INSTALL` list in `sample-image-cp-lwb5plus.bb`. When I 
>>>> invoke `$ bitbake sample-image-cp-lwb5plus`, I keep getting:
>>>>
>>>>     | 
>>>> /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: 
>>>> undefined reference to `rl_echo_signal_char'
>>>>
>>>> even though I've added `readline` to the `DEPENDS` list. Why is 
>>>> this? I expected the `rl_echo_signal_char` dependency to be 
>>>> resolved, any hints?
>>> Are you using meta-gplv2? That function doesn’t exist yet in the 
>>> version of readline provided by that layer.
>>
>> I see, yes my project is using "meta-gplv2".
>>
>> Should removal of that layer help, or would you recommend that I 
>> update the readline version within it to the latest? (and provide an 
>> upstream patch to:https://github.com/lgirdk/meta-gplv2?
>
> If your project doesn’t have any special requirements about not using 
> (L)GPLv3-licensed packages, then dropping meta-gplv2 is by far the 
> best option.
I'll attempt to "just drop" meta-gplv2, then. However I see that there 
are other dependencies on readline too, i.e. it might be easier to just 
replace the existing 5.2 version in meta-gplv2 with 8.2 from here: 
https://git.yoctoproject.org/poky/plain/meta/recipes-core/readline/
> The dependency on readline comes from Networkmanager’s user interfaces 
> (nmcli, nmtui). If you can live without them, disabling them is also 
> an alternative.

I need nmcli for configuration purposes, disabling it won't work for me.

Thanks,
Ron

--------------A0fHyaD2M0nr5b0kxYbXXJHT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <div class="moz-cite-prefix">On 11/6/22 08:48, Anders Montonen
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      Hi,<br class="">
      <div><br class="">
        <blockquote type="cite" class="">
          <div class="">On 6 Nov 2022, at 18:02, Mistyron &lt;<a
              href="mailto:ron.eggler@mistywest.com"
              class="moz-txt-link-freetext" moz-do-not-send="true">ron.eggler@mistywest.com</a>&gt;
            wrote:</div>
          <br class="Apple-interchange-newline">
          <div class=""><span style="caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 14px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class="">On 11/6/22 02:26, Anders Montonen
              wrote:</span><br style="caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 14px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <blockquote type="cite" style="font-family: Helvetica;
              font-size: 14px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              orphans: auto; text-align: start; text-indent: 0px;
              text-transform: none; white-space: normal; widows: auto;
              word-spacing: 0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">On 6 Nov 2022, at 9:45, Mistyron &lt;<a
                href="mailto:ron.eggler@mistywest.com"
                class="moz-txt-link-freetext" moz-do-not-send="true">ron.eggler@mistywest.com</a>&gt;
              wrote:<br class="">
              <blockquote type="cite" class="">Hi,<br class="">
                <br class="">
                I'm working with dunfell and want to compile and install
                the drivers for the Laird LWB5+ module (available from <a
                  href="https://github.com/LairdCP/meta-laird-cp"
                  class="moz-txt-link-freetext" moz-do-not-send="true">https://github.com/LairdCP/meta-laird-cp</a>).<br
                  class="">
                I have included the path to the layer in
                meta-laird-cp-pre-3.4 in my `bblayers.conf` and since I
                need the networkmanager and with information from their
                support team (don't trust the README apparently), I've
                added `lrd-networkmanager-sterling` to the
                `IMAGE_INSTALL` list in `sample-image-cp-lwb5plus.bb`.
                When I invoke `$ bitbake sample-image-cp-lwb5plus`, I
                keep getting:<br class="">
                <br class="">
                    |
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/<a class="moz-txt-link-freetext" href="common.c:904">common.c:904</a>:
                undefined reference to `rl_echo_signal_char'<br class="">
                <br class="">
                even though I've added `readline` to the `DEPENDS` list.
                Why is this? I expected the `rl_echo_signal_char`
                dependency to be resolved, any hints?<br class="">
              </blockquote>
              Are you using meta-gplv2? That function doesn’t exist yet
              in the version of readline provided by that layer.<br
                class="">
            </blockquote>
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 14px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 14px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class="">I see, yes my project is using
              "meta-gplv2".</span><br style="caret-color: rgb(0, 0, 0);
              font-family: Helvetica; font-size: 14px; font-style:
              normal; font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <br style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 14px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none;" class="">
            <span style="caret-color: rgb(0, 0, 0); font-family:
              Helvetica; font-size: 14px; font-style: normal;
              font-variant-caps: normal; font-weight: normal;
              letter-spacing: normal; text-align: start; text-indent:
              0px; text-transform: none; white-space: normal;
              word-spacing: 0px; -webkit-text-stroke-width: 0px;
              text-decoration: none; float: none; display: inline
              !important;" class="">Should removal of that layer help,
              or would you recommend that I update the readline version
              within it to the latest? (and provide an upstream patch
              to:<span class="Apple-converted-space"> </span></span><a
              href="https://github.com/lgirdk/meta-gplv2"
              style="font-family: Helvetica; font-size: 14px;
              font-style: normal; font-variant-caps: normal;
              font-weight: normal; letter-spacing: normal; orphans:
              auto; text-align: start; text-indent: 0px; text-transform:
              none; white-space: normal; widows: auto; word-spacing:
              0px; -webkit-text-size-adjust: auto;
              -webkit-text-stroke-width: 0px;"
              class="moz-txt-link-freetext" moz-do-not-send="true">https://github.com/lgirdk/meta-gplv2</a><span
              style="caret-color: rgb(0, 0, 0); font-family: Helvetica;
              font-size: 14px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              text-align: start; text-indent: 0px; text-transform: none;
              white-space: normal; word-spacing: 0px;
              -webkit-text-stroke-width: 0px; text-decoration: none;
              float: none; display: inline !important;" class=""><span
                class="Apple-converted-space"> </span>?</span><br
              style="caret-color: rgb(0, 0, 0); font-family: Helvetica;
              font-size: 14px; font-style: normal; font-variant-caps:
              normal; font-weight: normal; letter-spacing: normal;
              text-align: start; text-indent: 0px; text-transform: none;
              white-space: normal; word-spacing: 0px;
              -webkit-text-stroke-width: 0px; text-decoration: none;"
              class="">
          </div>
        </blockquote>
        <div><br class="">
        </div>
      </div>
      If your project doesn’t have any special requirements about not
      using (L)GPLv3-licensed packages, then dropping meta-gplv2 is by
      far the best option.</blockquote>
    I'll attempt to "just drop" meta-gplv2, then. However I see that
    there are other dependencies on readline too, i.e. it might be
    easier to just replace the existing 5.2 version in meta-gplv2 with
    8.2 from here:
    <a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/poky/plain/meta/recipes-core/readline/">https://git.yoctoproject.org/poky/plain/meta/recipes-core/readline/</a>
    <blockquote type="cite"
      cite="mid:0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi">
      <div class="">The dependency on readline comes from
        Networkmanager’s user interfaces (nmcli, nmtui). If you can live
        without them, disabling them is also an alternative.</div>
    </blockquote>
    <p>I need nmcli for configuration purposes, disabling it won't work
      for me. <br>
    </p>
    <p>Thanks,<br>
      Ron<br>
    </p>
  </body>
</html>

--------------A0fHyaD2M0nr5b0kxYbXXJHT--

