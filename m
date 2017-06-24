Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43A86E00BD6; Fri, 23 Jun 2017 21:52:50 -0700 (PDT)
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
	*      [74.125.83.53 listed in list.dnswl.org]
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0519AE00B28
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 21:52:46 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id e187so28676692pgc.1
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 21:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=kCe1FJLEBUBcEFiD3nNNVhSYUmKyT0H9HFZv9mDcMJY=;
	b=tGnqfQms0bf9X11X4tbDmlJAfy8MNriDhucywGIQCMpW51aYBK/AqXmVF6F7I+l0+z
	dFJpa42L5eLSQN55pmUQrNB/ssgco6LPsO3znV+CZ+PWwLRANvXId6liqjoJxcp8j3wg
	P/FUcbbTkHjU4cYnCZod82P319jrfl5/g7M1cUaVkm8EN+EW9I+0vYLNTn5Q5vM+wEBN
	86AsqnuFVCEFt2mIUwlUAb0A7wRIgwcq8AAsHH2cIMO874gdlYdFXQcBbi3BQ4/uAawb
	SMsSky7f7KsLbcs8zFhYNR+n8cfqbHzeDU/Xia6YuAZMxBz1JEqcNjD9rlk9/tMw3Rv/
	5oYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=kCe1FJLEBUBcEFiD3nNNVhSYUmKyT0H9HFZv9mDcMJY=;
	b=guVGdDXYNC9gvr+D7X5vVHj2O+eh1bLwjKiSkuI6s+ubnCdtgxTPGbrTm+pMiJhG6I
	HNO4hNdCNOFAP/0q+gg6Bd31zVfXNoKVed/NrkNxoLzwKc5NishQszgsLFwo+Ud3hAvp
	s6+7ZvlNfCZBRkuKwwTisIuOEshsNq7S7fa9/8visCtpKRpQCxNVO3z5NPvfTRkjqnMY
	PFcd1En5RWah2A86j8TQMTrb9c8kLg+W5zkdLtnQSDK5pqHZqdmmbgnWZ1XzlkkDyh2M
	aX2CGXWEG9JClib0CUONZERjsF9oJnk9PbKVSFEkA8tGEjjjnkoQpmLTqnLSh28XvnLx
	G0nA==
X-Gm-Message-State: AKS2vOzg7X+gUnZ8yFDCPmYwDKOiD7xn8hoR2t68bj56YCz75XPQyqzn
	gP6C6QveiBo/rU+x
X-Received: by 10.98.178.19 with SMTP id x19mr11581963pfe.74.1498279966104;
	Fri, 23 Jun 2017 21:52:46 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77]) by smtp.gmail.com with ESMTPSA id
	c10sm11419082pfl.81.2017.06.23.21.52.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 21:52:45 -0700 (PDT)
To: Gunnar Andersson <gandersson@genivi.org>, Khem Raj <raj.khem@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
	<CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
	<61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
	<CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com>
	<8525501f-954a-8799-957c-f68efc4d7d5b@gmail.com>
	<1498030640.8095.27.camel@genivi.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <3f92769b-a9c2-1f75-5e16-14fc97499dcc@gmail.com>
Date: Sat, 24 Jun 2017 12:52:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <1498030640.8095.27.camel@genivi.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Sat, 24 Jun 2017 04:52:50 -0000
Content-Type: multipart/alternative;
	boundary="------------E94EFE178CF65E84DCB9C5EA"
Content-Language: en-US

--------------E94EFE178CF65E84DCB9C5EA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

it can be compiled and image can be written to the board but chromium 
got error :

/usr/bin/chromium/chrome: error while loading shared libraries: 
libaccessibility.so: cannot open shared object file: No such file or 
directory

What do I miss here on compiling ? could it be a not complete library on 
my configuration ? any clues ?

thanks


On 21/06/17 15:37, Gunnar Andersson wrote:
> On Wed, 2017-06-21 at 12:42 +0800, Riko Ho wrote:
>> did I put it wrongly ?
> ...
>> browser/chromium/chromium_54.0.2810.2.bb:7: unparsed line:
>> 'EXTRA_OEGYP_prepend = " -Dcomponent=shared_library
> Maybe your line break did not use a backslash?  It was lost, or just
> assumed, in Khem's example.
>
> See recipe syntax in Yocto manual [1].  Look for the item "Line
> continuation".
>
> HTH
> - Gunnar
>
> [1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#un
> derstanding-recipe-syntax
>
> -- 
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
>
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

--------------E94EFE178CF65E84DCB9C5EA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>it can be compiled and image can be written to the board but
      chromium got error :</p>
    <p>/usr/bin/chromium/chrome: error while loading shared libraries:
      libaccessibility.so: cannot open shared object file: No such file
      or directory<br>
      <br>
      What do I miss here on compiling ? could it be a not complete
      library on my configuration ? any clues ?</p>
    <p>thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 21/06/17 15:37, Gunnar Andersson
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1498030640.8095.27.camel@genivi.org">
      <pre wrap="">On Wed, 2017-06-21 at 12:42 +0800, Riko Ho wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">did I put it wrongly ?
</pre>
      </blockquote>
      <pre wrap="">...
</pre>
      <blockquote type="cite">
        <pre wrap="">browser/chromium/chromium_54.0.2810.2.bb:7: unparsed line:
'EXTRA_OEGYP_prepend = " -Dcomponent=shared_library
</pre>
      </blockquote>
      <pre wrap="">
Maybe your line break did not use a backslash?  It was lost, or just
assumed, in Khem's example.   

See recipe syntax in Yocto manual [1].  Look for the item "Line
continuation".

HTH
- Gunnar

[1] <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#un">http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#un</a>
derstanding-recipe-syntax

-- 
Gunnar Andersson <a class="moz-txt-link-rfc2396E" href="mailto:gandersson@genivi.org">&lt;gandersson@genivi.org&gt;</a>
Development Lead
GENIVI Alliance


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

--------------E94EFE178CF65E84DCB9C5EA--
