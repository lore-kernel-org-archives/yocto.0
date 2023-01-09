Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E8EC5479D
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 10:54:37 +0000 (UTC)
Received: from radex-web.radex.nl (radex-web.radex.nl [178.250.146.7])
 by mx.groups.io with SMTP id smtpd.web10.68662.1673261669138783533
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 02:54:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 178.250.146.7, mailfrom: fntoth@gmail.com)
Received: from [192.168.1.35] (cust-178-250-146-69.breedbanddelft.nl [178.250.146.69])
	by radex-web.radex.nl (Postfix) with ESMTPS id 243E324050;
	Mon,  9 Jan 2023 11:54:28 +0100 (CET)
Content-Type: multipart/alternative;
 boundary="------------knvBEIoEBYKo8F9oVg4dN5CP"
Message-ID: <6a074c58-21d2-422b-c94f-e05a3669c692@gmail.com>
Date: Mon, 9 Jan 2023 11:54:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] bitbake controlling memory use
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Janne Kiiskila <janne.kiiskila@izumanetworks.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 trevor.gamblin@windriver.com, martin.jansa@gmail.com
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
 <f34730a2-c775-8e9c-dd36-9282e9cff08d@gmail.com>
 <1736D5DCC66BC3DE.4716@lists.yoctoproject.org>
 <CANNYZj_8C0sZA07y86ErjC8kL02oTPFahEV8Tsq9yfVWmxz-HA@mail.gmail.com>
 <39f7bf75-2df1-696b-f374-b0ce70e9092c@gmail.com>
 <CANNYZj-MhN3ruV4KtXKtD+qRkn82i4rtcuK=rMjOWkLn96Rjyg@mail.gmail.com>
 <033d7443-7da9-38e8-ef36-2a87cad5ff8d@gmail.com>
 <CANNYZj9wACHywe6CVpzv9Ty6XV-QVSu6J4zrr5RqD+10cFuK7w@mail.gmail.com>
 <1727d025c543dc13f0d067e072ade145c98c65f5.camel@linuxfoundation.org>
From: Ferry Toth <fntoth@gmail.com>
In-Reply-To: <1727d025c543dc13f0d067e072ade145c98c65f5.camel@linuxfoundation.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 10:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58945

This is a multi-part message in MIME format.
--------------knvBEIoEBYKo8F9oVg4dN5CP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

On 09-01-2023 11:43, Richard Purdie wrote:
> On Mon, 2023-01-09 at 11:39 +0100, Alexander Kanavin wrote:
>> On Sun, 8 Jan 2023 at 23:13, Ferry Toth<fntoth@gmail.com>  wrote:
>>
>>> Now it works I'm not sure what to do. Richard marked the original patch
>>> as WIP. Maybe it's not appropriate for including into poky? If so I
>>> wouldn't mind carrying it in meta-intel-edison.
>>>
>>> Or may be with a little work (from me) and a run on the CI servers we
>>> could make it go in?
>> I'd rather teach make/ninja upstream to watch memory consumption
>> and/or host pressure directly (e.g. similar to how it handles -l). And
>> offer any resulting patches to upstream first.
> Whilst teaching make/ninja about pressure is probably a nice idea, I
> think there is a use case for sharing the job pool between bitbake
> tasks rather than having a job pool per task since that scales badly.
>
> One issue that comes to mind with the patch is that it is currently
> writing into /tmp/ and we likely need to work out a better location for
> the job server fifo. Currently that would break things on the
> autobuilder as there are multiple builds on a given host.

Ha, I didn't consider multiple bitbakes running simultaneously.

Maybe the location /tmp is fine but we would need a unique (random?) 
filename instead of makefifo?

> Cheers,
>
> Richard
>
>
--------------knvBEIoEBYKo8F9oVg4dN5CP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font face="Noto Sans">Hi</font><br>
    </p>
    <div class="moz-cite-prefix">On 09-01-2023 11:43, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:1727d025c543dc13f0d067e072ade145c98c65f5.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">On Mon, 2023-01-09 at 11:39 +0100, Alexander Kanavin wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Sun, 8 Jan 2023 at 23:13, Ferry Toth <a class="moz-txt-link-rfc2396E" href="mailto:fntoth@gmail.com">&lt;fntoth@gmail.com&gt;</a> wrote:

</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">Now it works I'm not sure what to do. Richard marked the original patch
as WIP. Maybe it's not appropriate for including into poky? If so I
wouldn't mind carrying it in meta-intel-edison.

Or may be with a little work (from me) and a run on the CI servers we
could make it go in?
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
I'd rather teach make/ninja upstream to watch memory consumption
and/or host pressure directly (e.g. similar to how it handles -l). And
offer any resulting patches to upstream first.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Whilst teaching make/ninja about pressure is probably a nice idea, I
think there is a use case for sharing the job pool between bitbake
tasks rather than having a job pool per task since that scales badly.

One issue that comes to mind with the patch is that it is currently
writing into /tmp/ and we likely need to work out a better location for
the job server fifo. Currently that would break things on the
autobuilder as there are multiple builds on a given host.
</pre>
    </blockquote>
    <p>Ha, I didn't consider multiple bitbakes running simultaneously.</p>
    <p>Maybe the location /tmp is fine but we would need a unique
      (random?) filename instead of makefifo?<br>
    </p>
    <blockquote type="cite"
cite="mid:1727d025c543dc13f0d067e072ade145c98c65f5.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">
Cheers,

Richard


</pre>
    </blockquote>
  </body>
</html>

--------------knvBEIoEBYKo8F9oVg4dN5CP--

