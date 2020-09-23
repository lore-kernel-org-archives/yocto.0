Received: from 15.mo4.mail-out.ovh.net (15.mo4.mail-out.ovh.net [91.121.62.11])
 by mx.groups.io with SMTP id smtpd.web12.6631.1600840095155299562
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Sep 2020 22:48:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 91.121.62.11, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player735.ha.ovh.net (unknown [10.108.42.23])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id AB5E524D286
	for <yocto@lists.yoctoproject.org>; Wed, 23 Sep 2020 07:48:12 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player735.ha.ovh.net (Postfix) with ESMTPSA id B73E6162CCFC1;
	Wed, 23 Sep 2020 05:48:10 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G0015ca34aa8-73f6-4dbe-8d77-217b3524e38e,
                    0897AC35D414BC0FF54F436431B58D99D524B177) smtp.auth=maciej.pijanowski@3mdeb.com
Subject: Re: [yocto] bitbake recipe / Network UPS tool
To: Yocto <yocto@optimcloud.com>, yocto@lists.yoctoproject.org
References: <731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com>
 <22fba728-c053-d538-7faa-84e39c9f3206@3mdeb.com>
 <cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <e7697c2c-f867-3000-a58b-24e222b80243@3mdeb.com>
Date: Wed, 23 Sep 2020 07:48:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com>
X-Ovh-Tracer-Id: 16256868758817877510
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudehgddutddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpefhgefgieejhfejveehieeiieeuleelfefguefhveefiedvkeeuieekieeggfdugeenucffohhmrghinhepghhithhhuhgsrdgtohhmpdihohgtthhophhrohhjvggtthdrohhrghdpfehmuggvsgdrtghomhenucfkpheptddrtddrtddrtddpkeehrddvvddvrdduudejrddvvddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefhedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
Content-Type: multipart/alternative;
 boundary="------------893CD79BAAFD98AB247752DF"
Content-Language: en-US

--------------893CD79BAAFD98AB247752DF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 07.09.2020 11:58, Yocto wrote:
>
> On 9/7/20 1:23 PM, Maciej Pijanowski wrote:
>>
>> Hi,
>>
>> I happen to have this recipe lying around. I have not upstreamed it 
>> for some
>> reason (probably lack of time and I have not been using this package 
>> at the end,
>> so it is not properly tested out). I gave it a try today and at least 
>> it builds.
>>
>> Please try it out: 
>> https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c
>>
>> If it works for you, please let me know. I would be happy to push the 
>> patches upstream.
>>
> wow... much appreciated, probably just saved me a few headaches and a 
> ton of time.
>
> Ill get it onboard and configured and let you know how i make out!
>
> I was actually surprised to not find it already in the tree....
Have you got a chance to test something?
>
> Thanks
>
>
> 

-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------893CD79BAAFD98AB247752DF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 07.09.2020 11:58, Yocto wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com">
      <br>
      On 9/7/20 1:23 PM, Maciej Pijanowski wrote:
      <br>
      <blockquote type="cite">
        <br>
        Hi,
        <br>
        <br>
        I happen to have this recipe lying around. I have not upstreamed
        it for some
        <br>
        reason (probably lack of time and I have not been using this
        package at the end,
        <br>
        so it is not properly tested out). I gave it a try today and at
        least it builds.
        <br>
        <br>
        Please try it out:
<a class="moz-txt-link-freetext" href="https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c">https://github.com/3mdeb/meta-openembedded/commit/e523d0bb4bddf0ef8521804459b265c14100f83c</a><br>
        <br>
        If it works for you, please let me know. I would be happy to
        push the patches upstream.
        <br>
        <br>
      </blockquote>
      wow... much appreciated, probably just saved me a few headaches
      and a ton of time.
      <br>
      <br>
      Ill get it onboard and configured and let you know how i make out!
      <br>
      <br>
      I was actually surprised to not find it already in the tree....
      <br>
    </blockquote>
    Have you got a chance to test something?<br>
    <blockquote type="cite"
      cite="mid:cf7d62d9-b83f-f8f6-0511-e0697862ce65@optimcloud.com">
      <br>
      Thanks
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a class="moz-txt-link-freetext" href="https://3mdeb.com">https://3mdeb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------893CD79BAAFD98AB247752DF--
