Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E88FCC10F1B
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 00:43:40 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.172011.1672188210884718790
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Dec 2022 16:43:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=XbZmWtUb;
 spf=pass (domain: mistywest.com, ip: 209.85.210.173, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pf1-f173.google.com with SMTP id c7so9776253pfc.12
        for <yocto@lists.yoctoproject.org>; Tue, 27 Dec 2022 16:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2i/9INWdsQuozPjtAb9goBeJyBxJJqTwAorVFVknpoc=;
        b=XbZmWtUbWkwsPNj/L7asvTPnRMBdvCeE5prIYiWqVUuf9SqrC/wDGSXLg47UTeRMYw
         ofZteD95H6MWt54GDldjhepUlCCeDqzoIXfWNh1c6hT0zx9RQdb89t154fAFgnb7F5Im
         wc4JxNp9qWxG286n4uTy3+IgZZN3xGbVJYoJPucZZvjgVW5Dqf15wwe//Z4DN6gHGOcG
         Zjo5qkxIFfaKrGeSMxumhuKlCRaXoE8dZ23WzK7MdJ4kNJCWWcn9NI1jAmWDp8hyvrPU
         4BNffe5HRWrjPez4738KBkuTIf4XHBzfQA4C9RP8RhZZ+pu3rZo7AgtAAQrs51spEgnq
         GPIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2i/9INWdsQuozPjtAb9goBeJyBxJJqTwAorVFVknpoc=;
        b=WR4xo6+Cj06AqJOSrvuSAKLADjvmtNucnBGWPL0qkzc5QzEoeTkFHPapiSjEGz7fkw
         CR/8apVVstYL8Ad3c6ajC+yVwT7iFf9HgUSZgqPYXzCNFnQm3t27bV0P9KfYPpCONcQI
         CA7CxKORX0CP20iKwUIGs/SAyb+qc8VhwZJhGCxEn+XZutWlZ/n14ONtA0ydJb/MQFiW
         YrE/gECOOgAg6IX5X/eFXIIk6jbw8S2LkY6sDWeW2PXMErKQmhU0TkFpVPopyd30I8iL
         lBJ6laz7vlr8092qmK9mWD1RzezEOEuAa7+zy02pH5K6xBDYvmS3o/UI8I4qrhF+ef1w
         yCbw==
X-Gm-Message-State: AFqh2ko9DH+/p1dW6ngiex6cYNQKkhKxQVS8k7r1QZLrp0Wdax1HURSy
	HuqkjxhL0l9P9wlRQil2B/xVNFoGoLcAxJ5K3SU=
X-Google-Smtp-Source: AMrXdXsWSSx0HybXpwW+KD5+hEiwduRuGFDmqPmsVF9iVYdDpD43fB7DOwEWlPVDA5yV7ijPmqwhhw==
X-Received: by 2002:a05:6a00:1485:b0:57f:c170:dc6 with SMTP id v5-20020a056a00148500b0057fc1700dc6mr30174506pfu.14.1672188210120;
        Tue, 27 Dec 2022 16:43:30 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id v65-20020a622f44000000b00575d06e53edsm9331769pfv.149.2022.12.27.16.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 16:43:29 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------zWiNL0eiIq4DAigtSIDQr2sc"
Message-ID: <bdb9b024-df35-9c12-e4fe-183bbf7dff5c@mistywest.com>
Date: Tue, 27 Dec 2022 16:43:27 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] recipe won't build, missing pseudo
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
References: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
 <W55KNR.L3PGYBANDB9M2@t-online.de>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <W55KNR.L3PGYBANDB9M2@t-online.de>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 00:43:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58878

This is a multi-part message in MIME format.
--------------zWiNL0eiIq4DAigtSIDQr2sc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/27/22 08:15, Markus Volk wrote:
> https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/phytool/phytool.bb

Hi Marcus,

Thanks for the reference. I have since found it too and just looped it 
in with:

MAGE_INSTALL_append = " phytool"

That's a lot easier but I still would like to know about the pseudo 
error I received. I think it will come back at me at one point or another.

Ron

