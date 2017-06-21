Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DF60E00B76; Tue, 20 Jun 2017 21:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7DCBE00B76
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 21:43:03 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id c201so884352ioe.1
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 21:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=iaTA42k4WFmUg3nNGEoPt0a4vDI9JftRaGTjKG7AxVQ=;
	b=MDU8XrJjSZAzzS3LxCQ0mT7rjt3F/iOyO1v43y7LZfhvHW++wK6KYfNg1Z8QgQrWV7
	PowM1BC9V0Qs0LRWZxGNEcN42Q7TzdTqCvvZI9JxZJ6KoQpPMtMink5P1eXRmS75m0Id
	oto2Zyt/TbrHT7X5m+jjG0HY9JnZ6H1ymN9phzKkWmXNyoojMRZGx3F+2K946n0xTEVj
	mSIdWhmVup6vOuqBXjFRZkfaaezqfcgO2Po1uGoZ+fc6RSNhDvq9Eok5du4oyKo13+83
	xrpt6QDS3cxNbMRuNbiTm/TPD9Vx4R3TIfUQX3WM2KFMkyRJ9xRwvHuaFeGET6eamm+B
	vB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=iaTA42k4WFmUg3nNGEoPt0a4vDI9JftRaGTjKG7AxVQ=;
	b=SA6ryRD4pF8q+iYSvRql0Ek0BdQj5dA/qWrpn0LTaxPKPUUuXt5v/RHVTZFYLUS6Tg
	WuJRUT8w1KHAO+xwMC/rDJYYi5B+Zl1Rtsz44iopjTTpVLZ74uXIgpk9rFvpTbS9qoPl
	C/U1CD8ZrFtPARsr6vdczJLm0vNdhBBbeGfZCe54gRQtrRyJxFt2EZoyKN+YXGk2u2JV
	2PoT6Ec4V17qrmRFE77WBJtbfablGvEQamyeYi5sMfj1Tkclm2p5JFSvBVo9BNWavBuZ
	zYTEB4ThEU7Yq9MXCXIVejJh+079Nw08CrttKlQFe7DIFQC6Sgkf823PnCYWyFnyWdP1
	F+SA==
X-Gm-Message-State: AKS2vOyrBRwDO4vB2rsZeePj+IzVzGepSUPqJ304F7RqKQkk+rCtjWFo
	UR9Pu7Dg7N7FSFS8
X-Received: by 10.107.16.41 with SMTP id y41mr31314055ioi.98.1498020182998;
	Tue, 20 Jun 2017 21:43:02 -0700 (PDT)
Received: from [10.0.0.1] (CPE-121-215-19-19.lnse1.pie.bigpond.net.au.
	[121.215.19.19]) by smtp.gmail.com with ESMTPSA id
	y98sm9549294ita.17.2017.06.20.21.43.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Jun 2017 21:43:02 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
	<CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
	<61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
	<CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <8525501f-954a-8799-957c-f68efc4d7d5b@gmail.com>
Date: Wed, 21 Jun 2017 12:42:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gunnar Andersson <gandersson@genivi.org>
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
X-List-Received-Date: Wed, 21 Jun 2017 04:43:05 -0000
Content-Type: multipart/alternative;
	boundary="------------7A9BF8F2BB78D595B203CBA1"
Content-Language: en-US

--------------7A9BF8F2BB78D595B203CBA1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

did I put it wrongly ?

=======

Loading cache: 100% 
|#####################################################################################################################################| 
Time: 0:00:01
Loaded 2794 entries from dependency cache.
ERROR: ParseError at 
/home/bianchi77/poky/meta-browser/recipes-browser/chromium/chromium_54.0.2810.2.bb:7: 
unparsed line: 'EXTRA_OEGYP_prepend = " -Dcomponent=shared_library


