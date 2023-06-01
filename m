Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D56FC77B7A
	for <webhook@archiver.kernel.org>; Thu,  1 Jun 2023 18:35:08 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.525.1685644507375654266
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jun 2023 11:35:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=pR893xm6;
 spf=pass (domain: baylibre.com, ip: 209.85.219.47, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-626190df842so12111226d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 01 Jun 2023 11:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685644506; x=1688236506;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5Uupn775QmnL3nb2Iy1vFJWh4jNAqRkPY6xhIUfcuU=;
        b=pR893xm6p9ivi/e1Pynuvlo1/bjBalqaqxpj2AEQVk0VKY6TGtJbUEg6ylR4Lm9Hv0
         mUITIjBNDRFzn8dypohv2i65HD17Gm4FYIneD9MjRPTAnU280Lz9HOhPSjONcn3dKjlN
         DwtygdZ5Ukzv7hnEbab9iWgC8pOyHThd2McC8cAR5cg40DdJ7Oondas74C+1x2LlT1Ix
         cYmk3HN4LE+6LcLB+1EN3OI622duBXobA1FRoeisDlZmh/6IMktWXWFWdsWBXQuowfCf
         BwpBkzVNczDhQa3fbB9HHM/fhTaMpAsr+dqYo+EW9zxbqHLARTptPMGFm3ABXAttKNGC
         9+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685644506; x=1688236506;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k5Uupn775QmnL3nb2Iy1vFJWh4jNAqRkPY6xhIUfcuU=;
        b=CmdtSgaPls2pyADPY4+sC2Strxm8TQcVGlSWnx1EV4TEYdgKupyxmeDlR81g9P58Xo
         aLgRHM3XbtGR721JBc2ULwtzxYAB4RRJ45Xdq5d1cmULWLeghokW0VlD/++EOzFMADeq
         +wcyGHlrBaGd/5IJyOhuQIE1W1ySYOqPPzMFVVxECu+S4ACdxwH07JhdzOrNQZ6tlHpg
         ysoGVoknSg69xQam4rrznwEbqah9NlpUvGYi6HvnWn3pUjyM0m6cPhljJOBCVXqbngBR
         MuTd4JLraZDRRx5sg9G3x4ixfULsMYpBkFae3v0x9PBkKhko5rBY4wlhPHSTSD0GlTgS
         SlvA==
X-Gm-Message-State: AC+VfDxw01ABjWqeMOuFXJjQTNo8PM7Qd1RC1kuboBJNZYN9C4WpgR/w
	j7CPmxIs/voyHi8SQabyk0n9Sg==
X-Google-Smtp-Source: ACHHUZ5EnwLmxfcecMB0ZnlIE1KowpEk+1xKUnZVOPSsQ8MRG/q1tO/THJSjKwPYUGb6udNxe1MZgA==
X-Received: by 2002:ad4:5947:0:b0:621:68e8:99a4 with SMTP id eo7-20020ad45947000000b0062168e899a4mr12766065qvb.8.1685644506051;
        Thu, 01 Jun 2023 11:35:06 -0700 (PDT)
Received: from ?IPV6:2001:1970:5b1f:ab00:8d18:63b7:dd1d:3c16? ([2001:1970:5b1f:ab00:8d18:63b7:dd1d:3c16])
        by smtp.gmail.com with ESMTPSA id ne12-20020a056214424c00b00625da789003sm7608215qvb.110.2023.06.01.11.35.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 11:35:05 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------7dQD323816Oj4E0UjvOXGYlw"
Message-ID: <2c5a51be-63d1-8365-8639-5f7b96198e17@baylibre.com>
Date: Thu, 1 Jun 2023 14:35:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [yocto] Minutes: Yocto Project Weekly Triage Meeting 02/06/2023
Content-Language: en-US
To: Sakib Sajal <sakib.sajal@windriver.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
 daiane.angolini@foundries.io, "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
 luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
 Randy MacLeod <randy.macleod@windriver.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
 akuster808 <akuster808@gmail.com>, valery.chernous@gmail.com,
 Zheng Qiu <zheng.qiu@windriver.com>
References: <839deb9f-1922-fe3d-64fd-51fafed87291@windriver.com>
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <839deb9f-1922-fe3d-64fd-51fafed87291@windriver.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Jun 2023 18:35:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60160

This is a multi-part message in MIME format.
--------------7dQD323816Oj4E0UjvOXGYlw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2023-06-01 11:17, Sakib Sajal wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
> Ashfield, Joshua Watt, Trevor Gamblin, Randy Macleod, Alexandre 
> Belloni, Tim Orling, Thomas Roos, Yoann Congal, Michael Opdenacker, 
> Ryan Eatmon
>
> *ARs:**
> *
>
> - Trevor to create followup bug to 15129
>
Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=15130
>
> - Nat to look at 6986
> **
>
> *Notes:
> *
> *
> *
>
> *Medium+ 4.3 Unassigned Enhancements/Bugs: *72 (Last week 72)
>
> *Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)
>
> *AB Bugs: *70 (Last week 72) 
--------------7dQD323816Oj4E0UjvOXGYlw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2023-06-01 11:17, Sakib Sajal wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:839deb9f-1922-fe3d-64fd-51fafed87291@windriver.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext"
href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$"
            moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
          Jolley, Bruce Ashfield, Joshua Watt, Trevor Gamblin, Randy
          Macleod, Alexandre Belloni, Tim Orling, Thomas Roos, Yoann
          Congal, Michael Opdenacker, Ryan Eatmon<br>
        </p>
        <p><b>ARs:</b><b><br>
          </b></p>
        <p>- Trevor to create followup bug to 15129</p>
      </div>
    </blockquote>
    Done: <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=15130">https://bugzilla.yoctoproject.org/show_bug.cgi?id=15130</a><br>
    <blockquote type="cite"
      cite="mid:839deb9f-1922-fe3d-64fd-51fafed87291@windriver.com">
      <div class="moz-text-html" lang="x-unicode">
        <p>- Nat to look at 6986<br>
          <b> </b></p>
      </div>
      <span class="moz-txt-link-freetext"></span>
      <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode"><b><br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>72 (Last
          week 72) </p>
        <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
        week 44)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <b>AB Bugs: </b>70 (Last week 72) </blockquote>
  </body>
</html>

--------------7dQD323816Oj4E0UjvOXGYlw--

