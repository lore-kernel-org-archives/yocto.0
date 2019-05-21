Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51BA1E00D52; Mon, 20 May 2019 18:21:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E459E00B58
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 18:21:25 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id a5so7525568pls.12
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 18:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=RXvc/YnntLwqiusnku0dyijSy4Jz/JPTjKLSWBHyNzU=;
	b=AXGbNvCvu5+vPeyEJH9FUAFKzJT+U3PMmLoD8emQnv7moYjDjwEJVQl8q+s7agohyb
	AkgqIBWMHemCiJe5OfHSb4t/QmmVe+VYi9xvyLdsXM8kpGg95/RXx4EEKd1I/4RPowTA
	AAgyXXXKjDajjotW+DQRpFscAuLJ7TPr/CiHdV0IRVplIWIJMYqD6S52YtTWeggYrMs8
	Pb9d8WeLsqAe/rYM+lxs2Um6BHo2CHw0844TenCXBwmjlFk/5gBcGvk1ZBG/YqJScAG1
	on6AfL6arQrl/iWd1AFBCvLhNR80Vab/lll0oTuko/R699tBbQ2mV0ebGHAwevvcFH6H
	Id8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=RXvc/YnntLwqiusnku0dyijSy4Jz/JPTjKLSWBHyNzU=;
	b=auJ91ubBeEDA5bGr4HRKt+ISDgWPlYGz5v/FNppfcHqxI1a9we2XbFf1+ktCws2eGv
	AYOtk1zY1q5LfxGBmD9DJx+SN2GOZVF+Y7uB1b5iC4jWYaVKKHWye/N/YebmzzWr87dE
	7NHC2JKO4I3K37HLFBR8/8Ifo4hliuhiySy5UQvUcIgmOJ45gvrtH7q7GEwM5Xjz+NVX
	/JSFXE39Jkuk9nlCahopVj0SnJcFXbtsH3lPGxXQzHDLLJs3kB50tUeKknBRwlAQFFGL
	LzFEFnDbmHfrL0GOXDoET4QPDzjfJszpUQx+HF6ru9bF67CS77hH5lMfjT5FIIe8kva7
	yXkw==
X-Gm-Message-State: APjAAAX8PA3VCpGCjV9+h26wMM/bXO1Om2l2FWaafmB1UG0WsXAW882g
	OgYIQA8jNO631zZ8qayJ2XeghzcYdvw=
X-Google-Smtp-Source: APXvYqwXMFeGKwIFKMGSEvmHoQp+r6A8u5ivvcjeXIDTLCgTx32I2GybTda8SeOHntmyEuCTflekkw==
X-Received: by 2002:a17:902:5983:: with SMTP id
	p3mr77087882pli.224.1558401684061; 
	Mon, 20 May 2019 18:21:24 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	j2sm18693222pfb.157.2019.05.20.18.21.22
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 May 2019 18:21:22 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
	<245b0a59-8a82-59e1-f35e-a0de8aa01d37@gmail.com>
	<CAPxNcnd0OQ4BS6xrm6vcR8UmAjGxsbksD7XMiU4GKDKKASXJzg@mail.gmail.com>
	<CAMKF1srf=vjP+PEgk6LHOib4oaxHx1OZUd_OFTqoyCeqUwdmSA@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <45335724-c00c-47c8-7269-a7b7b516fd13@ibeeto.com>
Date: Mon, 20 May 2019 18:21:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srf=vjP+PEgk6LHOib4oaxHx1OZUd_OFTqoyCeqUwdmSA@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Tue, 21 May 2019 01:21:26 -0000
Content-Type: multipart/alternative;
	boundary="------------8053402254A78A7EADC661E8"
Content-Language: en-US

--------------8053402254A78A7EADC661E8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Khem,

Yes, the 32-bit image (raspberrypi3 machine) works.

:rjs

