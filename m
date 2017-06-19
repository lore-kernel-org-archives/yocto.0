Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91677E00AE6; Sun, 18 Jun 2017 20:01:00 -0700 (PDT)
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
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66260E00ACF
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 20:00:48 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id s66so47556744pfs.1
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 20:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=UZe/jJ0OcvrJomFnQsCoXxdTLcY9nsVd8sbZVcPjb8o=;
	b=DagIthWxwSHSQ1PP4Wu+AHLCAhDM+V0nTWYiyUCSB1Q57Z41xzCzavb3saVo1ecxJc
	lJ3trx1PGUCw4FPTcbbnefBuBtYZgDKjftekO1K4F7HWLtNQJpOpqFMSQPNiy6tA0zXY
	Z2lCgjDz75EvzJm0eEy1Wet4pl5v3o4dwjr87/wc0+iHQn1VN8yv9KRdBwCXtTDeh1ni
	TFdSg79pBCso1OjDRvtoDhvWiH2MPnsMdY8t33/d5SjTdI57sS4VHHeaxaHzpW4YBeQj
	cQGa7ybWvZrfVCEGrmsyFt1d/f1EoevM14S1q9quT15z9pOur5uPXJRU0gEnFOe1xvsv
	cxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=UZe/jJ0OcvrJomFnQsCoXxdTLcY9nsVd8sbZVcPjb8o=;
	b=gzlMtCUUbaN9pFZ/ppGRK8HxFyHGJYgo49jdFtsqB54O4WoBv6Dl5JC2phtmBaZBTz
	xDObRWyVs/brAfgTKpn442NkvEF48L5x2o6f8ELDFWgtrP0fwiOwK7tvgwWFdr9cVRJR
	T/bOsqkTaQCfxCY/1oTX2Ye5u1VxxmiRxaGJmnTEn/onlVIK3jrBFmnvLnrUOpN9D5c5
	SeOaLlaZinZqH3UHopqCFdxo6pZ6yf8DqrP4hRV8VtPy+Hv+mqdjz4oV9mxONa2nT+HG
	5WgsVD7dtopUTnFCOMxoY9qb7UTM9ErLOmA1v6ef3d01C3rB5FtOrwdLZ1PXN/pVt/57
	xWCw==
X-Gm-Message-State: AKS2vOy+FdOXKCUUjs3ITSVa4ZGrY03mlqS+oUr0hCD4GovWA0UsVvY9
	5dtMRYqqjQSb6LCh
X-Received: by 10.99.177.5 with SMTP id r5mr23417180pgf.21.1497841247794;
	Sun, 18 Jun 2017 20:00:47 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	t77sm17824432pfg.102.2017.06.18.20.00.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jun 2017 20:00:47 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <08efb082-02a8-7ff9-c5be-e6b4b09edea2@gmail.com>
Date: Mon, 19 Jun 2017 11:00:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
Subject: RTL8192EU rev B (SMIC) ==> rtl8192eu_nic.bin ?
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
X-List-Received-Date: Mon, 19 Jun 2017 03:01:00 -0000
Content-Type: multipart/alternative;
	boundary="------------535784A4198B291D24D519E7"
Content-Language: en-US

--------------535784A4198B291D24D519E7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Everyone,

How can I obtain : rtl8192eu_nic.bin?

I got this message :

RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=1, BT=0, GPS=0, HI PA=0
usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed with 
error -2
usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed

Thanks,

On 18/06/17 15:49, Martin Jansa wrote:
> You didn't say which versions you're using.
>
> If you're using latest oe-core with gcc7 then you will need v3 version 
> of this change:
> http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html
> I'll send it later today.
>
> > And how can I clean after building it ? It took about 70Gb of my drive
>
> Like any other recipe:
> bitbake -c clean foo
>
> On Sun, Jun 18, 2017 at 1:41 AM, Riko Ho <antonius.riko@gmail.com 
> <mailto:antonius.riko@gmail.com>> wrote:
>
>     Hello Everyone,
>
>     I tried to compile chromium but never succeeded, took me already
>     12 hours and stopped on 99%,
>     I used bitbake for doing it,
>
>     Is chromium not compatible with arm CPU ? it was working with
>     X86_64 before.
>     And how can I clean after building it ? It took about 70Gb of my drive
>
>     Thanks
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
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

--------------535784A4198B291D24D519E7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Everyone,</p>
    <p>How can I obtain : rtl8192eu_nic.bin?</p>
    <p>I got this message :<br>
    </p>
    <p>RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=1, BT=0, GPS=0, HI
      PA=0
      <br>
      usb 1-1: RTL8192EU MAC: 00:0b:81:a2:a5:60
      <br>
      usb 1-1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
      <br>
      usb 1-1: Direct firmware load for rtlwifi/rtl8192eu_nic.bin failed
      with error -2
      <br>
      usb 1-1: request_firmware(rtlwifi/rtl8192eu_nic.bin) failed
    </p>
    Thanks,<br>
    <br>
    <div class="moz-cite-prefix">On 18/06/17 15:49, Martin Jansa wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com">
      <div dir="ltr">You didn't say which versions you're using.
        <div><br>
        </div>
        <div>If you're using latest oe-core with gcc7 then you will need
          v3 version of this change:</div>
        <div><a
href="http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html"
            moz-do-not-send="true">http://lists.openembedded.org/pipermail/openembedded-devel/2017-June/113247.html</a><br>
        </div>
        <div>I'll send it later today.</div>
        <div><br>
        </div>
        <div><span style="font-size:12.8px">&gt; And how can I clean
            after building it ? It took about 70Gb of my drive</span><br>
        </div>
        <div><span style="font-size:12.8px"><br>
          </span></div>
        <div><span style="font-size:12.8px">Like any other recipe:</span></div>
        <div><span style="font-size:12.8px">bitbake -c clean foo</span></div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Sun, Jun 18, 2017 at 1:41 AM, Riko
          Ho <span dir="ltr">&lt;<a
              href="mailto:antonius.riko@gmail.com" target="_blank"
              moz-do-not-send="true">antonius.riko@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello
            Everyone,<br>
            <br>
            I tried to compile chromium but never succeeded, took me
            already 12 hours and stopped on 99%,<br>
            I used bitbake for doing it,<br>
            <br>
            Is chromium not compatible with arm CPU ? it was working
            with X86_64 before.<br>
            And how can I clean after building it ? It took about 70Gb
            of my drive<br>
            <br>
            Thanks<span class="HOEnZb"><font color="#888888"><br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href="mailto:yocto@yoctoproject.org" target="_blank"
                  moz-do-not-send="true">yocto@yoctoproject.org</a><br>
                <a href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank"
                  moz-do-not-send="true">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
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

--------------535784A4198B291D24D519E7--
