Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 054D9E00C80; Mon,  3 Jul 2017 22:34:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.173 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0584E00C75
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 22:34:44 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id c73so109855302pfk.2
	for <yocto@yoctoproject.org>; Mon, 03 Jul 2017 22:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=I90JaUlX2+CEUlsN1tfZySjzcH600eQKh6PTQK9aLIs=;
	b=BZnBCEFBQJPtnZgufAIhhqg+ySaXzGaja1j6RnJz012JcbNqZ/2h9/wt2szMsQsYTe
	mfuZEaFTurND797mK7gpNKVxWzU19sMmBaOI16RaQ5fitcM7yIITrk/7Eq4B2b0Nw8ym
	JLqYOv/7Zq11dYW1V6g+63NRdVvckAHe+EIO60p2JmIXX6JrjKW46plLWund0ABOpqHC
	3NO3hEkxdkp8LxiYWim65XN3V/qLpIAojZKoSdU6nZb/OK7RXlcWzgN2Fb5W9ukrzuqc
	4dtd9TrqTINgZxCkQmlnr96OlSU7Zf/+1Y4GOYNSKfXUP92bymvufodI8lG1D/s5OVp/
	dZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=I90JaUlX2+CEUlsN1tfZySjzcH600eQKh6PTQK9aLIs=;
	b=IuiBoQTjo1ruPsOZfwl4ppnT7rMdbfWSpfV/bm6u8ft1KOTL2btlbjq/61TpzOtI0j
	EZG1wMfLyV2rh3GtHPFe8W4MJH8NNjPuZt/5X5egTFL2j+6IgHRIIRyQT8sVeedlEnPS
	Bf0TUdhjc1rwcXafhoq8TgBSZkNATArdV06lvaA1nQUV1DKQXpzfbI8oOqhWC1UChC5C
	mawyu6sgL3W5p3k59b0YTtxxypigP5Kh4RDom4+reVJwcAhX2e/yIXT/Tac0KLwyOa0r
	8QFKyjLrA4Weo2Ex/FZa661SqGsmEdgAli7uPCZRlldiyMe6GKwRvLTaxDQsQ40e8sGj
	bWFQ==
X-Gm-Message-State: AIVw111wjDQu+mcpqEc7lBHtiGlrrDmc4h1fq6ojT45WtSTXQbrYk6L/
	IeAtVjhk/6C2siaMaxE=
X-Received: by 10.99.143.21 with SMTP id n21mr14214722pgd.145.1499146484177;
	Mon, 03 Jul 2017 22:34:44 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f?
	([2001:8003:804a:b500:fc39:a3aa:cd2a:ad2f])
	by smtp.gmail.com with ESMTPSA id
	m186sm845078pfc.54.2017.07.03.22.34.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 03 Jul 2017 22:34:43 -0700 (PDT)
To: Takuro Ashie <ashie@clear-code.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
	<b5171c1c-e2f7-0f76-2b5d-e518b7ca927a@gmail.com>
	<d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com>
	<8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com>
	<7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <caf90459-87e7-e635-7446-e22b3a4526c1@gmail.com>
Date: Tue, 4 Jul 2017 13:34:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com>
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
X-List-Received-Date: Tue, 04 Jul 2017 05:34:57 -0000
Content-Type: multipart/alternative;
	boundary="------------CB76D5738AE62DCEFCD45864"
Content-Language: en-US

--------------CB76D5738AE62DCEFCD45864
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Installing now and I'll let you know the result..


