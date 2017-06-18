Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3482EE00B99; Sun, 18 Jun 2017 00:52:26 -0700 (PDT)
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
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC843E00B21
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 00:52:24 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id 83so40542624pfr.0
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 00:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=tKPkrBBZDTcL6OAwOjCqnVngOAhTAsdTgYODURMqhNA=;
	b=tu3DRHrHcMOekdp6ZW+J/lSsQoLmD41QPOVClEntOrS85aR2bcYczkx5yh6Nmjgsus
	YAEq5AGYAiW/WeQ/y03wf6f7hUT7e3mDJjETUTqN6V1HiNI1xut0hfELgY3trVuyIWwc
	6DPpkT4ynfcPCcFsZ4xVUl6Phs9b2catnckLHc7KRTSr8aGCKM7cmK2G//8tT9/sRpMt
	u4OU1vaWWX4T7bnyGfNptRoITyM/+vKOiAwFsUZhqhDnYjQdEta5Qej8GY+dSKT13Vhi
	9EjKTMxiHjR9iqnp0/37KP34VZmTlsUELxPOBtpF/Pz9m+3KeBmjhAOxm8Dx2ttk7JuE
	vcog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=tKPkrBBZDTcL6OAwOjCqnVngOAhTAsdTgYODURMqhNA=;
	b=lCk150ZQxGt4ubCARNZkm6xFa4CO2Euq3/tdGzKnIBVXRHsmKtJU+IDryXHIKD3oA1
	I59IHHcDrxH+wD39xGkjEyByjOm+f4RVDvqLmoszkKDEpnp/ulZ/LBZIOHbuv9cHHYhF
	YWh3f6GfDrmnSh1kfj+rt/R4RqQa8bVNRInuUoIvhEKu1OLhW9mv0Sp5nk1wy6jMKuTa
	dzHTp02C4ik4f0a0GjbXRdvtEmgVpHr+fEkK7/ygjJULUl4lgfgJS8bTR/5LPfmPwoER
	XlHh53DnzWGBGeivomaMH7d5UjjWz9Eoc5QsdtSdG9gVKwZ99goWMaF6cXs4V3T+zz2K
	MWVQ==
X-Gm-Message-State: AKS2vOymBhWP5wlRtW2Cp0zMdwuy9MGmdmauvUgA82lIW2fKjptz+r1Y
	51Z6MjT/7glt6sHw
X-Received: by 10.99.54.11 with SMTP id d11mr20014603pga.59.1497772343870;
	Sun, 18 Jun 2017 00:52:23 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113]) by smtp.gmail.com with ESMTPSA id
	r83sm13825105pfk.57.2017.06.18.00.52.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 18 Jun 2017 00:52:23 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
	<c0c0b79d-12c0-27b3-1ef9-f3798c95e02e@gmail.com>
	<CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <104e49b0-c604-4cba-0a26-da256e2fb180@gmail.com>
Date: Sun, 18 Jun 2017 15:52:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQcwEW7=Wmrk0LYN0ubfvwxTNZQnCDh=wwWRWmSaXgWJdg@mail.gmail.com>
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
X-List-Received-Date: Sun, 18 Jun 2017 07:52:26 -0000
Content-Type: multipart/alternative;
	boundary="------------3492F8778D810820C267DE94"
Content-Language: en-US

--------------3492F8778D810820C267DE94
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

What version are you talking about ? how can I know that ?

Thanks


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

--------------3492F8778D810820C267DE94
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>What version are you talking about ? how can I know that ?</p>
    <p>Thanks<br>
    </p>
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

--------------3492F8778D810820C267DE94--
