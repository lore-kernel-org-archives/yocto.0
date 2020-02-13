Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web09.268.1581615708497858989
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2020 09:41:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=Rx228JZl;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.210.43, mailfrom: jpuhlman@mvista.com)
Received: by mail-ot1-f43.google.com with SMTP id 77so6386683oty.6
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2020 09:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=crTDzwH5v/Fiw8/k/7DVr6Smstlvi3WE5HUr5t8AkgY=;
        b=Rx228JZl0ENa9nnS/2Bj00JoNc4+Y6Z3iBUf6O+Rql11LXqCsldT65/TtJs+syW54a
         ExigbBhp8/6bk8MOIbO8rAG+gJpyunzkOX5LLyvf6ZQ5FozchWtPLbu2uSzSX0PePm7u
         9ARoPFKA/AWjkPIpNwfLZHnK0EJSrv/fjqtvyVWg3uCcmHRtr214BOnA00vxEmYm76gd
         nC1Pc2P+NYGTTyoiZlwxk7hCdZFVufQi9wrPil9nvxRqi24zH/pvNFNJvlwXVA4uCmp8
         Yke1C27cdcmz3+tmlWtpcW85qBBAHaJ0k1q6wv2RlR0u8adUfHK3omab9b4fhUImoRfs
         e5sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=crTDzwH5v/Fiw8/k/7DVr6Smstlvi3WE5HUr5t8AkgY=;
        b=dkXMLYlmhYKRbZ/gNx/Q76jV6z8+i83WJa+8it9/F3mgg0PzqNTVBotoskhhfkf9L9
         FBnW/ZR/A8qYugcSOiMgCcEfEhBl29u1d9+ZolsNao6VVhKFhTTQhM95hZNZtlYiYFkQ
         2Zw9qtVME8XXLfjJL7Y1LaWyERVh4tnKKZOt3NBfSkAG3dtpBEnUkr/Lbl8vO9BClHVv
         u6LqipNogNVl8C1UiXrj3dNb1DH+TEX8aBTCto+zr0axZi3vhAvTZNPf0UFQn65KHea3
         tV91Im91vnVHddlJBdflIo6UxiWYR6OOG/Z9SWbr8DRd4RXQI4thYV5BE2xVCyCKMzrA
         vy+w==
X-Gm-Message-State: APjAAAV/+UKxUC5323bJzlxpzifabZbf5Q39cmjJQsKLQrstjfnCdmm3
	3H5d2ENQzr/Xg2GL1DfF/wI/8HbK9Ag=
X-Google-Smtp-Source: APXvYqxffd2WBnMaNalRVyNfPQSXoDh8PznWCRc664lDzrsKYl0jYo4cZF3rNpxn1hWpj1N/Q/1nlg==
X-Received: by 2002:a9d:5d09:: with SMTP id b9mr7834736oti.207.1581615706815;
        Thu, 13 Feb 2020 09:41:46 -0800 (PST)
Return-Path: <jpuhlman@mvista.com>
Received: from ?IPv6:2600:1700:4c90:60a0:18f0:30d2:de29:e134? ([2600:1700:4c90:60a0:18f0:30d2:de29:e134])
        by smtp.gmail.com with ESMTPSA id g5sm1006083otp.10.2020.02.13.09.41.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2020 09:41:46 -0800 (PST)
Subject: Re: [yocto] should all "IMAGE_INSTALL +=" become "IMAGE_INSTALL_append"?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain>
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
Message-ID: <19e5bb94-18b7-2ac7-4d8d-afee04772862@mvista.com>
Date: Thu, 13 Feb 2020 09:41:21 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain>
Content-Type: multipart/alternative;
 boundary="------------33E389EF114B03DBC5746CFB"
Content-Language: en-US

--------------33E389EF114B03DBC5746CFB
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

You are referring to section 5.2.1 if I am not correct, not 3.2.1?

The context is important here. 5.2.1 is discussing using the variable as 
part of your local.conf. Which is
a different animal then adding it to an image recipe.  In local.conf you 
really need _append to for it to
even take effect, where its more correct and natural in my opinion to 
use += in bb since it provides
more flexibility to alter the recipe with out using too much magic.