On 5/19/19 9:11 AM, Khem Raj wrote:
>
>
> On Sat, May 18, 2019 at 11:02 PM Rudolf Streif 
> <rudolf.streif@ibeeto.com <mailto:rudolf.streif@ibeeto.com>> wrote:
>
>     Thanks, Khem. 64 bit, raspberrypi3-64 machine with vc4graphics.
>
>
> Please try 32bit we only have hdmi tested in 64bit this far
>
>
>
>     On Sat, May 18, 2019, 22:13 Khem Raj <raj.khem@gmail.com
>     <mailto:raj.khem@gmail.com>> wrote:
>
>
>
>         On 5/16/19 9:01 AM, Andrei Gherzan wrote:
>         > HI,
>         >
>         > On 16/05/2019 16.31, Rudolf J Streif wrote:
>         >> I am trying to use the "official" RPi 7" touch display
>         >>
>         (https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
>         >> with meta-raspberrypi (most recent from master). However, I
>         cannot get
>         >> it to work. As a matter of fact the display does not even
>         show the GPU
>         >> rainbow screen making me think that the GPU firmware
>         packaged with
>         >> meta-raspberrypi does not support the DSI display. It works
>         just fine
>         >> with the latest Raspbian release (screen and touch).
>         >>
>         >> I searched the web up and down but could not find anything.
>         Maybe
>         >> somebody has an idea? Wrong firmware (maybe cannot be
>         distributed
>         >> because of licensing...)?
>         > Sadly we don't actively test display and other related toys
>         so they
>         > might be broken. Even so, I would be surprised if the DSI
>         port doesn't
>         > work. What is you final config.txt (pastebin it please)?
>         >
>
>         are you building 64bit or 32bit images ?
>         are you using vc4grpahics or userland graphics ?
>
-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


--------------8053402254A78A7EADC661E8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Khem,</p>
    <p>Yes, the 32-bit image (raspberrypi3 machine) works.</p>
    <p>:rjs<br>
    </p>
    <div class="moz-cite-prefix">On 5/19/19 9:11 AM, Khem Raj wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1srf=vjP+PEgk6LHOib4oaxHx1OZUd_OFTqoyCeqUwdmSA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div><br>
      </div>
      <div><br>
        <div class="gmail_quote">
          <div dir="ltr" class="gmail_attr">On Sat, May 18, 2019 at
            11:02 PM Rudolf Streif &lt;<a
              href="mailto:rudolf.streif@ibeeto.com"
              moz-do-not-send="true">rudolf.streif@ibeeto.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div dir="auto">
              <div>Thanks, Khem. 64 bit, raspberrypi3-64 machine with
                vc4graphics. </div>
            </div>
          </blockquote>
          <div dir="auto"><br>
          </div>
          <div dir="auto">Please try 32bit we only have hdmi tested in
            64bit this far </div>
          <div dir="auto"><br>
          </div>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div dir="auto">
              <div><br>
                <br>
                <div class="gmail_quote">
                  <div dir="ltr" class="gmail_attr">On Sat, May 18,
                    2019, 22:13 Khem Raj &lt;<a
                      href="mailto:raj.khem@gmail.com" target="_blank"
                      moz-do-not-send="true">raj.khem@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
                    <br>
                    On 5/16/19 9:01 AM, Andrei Gherzan wrote:<br>
                    &gt; HI,<br>
                    &gt; <br>
                    &gt; On 16/05/2019 16.31, Rudolf J Streif wrote:<br>
                    &gt;&gt; I am trying to use the "official" RPi 7"
                    touch display<br>
                    &gt;&gt; (<a
                      href="https://www.raspberrypi.org/products/raspberry-pi-touch-display/"
                      rel="noreferrer noreferrer" target="_blank"
                      moz-do-not-send="true">https://www.raspberrypi.org/products/raspberry-pi-touch-display/</a>)<br>
                    &gt;&gt; with meta-raspberrypi (most recent from
                    master). However, I cannot get<br>
                    &gt;&gt; it to work. As a matter of fact the display
                    does not even show the GPU<br>
                    &gt;&gt; rainbow screen making me think that the GPU
                    firmware packaged with<br>
                    &gt;&gt; meta-raspberrypi does not support the DSI
                    display. It works just fine<br>
                    &gt;&gt; with the latest Raspbian release (screen
                    and touch).<br>
                    &gt;&gt;<br>
                    &gt;&gt; I searched the web up and down but could
                    not find anything. Maybe<br>
                    &gt;&gt; somebody has an idea? Wrong firmware (maybe
                    cannot be distributed<br>
                    &gt;&gt; because of licensing...)?<br>
                    &gt; Sadly we don't actively test display and other
                    related toys so they<br>
                    &gt; might be broken. Even so, I would be surprised
                    if the DSI port doesn't<br>
                    &gt; work. What is you final config.txt (pastebin it
                    please)?<br>
                    &gt; <br>
                    <br>
                    are you building 64bit or 32bit images ?<br>
                    are you using vc4grpahics or userland graphics ?<br>
                  </blockquote>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700</pre>
  </body>
</html>

--------------8053402254A78A7EADC661E8--
