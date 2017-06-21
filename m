Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D331E00BC2; Tue, 20 Jun 2017 21:38:56 -0700 (PDT)
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
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E8A5E00B76
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 21:38:52 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id c201so847419ioe.1
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 21:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=+KR+Yah2H5eghL454WYQPaukXH0/TF1LXZ6bOcX3Qds=;
	b=ApWjmq3tg/gcMZTqLfP9VvAN6jN707HiCY4iPNkVJSDvmkM0rC1mGFc2dYEbFuXgV7
	4rW7KdUGACp3w+R6lShjdmokkFfoHz+sB2NqzEJbgMFbeCxjoy6/WZXRNj4DdgjYNpVs
	OgllqxWWOMD1BMbqQ0EzZUnRA/UPFJgKT7N1JHCvMEJOpA27DXI46VG36xXuW6R5EI2E
	+RBLG8bPT1KaRK4Ob01SJOEfLWBlJYP+38B3cojs8OyIYeWYfVLC+Mct2GdogIV0/2nQ
	oXWg05+XqiJq2lFe90tFdEpZ9j33fNzp/RpUHJuv8zZgbH73GL6WXGdqCHiKojW5oKFg
	JAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=+KR+Yah2H5eghL454WYQPaukXH0/TF1LXZ6bOcX3Qds=;
	b=KtvpcQQi0rXxktSZOUIIDmsVcI9iJNk3v4EADR31YBhOVt23MvzfxqTd/RH6ZwF7Ry
	G8ysNbqRvm5BWT2XIK9IgQz1LpgzrkcAUx3WVZH+29SON97LqcASk/mkrHRak9k4l0Vo
	BXUb7Jq+idMbmYyfsL30ibcOnUBcSlluQcBDfSubk6R+hayCPPrXNYVH1NIO6o2PWolr
	Gy9clYtTs5x1x0ybVe34Riiff9I5eNUhzFrG0f6Gy17RFvyIMTKhh0lM5VSv3DS81WWQ
	MCfBNOd2wJ2Wbiu/2Nc9H2LG1Q7+Li8K8bbqlPkH6ruTyr+LCIZ5wXSPBxiasMIPAwpZ
	JpAQ==
X-Gm-Message-State: AKS2vOyLVeL76WPEwkZ/S5dzLcFKkJnK636S51SxUC4KUnATPqsd56H9
	xKzQgawU+qPVdgIB
X-Received: by 10.107.128.84 with SMTP id b81mr28342347iod.26.1498019931948;
	Tue, 20 Jun 2017 21:38:51 -0700 (PDT)
Received: from [10.0.0.1] (CPE-121-215-19-19.lnse1.pie.bigpond.net.au.
	[121.215.19.19]) by smtp.gmail.com with ESMTPSA id
	v13sm7081897ita.28.2017.06.20.21.38.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Jun 2017 21:38:50 -0700 (PDT)
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
Message-ID: <159e6257-d4ad-3459-d674-766a2bf1202c@gmail.com>
Date: Wed, 21 Jun 2017 12:38:44 +0800
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
X-List-Received-Date: Wed, 21 Jun 2017 04:38:56 -0000
Content-Type: multipart/alternative;
	boundary="------------0E200163EAC0B94C4EA820A3"
Content-Language: en-US

--------------0E200163EAC0B94C4EA820A3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

drwxrwxr-x 5 bianchi77 bianchi77 4.0K Jun 14 14:31 .
drwxrwxr-x 3 bianchi77 bianchi77 4.0K Jun 12 15:50 ..
drwxrwxr-x 2 bianchi77 bianchi77 4.0K Jun 12 15:50 cef3
-rw-rw-r-- 1 bianchi77 bianchi77 2.7K Jun 12 15:50 cef3_280796.bb
drwxrwxr-x 4 bianchi77 bianchi77 4.0K Jun 12 15:50 chromium
*-rw-rw-r-- 1 bianchi77 bianchi77 1.2K Jun 12 15:50 chromium_54.0.2810.2.bb*
-rw-rw-r-- 1 bianchi77 bianchi77  11K Jun 12 15:50 chromium-browser.inc
-rw-rw-r-- 1 bianchi77 bianchi77 4.6K Jun 12 15:50 chromium.inc
-rw-rw-r-- 1 bianchi77 bianchi77 2.2K Jun 12 15:50 
chromium-wayland_53.0.2785.143.bb
drwxrwxr-x 8 bianchi77 bianchi77 4.0K Jun 12 15:50 files

is this one ? *chromium_54.0.2810.2.bb ?

Thanks
*
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

--------------0E200163EAC0B94C4EA820A3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>drwxrwxr-x 5 bianchi77 bianchi77 4.0K Jun 14 14:31 .<br>
      drwxrwxr-x 3 bianchi77 bianchi77 4.0K Jun 12 15:50 ..<br>
      drwxrwxr-x 2 bianchi77 bianchi77 4.0K Jun 12 15:50 cef3<br>
      -rw-rw-r-- 1 bianchi77 bianchi77 2.7K Jun 12 15:50 cef3_280796.bb<br>
      drwxrwxr-x 4 bianchi77 bianchi77 4.0K Jun 12 15:50 chromium<br>
      <b>-rw-rw-r-- 1 bianchi77 bianchi77 1.2K Jun 12 15:50
        chromium_54.0.2810.2.bb</b><br>
      -rw-rw-r-- 1 bianchi77 bianchi77  11K Jun 12 15:50
      chromium-browser.inc<br>
      -rw-rw-r-- 1 bianchi77 bianchi77 4.6K Jun 12 15:50 chromium.inc<br>
      -rw-rw-r-- 1 bianchi77 bianchi77 2.2K Jun 12 15:50
      chromium-wayland_53.0.2785.143.bb<br>
      drwxrwxr-x 8 bianchi77 bianchi77 4.0K Jun 12 15:50 files<br>
      <br>
    </p>
    is this one ? <b> chromium_54.0.2810.2.bb ?<br>
      <br>
      Thanks<br>
    </b>
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

--------------0E200163EAC0B94C4EA820A3--
