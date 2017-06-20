Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B136E00BB6; Mon, 19 Jun 2017 20:32:44 -0700 (PDT)
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
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAFBEE00B05
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 20:32:40 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id u62so37708992pgb.3
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 20:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=TdTWdihd6RBk7+1u6NwB6i/VKQnC+8UyIZ7CR0HOJ5g=;
	b=eC6G/bTtegS6bRRW2AKnY3Xs6w5NyeRUhn2SgYL5/zZSItzVTbvCSkCD8iFvqqVnjA
	lZ0pe3SNIRM4t1kC+zGQYvNawNqMVvJjgQDdSa3r/XvHJ43Gy9SYv3kr7jDk7Qzk6Eeg
	XIL5Z17upma3owpV9Qogsy0DC5RmcZwmYcPlKa1DZFsV9reFJGvzeVzH0f5bmRzlRytD
	F696MIXlBuSWHHxdckmt6yPmATF1lQxfS6yo+/QS0b4xCbh4l5owlqJLG+H6vWSM8nw9
	tYqiOjMoNUanCvs8HperGZScOix9cQEXALIrzIbM8X4ZbW7MyYsLKs9ryyFzXdicfdLd
	peUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=TdTWdihd6RBk7+1u6NwB6i/VKQnC+8UyIZ7CR0HOJ5g=;
	b=I3pHjad7TWPNac0K/P4bNYpCvDTAFta4SaaZ5z3edHxIcXo6FNnL9MbQylxIp4ky1C
	H5W4HILtOXNa3qqGfBPCXglNq+qJWi4Xs1Zoi3lmm0CCgc4CRgQelCPlAHKtlSJCygnQ
	iGQHYAAaB7/0q6LL4rt6Aw11PJpmDn3XBhlrtwcL+Ib6JmrzfXITIb4EEhS+SsFVnH+V
	bdmww+c3p39ALz0sIqvGDS82i49ub7WD8wHw+TwAcUb427uHug6pPwQIjVrZ6AtH+Rz3
	0C5bL6JhnDev1HM2IHTZlWm8syGQtRa4X6yGGWxaNobDI+evW/fbBoOtjgBvAMUnLnLu
	N/NQ==
X-Gm-Message-State: AKS2vOwumlZrcSQkiprE7WQ2txm8cjXFGiMOF0iJw6EZr2EMVKT2Mq7F
	aWhxz8GEk/XFpkdz
X-Received: by 10.99.165.17 with SMTP id n17mr27864856pgf.163.1497929560338;
	Mon, 19 Jun 2017 20:32:40 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	i14sm23516732pgn.14.2017.06.19.20.32.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Jun 2017 20:32:39 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>,
	=?UTF-8?Q?Jacobo_Aragunde_P=c3=a9rez?= <jaragunde@igalia.com>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
	<7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
	<CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <dd9e6cf6-dcd3-9e90-2275-323b5c9fd0b6@gmail.com>
Date: Tue, 20 Jun 2017 11:32:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 20 Jun 2017 03:32:44 -0000
Content-Type: multipart/alternative;
	boundary="------------7EFBD40B915741BE9C28AB45"
Content-Language: en-US

--------------7EFBD40B915741BE9C28AB45
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade cluster can 
help ?

I compiled firefox and it worked well, but still wondering why chromium 
didn't work.


On 20/06/17 04:01, Khem Raj wrote:
> On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde Pérez
> <jaragunde@igalia.com> wrote:
>> On 18/06/17 20:10, Gunnar Andersson wrote:
>>> Riko Ho <antonius.riko@gmail.com> wrote:
>>>
>>>> Hello Everyone,
>>>>
>>>> I tried to compile chromium but never succeeded, took me already 12
>>>> hours and stopped on 99%, I used bitbake for doing it,
>>> Not sure what would cause it to just stop and it could have been some
>>> temporary glitch?   Maybe you want to provide some logs of your build if
>>> Martin's reference does not help.
>>>
>> Just a heads-up, if it stopped at 99% it probably was in the linking
>> phase (you can check the logs under
>> tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
>> certain). This phase has a very high RAM demand, you could even need to
>> temporarily increase your swap space to go past that point.
>>
> linker takes a whole lot of memory here, if you have < 8G of RAM
> its likely to fail with out of memory errors. Can you check your dmesg
> and see if there were such errors in there
>
>> Best,
>> --
>> Jacobo Aragunde
>> Software Engineer at Igalia
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
谢谢,
Regards,
Riko Ho
/*******/

*

--------------7EFBD40B915741BE9C28AB45
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>My memory is 8Gb and swap 8Gb, 8 cores i7, may be a homemade
      cluster can help ?</p>
    <p>I compiled firefox and it worked well, but still wondering why
      chromium didn't work.<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 20/06/17 04:01, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1sr-5mxP2_WCXtvnfzMt4OgUAf_V2ZhLQFgQAqGMbPDovQ@mail.gmail.com">
      <pre wrap="">On Mon, Jun 19, 2017 at 7:21 AM, Jacobo Aragunde Pérez
<a class="moz-txt-link-rfc2396E" href="mailto:jaragunde@igalia.com">&lt;jaragunde@igalia.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On 18/06/17 20:10, Gunnar Andersson wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">
Riko Ho <a class="moz-txt-link-rfc2396E" href="mailto:antonius.riko@gmail.com">&lt;antonius.riko@gmail.com&gt;</a> wrote:

</pre>
          <blockquote type="cite">
            <pre wrap="">Hello Everyone,

I tried to compile chromium but never succeeded, took me already 12
hours and stopped on 99%, I used bitbake for doing it,
</pre>
          </blockquote>
          <pre wrap="">
Not sure what would cause it to just stop and it could have been some
temporary glitch?   Maybe you want to provide some logs of your build if
Martin's reference does not help.

</pre>
        </blockquote>
        <pre wrap="">
Just a heads-up, if it stopped at 99% it probably was in the linking
phase (you can check the logs under
tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
certain). This phase has a very high RAM demand, you could even need to
temporarily increase your swap space to go past that point.

</pre>
      </blockquote>
      <pre wrap="">
linker takes a whole lot of memory here, if you have &lt; 8G of RAM
its likely to fail with out of memory errors. Can you check your dmesg
and see if there were such errors in there

</pre>
      <blockquote type="cite">
        <pre wrap="">Best,
--
Jacobo Aragunde
Software Engineer at Igalia
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
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

--------------7EFBD40B915741BE9C28AB45--
