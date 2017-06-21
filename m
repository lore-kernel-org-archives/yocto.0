Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7D95E00B31; Tue, 20 Jun 2017 18:53:55 -0700 (PDT)
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
	*      [74.125.83.51 listed in list.dnswl.org]
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF62E00B2E
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 18:53:53 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id e187so18176186pgc.1
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 18:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=nB6jIEwwIDEJQpHDQHYYzNY3p39zsN1JEBTw1md+nuU=;
	b=kWL5ZoHfQAt7hY1q6zmEGw4cLyoXvnFu+9zgN1RmH1lNqnJn6N/EB6iAoFBcn15hXv
	tj7maYYcCppnT7/2T6r+ssFOwQRAqYTYOdleRnl4HPdxoxlMQ3StaBv76Da7F8HcGRYp
	X/NcXmvncXh9G539/R5zVRCMQyUNFnEovjW3dbERsg0M18CYHpX6o46L/K/Yq9uBAgVd
	EumWCCHl4u7DPwQQ4wOYehQf3OrFA3x00dgi6PVCjMXA3JvBp+yDLpsu1OzZL8Vx1IFm
	kdrGBgVU/QvyzlX626wwVQzo3B61QWozYG5YMvRtHqju/7m6ywIrMH/4gMO+/Nr/rhem
	RZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=nB6jIEwwIDEJQpHDQHYYzNY3p39zsN1JEBTw1md+nuU=;
	b=AssGKoXgq2BUhNAn0L9n49D9iNNhbtlGKaSvKRP9Rv8xEryez3Mm1P6/UY/944HHil
	V9a6EBeQPPTagLXRggp6QH2ZEtCgb2QDYG71u2gMyJ2GhIuHI/2Bx0ivBvRFlJBCqY9b
	6js5ejfmOrL/nFATj6g6Yk1NPs8U1DF6+AwS+m0h0vWV2aNE1DEqEEKOPIma6lsWSrJf
	gqd7Pd+yqJ5f+QpefXckcSVKM8Jimxa86KqBRiSKJjl7t8zorsUuCYiDlzOhNiaapy/S
	TQEEp/kulOaI7IqX9EFs6Oc0DQG9zGdG1NXiMPqfyYp9bqsoj9jmNXGPG9TCSIurlwYZ
	HvvQ==
X-Gm-Message-State: AKS2vOydXahs/afwMEqCFYafXXM7+AsVKZWOiA7J/jZo7Z8FYAEVDG/b
	mXMoyOzK6Dkz+lhi
X-Received: by 10.99.250.69 with SMTP id g5mr33644689pgk.11.1498010033414;
	Tue, 20 Jun 2017 18:53:53 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	s4sm28239971pgr.10.2017.06.20.18.53.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Jun 2017 18:53:52 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
	<dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
	<CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <61e45e0b-1fda-ecf5-51eb-437284c94d02@gmail.com>
Date: Wed, 21 Jun 2017 09:53:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com>
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
X-List-Received-Date: Wed, 21 Jun 2017 01:53:55 -0000
Content-Type: multipart/alternative;
	boundary="------------AF5B20C5C165C6145672BA65"
Content-Language: en-US

--------------AF5B20C5C165C6145672BA65
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Ok, thanks a lot for the parameter idea, where will I put that ? 
local.conf, bblayers.conf ?


On 20/06/17 13:08, Khem Raj wrote:
> On Mon, Jun 19, 2017 at 8:32 PM, Riko Ho <antonius.riko@gmail.com> wrote:
>> My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can
>> help ?
>>
> add something like
>
> EXTRA_OEGYP_prepend = " -Dcomponent=shared_library
> -Dremove_webcore_debug_symbols=1 -Dfastbuild=1 "
>
> and see if that helps.
>
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

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------AF5B20C5C165C6145672BA65
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Ok, thanks a lot for the parameter idea, where will I put that ?
      local.conf, bblayers.conf ?<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 20/06/17 13:08, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sp_5+1N_+okGXxZMREir62snRDk+BtbwDMz+t5SUYo5pg@mail.gmail.com">
      <pre wrap="">On Mon, Jun 19, 2017 at 8:32 PM, Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can
help ?

</pre>
      </blockquote>
      <pre wrap="">
add something like

EXTRA_OEGYP_prepend = " -Dcomponent=shared_library
-Dremove_webcore_debug_symbols=1 -Dfastbuild=1 "

and see if that helps.

</pre>
      <blockquote type="cite">
        <pre wrap="">I compiled firefox and it worked well, but still wondering why chromium
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

--------------AF5B20C5C165C6145672BA65--
