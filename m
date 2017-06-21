Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A71EE00BBF; Wed, 21 Jun 2017 01:24:49 -0700 (PDT)
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
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EE1AE00BBF
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:24:47 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id y134so5802267itc.1
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=HAQvVEI9g0wUg6sc+XI/D5ahn8XSP04HFGDLorlRxLE=;
	b=PrllJBU8MLdUSwA2YQ5b5NQBZov345NZLoQBepr6q/m8L3XNlip0ejUuvhQvTOpsJ/
	SZF+J8cN6nGAC1ueUQTm2uqDIdU5JSVfTDem8FrncCtvEYOLqYqg0gPJOonxpGsKLAwO
	7QOMWFwkqClb9M3lyBviMry6LunV04jBZLnx0mHHfZykHi/TVj6cmd/sxug05j10AsGg
	dIOyOWor1Jihf+3H5kWIVKsh9ujHasKZicGl4adS5wkT29iNKWWr+zDh09lnKIpHYL5i
	t6PC+YLPv7VWtEXGSzFjK2i/PhQW2vkkyLwg8abKhI/OryN4hWFP8rXZQFRr3NOl2TDY
	UESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=HAQvVEI9g0wUg6sc+XI/D5ahn8XSP04HFGDLorlRxLE=;
	b=BV+eZYZVlOak5oycrPtX9awJ9+9rA325WItPDXwPWovTWFFAcqHI3DyuK88TOJLkZ7
	oy0vaNALq+kWNBBvLBjFapvi3DDC7KzTrTE8LvUJtxEPS+B6xEQdN0Jc1laOHvvfP5qc
	NKawzp9JaJX/MwDwxciB6hhPVTC7OzHEG2z7/ea2fLDTyIzrH3qEDSlUZnAiQYz5rVpP
	B6aXPI/5rCSewdNQtIVsnKixIWy1ZHo1BiaocY6ssgYmrmBdUiTPoV6cRGYi14sstGCP
	OMUW1XwRbl1gBxX9o9Un/Q9gKxuiOX1eHpBILwcmA5qTM1GuRAT2MY5g95RcjyLy4+mT
	e60Q==
X-Gm-Message-State: AKS2vOwLvdLIiegHh3r+vlv/ww0/RUXedVaHheaAK0hdr8c7dPNqyzaJ
	3FaKcQdWDcu6ILIo
X-Received: by 10.36.107.77 with SMTP id v74mr7360348itc.1.1498033486496;
	Wed, 21 Jun 2017 01:24:46 -0700 (PDT)
Received: from [10.0.0.1] (CPE-121-215-21-157.lnse1.pie.bigpond.net.au.
	[121.215.21.157]) by smtp.gmail.com with ESMTPSA id
	h187sm2245923itb.13.2017.06.21.01.24.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Jun 2017 01:24:45 -0700 (PDT)
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
Message-ID: <833f5a45-38fa-81d3-5bbd-97e933d5cdba@gmail.com>
Date: Wed, 21 Jun 2017 16:24:27 +0800
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
X-List-Received-Date: Wed, 21 Jun 2017 08:24:49 -0000
Content-Type: multipart/alternative;
	boundary="------------27A9E61EC71B18B566231EC7"
Content-Language: en-US

--------------27A9E61EC71B18B566231EC7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

It's compiling now, I cross my finger, thanks Guys,

EXTRA_OEGYP_prepend = "\
-Dcomponent=shared_library \
-Dremove_webcore_debug_symbols=1 -Dfastbuild=1 \
"



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

--------------27A9E61EC71B18B566231EC7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>It's compiling now, I cross my finger, thanks Guys,<br>
    </p>
    <p>EXTRA_OEGYP_prepend = "\ <br>
      -Dcomponent=shared_library \<br>
      -Dremove_webcore_debug_symbols=1 -Dfastbuild=1 \<br>
      "</p>
    <p><br>
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

--------------27A9E61EC71B18B566231EC7--
