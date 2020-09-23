Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web11.7890.1600846023268352078
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 00:27:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=JE6fmMrw;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id 7a29d9d2
	for <yocto@lists.yoctoproject.org>;
	Wed, 23 Sep 2020 09:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=GAqS1RLLuPul1WmXgmxxasTjbZ
	NIRYMXIIjThwLSBDQ=; b=JE6fmMrwWagVt6JXTeGpBAC+z516insxtTPm8KzA+8
	d9yhmT7qXOHoQEf4hE2xd+OOJ+2E8Tetf67KZNmOaPoF8lKda/Vkb3fZXvN84iLC
	OXNPIvpsINaqWoHC76N7/7XPdIy/6eSSIi1H9DgMOje0XESSxeWHDQley5Wuq1hL
	BWY1ykflmeG/+89bPRAIv3J7432mf8sXFF5O2L2Lv49Io7NkRaw3MIJkSII55oOG
	gfnAvDvKXvLUOQq6gOk2cJbKo0xO5hMse8wnLsYk9X7EVoWB9iWYXoXlDLyPDh9r
	WlsyIGdWGHKnEWEeard4EGDM59CqZ6KSVrkuc4+6Pkng==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=QRUfc6rbPt2unZ9eFL7mGH1UFlKR41cy
	Vmc0rSkbaduhKD86ZczyqtpklyM5xjH46kPK3wyE6dN7SGzE0jvetRmbdUIPwSmX
	BGCZQKFbCIyKCCoERsEjhtL0fvxKTw19dKhfGGNgw07pbVvEl8Ym9tqPEAOAVu2g
	NCge0G8oPQCbzQb9K72byfuVAzPigyTKnVfxcxhqH+XL4JxM4S3f+6ELAa+aAZQ1
	lNDZ1mNL/CoyCy2ynVhZvYyTJigLEhGPSCYzM76qmBnsrxLa7Er3mtlV0HqvR+aH
	DmuGBIJ7OhL84nBWOrBsTuInkegVkES2BgB4MBQ5o6KimfOUlnOKMg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id e8a625c3 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Wed, 23 Sep 2020 09:26:59 +0200 (CEST)
Subject: Re: [yocto] bitbake recipe / Network UPS tool
To: yocto@lists.yoctoproject.org
References: <731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com>
 <22fba728-c053-d538-7faa-84e39c9f3206@3mdeb.com>
 <cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com>
 <e7697c2c-f867-3000-a58b-24e222b80243@3mdeb.com>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <98ff18f5-1974-bba3-43c1-2ad9c831373f@optimcloud.com>
Date: Wed, 23 Sep 2020 14:26:52 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <e7697c2c-f867-3000-a58b-24e222b80243@3mdeb.com>
Content-Type: multipart/alternative;
 boundary="------------49B1F8CD78725856FF36E795"
Content-Language: en-US

--------------49B1F8CD78725856FF36E795
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 9/23/20 12:48 PM, Maciej Pijanowski wrote:
>
>
> On 07.09.2020 11:58, Yocto wrote:
>>
>> On 9/7/20 1:23 PM, Maciej Pijanowski wrote:
>>>
>>> Hi,
>>>
>>> I happen to have this recipe lying around. I have not upstreamed it 
>>> for some
>>> reason (probably lack of time and I have not been using this package 
>>> at the end,
>>> so it is not properly tested out). I gave it a try today and at 
>>> least it builds.
>>>
>>> Please try it out: 
>>> https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c
>>>
>>> If it works for you, please let me know. I would be happy to push 
>>> the patches upstream.
>>>
>> wow... much appreciated, probably just saved me a few headaches and a 
>> ton of time.
>>
>> Ill get it onboard and configured and let you know how i make out!
>>
>> I was actually surprised to not find it already in the tree....
> Have you got a chance to test something?

its  in the build we are assembling the system the past 2 days actually 
with the ups / power supply and case for prototype... testing will come 
in days when i have a functional device built i can flash it and test it 
all out


>>
>> Thanks
>>
>>
> -- 
> Maciej Pijanowski
> Embedded Systems Engineer
> GPG: 9963C36AAC3B2B46
> https://3mdeb.com  | @3mdeb_com
>
> 
>

--------------49B1F8CD78725856FF36E795
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/23/20 12:48 PM, Maciej Pijanowski
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:e7697c2c-f867-3000-a58b-24e222b80243@3mdeb.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p><br>
      </p>
      <div class="moz-cite-prefix">On 07.09.2020 11:58, Yocto wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com">
        <br>
        On 9/7/20 1:23 PM, Maciej Pijanowski wrote: <br>
        <blockquote type="cite"> <br>
          Hi, <br>
          <br>
          I happen to have this recipe lying around. I have not
          upstreamed it for some <br>
          reason (probably lack of time and I have not been using this
          package at the end, <br>
          so it is not properly tested out). I gave it a try today and
          at least it builds. <br>
          <br>
          Please try it out:
          <a class="moz-txt-link-freetext"
href="https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c"
            moz-do-not-send="true">https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c</a><br>
          <br>
          If it works for you, please let me know. I would be happy to
          push the patches upstream. <br>
          <br>
        </blockquote>
        wow... much appreciated, probably just saved me a few headaches
        and a ton of time. <br>
        <br>
        Ill get it onboard and configured and let you know how i make
        out! <br>
        <br>
        I was actually surprised to not find it already in the tree....
        <br>
      </blockquote>
      Have you got a chance to test something?<br>
    </blockquote>
    <p>its  in the build we are assembling the system the past 2 days
      actually with the ups / power supply and case for prototype...
      testing will come in days when i have a functional device built i
      can flash it and test it all out<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:e7697c2c-f867-3000-a58b-24e222b80243@3mdeb.com">
      <blockquote type="cite"
        cite="mid:cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com">
        <br>
        Thanks <br>
        <br>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
      <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class="moz-txt-link-freetext" href="https://3mdeb.com" moz-do-not-send="true">https://3mdeb.com</a> | @3mdeb_com</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------49B1F8CD78725856FF36E795--
