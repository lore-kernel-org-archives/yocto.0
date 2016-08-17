Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 355E6E00E06; Wed, 17 Aug 2016 01:50:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA0CFE00D02
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 01:50:44 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id b62so130300999iod.3
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 01:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NKyxtuNX2mZY80j1dSwDOq7VHW6WhfsBfXEOzOWJjnA=;
	b=Q83gfi2ouYaXuKOEX+L9jMM6RUS00Jothpjc0V3c8kkwG7tKwEG9JjbdN/2QzFnmKc
	gYdCRmmqsUAds4x4A0l/bzgn2GmcVHFAQFPGnntVKQ1dlTNNQe62wsnpKQBUxtSWcOLQ
	vtvbOVoisZtl5idQF3mvnD8Nkyxk1VPj8FVAH1x/fohp0g+ydBmkhX2ylzOZnUH8N5zC
	DKbHnwg/2Vi5ILb7izI4bJoK7DbaTDl5izLSL7BP9wctFGgpW6HFa60A3PaTVls+QYqo
	flWZvW15nmFiqTiNWAVSuAgMQrDtMh10vO7rNAhYmuaLdD8zurxqhnGG4R1933qcDY4p
	fUfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NKyxtuNX2mZY80j1dSwDOq7VHW6WhfsBfXEOzOWJjnA=;
	b=LeZ7tnjXX5wW9rAIYGYPUQXrl705+u0UEljPARlIDD95ISrHjCJf+KQCDBtF+EKMBx
	3M0c1WuglUjSAKEqA9Y02FPBBgunGC8SeufhmsW8PZLBRgFU5GqY4I6pHbqyBwVTHkW8
	F4GxnsuNUaYk/k3JFSYjr0q/MmUCsCVMk8VzUkbQEluMYixCXBfuM94ZLZEZbW+f4qzx
	vNeJMmOjln2FuYLFPBOCsDveOxpbw4n48dUs0IOd2Er/7tNqc3j1InpYPv2BUaRsUQV3
	wtZKFqIgRzF6nDQ8b/XN5/fa81w7xH2yHA2Hix20VLlM6SyGM4t5GnCn7RlK98C9whe6
	TWQQ==
X-Gm-Message-State: AEkoouuYqhyA+3CAQys4bhqF0pcA3/RLy6fkO12Anuk02kEhx1outANmeuNoDSLmyQf4jDbGB0A2jMVdorYDWZ9s
X-Received: by 10.107.138.212 with SMTP id c81mr44068450ioj.148.1471423844058; 
	Wed, 17 Aug 2016 01:50:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 17 Aug 2016 01:50:23 -0700 (PDT)
In-Reply-To: <OFA386058F.B9202DAA-ONC1258012.00240ACD-C1258012.00257505@esa-grimma.de>
References: <OFA386058F.B9202DAA-ONC1258012.00240ACD-C1258012.00257505@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Aug 2016 09:50:23 +0100
Message-ID: <CAJTo0Lb35+SygrQppjfFmN+x-R9FLf=neSQ=fHHWp2aWj-nW-Q@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to generate a debug version of a single application and deploy it into the image?
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
X-List-Received-Date: Wed, 17 Aug 2016 08:50:47 -0000
Content-Type: multipart/alternative; boundary=001a113ed9328a2495053a408fb7

--001a113ed9328a2495053a408fb7
Content-Type: text/plain; charset=UTF-8

On 17 August 2016 at 07:49, <S.Jaritz@esa-grimma.de> wrote:

> In my case I have a software which do logging. The amount of the logs
> depends on type of the build (Release skips all debug messages). Let's
> assume that my recipe for the software(myApp) is called myApp.bb. It is
> downloaded from an external git source and build through cmake.
>

Have a PACKAGECONFIG or similar to control whether debug is on or not, and
manipulate it through your local.conf (eg PACKAGECONFIG_append_pn-myrecipe
= " debug").

Ross

--001a113ed9328a2495053a408fb7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 17 August 2016 at 07:49,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jari=
tz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif=
">In my case I have a software which do
logging. The amount of the logs depends on type of the build (Release skips
all debug messages). Let&#39;s assume that my recipe for the software(myApp=
)
is called myApp.bb. It is downloaded from an external git source and build
through cmake.</font>
<br></blockquote></div><br>Have a PACKAGECONFIG or similar to control wheth=
er debug is on or not, and manipulate it through your local.conf (eg PACKAG=
ECONFIG_append_pn-myrecipe =3D &quot; debug&quot;).</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a113ed9328a2495053a408fb7--
