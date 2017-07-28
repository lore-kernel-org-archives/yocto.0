Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A78F9E00D05; Thu, 27 Jul 2017 23:27:21 -0700 (PDT)
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
	*      [74.125.83.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D588E00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:27:20 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id c14so14727005pgn.0
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=tJC9sQJmvQA8ES6dTR35CGjx5KjjbN8dpAgKu8nlvs4=;
	b=QbZoKA7BOS8932lMxwMoEkso8Dkd48O0kSml4jVtYimL0Sm6inXI1bbsu2HGJXBmqD
	9ihoR3vRr2Wz6cIsgZX2csJYgOUyLRzR1iomiI3WGCQGOQlNePtRiiLqne44yyjL3eGe
	bhJcZlgU3uQ1K6Pc8kGcurwooekQFTXIBGGRiUebcH7MAJfQXKVPgaju8NNx7Iril5Mw
	0/Z+bCdA08QlZHWkqyVs9ABPZ0wfDrY7cwA3EzgrgGGYCOiS8rSjMPVQKLg9k/yTkIbu
	68yk1VtntMh9sxEb3K6ZTc++PS/lXAauJTrJ2UM4JMulHr5VMIIwtnMtHi3ZhemYwoiD
	ZaoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=tJC9sQJmvQA8ES6dTR35CGjx5KjjbN8dpAgKu8nlvs4=;
	b=EiFVdr4n6UzbeER090E47QsyX4MgjZF1BhvG5gnJI9d4mNJHKcAdH6SUFmHcyITk1a
	7sG2RurDMu3B2jki0n7wFnHtHNKRqMqgiYUE6fxo5NHztfrTPTq3w2UbuZIGKKCvqGwT
	JLW6Tab/KW+3rifgSdvLUEOvujesOcz/YaNP98w610ZtsscvsSODmBM1VtwvAArpkxVV
	6dASXWweNakTUcTHt8KvhC0MYoXYaC/mthzgY1xKn8cKsGAP7T1+3/aIpqq+qDiSKsD1
	uGHW4Nv2i8OpIhYOBMUVgxedt0YBBFPeghHuQCInvvy3i+ToOZUmMQa0wr6GJMB8LD6n
	6WDA==
X-Gm-Message-State: AIVw1102Sfjg/qXXLyjowdvq/ZPcBBe4+HGWYHMpGUw28feeYhMjVHsx
	lJqjnbkq+1zLt2Rw
X-Received: by 10.99.122.20 with SMTP id v20mr6568308pgc.342.1501223239359;
	Thu, 27 Jul 2017 23:27:19 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:941c:d6bf:3330:a31?
	([2001:8003:804a:b500:941c:d6bf:3330:a31])
	by smtp.gmail.com with ESMTPSA id
	e4sm44721558pga.71.2017.07.27.23.27.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jul 2017 23:27:18 -0700 (PDT)
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <8caab74c-84db-d95c-1dc1-4c85ac534f26@gmail.com>
	<c85b9033-3b0d-a973-d074-5f59392c18c3@rsi-elektrotechnik.de>
	<3f743f3c-abcc-2453-284a-55ebb1f3d769@gmail.com>
	<0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <63a2d5c0-521b-af69-b6f3-0771edf95851@gmail.com>
Date: Fri, 28 Jul 2017 14:27:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de>
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
X-List-Received-Date: Fri, 28 Jul 2017 06:27:21 -0000
Content-Type: multipart/alternative;
	boundary="------------388DC234B84D4BDAD1433A7A"
Content-Language: en-US

--------------388DC234B84D4BDAD1433A7A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Probably this one will help the way ?

http://manpages.ubuntu.com/manpages/xenial/man7/icecream.7.html


On 28/07/17 14:22, Josef Holzmayr wrote:
> On 28.07.2017 08:17, Riko Ho wrote:
>> icecc.bbclass  on Yocto manual, but I'm not sure on how to use it yet ?
>
> to me, the description in
>
> https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake 
>
>
> looks pretty good - for the bitbake side of things. Setting up icecc, 
> again, is distribution specific (according to themselves, see 
> https://github.com/icecc/icecream/blob/master/README.md#installation).

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------388DC234B84D4BDAD1433A7A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Probably this one will help the way ?</p>
    <p><a class="moz-txt-link-freetext" href="http://manpages.ubuntu.com/manpages/xenial/man7/icecream.7.html">http://manpages.ubuntu.com/manpages/xenial/man7/icecream.7.html</a><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 28/07/17 14:22, Josef Holzmayr
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0d539070-2944-2ea0-d847-917ae9a556f9@rsi-elektrotechnik.de">On
      28.07.2017 08:17, Riko Ho wrote:
      <br>
      <blockquote type="cite">icecc.bbclass  on Yocto manual, but I'm
        not sure on how to use it yet ?
        <br>
      </blockquote>
      <br>
      to me, the description in
      <br>
      <br>
<a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake">https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake</a>
      <br>
      <br>
      looks pretty good - for the bitbake side of things. Setting up
      icecc, again, is distribution specific (according to themselves,
      see
      <a class="moz-txt-link-freetext" href="https://github.com/icecc/icecream/blob/master/README.md#installation">https://github.com/icecc/icecream/blob/master/README.md#installation</a>).
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

--------------388DC234B84D4BDAD1433A7A--