>
> Am Mo, 26. Dez 2022 um 18:54:01 -0800 schrieb Mistyron 
> <ron.eggler@mistywest.com>:
>> Hi, I'm want to write a recipe to compile phytool but I'm getting the 
>> below error when building it with: $ bitbake -b phytool_2.0 ERROR: 
>> Failed to spawn fakeroot worker to run 
>> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install: 
>> [Errno 2] No such file or directory: 
>> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo' 
>> my bb file looks like: [phytool_2.0.bb] DESCRIPTION = "Recipe builds 
>> phytool utility" # Needs to be changed to GPLv2 LICENSE = "MIT" 
>> SRC_URI = "git://github.com/MistySOM/phytool.git" SRCREV = 
>> "8882328c08ba2efb13c049812098f1d0cb8adf0c" LIC_FILES_CHKSUM = 
>> "file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0" 
>> <file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0> INHERIT 
>> += " pseudo" python do_display_banner() {     bb.plain("some 
>> message") } addtask display_banner before do_build [/phytool_2.0.bb] 
>> It appears like my INHERIT line does not satsify the requirement. How 
>> can I resolve this?
>> -- 
>> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com 
>> <http://www.mistywest.com>
>> -=-=-=-=-=-=-=-=-=-=-=- Links: You receive all messages sent to this 
>> group. View/Reply Online (#58872): 
>> https://lists.yoctoproject.org/g/yocto/message/58872 Mute This Topic: 
>> https://lists.yoctoproject.org/mt/95898174/3618223 Group Owner: 
>> yocto+owner@lists.yoctoproject.org Unsubscribe: 
>> https://lists.yoctoproject.org/g/yocto/unsub [f_l_k@t-online.de] 
>> -=-=-=-=-=-=-=-=-=-=-=-
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------zWiNL0eiIq4DAigtSIDQr2sc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 12/27/22 08:15, Markus Volk wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:W55KNR.L3PGYBANDB9M2@t-online.de">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div id="geary-body" dir="auto">
        <div><a
href="https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/phytool/phytool.bb"
            moz-do-not-send="true" class="moz-txt-link-freetext">https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/phytool/phytool.bb</a></div>
      </div>
    </blockquote>
    <p>Hi Marcus,</p>
    <p>Thanks for the reference. I have since found it too and just
      looped it in with:</p>
    <p>MAGE_INSTALL_append = " phytool"</p>
    <p>That's a lot easier but I still would like to know about the
      pseudo error I received. I think it will come back at me at one
      point or another.</p>
    <p>Ron<br>
    </p>
    <blockquote type="cite" cite="mid:W55KNR.L3PGYBANDB9M2@t-online.de">
      <div id="geary-quote" dir="auto"><br>
        Am Mo, 26. Dez 2022 um 18:54:01 -0800 schrieb Mistyron
        <a class="moz-txt-link-rfc2396E" href="mailto:ron.eggler@mistywest.com">&lt;ron.eggler@mistywest.com&gt;</a>:<br>
        <blockquote type="cite">
          <div class="plaintext" style="white-space: break-spaces;">Hi,

I'm want to write a recipe to compile phytool but I'm getting the below error when building it with:
$ bitbake -b phytool_2.0
ERROR: Failed to spawn fakeroot worker to run /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install: [Errno 2] No such file or directory: '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo'

my bb file looks like:

[phytool_2.0.bb]
DESCRIPTION = "Recipe builds phytool utility"
# Needs to be changed to GPLv2
LICENSE = "MIT"
SRC_URI = "git://github.com/MistySOM/phytool.git"
SRCREV = "8882328c08ba2efb13c049812098f1d0cb8adf0c"
LIC_FILES_CHKSUM = "<a href="file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0" "="" moz-do-not-send="true">file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0"</a>
INHERIT += " pseudo"

python do_display_banner() {
    bb.plain("some message")
}

addtask display_banner before do_build
[/phytool_2.0.bb]

It appears like my INHERIT line does not satsify the requirement.
How can I resolve this?

<div>-- 
</div>RON EGGLER Firmware Engineer (he/him/his) <a href="http://www.mistywest.com" moz-do-not-send="true">www.mistywest.com</a>
</div>
          <div class="plaintext" style="white-space: break-spaces;">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#58872): <a href="https://lists.yoctoproject.org/g/yocto/message/58872" moz-do-not-send="true" class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/message/58872</a>
Mute This Topic: <a href="https://lists.yoctoproject.org/mt/95898174/3618223" moz-do-not-send="true" class="moz-txt-link-freetext">https://lists.yoctoproject.org/mt/95898174/3618223</a>
Group Owner: <a href="mailto:yocto+owner@lists.yoctoproject.org" moz-do-not-send="true" class="moz-txt-link-freetext">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href="https://lists.yoctoproject.org/g/yocto/unsub" moz-do-not-send="true" class="moz-txt-link-freetext">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href="mailto:f_l_k@t-online.de" moz-do-not-send="true" class="moz-txt-link-freetext">f_l_k@t-online.de</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</div>
        </blockquote>
      </div>
    </blockquote>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------zWiNL0eiIq4DAigtSIDQr2sc--