On 21/06/17 10:28, Khem Raj wrote:
> add it to chromium recipe itself if you dont have a bbappend for it.
>
> On Tue, Jun 20, 2017 at 9:53 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>> Ok, thanks a lot for the parameter idea, where will I put that ? local.conf,
>> bblayers.conf ?
>>
>>
>> On 20/06/17 13:08, Khem Raj wrote:
>>
>> On Mon, Jun 19, 2017 at 8:32 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can
>> help ?
>>
>> add something like
>>
>> EXTRA_OEGYP_prepend = " -Dcomponent=shared_library
>> -Dremove_webcore_debug_symbols=1 -Dfastbuild=1 "
>>
>> and see if that helps.
>>
>> I compiled firefox and it worked well, but still wondering why chromium
>> didn't work.
>>
>>
>> On 20/06/17 04:01, Khem Raj wrote:
>>
>> On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde Pérez
>> <jaragunde@igalia.com> wrote:
>>
>> On 18/06/17 20:10, Gunnar Andersson wrote:
>>
>> Riko Ho <antonius.riko@gmail.com> wrote:
>>
>> Hello Everyone,
>>
>> I tried to compile chromium but never succeeded, took me already 12
>> hours and stopped on 99%, I used bitbake for doing it,
>>
>> Not sure what would cause it to just stop and it could have been some
>> temporary glitch?   Maybe you want to provide some logs of your build if
>> Martin's reference does not help.
>>
>> Just a heads-up, if it stopped at 99% it probably was in the linking
>> phase (you can check the logs under
>> tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
>> certain). This phase has a very high RAM demand, you could even need to
>> temporarily increase your swap space to go past that point.
>>
>> linker takes a whole lot of memory here, if you have < 8G of RAM
>> its likely to fail with out of memory errors. Can you check your dmesg
>> and see if there were such errors in there
>>
>> Best,
>> --
>> Jacobo Aragunde
>> Software Engineer at Igalia
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
>> Riko Ho
>> /*******/
>>
>>
>> --
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> 谢谢,
>> Regards,
>> Riko Ho
>> /*******/

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------7A9BF8F2BB78D595B203CBA1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>did I put it wrongly ?</p>
    <p>=======<br>
    </p>
    <p>Loading cache: 100%
|#####################################################################################################################################|
      Time: 0:00:01<br>
      Loaded 2794 entries from dependency cache.<br>
      ERROR: ParseError at
/home/bianchi77/poky/meta-browser/recipes-browser/chromium/chromium_54.0.2810.2.bb:7:
      unparsed line: 'EXTRA_OEGYP_prepend = " -Dcomponent=shared_library<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 21/06/17 10:28, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1soeiztrJEjDzLJ5k3t3QzyuK7qqJ-orW+1SPBR1b-oswg@mail.gmail.com">
      <pre wrap="">add it to chromium recipe itself if you dont have a bbappend for it.

On Tue, Jun 20, 2017 at 9:53 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Ok, thanks a lot for the parameter idea, where will I put that ? local.conf,
bblayers.conf ?


On 20/06/17 13:08, Khem Raj wrote:

On Mon, Jun 19, 2017 at 8:32 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:

My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can
help ?

add something like

EXTRA_OEGYP_prepend = " -Dcomponent=shared_library
-Dremove_webcore_debug_symbols=1 -Dfastbuild=1 "

and see if that helps.

I compiled firefox and it worked well, but still wondering why chromium
didn't work.


On 20/06/17 04:01, Khem Raj wrote:

On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde Pérez
<a class="moz-txt-link-rfc2396E" href="mailto:jaragunde@igalia.com">&lt;jaragunde@igalia.com&gt;</a> wrote:

On 18/06/17 20:10, Gunnar Andersson wrote:

Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:

Hello Everyone,

I tried to compile chromium but never succeeded, took me already 12
hours and stopped on 99%, I used bitbake for doing it,

Not sure what would cause it to just stop and it could have been some
temporary glitch?   Maybe you want to provide some logs of your build if
Martin's reference does not help.

Just a heads-up, if it stopped at 99% it probably was in the linking
phase (you can check the logs under
tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
certain). This phase has a very high RAM demand, you could even need to
temporarily increase your swap space to go past that point.

linker takes a whole lot of memory here, if you have &lt; 8G of RAM
its likely to fail with out of memory errors. Can you check your dmesg
and see if there were such errors in there

Best,
--
Jacobo Aragunde
Software Engineer at Igalia
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>


--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/


--

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/
</pre>
      </blockquote>
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

--------------7A9BF8F2BB78D595B203CBA1--
