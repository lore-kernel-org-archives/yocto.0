Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFE10E0094C; Mon, 24 Apr 2017 08:54:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 281C9E00839
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 08:54:47 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id m36so117279405qtb.0
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 08:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lMahNAxLvL2TYgy0fW6XJxtIUkOicu+q92hldmsbRco=;
	b=mDZigjGapeGcRtPOFCPu1+fJI0EKoSiQoe3KbqKHeIPM/dkahdrbxsxhKedA7ckkiP
	3Tm4OzaLRcK/HEAwCrHlZLiv6raa/FEWNIoXS/qkPguOeec1gmKjQM4pRT57WVXY4vo7
	WuGUUsC2Q5vwpVdWsS3KYDBpoV12EuJvthcbkx+Fe6gdMkJ7X+dTXnzC6MUKjdJhQ9mZ
	TmoYuApa84SK2npNcpXoofsyjVbSRI4BePrHuKNUAk0m3LDQFULmJfINuTS5SzreuPc+
	ybRb81Fie9qeYy6fnqQtM8T5vvFovXTnWjLi18jKRiCDIcOpBcPXD/LOuWPnV9C7Ct5c
	45ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lMahNAxLvL2TYgy0fW6XJxtIUkOicu+q92hldmsbRco=;
	b=Fr55cifzSWAXxQ8wYUtvb8TVmO2kTjIbxTjKg9Kw8fVzyzG9fHVRnC0/62KoKy7lmd
	Ds0ICQ0AiwNQv8Yb22OaSQEc1TUtb7X2br6zyiUjR63xrybLNS595G5Yu45GxbLw8SIE
	USPoOcQnPPTFpmqO6l9OjsILLUh6Gkf9h3Km1wzAt6A8KY5fF3l5DRiWXSH1rhM1IOw/
	/0MpKZdfVbJE7WingkSbNMz3MLQ44woM6J7oPoFjzZpS8RpzhEQK3zChDCEz2Du/ypOn
	07EoyrKqmsb+ibERWEWMRhD6iXuuM0M3bV+a+XFNq+4dr7kLaMY9BHeX4kfeHXnF9ziO
	sEMA==
X-Gm-Message-State: AN3rC/7pXazkVpE/r94No7/jhR/aeGBXwh+UMEyAzgyaU9Y8rzJN1dOC
	e+JhxIVeqf9sOKkrtgL+IQSfwVE7P4wn
X-Received: by 10.200.34.242 with SMTP id g47mr25803914qta.109.1493049287100; 
	Mon, 24 Apr 2017 08:54:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 08:54:26 -0700 (PDT)
In-Reply-To: <CAJTo0LaWkRxjaF4j1HHhUqFDYYTmGADTuiLo8zqPwR+wKSbY2A@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CAMKF1sqfvtQPWN5Yuz3RPYkXpneS+XWcYmit_=bcvKGo3_hx8w@mail.gmail.com>
	<CAJTo0LakaSZhJodT2KQx6u0TEaBL5Ruig3oOdfrtCzQUf1cxXg@mail.gmail.com>
	<CAJTo0LaWkRxjaF4j1HHhUqFDYYTmGADTuiLo8zqPwR+wKSbY2A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 16:54:26 +0100
Message-ID: <CAJTo0LZJSZ-UJc7zTyYNf3YYKFD3mu=-zprQroZwxB1SZBQ+Bg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 15:54:49 -0000
Content-Type: multipart/alternative; boundary=001a114037d463e2f5054deba011

--001a114037d463e2f5054deba011
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 10:47, Burton, Ross <ross.burton@intel.com> wrote:

> The updated glibc recipe doesn't appear to be very happy:
> https://autobuilder.yocto.io/builders/buildtools/
> builds/240/steps/BuildImages/logs/stdio
>

Note that every nativesdk-glibc build is failing like this, so that's SDKs
broken.

Ross

--001a114037d463e2f5054deba011
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 10:47, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"=
>The updated glibc recipe doesn&#39;t appear to be very happy:=C2=A0<a href=
=3D"https://autobuilder.yocto.io/builders/buildtools/builds/240/steps/Build=
Images/logs/stdio" target=3D"_blank">https://autobuilder.<wbr>yocto.io/buil=
ders/buildtools/<wbr>builds/240/steps/BuildImages/<wbr>logs/stdio</a></div>=
</blockquote><div><br></div><div>Note that every nativesdk-glibc build is f=
ailing like this, so that&#39;s SDKs broken.</div><div><br></div><div>Ross<=
/div></div></div></div>

--001a114037d463e2f5054deba011--
