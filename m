Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCA1BE00BC4; Wed, 21 Jun 2017 01:18:55 -0700 (PDT)
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
	*      [209.85.214.68 listed in list.dnswl.org]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 871F5E00BBF
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:18:53 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id 185so18301699itv.3
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=891NatrlUwiXldYC6Em7/8Yd6Xn4TUflP6iXE+cZ4og=;
	b=GVeG5YOYqvwv/k52mkoOuomr3Hr6DRrteA1IsjyvBMBrRxiU3pC9KEMPXKHl/iZMYF
	uOm7ICTlUeuoZ+Pd3OD4+lDIGllBI7icsbt4P/K6vcTlWk7r7TJaz4lrlirkmannQBzx
	HtcupJ5QeYEaGYRFj7HWIGTCz382AuqGic4alU6l3FNfSFsbI9UuajgRiL6VCoHXSA4x
	sf6tR+yuFho4LD/7ZWWZzp/n2yy/tDx/ckusqbROTT2QxSsstk1zbRbaFH6epcvGVh++
	nyJtxp0QU/GXqeL/2TItSwgKTqkJJ0XIE7HnYulhefITkKwHysWgFR25kZHy1QQSozDl
	8cNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=891NatrlUwiXldYC6Em7/8Yd6Xn4TUflP6iXE+cZ4og=;
	b=ZOMN6clIi3+XqmOhJ6qlWS7w8ic4cr0aDpZJgHTYiicwqywE37KBEqyPh+9dGhjOsT
	yboeeOeGFEEa4BW3n0EydWRP6JwhiZTY1JndNdOiLaiYRJpsZBz3mmnrbmWMzt94V/+k
	pmtg4oMm3EHeEH2nXOveym+IBPhEf2U6z3czyG3yJniaAHOdi5zcHsrYrHsDI4ODwm4m
	mQhiQIjzBhfFEK4p2q3MC051hB+Tau/YUOTeVtt+Ycj+qy5c6oQfg6xuYGr4oTonKnk0
	zUB30wIfmJaJLiD3bb+lMZkbr8XiqhDKhcSvzTRZqKE8wSr3dzTuN2r8bhfwPYf/RZep
	/J3Q==
X-Gm-Message-State: AKS2vOxc2Xq8V2Tmm1SczPhH4TBwSzzN56vkFyS5V+WTLkfvyCkRu6sc
	iZrjHpckQQ/mbltFi2c=
X-Received: by 10.36.4.4 with SMTP id 4mr7738488itb.73.1498033132509;
	Wed, 21 Jun 2017 01:18:52 -0700 (PDT)
Received: from [10.0.0.1] (CPE-121-215-21-157.lnse1.pie.bigpond.net.au.
	[121.215.21.157])
	by smtp.gmail.com with ESMTPSA id f19sm791657ioe.58.2017.06.21.01.18.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Jun 2017 01:18:51 -0700 (PDT)
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
Message-ID: <6d961b59-b823-82f9-90ee-c0ae99f16bec@gmail.com>
Date: Wed, 21 Jun 2017 16:18:44 +0800
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
X-List-Received-Date: Wed, 21 Jun 2017 08:18:55 -0000
Content-Type: multipart/alternative;
	boundary="------------1075AFFD7719DE2A399C56F0"
Content-Language: en-US

--------------1075AFFD7719DE2A399C56F0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Like this ?

EXTRA_OEGYP_prepend = "\ -Dcomponent=shared_library
-Dremove_webcore_debug_symbols=1 -Dfastbuild=1 \"


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

--------------1075AFFD7719DE2A399C56F0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Like this ?</p>
    <p>EXTRA_OEGYP_prepend = "\ -Dcomponent=shared_library<br>
      -Dremove_webcore_debug_symbols=1 -Dfastbuild=1 \"<br>
      <br>
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

--------------1075AFFD7719DE2A399C56F0--
