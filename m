Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1434C7EE25
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 16:25:09 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web11.17738.1686327899280625821
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jun 2023 09:24:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=WBZoVcE+;
 spf=pass (domain: baylibre.com, ip: 209.85.219.54, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-62b69b95a33so13709676d6.0
        for <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 09:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686327898; x=1688919898;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WmRDqgDmJ2u2ACmPn6kHozkI8jLRyWLkIiiuXjkDtqQ=;
        b=WBZoVcE+Oq+o8LvBpP+O+D8gjT9YWlZ0m/gmZwJSIKmSrd6luevaqEYw14KQ/Wzxxf
         2e+/lKIvj44CA+jtMPrxtRIJu+yOaDFR0UL7Pg/6SxzmFFJQb8rzGxtEAYILdL8X2Hyp
         gsJpY8rOe5hwyA2JeP6r8BTlpYSHGPerPpIX974ecHMkmM0BkK5xhtXDIRGC9nIksXSi
         c7Z5f3RjJCPhKLj7Tlk8Qt8nTaQjlzxCf7dZw7pAntMIxVy4wYld283viV4mzPDQT1mw
         FthpfZZXex0CJjnfDUb9mM4Tdjto0V2mwoTs16J7BEMEKoEwYZ7RZJk1iKDolzw1Vc52
         gO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686327898; x=1688919898;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WmRDqgDmJ2u2ACmPn6kHozkI8jLRyWLkIiiuXjkDtqQ=;
        b=S2swDW3dkVjADtsSGv87vby7f1cVMzH8EHgZ3ju5r1JDu2nA3zMQr1TGo4ms4aLl4K
         xNHrc2fQ0zJkvx33ZIxkUCqtBgvpM70xhxWI3bfvsZVsCaXxgNRT6sc6PbzDIfVrwU76
         2Xd9ZK5laE7Q4IbA83KYRt89WYg8vBXtVc8dVMMmTiNEYogg2BUQaXGLnPZo7Yagvx2p
         mlfsDMDAzUO634u7vZ84wbTXzTbhdriQbKz81F/J7X/svPQvoiCxEF9GrBEDpNG438P3
         BXDI2/sgAW1ts1e2Sw0boAaTStGzRIuFitDlLTC1nV7b/NWGtGAyalLAy4DfwPWXB1un
         dQvQ==
X-Gm-Message-State: AC+VfDynCf9ufn5j4i+vejyyD2+mJUR9MEh05V91oiJVBD+LTGdtnrgl
	6PydVhtjybxqHzjrfXaGT/RplA==
X-Google-Smtp-Source: ACHHUZ6UswHIMfT+/R0VKylOOVPUMBoiYPxj97fCFpLjK9iyLMRpHtboKTyOtnM+LL9Vq0wWreuqMQ==
X-Received: by 2002:a05:6214:62e:b0:625:aa48:fb75 with SMTP id a14-20020a056214062e00b00625aa48fb75mr1859007qvx.63.1686327897849;
        Fri, 09 Jun 2023 09:24:57 -0700 (PDT)
Received: from ?IPV6:2001:1970:5b1f:ab00:d875:6297:4e81:e577? ([2001:1970:5b1f:ab00:d875:6297:4e81:e577])
        by smtp.gmail.com with ESMTPSA id q14-20020a0cf5ce000000b005dd8b9345b9sm1251205qvm.81.2023.06.09.09.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 09:24:57 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------cpwKpkqbNyqb0v9hj1iZHZLU"
Message-ID: <3e376dc9-eba2-349e-79ae-f364b7acdcc9@baylibre.com>
Date: Fri, 9 Jun 2023 12:24:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] Snort 2.9 into Snort 3 recipe
Content-Language: en-US
To: Rostanin Gleb SBR DIRCS <gleb.rostanin@zf.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <DB6PR0801MB178439F9D29338400F8910349951A@DB6PR0801MB1784.eurprd08.prod.outlook.com>
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <DB6PR0801MB178439F9D29338400F8910349951A@DB6PR0801MB1784.eurprd08.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 16:25:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60240

