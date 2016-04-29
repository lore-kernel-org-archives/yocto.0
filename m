Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54191E00E72; Fri, 29 Apr 2016 07:18:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26E67E00E6F
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 07:17:59 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id d62so108860683iof.2
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 07:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=En7Bq9bV8i5eHCx/QISfo9jBqALZSST1YeZiHmXQQkk=;
	b=gHcOA6u8USvv/tAvKorzd6SnLumjMPOuJSUqnZp0aqs/CK+vKlyek5WdtJSBjvJAP+
	CHx/9xhwoOuJf9Uaj9EEa/Csp/xGMRQxGOg/yuFKMIqTNJ3680qHg9mcdZH4KI07Cu/q
	ldUzS4FITzO3obLdU11YRwicbPcngznrz8F+FkBskFyyf31FQSrQfQQFxf10YBPq8Ozo
	M/MyWvZ6v9R8Wxr1nRxNE8DOvfyifcs8mgC1a1Sga7p+6z900VkMoi0K24V5ihjNz/hl
	NPzBcD6NqxoKL/G6UxUjzuvbN/H9hl2TgQo6n+1xbw0H6Y6O/CoNM6EXZjZsvMtPwTNM
	e0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=En7Bq9bV8i5eHCx/QISfo9jBqALZSST1YeZiHmXQQkk=;
	b=eSDk8AO/pKdCJT5Kpmwky7tMxAnTa6fFeedfQkNIgJhRX8kcTK8GCbphKjXW8SPml7
	5ShWeqfkJxtzEo4OKYM5JvQQacAOMJpnAecjhJY2BiHYAGM3LBxSCriiCGt5bp0dFGi6
	zPdweis+ghuY+Bb3uY/rpao5EpjO0t4b07nSqXEZpXTpDKQbNyxr2jELXna3b+WPwJTH
	oSnHuSto4nmrLMrRZJ2/akD+7hun0LVl41aRXt9BTxQ3033CJBgsxI+xCGvMT/pcpdYT
	1G/c+jfVmWRGsagwYp+grOaBoszWbQ5VPQD+D/TsJTnutc3n80f0lGxRAm4ggs1zsSe9
	zwdA==
X-Gm-Message-State: AOPr4FXL/A1cjqVru142Kq2LqJ6lQNUJ623WI6o356udk7x6UqinvRg+7L2VQZWJ964zT3I03Qkx0x7ONZpQl6g0
X-Received: by 10.107.179.136 with SMTP id c130mr23887703iof.99.1461939479039; 
	Fri, 29 Apr 2016 07:17:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 07:17:39 -0700 (PDT)
In-Reply-To: <CAOorjZTRoxuFTkumqe-KmaVSfmNjMVpq6u=BpZGUQGoX7TAN3Q@mail.gmail.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
	<OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
	<CAJTo0La51T5zQZv0JbakTifLUNVv=n291fmrx=RhmLpDq+C7Gg@mail.gmail.com>
	<OFB3F7FD44.568863C7-ONC1257FA4.00364313-C1257FA4.0036E30E@esa-grimma.de>
	<CAJTo0LZgaYqZize00LWxVju_1zZnAai_O4TKyfcYApOyr_gcpQ@mail.gmail.com>
	<CAOorjZTRoxuFTkumqe-KmaVSfmNjMVpq6u=BpZGUQGoX7TAN3Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 15:17:39 +0100
Message-ID: <CAJTo0LaMC_ZYo07+i_Xf+oqijcOqPuOYwU0_7mzOia2MN0jWZg@mail.gmail.com>
To: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Fri, 29 Apr 2016 14:18:03 -0000
Content-Type: multipart/alternative; boundary=001a1148578c54e5980531a04ff1

--001a1148578c54e5980531a04ff1
Content-Type: text/plain; charset=UTF-8

On 29 April 2016 at 15:01, SIVA SUBRAMANIAN.P <psiva87@gmail.com> wrote:

> > If you submit the recipe to meta-oe then you can share development of the
> > recipe with others.
>
> How can we do that? Kindly guide.
>

In general the README at the top of the layer that your recipe would be
suited for should tell you how to submit recipes to it.  For example, this
is meta-oe's README:

http://git.openembedded.org/meta-openembedded/tree/meta-oe/README

Ross

--001a1148578c54e5980531a04ff1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 April 2016 at 15:01, SIVA SUBRAMANIAN.P <span dir=3D"ltr">&lt;<a href=
=3D"mailto:psiva87@gmail.com" target=3D"_blank">psiva87@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><span class=3D"">&gt; If you submit the re=
cipe to meta-oe then you can share development of the<br>
&gt; recipe with others.<br>
<br>
</span>How can we do that? Kindly guide.<div class=3D""><div id=3D":2z1" cl=
ass=3D"" tabindex=3D"0"></div></div></blockquote></div><br>In general the R=
EADME at the top of the layer that your recipe would be suited for should t=
ell you how to submit recipes to it.=C2=A0 For example, this is meta-oe&#39=
;s README:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra"><a href=3D"http://git.openembedded.org/meta-openembedded/tree/meta-oe/=
README">http://git.openembedded.org/meta-openembedded/tree/meta-oe/README</=
a><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a1148578c54e5980531a04ff1--
