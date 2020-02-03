Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.220.1580746611445861703
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 08:16:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CR6GOqmJ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09D5BE016A1; Mon,  3 Feb 2020 08:16:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06BAEE016A0
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 08:16:49 -0800 (PST)
Received: by mail-pl1-f170.google.com with SMTP id g6so6049606plt.2
        for <yocto@yoctoproject.org>; Mon, 03 Feb 2020 08:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=2xVs1lFWqP57Gd0eAqKQaIsF2CqzzTKQxmqdObvtIZM=;
        b=CR6GOqmJd1ATmkB1PUsJGnsgBIhyGqi1ljPQpWzNB1c6WtziO7nlz2HO9oZ1OOOdLe
         5oqGIgB1/q9lphMWGj6eALT6rdI9Eggpt4VYcvm8Q7zMFQi6H6bnxrLlGdfbnYjPb68X
         vhuHxghDT9MnfFsXY8CmUwUnDUaJtrh3e7Aj7pfmtjlQ2vKHvISjNY/8kFMp6gvi+sSD
         Bullv5UXua5SMkYC72Wl6BkpUyk+fkxEBLohcRMd05Gd4jVUtzjy8auoXUU/ZBUf1TsF
         KcW7w4nBnD3ZEEagP8I0qylQSRUK8m3H2tQO5YtAuzuyMx+ikJk1PInziNE66W6VH2pP
         dGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=2xVs1lFWqP57Gd0eAqKQaIsF2CqzzTKQxmqdObvtIZM=;
        b=VxMEMpkDlPcuJ6071uuH3mf9xz5DWCGAjClgTqBDFjJcT57EOrinKOEB44b8ETPQDe
         8jWub3NdRnVizhTgI9VpHuxKa/5zQpMIxL2IS0ay4bXNBtG0mX74Y5OojKezQCc0/0/S
         M+xZenRUpBsJILDElw+BW6x91KNigo/tN+96TyIoMHCFvggloYr5JOjwVEkMf5ity+gf
         si9V2Qt52f1iW+oBnyT7lUzzpws3qOZ1vxGlf44EiNBiJL403hUXdZLq9BJV36nUutjk
         G2lhaZp9ebnbnixBp7L8tBkHD73xPhYS6kdBLQ4gRCcQ/MdVTfkmzvhxheGn+Wd8GdHV
         fj6Q==
X-Gm-Message-State: APjAAAWBFF1iL8v2DBxKHnAFu+nFpAA9KoYbgSDU03QlNfA3YSicMTgs
	+/fMI5BEruXyP0f/s1/rdP/1qlAt
X-Google-Smtp-Source: APXvYqzFDKcJv2+FywwZIA8sweQFByjWPKF2rBHagyu9twVGhn6xt2uuxSPQraLXh/IMiSHhWRFq9g==
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr31174785pjn.59.1580746609301;
        Mon, 03 Feb 2020 08:16:49 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0::afc? ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id g72sm19061045pfb.11.2020.02.03.08.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 08:16:48 -0800 (PST)
Subject: Re: [yocto] Yocto Project Status WW04'20
To: Philip Balister <philip@balister.org>, Adrian Bunk <bunk@stusta.de>,
 Stephen Jolley <sjolley.yp.pm@gmail.com>
Cc: yocto@yoctoproject.org
References: <086201d5d5f4$307b2150$917163f0$@gmail.com>
 <20200202132840.GA6805@localhost>
 <e951c71c-1fa3-faa7-80af-27c965210161@balister.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <5b2ce739-c2f3-acad-24c2-797a4b63e6c4@gmail.com>
Date: Mon, 3 Feb 2020 08:16:47 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <e951c71c-1fa3-faa7-80af-27c965210161@balister.org>
Content-Type: multipart/alternative;
 boundary="------------B07BCBE9D4624D153E8B336E"
Content-Language: en-US

--------------B07BCBE9D4624D153E8B336E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 2/2/20 10:18 AM, Philip Balister wrote:
> On 2/2/20 2:28 PM, Adrian Bunk wrote:
>> On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
>>> ...
>>> *	We have created a "documentation" list and a "licensing" list on the
>>> yocto project mailing list infrastructure. We believe these topics would
>>> benefit from dedicated discussions, the people involved usually aren't
>>> interested in bulk email as would be found on other lists. The new lists can
>>> be found at:  <https://lists.yoctoproject.org/g/licensing/join>
>>> https://lists.yoctoproject.org/g/licensing/join and
>>> <https://lists.yoctoproject.org/g/docs/join>
>>> https://lists.yoctoproject.org/g/docs/join 
>>> ...
>> Would it be possible to also create a yocto-devel or yocto-core
>> mailing list for discussing development of Yocto?
>>
>> Currently the yocto list is a mixture of core development list and forum 
>> for newbie user questions, with no easy way to have them separate.
> We have openembedded-architecture for this.
>
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture

Also openembedded-core
>
> Philip
>
>> Thanks
>> Adrian
>>
>>
>>
>>
>>
>> 


--------------B07BCBE9D4624D153E8B336E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/2/20 10:18 AM, Philip Balister
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:e951c71c-1fa3-faa7-80af-27c965210161@balister.org">
      <pre class="moz-quote-pre" wrap="">On 2/2/20 2:28 PM, Adrian Bunk wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">On Tue, Jan 28, 2020 at 08:01:23AM -0800, Stephen Jolley wrote:
</pre>
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">...
*	We have created a "documentation" list and a "licensing" list on the
yocto project mailing list infrastructure. We believe these topics would
benefit from dedicated discussions, the people involved usually aren't
interested in bulk email as would be found on other lists. The new lists can
be found at:  <a class="moz-txt-link-rfc2396E" href="https://lists.yoctoproject.org/g/licensing/join">&lt;https://lists.yoctoproject.org/g/licensing/join&gt;</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/licensing/join">https://lists.yoctoproject.org/g/licensing/join</a> and
<a class="moz-txt-link-rfc2396E" href="https://lists.yoctoproject.org/g/docs/join">&lt;https://lists.yoctoproject.org/g/docs/join&gt;</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/docs/join">https://lists.yoctoproject.org/g/docs/join</a> 
...
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Would it be possible to also create a yocto-devel or yocto-core
mailing list for discussing development of Yocto?

Currently the yocto list is a mixture of core development list and forum 
for newbie user questions, with no easy way to have them separate.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
We have openembedded-architecture for this.

<a class="moz-txt-link-freetext" href="http://lists.openembedded.org/mailman/listinfo/openembedded-architecture">http://lists.openembedded.org/mailman/listinfo/openembedded-architecture</a></pre>
    </blockquote>
    <br>
    Also openembedded-core<br>
    <blockquote type="cite"
      cite="mid:e951c71c-1fa3-faa7-80af-27c965210161@balister.org">
      <pre class="moz-quote-pre" wrap="">

Philip

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Thanks
Adrian




</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------B07BCBE9D4624D153E8B336E--