This is a multi-part message in MIME format.
--------------cpwKpkqbNyqb0v9hj1iZHZLU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2023-06-09 10:05, Rostanin Gleb SBR DIRCS wrote:
>
> Hello OpenEmbedded Community,
>
> currently I am working on implementing the Snort IDS on an embedded 
> system with the Yocto Linux OS. As OpenEmbedded already provides a 
> recipe for Snort 2.9 it is easy to install snort into the OS. 
> Unfortunately, it is not easy to change the recipe so that the new 
> Snort 3 version is installed. I tried to change the git repo link and 
> the checksum (as a simple solution try), but unfortunately, I ran into 
> multiple errors, and I am not sure at which point I need to make 
> further changes. As I could understand, also a few changes to the 
> source code of Snort must be done to make it work on the Yocto OS.
>
> Was someone already successful in implementing a recipe to install the 
> newer Snort 3 version directly on Yocto? What do I have to change in 
> the Snort 2.9 recipe to install the Snort 3 version?
>
The errors you're seeing when you try to build Snort 3 should provide a 
clue. If you post those, someone may be able to provide further suggestions.

Trevor

> Of course, another solution could be cross compiling Snort for the 
> embedded system, but maybe there is already a solution for this.
>
> I happy about any help or comment on this topic!
>
> Kind regards
>
> G. Rostanin
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60239):https://lists.yoctoproject.org/g/yocto/message/60239
> Mute This Topic:https://lists.yoctoproject.org/mt/99428914/7611679
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [tgamblin@baylibre.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
--------------cpwKpkqbNyqb0v9hj1iZHZLU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2023-06-09 10:05, Rostanin Gleb SBR
      DIRCS wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:DB6PR0801MB178439F9D29338400F8910349951A@DB6PR0801MB1784.eurprd08.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:6.0pt;
	margin-left:0cm;
	font-size:10.5pt;
	font-family:"Tahoma",sans-serif;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Tahoma",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.5pt;
	font-family:"Tahoma",sans-serif;
	mso-fareast-language:EN-US;}.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:6.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">Hello
            OpenEmbedded Community,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">currently
            I am working on implementing the Snort IDS on an embedded
            system with the Yocto Linux OS. As OpenEmbedded already
            provides a recipe for Snort 2.9 it is easy to install snort
            into the OS. Unfortunately, it is not easy to change the
            recipe so that the new Snort 3 version is installed. I tried
            to change the git repo link and the checksum (as a simple
            solution try), but unfortunately, I ran into multiple
            errors, and I am not sure at which point I need to make
            further changes. As I could understand, also a few changes
            to the source code of Snort must be done to make it work on
            the Yocto OS.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">Was
            someone already successful in implementing a recipe to
            install the newer Snort 3 version directly on Yocto? What do
            I have to change in the Snort 2.9 recipe to install the
            Snort 3 version?</span></p>
      </div>
    </blockquote>
    <p>The errors you're seeing when you try to build Snort 3 should
      provide a clue. If you post those, someone may be able to provide
      further suggestions.</p>
    <p>Trevor<br>
    </p>
    <blockquote type="cite"
cite="mid:DB6PR0801MB178439F9D29338400F8910349951A@DB6PR0801MB1784.eurprd08.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">Of
            course, another solution could be cross compiling Snort for
            the embedded system, but maybe there is already a solution
            for this.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">I
            happy about any help or comment on this topic!<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">Kind
            regards<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">G.
            Rostanin</span><span style="font-size:11.0pt" lang="EN-US"><o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#60239): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/60239">https://lists.yoctoproject.org/g/yocto/message/60239</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/99428914/7611679">https://lists.yoctoproject.org/mt/99428914/7611679</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------cpwKpkqbNyqb0v9hj1iZHZLU--

