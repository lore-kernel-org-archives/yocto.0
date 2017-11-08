Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3A5DE00D4D; Wed,  8 Nov 2017 08:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 673C4E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:47:21 -0800 (PST)
Received: by mail-io0-f182.google.com with SMTP id 134so6632268ioo.0
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eoHewZ798x3taB3FfCRPywdjsJGX45lC+5k/Pyq9shc=;
	b=IfXuVTjCWBFC42Tv/D5UX2UKKdKOzaESBms21AH1djrBrUV3c+SBll9vRmR20b/Xql
	lQVsmfoTWCNhVNIZ7cy0HUEKHwQmGfgIv3VFat2Nm3T+SpdMH4QI0S4IKjlYwoc45xDT
	ZOzopRiqNuFI1mZh7VfY6G2OChaVesyJHWZ6riThyWHY6Cj6BSJS8RlMeSGk8/5A2H7C
	k9/2ETQekDGgoY44YO5Hhw5+9Z8Ta8VAYAbTDPmV3SBG3IQ8g/u4147ynO14JaQzk/aC
	DQx4vPHW/a9Qzbg6OPUi/wi3ozMnYmG4i4tYAQJ/YyHPtOIqcqFk/sIxr2VZB4QpgLEC
	aekA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eoHewZ798x3taB3FfCRPywdjsJGX45lC+5k/Pyq9shc=;
	b=iHlDU0V0FDhopobkSrge/KtcYBfD5kPWUU4+WcGC0AyZj5vvGVO6fb/mLFRIZYugkx
	uLjGBCMYYbJIU9WWR9Brey2krlY8XgiaQ+dB4Ox09Z0UAqosiCdKQLr/PSYRuO7yYOqU
	vaBtfEd+A8zo/CawO7aj4evjBj+Tq+u/zEGdlS78AFLpvBYAun1Gotyps0mtAYMiVWw2
	vENHdtQ6qMuB2FEtHbw5gKPqidS0CMeG/BwxVE2vON938/TK3sdmA4Orh59kN9dBoCCo
	hVXoEobPAjOV54rJK7UuZU8iVrST8RIMbTllVhJS0IaJZ3H25AGGHuRYAoh6DiYyQa0p
	P+gg==
X-Gm-Message-State: AJaThX7Q3gE4lvMw6tVXm18TFd4t4zoObR64B9twX2uPJNfsfAuJheAA
	SQSrDvGzJo815EiYH46FDjfySIHT2JPQHSf6Z3tGRA==
X-Google-Smtp-Source: AGs4zMZfAXliWl0Ubo+gqepSenswnEkAmTceD7+CjBKlNORC+RVGg7qItv9xb+LG6tyq0cK7DLHNRx/A1glYSgdZlDc=
X-Received: by 10.107.36.80 with SMTP id k77mr1496680iok.176.1510159641494;
	Wed, 08 Nov 2017 08:47:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:47:01 -0800 (PST)
In-Reply-To: <735cb870-42bf-298c-9e39-135e7e7da133@embexus.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
	<CAE0QtjMWEr78VDNzPCd=sC2Uze9FwK=r23yNUt3ZsVEDTRvrfw@mail.gmail.com>
	<CAJTo0LaapSRMFq79XrQL1RJUgG1ZJtp909y+MOoUbuUBPHN37g@mail.gmail.com>
	<CAE0QtjMF=wfkypu8Fy=3Mq-Jd8RXvH2i6wmbmATpOBobzfssvg@mail.gmail.com>
	<CAJTo0LZYLhQWPKvwwsx_r-icVC-78QnOH-idvD8ag9NrTcxwQg@mail.gmail.com>
	<735cb870-42bf-298c-9e39-135e7e7da133@embexus.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:47:01 +0000
Message-ID: <CAJTo0LaUC6spUbg5TmX6WYLA_28-5LEPo2hYrDYWvVPGw4phRw@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:47:22 -0000
Content-Type: multipart/alternative; boundary="001a1141909efc54f0055d7b7048"

--001a1141909efc54f0055d7b7048
Content-Type: text/plain; charset="UTF-8"

On 8 November 2017 at 16:41, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:

>     (By the way, I just build brand new PC with 16 threads CPU, 32G
>
>>     memory, and install Ubuntu 16.4.3 with ESXI-6.5)
>>
>>
> Do you have a Ryzen 7 based CPU ?!
>
> In this case Ubuntu 16.4 with Linux kernel 4.4.x is know to be broken
> You should upgrade your System with a recent kernel !!!
>

Following up, it's possible that this brand new PC has a cooling problem
and is overheating during the build, or the memory isn't installed
correctly.  This will cause random failures.

Ross

--001a1141909efc54f0055d7b7048
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 November 2017 at 16:41, Ayoub Zaki <span dir=3D"ltr">=
&lt;<a href=3D"mailto:ayoub.zaki@embexus.com" target=3D"_blank">ayoub.zaki@=
embexus.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">=C2=A0 =C2=A0 (By the way, =
I just build brand new PC with 16 threads CPU, 32G<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><span class=3D"">
=C2=A0 =C2=A0 memory, and install Ubuntu 16.4.3 with ESXI-6.5)<br>
<br>
</span></blockquote>
<br>
Do you have a Ryzen 7 based CPU ?!<br>
<br>
In this case Ubuntu 16.4 with Linux kernel 4.4.x is know to be broken<br>
You should upgrade your System with a recent kernel !!!<br></blockquote><di=
v><br></div><div>Following up, it&#39;s possible that this brand new PC has=
 a cooling problem and is overheating during the build, or the memory isn&#=
39;t installed correctly.=C2=A0 This will cause random failures.</div><div>=
<br></div><div>Ross=C2=A0</div></div></div></div>

--001a1141909efc54f0055d7b7048--