On 04/07/17 13:33, Takuro Ashie wrote:
> Hi.
>
> > How to fix it ? thanks. I'm using Ubuntu 16.04 as a host.
>
> * Add autoconf2.13 to you system:
>
>   $ sudo apt install autoconf2.13
>
> * Add the following line to your local.conf if you are using recent poky.
>   If you are using old poky, it's not needed.
>
> |  HOSTTOOLS += "autoconf2.13"
>
> We are now discussing about it to resolve properly:
>
> |https://github.com/OSSystems/meta-browser/pull/43#issuecomment-312721620
>
> Regards,
>
>
> On 2017年07月04日 14:16, Riko Ho wrote:
>>
>> I got this error :
>>
>> checking for autoconf...
>> | ERROR: Could not find autoconf 2.13
>> | *** Fix above errors and then restart with\
>> |                "make -f client.mk build"
>> | client.mk:375: recipe for target 'configure' failed
>> | make: *** [configure] Error 1
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_configure
>>
>> How to fix it ? thanks. I'm using Ubuntu 16.04 as a host.
>>
>>
>> On 03/07/17 15:32, Takuro Ashie wrote:
>>> Hi.
>>>
>>>> How can I update to the latest firefox version?
>>>>
>>>> /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb
>>>>
>>>
>>> I'm now trying to upgrade it to 52ESR:
>>>
>>> https://github.com/OSSystems/meta-browser/pull/43
>>>
>>> It almost done but seems have a problem. Drawing tabs may be broken.
>>> I'm now investigating it.
>>> If you are interesting it, please try the following branch and 
>>> report issues:
>>>
>>> https://github.com/ashie/meta-browser/tree/firefox-52.1.2esr-2
>>>
>>> In addition, we are also trying to support
>>>
>>>   * Wayland
>>>   * OpenMAX
>>>   * EGL
>>>
>>> They are already enabled in the following branch but not stable yet:
>>>
>>> https://github.com/mozilla-japan/meta-browser/tree/firefox-52.2esr
>>>
>>> Regards,
>>> Takuro Ashie <ashie@clear-code.com>
>>>
>>>
>>> On 2017年07月01日 15:03, Riko Ho wrote:
>>>>
>>>> Hello Everyone,
>>>>
>>>> How can I update to the latest firefox version?
>>>>
>>>> /poky/meta-browser/recipes-mozilla/firefox/firefox_45.9.0esr.bb
>>>>
>>>> Thanks
>>>> -- 
>>>> *
>>>>
>>>> /*******/
>>>> Sent by Ubuntu LTS 16.04,
>>>> Kind regards,
>>>> Riko Ho
>>>> /*******/
>>>>
>>>> *
>>>>
>>>>
>>>
>>
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
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------CB76D5738AE62DCEFCD45864
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Installing now and I'll let you know the result..<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 04/07/17 13:33, Takuro Ashie wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7eeeafd6-f38a-a056-1d74-b5fcd507612e@clear-code.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      Hi.<br>
      <br>
      &gt; How to fix it ? thanks. I'm using Ubuntu 16.04 as a host.<br>
      <br>
      * Add autoconf2.13 to you system:<br>
      <br>
        $ sudo apt install autoconf2.13<br>
      <br>
      * Add the following line to your local.conf if you are using
      recent poky.<br>
        If you are using old poky, it's not needed.<br>
      <br>
      <code>  HOSTTOOLS += "autoconf2.13"<br>
        <br>
        We are now discussing about it to resolve properly:<br>
        <br>
      </code><a class="moz-txt-link-freetext"
href="https://github.com/OSSystems/meta-browser/pull/43#issuecomment-312721620"
        moz-do-not-send="true">https://github.com/OSSystems/meta-browser/pull/43#issuecomment-312721620</a><br>
      <br>
      Regards,<br>
      <br>
      <br>
      <div class="moz-cite-prefix">On 2017年07月04日 14:16, Riko Ho wrote:<br>
      </div>
      <blockquote type="cite"
        cite="mid:8692e969-0575-1a75-b0a7-1567bcb51786@gmail.com">
        <meta http-equiv="Content-Type" content="text/html;
          charset=utf-8">
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
        <div class="moz-cite-prefix">On 03/07/17 15:32, Takuro Ashie
          wrote:<br>
        </div>
        <blockquote type="cite"
          cite="mid:d1fc68c9-0a41-ac45-161d-68d34f1f2e18@clear-code.com">
          <meta http-equiv="Content-Type" content="text/html;
            charset=utf-8">
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
          They are already enabled in the following branch but not
          stable yet:<br>
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
          <div class="moz-cite-prefix">On 2017年07月01日 15:03, Riko Ho
            wrote:<br>
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

--------------CB76D5738AE62DCEFCD45864--
