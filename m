Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96EB3E00B97; Thu, 15 Jun 2017 00:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56029E00B77
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 00:16:20 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id i93so972482iod.3
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 00:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=NFL8C1aX2/oncmxxi6sDA+G9tKjr+th7E0AcdUpsnLY=;
	b=Ds8bdwHb7Of776VIt0ZXeVCg8Rn/k5EWOIA1xldNpa1XHldsTBqBMDjfNvUJsRUvMx
	uHXcqf/lk/eeZ/GH+G0gd6vpAUoSOEwi6iQQgv7XsZod99bM6SeUM8p+dFGqtdX63sIf
	iMGepKibFa7jt+qoo5dFB46T/wjSWNrDie+7/guFaJTYN5jecAMQC4069UI4XBKY9Y1A
	Lmu+asdIu5+BL6Vgmfz8PA5VJS4oGoYa3DZi9AoClClOK/JDFtAImF9zy3zN8ttjMeri
	vqsHYa4ptLvC25inrtclP3woDhXqk43+3jGy6gQ/2FGpC4TnSR/FXw6k774okHoaYKQe
	n3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=NFL8C1aX2/oncmxxi6sDA+G9tKjr+th7E0AcdUpsnLY=;
	b=sYI9cx3q2isc19ewhxsA/L4PPpk//7H1dlY8eZADiygVDjmccoIDa2O9XTsNalNF/o
	jbtIDh8qMMbhPx8rpDSJCDibzn9lG495GYBk5TO+FVzD/EUIOpUeOOsQN0FFazDwK3Nu
	TvPHMnrapNk05JiqBMhgIXLhrRIGVokwZ7P04xvMqPwc2jo2J59yEMzVyl+QMEFWH2tY
	0RpFAVEynZ3WsL/ZvS/ufi+6Z+NQuMxdWxEEDNO/UuQjbyA2d9SfIodw9Fr/j3mokIJ/
	8LHRrxkfG2PIQ6SDX1FVkw2ZKMcuiVRT0sIwKSCbpv2kNBbWepilpclYQ3mWDAZotTfL
	eLXQ==
X-Gm-Message-State: AKS2vOx9lep/aVYgRAfZ4YwJh87YfFIPsPeuSInaIYQCb24ttFs3qJY7
	o+v0Tcg1dVr+Ng/F
X-Received: by 10.107.156.140 with SMTP id f134mr3976916ioe.9.1497510980083;
	Thu, 15 Jun 2017 00:16:20 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	l12sm1286969ioi.42.2017.06.15.00.16.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jun 2017 00:16:19 -0700 (PDT)
To: Belisko Marek <marek.belisko@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <76df90fd-64ea-9dd3-80f5-b90da3871397@gmail.com>
Date: Thu, 15 Jun 2017 15:16:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FriendlyArm Mini6410 ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Jun 2017 07:16:24 -0000
Content-Type: multipart/alternative;
	boundary="------------F91F6A716D516CD06AFDE521"
Content-Language: en-US

--------------F91F6A716D516CD06AFDE521
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Everyone,

Is it possible that I only change the kernel config to support this CPU

S3C6410 ? or I'm gonna need something else ?

bitbake linux-yocto -c menuconfig ?

It's ARM1176JZF-S based CPU

Thanks


On 15/06/17 14:05, Belisko Marek wrote:
> Hi Riko,
>
> On Thu, Jun 15, 2017 at 7:53 AM, Riko Ho <antonius.riko@gmail.com> wrote:
>> Hello Everyone,
>>
>> I want to use Yocto for my FriendlyArm Mini6410,
>> Where should I begin to start ?
> Please read following thread:
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/020009.html
>> Thanks
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> BR,
>
> marek
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------F91F6A716D516CD06AFDE521
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Everyone,</p>
    <p>Is it possible that I only change the kernel config to support
      this CPU</p>
    <p>S3C6410 ? or I'm gonna need something else ?</p>
    <p>bitbake linux-yocto -c menuconfig ?</p>
    <p>It's ARM1176JZF-S based CPU</p>
    <p>Thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 15/06/17 14:05, Belisko Marek wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com">
      <pre wrap="">Hi Riko,

On Thu, Jun 15, 2017 at 7:53 AM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello Everyone,

I want to use Yocto for my FriendlyArm Mini6410,
Where should I begin to start ?
</pre>
      </blockquote>
      <pre wrap="">Please read following thread:
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/pipermail/yocto/2014-June/020009.html">https://lists.yoctoproject.org/pipermail/yocto/2014-June/020009.html</a>
</pre>
      <blockquote type="cite">
        <pre wrap="">
Thanks
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap="">
BR,

marek

</pre>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          谢谢,<br>
          Regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------F91F6A716D516CD06AFDE521--
