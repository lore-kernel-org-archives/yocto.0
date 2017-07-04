Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D44EE00C32; Mon,  3 Jul 2017 22:16:59 -0700 (PDT)
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
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02671E00C2E
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 22:16:54 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id e7so109691138pfk.0
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 22:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=90Ng3wnEE4nCU+Kh2x/l0OJDMlL77AaiLyx6dID2iK8=;
	b=XKW5lfEBaGBCxni27gp9fI/c674zFKThkptqEy8IzHB4bq6dzOa0grhHl2sh0//TJt
	rVy4KGvfZz4Zlbb5s1E6ZvJzu8VtJ2amzLgLdHJTVG7pZIeUU7ZTqDPazjJZsVoayiP7
	Zuf3w2QrIQ+ecaAoYhkoBtUYeLLScRmigORCYVyHl7tOnQR2Oe4sAOd2SMZcH/doanWl
	qUH6ZyD05HCJSGjfj0PGbbU2JB0EETohExYLCr9innzEZEHBIAuDKxYb5oE2Ps2taXQ6
	Ms6OfCOYR/tmfR3ODw9IpEntQ6peM/fv5mZPv8/lgqyR9f3Y996rKc3fd0YQU/VqwX9w
	FJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=90Ng3wnEE4nCU+Kh2x/l0OJDMlL77AaiLyx6dID2iK8=;
	b=lUFzpOr7pOiVud3he5foUP3/rEHuPEfAAtRU1sT+3+7LFnFEK5LIqWFRJmhLXXaX4E
	Vf1oAbk+SwOKva0pGG2euranP3Vkfi8tIqp6xzI5afQIneGrZIoPhcK2MSzAuSnGzrmR
	YUM8t3f6G/cuA0nVw+L0qgGUMfrJGegug8CuFRFXmOAsnfQ8RTqZwfJ6NqA85Mrfjbg2
	/DQEFq1+5S8RDdac65W16/WxLEZhK7J/AL7kCe8SBhM0kY2aYi12mXM2nbrJ6JGFFLl/
	TEXi/AiuHmvZhid+PVh7BhFbm9XHtjgrZXrIxrFhKhkx0EjYk9A+aPtquTn+mDDA3Ry6
	wEcw==
X-Gm-Message-State: AIVw110HM+Z2rCOnDpn9ynWgGQ81DK73vkpCq5NoeoQlX/Tyvp87eFMj
	HKfg/4i9Cx+99uhWcVg=
X-Received: by 10.98.12.76 with SMTP id u73mr13348087pfi.62.1499145414253;
	Mon, 03 Jul 2017 22:16:54 -0700 (PDT)
Received: from ?IPv6:2001:8003:80fa:3700:fc39:a3aa:cd2a:ad2f?
	([2001:8003:80fa:3700:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	i67sm37110572pfc.122.2017.07.03.22.16.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jul 2017 22:16:53 -0700 (PDT)
To: Takuro Ashie <ashie@clear-code.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com>
Date: Tue, 4 Jul 2017 13:16:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
Subject: Re: /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb =>how to update the newest version ?
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
X-List-Received-Date: Tue, 04 Jul 2017 05:16:59 -0000
Content-Type: multipart/alternative;
	boundary="------------ACAD1576EACF6F5FCE2A6158"
Content-Language: en-US

--------------ACAD1576EACF6F5FCE2A6158
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I got this error :

checking for autoconf...
| ERROR: Could not find autoconf 2.13
| *** Fix above errors and then restart with\
|                "make -f client.mk build"
| client.mk:375: recipe for target 'configure' failed
| make: *** [configure] Error 1
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure

How to fix it ? thanks. I'm using Ubuntu 16.04 as a host.


On 03/07/17 15:32, Takuro Ashie wrote:
> Hi.
>
>> How can I update to the latest firefox version?
>>
>> /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb
>>
>
> I'm now trying to upgrade it to 52ESR:
>
> https://github.com/OSSystems/meta-browser/pull/43
>
> It almost done but seems have a problem. Drawing tabs may be broken.
> I'm now investigating it.
> If you are interesting it, please try the following branch and report 
> issues:
>
> https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2
>
> In addition, we are also trying to support
>
>   * Wayland
>   * OpenMAX
>   * EGL
>
> They are already enabled in the following branch but not stable yet:
>
> https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr
>
> Regards,
> Takuro Ashie <ashie@clear-code.com>
>
>
> On 2017年07月01日 15:03, Riko Ho wrote:
>>
>> Hello Everyone,
>>
>> How can I update to the latest firefox version?
>>
>> /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb
>>
>> Thanks
>> -- 
>> *
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> Kind regards,
>> Riko Ho
>> /*******/
>>
>> *
>>
>>
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------ACAD1576EACF6F5FCE2A6158
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I got this error :</p>
    <p>checking for autoconf...<br>
      | ERROR: Could not find autoconf 2.13<br>
      | *** Fix above errors and then restart with\<br>
      |                "make -f client.mk build"<br>
      | client.mk:375: recipe for target 'configure' failed<br>
      | make: *** [configure] Error 1<br>
      | WARNING: exit code 1 from a shell command.<br>
      | ERROR: Function failed: do_configure</p>
    <p>How to fix it ? thanks. I'm using Ubuntu 16.04 as a host.<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/07/17 15:32, Takuro Ashie wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      Hi.<br>
      <br>
      <blockquote type="cite">
        <p>How can I update to the latest firefox version?<br>
        </p>
        <p>/poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb<br>
        </p>
      </blockquote>
      <br>
      I'm now trying to upgrade it to 52ESR:<br>
      <br>
        <a class="moz-txt-link-freetext"
        href="https://github.com/OSSystems/meta-browser/pull/43"
        moz-do-not-send="true">https://github.com/OSSystems/meta-browser/pull/43</a><br>
      <br>
      It almost done but seems have a problem. Drawing tabs may be
      broken.<br>
      I'm now investigating it.<br>
      If you are interesting it, please try the following branch and
      report issues:<br>
      <br>
        <a class="moz-txt-link-freetext"
        href="https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2"
        moz-do-not-send="true">https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2</a><br>
      <br>
      In addition, we are also trying to support<br>
      <br>
        * Wayland<br>
        * OpenMAX<br>
        * EGL<br>
      <br>
      They are already enabled in the following branch but not stable
      yet:<br>
      <br>
        <a class="moz-txt-link-freetext"
href="https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr"
        moz-do-not-send="true">https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr</a><br>
      <br>
      Regards,<br>
      Takuro Ashie <a class="moz-txt-link-rfc2396E"
        href="mailto:ashie@clear-code.com" moz-do-not-send="true">&lt;ashie@clear-code.com&gt;</a><br>
      <br>
      <br>
      <div class="moz-cite-prefix">On 2017年07月01日 15:03, Riko Ho wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com">
        <meta http-equiv="Content-Type" content="text/html;
          charset=utf-8">
        <br>
        Hello Everyone, <br>
        <br>
        <p>How can I update to the latest firefox version?<br>
        </p>
        <p>/poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb<br>
        </p>
        Thanks<br>
        <div class="moz-signature">-- <br>
          <b>
            <p style="color:blue;"> /*******/<br>
              Sent by Ubuntu LTS 16.04,<br>
              Kind regards,<br>
              Riko Ho<br>
              /*******/<br>
            </p>
          </b></div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <br>
      </blockquote>
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

--------------ACAD1576EACF6F5FCE2A6158--
