Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3FD9E00B87; Fri, 25 Aug 2017 09:42:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB48E00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 09:42:37 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id t3so1785996pgt.0
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 09:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=N9Q6OGum6376iz9d9YYDWtNJvKWJ61EkBgMjopCmHB4=;
	b=uy23Bq1/HtSfZls7aZpFOoA9xpYC+2HtpFuVF3unS/kxEhUwm3XF3KXQ2rJsmSiM9b
	b/Opt2hx4YR3Sh4zVKd6wlNwzbKlkw+nH67yHdtbo0vGG1tmWSEqAW4kRxPXsQJWZ/oX
	KL+o9TMTg7meqCqO6gdB0/bgthgOxd9BIvmC76/IY1Hqcdly4PjcGkCRNMt+7LEOMXzc
	vNqnfxHrckFsHW5qgcGRXBoGtXsbC6FgTnUw2bZsh709eFXWu2+s5zcEfgpS/yXIyb6d
	D1fTfRtAVqR//IYZYOIFgWMPI+f6ZabU9BXB0lITiwMEYGPh7xIQ+nxOfM5S73nUNNNy
	ejlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=N9Q6OGum6376iz9d9YYDWtNJvKWJ61EkBgMjopCmHB4=;
	b=Ftw0GyPyHCUhyex6ICVpYoqwMqyp5CUkqdHDe+kb0KX4JTx7xGeHQCyJ9TANLKFzAN
	qmy7MhvVk6LACHxFKY5w3lpb9HCq9P6tELHxNngwQ8TyztgJ2Ub5kNoSJZpDM3f2bPMn
	9PkdgoS6/JVwpKqsxKxyoAQmNCtYf84rY2+aMh6fJkcwboAY26XyFkkVr8dv4Y8ieRdN
	E9zZoWuBWTE6IC8ygcpwOP0GbiBM0+kWEWZAIxYcU+G+Pfc5QTu/W4bIyl4aGh6tX59o
	f8hU/LxQdPfSfwF9naGUMfaymkX6mHqmIL9R6tWXHhPmTkGSMul9Lu3pH8hHSAMBK5V2
	7b9Q==
X-Gm-Message-State: AHYfb5iqANnmy36UxQ+fOm8JTGKRvQwKcQk8bnv3VFJrgV4fBAdrbwLF
	EeX4AY5eZSEkm0LKBYX+pt4EXdY/YA==
X-Received: by 10.98.99.131 with SMTP id x125mr10477905pfb.285.1503679357556; 
	Fri, 25 Aug 2017 09:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
In-Reply-To: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Aug 2017 16:42:26 +0000
Message-ID: <CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
To: Bill Jenkins <bill@korgrd.com>, yocto@yoctoproject.org
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Fri, 25 Aug 2017 16:42:39 -0000
Content-Type: multipart/alternative; boundary="001a11483b34f69fda055796a1c5"

--001a11483b34f69fda055796a1c5
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:

> I am trying to just get the simple 64-bit rpi-basic-image to work, but the
> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
>

Can you plugin a serial cable and see if that worked or try to add ssh
daemon on target and try to ssh into pi

>
> If I build with MACHINE ?= raspberrypi3, the 32-bit image works just fine.
>
> Is there something special that needs to be set in order for the
> "MACHINE ?= raspberrypi3-64" image to boot successfully?
>
> Thanks,
> Bill
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11483b34f69fda055796a1c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Fri, Aug 25, 2017 =
at 9:39 AM Bill Jenkins &lt;<a href=3D"mailto:bill@korgrd.com">bill@korgrd.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I am trying to j=
ust get the simple 64-bit rpi-basic-image to work, but the<br>
Raspberry Pi 3 seems to hang with the rainbow screen at startup.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Can you plugin a=
 serial cable and see if that worked or try to add ssh daemon on target and=
 try to ssh into pi</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
If I build with MACHINE ?=3D raspberrypi3, the 32-bit image works just fine=
.<br>
<br>
Is there something special that needs to be set in order for the<br>
&quot;MACHINE ?=3D raspberrypi3-64&quot; image to boot successfully?<br>
<br>
Thanks,<br>
Bill<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--001a11483b34f69fda055796a1c5--
