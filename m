Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F96AE00D05; Thu, 27 Jul 2017 23:17:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5734FE00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:17:17 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id k72so16543661pfj.0
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=s6wYTdsnSo26LiQuY1ztfFEi7z/Ee7YUClKAvDw3XLQ=;
	b=SxCkONMG7rAX7Cg6XYKHNzPCjyga5UdvxigbtEN7q+BU9p2ZF6ULXzGhbzoi8Sy8fR
	8ecC8PWIWpjFUBTMKdS+qwnY8BdUmVTA7q1AlKqHXV1IdxOQ5ubz09QAW7LsnVL2FgYT
	ZZXkJ7vSOQs+yxNsg1uIzqorSJqDugtSaSV5dzs4IFP9NfflYcH4y/NuUTAAlE1E3wwr
	faIyys2ie5p/CI7muszFd2SQEbEpeSxj7U8XAMIea8x2KdYUrAmwGpib9NuZTkmFUVn0
	+KeZqkYQANcD7DP7kz/V8p885gWb0ghxw6E1TrBI5FTNgL6MUfj4eB6WWHzvbd2p0bJx
	s8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=s6wYTdsnSo26LiQuY1ztfFEi7z/Ee7YUClKAvDw3XLQ=;
	b=QEa71wyp+3ZQWuheOzEir4PyLm0dwYRJ4oqfGybclT+VIvX04G9wS0NlnmvSgVfHU5
	UAxx+SQVwKbIo5mh0GVMLIQRNDgRSsfeAQSHVGZnrsesoKsjdg/4tZVYUBhg99KlYgy8
	SUDvlzFWul/lHoZT22yaicZkEEmRNWGkG5UVQNOoqF0vBcQCM+BtH7lfTOTtxnD4vC5Y
	L0kc+reS4d/jYN0mHpkdfPRYs/YIYHzxgCXDM8YmlUY+GmgupJBRflB5lWt8i2lRTGHp
	VQ1x2qUTO3hUzy7fTf2/lG4fZL7kMlmZR/5QvDmeLI5PEiRDXaYfOU00+/tDSz9FUUu7
	vAsg==
X-Gm-Message-State: AIVw111WryKga/lmP/2Qo1egGv1QtwTNKWcOks3oDkUKUwfd1dgiO+Q8
	t10OeGif3vsMm6zJ
X-Received: by 10.84.210.130 with SMTP id a2mr6836224pli.301.1501222636419;
	Thu, 27 Jul 2017 23:17:16 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:941c:d6bf:3330:a31?
	([2001:8003:804a:b500:941c:d6bf:3330:a31])
	by smtp.gmail.com with ESMTPSA id
	d127sm36307989pfa.171.2017.07.27.23.17.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jul 2017 23:17:15 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
Date: Fri, 28 Jul 2017 14:17:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
Subject: Re: Icecc configuration on mpich ?
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
X-List-Received-Date: Fri, 28 Jul 2017 06:17:17 -0000
Content-Type: multipart/alternative;
	boundary="------------2CE8C93A0CC1822C68B20CA4"
Content-Language: en-US

--------------2CE8C93A0CC1822C68B20CA4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

Yes, I'm confuse about those,

And reading about Icecc now.

Icecc is the right way for distributing compilation for my bitbake, 
correct me ?

I read about :

26.50.
icecc.bbclass  on Yocto manual, but I'm not sure on how to use it yet ?

Thanks


On 28/07/17 14:13, Josef Holzmayr wrote:
> On 28.07.2017 07:56, Riko Ho wrote:
>> How can I port it to MPICH ?
>
> Easy, just do a complete rewrite of the compiler infrastructure :-)
>
> Or did you actually mean "how can I install" instead of "how can I 
> port"? In that case, the answer is "Not at all."
>
> Seriously, icecc/distcc have absolutely nothing to do with mpich(or 
> any other comparable mpi/hpc framework). You are mixing up an awful 
> lot of buzzwords, what is running where and doing what.
>
> If you want to speed up bitbake by using multiple boxes, icecc is your 
> choice. Follow its own installation procedures for getting started.
>
> mpich seems to be a framwork/infrastructure for hpc applications, 
> which is something completely different.
>
> And generally, all this shbang is not worth the effort. Are you really 
> running multiple hours of builds per day? Would shaving off a couple 
> of percent from the compilation provide any gain? Mind, its only the 
> compilation that can be distributed. Not the whole rest that actually 
> makes up the magic of a bitbake build.
>
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------2CE8C93A0CC1822C68B20CA4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>Yes, I'm confuse about those,</p>
    <p>And reading about Icecc now.</p>
    <p>Icecc is the right way for distributing compilation for my
      bitbake, correct me ?</p>
    <p>I read about :</p>
    <p>26.50.<br>
      icecc.bbclass  on Yocto manual, but I'm not sure on how to use it
      yet ?</p>
    <p>Thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 28/07/17 14:13, Josef Holzmayr
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de">On
      28.07.2017 07:56, Riko Ho wrote:
      <br>
      <blockquote type="cite">How can I port it to MPICH ?
        <br>
      </blockquote>
      <br>
      Easy, just do a complete rewrite of the compiler infrastructure
      :-)
      <br>
      <br>
      Or did you actually mean "how can I install" instead of "how can I
      port"? In that case, the answer is "Not at all."
      <br>
      <br>
      Seriously, icecc/distcc have absolutely nothing to do with
      mpich(or any other comparable mpi/hpc framework). You are mixing
      up an awful lot of buzzwords, what is running where and doing
      what.
      <br>
      <br>
      If you want to speed up bitbake by using multiple boxes, icecc is
      your choice. Follow its own installation procedures for getting
      started.
      <br>
      <br>
      mpich seems to be a framwork/infrastructure for hpc applications,
      which is something completely different.
      <br>
      <br>
      And generally, all this shbang is not worth the effort. Are you
      really running multiple hours of builds per day? Would shaving off
      a couple of percent from the compilation provide any gain? Mind,
      its only the compilation that can be distributed. Not the whole
      rest that actually makes up the magic of a bitbake build.
      <br>
      <br>
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------2CE8C93A0CC1822C68B20CA4--
