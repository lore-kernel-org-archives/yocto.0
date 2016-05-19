Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64DDDE00E91; Thu, 19 May 2016 12:20:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF53FE00E88
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 12:20:37 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id 190so120186723iow.1
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 12:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2Lb+hNBpqStHrhSRfRMMLGWfgYWmFIuDpuhH9h/47dI=;
	b=JmFjljq1p5ZNPnGrHpk7/ZzNyOP/XSZJ0xvXHy02edNd5eYaoQtwss8zvgVASSzK1i
	EC0MRv0k1b0aLDYPLogT7smCXR6JgZPXwVppKgTPXAvkyyyw7AUGAc8wFVkj7JB7KeBs
	vbVHw2kIGLYrChgtxGk3e89N3+4tMUp5GkadgDJsgspjGu/LZV23Q1MLkBtwYQvYdmrJ
	jUoMLf67BKSKCy7HYqA2ad3SqqSw4WFP94IKtaMeJGq3WIEXGhmTzSb0KPTrLa5U3K7g
	GkaMWIvTVQMhlQLyxHVBZpaeJlRLw9ou86wNaoH/Tna2RZ/78xf0WZdovxB2ta+Rmo+d
	DhzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2Lb+hNBpqStHrhSRfRMMLGWfgYWmFIuDpuhH9h/47dI=;
	b=dUc7cdK+ZN1H7LOE68UqyE7hZJtfnP5FpDAYIQznqW15G1tBrbFzTIJuRHeBluvcn5
	A7fnLEy1/Vs+N91Jt+zImOhyqdshHo7vricdYLdKdkq3NC6ydxrI8pic3/DZ0y9F76Zb
	P7T78ePHzNhOq9z/yhd1SWi6wcgyZersjgCIjDCxPNf6B1qQ2YcMTGlxJHeura3z/OuN
	sMgPIh0TIzlGksn4nkbIkAzPzjfgQuBZIAiqA4I/tYsx2EUVmJ7FQCGzuIWT1y02fmP0
	2Fuwm8jqKVz+EqNVtZLQDTiQEB5Rsie9WUleSXHY/oYGyFgrLAQwzeDVNJqXwWgZM7YV
	vdaw==
X-Gm-Message-State: AOPr4FVu8VazWf4b33PTSNQ5qnkF4olLSbb9vqvtxosqCYZZ0Ho0XNWAXqDL7/F6oxK1nd2rB7dRETViQltC9Ca8
X-Received: by 10.107.135.211 with SMTP id r80mr11925838ioi.133.1463685636737; 
	Thu, 19 May 2016 12:20:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 19 May 2016 12:20:17 -0700 (PDT)
In-Reply-To: <048d01d1b1ec$9a70b190$cf5214b0$@ln-systems.com>
References: <048d01d1b1ec$9a70b190$cf5214b0$@ln-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 May 2016 20:20:17 +0100
Message-ID: <CAJTo0Lb_4+uwAz+1J3Byvpkr2cj2RQJYTAyEx3bf96Kcnd_Qvg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to pre-install a .deb file into rootfs
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
X-List-Received-Date: Thu, 19 May 2016 19:20:38 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a70e47c053336de85

--001a113ed20a70e47c053336de85
Content-Type: text/plain; charset=UTF-8

On 19 May 2016 at 17:36, Colin Helliwell <colin.helliwell@ln-systems.com>
wrote:

> I have a recipe (for kura) which uses a do_compile to run kura's build
> process, and this in itself generates a .deb (i.e. I'm not doing anything
> within the *recipe* to create the .deb - it's done for me by kura's build
> steps). I can copy the .deb to the target and use dpkg on there to install
> it.
>
>
It really would be best to stop Kura from writing debs and instead find the
directory that Kura stages the deb in and copy that directly to ${D} in
your do_install.

Ross

--001a113ed20a70e47c053336de85
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 May 2016 at 17:36, Colin Helliwell <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:colin.helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-=
systems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p clas=
s=3D"MsoNormal">I have a recipe (for kura) which uses a do_compile to run k=
ura&#39;s build process, and this in itself generates a .deb (i.e. I&#39;m =
not doing anything within the *recipe* to create the .deb - it&#39;s done f=
or me by kura&#39;s build steps). I can copy the .deb to the target and use=
 dpkg on there to install it.<u></u><u></u></p><p class=3D"MsoNormal"></p><=
/blockquote></div><br>It really would be best to stop Kura from writing deb=
s and instead find the directory that Kura stages the deb in and copy that =
directly to ${D} in your do_install.</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">Ross</div></div>

--001a113ed20a70e47c053336de85--
