Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AC53E00CD2; Sun, 19 May 2019 13:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9EEAE0053F
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 13:26:51 -0700 (PDT)
Received: by mail-pf1-f179.google.com with SMTP id b76so6165403pfb.5
	for <yocto@yoctoproject.org>; Sun, 19 May 2019 13:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=hU4imhy4Yf86UlEJSKbLL+2/yAUUjsvh9qgkagtAacw=;
	b=pPfw/zsCqvaWKpkVKhfMdFFQwbJoEXBKmiPE6W/V3fm/VzNQ14I1johamtSeK3nRF8
	OAY6XNl47w9/HVYECiY4/wHrqVG056SWA+a4jV0oYIJOvL+kbWHvlyQM8CKrlD6YWfSr
	+yc6l15vWcDqkU4QKsgKyHr5pk6ztak79/oHdumofiNFoFErqCwqslQa0caWU2AiuMHV
	7LIJS/t/8+SQt/zkigh7zw8y3fgSqOcwNUsh84leo2SjtsTDUZSHH9UaXN/8vRIO1XXC
	iiz5WHD/HT9lFhGac//QHUUOeiJu3kxGjHBF8fwF9v8NKbYjxPUxYGEQ1ASdGGXLDCY9
	bRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=hU4imhy4Yf86UlEJSKbLL+2/yAUUjsvh9qgkagtAacw=;
	b=t3/OAQtdVG71OsmUdnYYzOPWO8aduwJgby0LTTC3a4vLl1nplCbGPFf4tZyX0uWfxQ
	8UerSUrMXDy0u9dePYEPBQovuUEilwrD5+Rb5uZgCSqI1+Jsi0S1fWqDuv1WuQlQY3b6
	nG8a57k4A85qYIQuZYuh0h6lSYQeTgFXyC9N2qL8HfHkrhwALEt/JJGz4ZHhCPuY6+OA
	aVBTlK+u+xdax9zG1IR8BAjRlmCHNMdhPUZNeOltc2QIN9CSQ/5Lrg3jALjqP6IWGgla
	Pc36j08okES7F7jZ7vcZ9qgu/E4pClliTCqxCGxpCFmOLikGFiumIwyEK4+DxhFOLRan
	5GDg==
X-Gm-Message-State: APjAAAUlfd9irFnJ4FqMIJXh71ZaYYsU9XF311OhNdKwFTnVLeAA/Riz
	S1q64WhoSrx4qfoIcgoMGyTk2FG8CiY=
X-Google-Smtp-Source: APXvYqzpzad1wL1018AsNC89g5Zq9Wt93pN+95c9i+oUhwYn2th5SZIptppE9aiPVsXBrHbx9xg59w==
X-Received: by 2002:aa7:95bb:: with SMTP id a27mr64734869pfk.30.1558297610396; 
	Sun, 19 May 2019 13:26:50 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	p14sm20001974pfa.112.2019.05.19.13.26.48
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 May 2019 13:26:49 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
	<245b0a59-8a82-59e1-f35e-a0de8aa01d37@gmail.com>
	<CAPxNcnd0OQ4BS6xrm6vcR8UmAjGxsbksD7XMiU4GKDKKASXJzg@mail.gmail.com>
	<CAMKF1srf=vjP+PEgk6LHOib4oaxHx1OZUd_OFTqoyCeqUwdmSA@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <c4076978-6043-1989-449f-7c1c184b13cf@ibeeto.com>
Date: Sun, 19 May 2019 13:26:47 -0700
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
X-List-Received-Date: Sun, 19 May 2019 20:26:54 -0000
Content-Type: multipart/alternative;
	boundary="------------9837F666CDE157515D88FAA2"
Content-Language: en-US

--------------9837F666CDE157515D88FAA2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I tried to build for 32 bit with:

Build Configuration:
BB_VERSION           = "1.43.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "raspberrypi3"
DISTRO               = "poky"
DISTRO_VERSION       = "2.7+snapshot-20190519"
TUNE_FEATURES        = "arm vfp cortexa7 neon vfpv4 thumb 
callconvention-hard"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "master:ff472ffbb0d143de8187d84dbbf18453318f303f"
meta-raspberrypi     = "master:7059c374512f1c1c0df9ecab0703d11438bdf78b"
meta-oe
meta-multimedia
meta-networking
meta-python          = "master:1ecd8b43645883cd4fa652826e93137c942dd82c"

However, mesa-gl; now fails compiling:

ld: src/gbm/cd6bfad@@gbm@sha/main_backend.c.o: in function 
`_gbm_create_device':
| 
/usr/src/debug/mesa-gl/2_19.0.3-r0/build/../mesa-19.0.3/src/gbm/main/backend.c:104: 
undefined reference to `gbm_dri_backend'

I have not encountered that before when building for raspberrypi3 before.

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


--------------9837F666CDE157515D88FAA2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I tried to build for 32 bit with:</p>
    <p>Build Configuration:<br>
      BB_VERSION           = "1.43.0"<br>
      BUILD_SYS            = "x86_64-linux"<br>
      NATIVELSBSTRING      = "universal"<br>
      TARGET_SYS           = "arm-poky-linux-gnueabi"<br>
      MACHINE              = "raspberrypi3"<br>
      DISTRO               = "poky"<br>
      DISTRO_VERSION       = "2.7+snapshot-20190519"<br>
      TUNE_FEATURES        = "arm vfp cortexa7 neon vfpv4 thumb
      callconvention-hard"<br>
      TARGET_FPU           = "hard"<br>
      meta                 <br>
      meta-poky            <br>
      meta-yocto-bsp       =
      "master:ff472ffbb0d143de8187d84dbbf18453318f303f"<br>
      meta-raspberrypi     =
      "master:7059c374512f1c1c0df9ecab0703d11438bdf78b"<br>
      meta-oe              <br>
      meta-multimedia      <br>
      meta-networking      <br>
      meta-python          =
      "master:1ecd8b43645883cd4fa652826e93137c942dd82c"<br>
    </p>
    <p>However, mesa-gl; now fails compiling:</p>
    <p>ld: <a class="moz-txt-link-abbreviated" href="mailto:src/gbm/cd6bfad@@gbm@sha/main_backend.c.o">src/gbm/cd6bfad@@gbm@sha/main_backend.c.o</a>: in function
      `_gbm_create_device':<br>
      |
/usr/src/debug/mesa-gl/2_19.0.3-r0/build/../mesa-19.0.3/src/gbm/main/backend.c:104:
      undefined reference to `gbm_dri_backend'<br>
    </p>
    <p>I have not encountered that before when building for raspberrypi3
      before.</p>
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

--------------9837F666CDE157515D88FAA2--