On 2/13/2020 9:35 AM, rpjday@crashcourse.ca wrote:
>    again, some nitpickiness, but in the current YP dev manual, section
> 3.2.1, the manual is quite explicit about using "_append" with
> IMAGE_INSTALL:
>
> "Furthermore, you must use _append instead of the += operator if you
> want to avoid ordering issues."
>
>    the way that's worded, that's not just a recommendation, it's a
> pretty clear directive to the reader, which flies in the face of an
> admittedly small number of examples of that in current OE:
>
> $ grep -r "IMAGE_INSTALL +=" *
> meta/recipes-sato/images/core-image-sato-ptest-fast.bb:IMAGE_INSTALL += "${PTESTS_FAST}"
> meta/recipes-sato/images/core-image-sato-sdk-ptest.bb:IMAGE_INSTALL += "${PTESTS_FAST} ${PTESTS_SLOW}"
> meta/recipes-sato/images/core-image-sato-sdk.bb:IMAGE_INSTALL += "kernel-devsrc"
> meta/recipes-extended/images/core-image-testmaster.bb:IMAGE_INSTALL += "\
> meta/recipes-rt/images/core-image-rt-sdk.bb:IMAGE_INSTALL += "rt-tests hwlatdetect kernel-dev"
> meta/recipes-rt/images/core-image-rt.bb:IMAGE_INSTALL += "rt-tests hwlatdetect"
> meta/recipes-core/images/core-image-minimal-mtdutils.bb:IMAGE_INSTALL += "mtd-utils"
> meta-selftest/recipes-test/container-image/container-test-image.bb:IMAGE_INSTALL += "container-image-testpkg"
> meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb:IMAGE_INSTALL += "lib32-bash"
> $
>
>    i'm fine leaving things as is, but those few examples clearly fly in
> the face of the instruction given in the dev manual.
>
>    thoughts?
>
> rday
>
>
>
> 

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


--------------33E389EF114B03DBC5746CFB
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    You are referring to section 5.2.1 if I am not correct, not 3.2.1?<br>
    <br>
    The context is important here. 5.2.1 is discussing using the
    variable as part of your local.conf. Which is <br>
    a different animal then adding it to an image recipe.  In local.conf
    you really need _append to for it to<br>
    even take effect, where its more correct and natural in my opinion
    to use += in bb since it provides<br>
    more flexibility to alter the recipe with out using too much magic.
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/13/2020 9:35 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.2002131230260.2835172@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">
  again, some nitpickiness, but in the current YP dev manual, section
3.2.1, the manual is quite explicit about using "_append" with
IMAGE_INSTALL:

"Furthermore, you must use _append instead of the += operator if you
want to avoid ordering issues."

  the way that's worded, that's not just a recommendation, it's a
pretty clear directive to the reader, which flies in the face of an
admittedly small number of examples of that in current OE:

$ grep -r "IMAGE_INSTALL +=" *
meta/recipes-sato/images/core-image-sato-ptest-fast.bb:IMAGE_INSTALL += "${PTESTS_FAST}"
meta/recipes-sato/images/core-image-sato-sdk-ptest.bb:IMAGE_INSTALL += "${PTESTS_FAST} ${PTESTS_SLOW}"
meta/recipes-sato/images/core-image-sato-sdk.bb:IMAGE_INSTALL += "kernel-devsrc"
meta/recipes-extended/images/core-image-testmaster.bb:IMAGE_INSTALL += "\
meta/recipes-rt/images/core-image-rt-sdk.bb:IMAGE_INSTALL += "rt-tests hwlatdetect kernel-dev"
meta/recipes-rt/images/core-image-rt.bb:IMAGE_INSTALL += "rt-tests hwlatdetect"
meta/recipes-core/images/core-image-minimal-mtdutils.bb:IMAGE_INSTALL += "mtd-utils"
meta-selftest/recipes-test/container-image/container-test-image.bb:IMAGE_INSTALL += "container-image-testpkg"
meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb:IMAGE_INSTALL += "lib32-bash"
$

  i'm fine leaving things as is, but those few examples clearly fly in
the face of the instruction given in the dev manual.

  thoughts?

rday


</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jeremy A. Puhlman
<a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a>
</pre>
  </body>
</html>

--------------33E389EF114B03DBC5746CFB--
