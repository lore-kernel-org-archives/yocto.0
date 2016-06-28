Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EF63E00C9D; Tue, 28 Jun 2016 08:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D04ADE00C72
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 08:43:16 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id t74so20451869ioi.0
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 08:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wl5FAs1YMNBbVdXOqGxdIg/WURVyHScHrfN94PIc6Eo=;
	b=QRgtG5loQra0zMLy0bpkyhJSSIrYEFoM2XCyqBUDjewXwXPZHXaz2BpJ8oGsKVQVgk
	+aChJKak6Xi++1HGWKOyuXQYfMLYbngGr5Mav2U9Uct3wouSx8zgH4OTvLr9I5DZS9fH
	zidvHv41RYg1o+gw/MSMeDI24DxDWtJHiGAjHyy3e2ztViCp32XOxQLlQrt664+joGb9
	Hml52hbws5xp+Fg876sp3eAvGKt33myGeTFH8MO6C6ky4XDccH2ER1yJHtNOGz3Ne67n
	18BB+I5THfPmX5ngkDbhWzJbWMT9ieKJfFHKkY6gdNkbaxGlGRJGEXiWlgXjjPsEVGyw
	6IGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wl5FAs1YMNBbVdXOqGxdIg/WURVyHScHrfN94PIc6Eo=;
	b=Ee4n/ndsAfMW4yN5qFB85KEhw/WIBct6O2xwN19wUzioNUEJUiJJAQNGmvjfHBERnv
	plQGrd3x3BabuT90hQ/KhvVHvD69ZC7ol0JIUaH1Ft9uqI+/1GDftKSVpr7eKC1fIRns
	/TJZHERnLyvri1ICHnpdN5/8v7RRvVBMyITMIYxA51ysnd7lt7Zqm9PP9HqE8zmAb8RO
	DE26ADImGCF8xq3VeZnScjmONSqvKY6Pq7JclpouvnVrDHIq98ROQYKngwd26M2qotn1
	lMvWxFzNbqwnwtCb0WAAcCn9DE/9yE/DRa9+MWj4f4QWkehO9y1Pz8hGLmFeHCbJ7GPI
	39BQ==
X-Gm-Message-State: ALyK8tJwWzuPdpa7EJPMvzmSw21Zf9sf846+TPClzzd32odL0JBkv8KyzrtiTUN7sU8VkNwBShswENWyiqmdWabg
X-Received: by 10.107.135.137 with SMTP id r9mr4654754ioi.133.1467128595958;
	Tue, 28 Jun 2016 08:43:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Tue, 28 Jun 2016 08:42:56 -0700 (PDT)
In-Reply-To: <CACv_uOSvZc9gLG5c4g2V04F0gEwG6qfuLLoqQEX2TUT_1buGhw@mail.gmail.com>
References: <CACv_uOSvZc9gLG5c4g2V04F0gEwG6qfuLLoqQEX2TUT_1buGhw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Jun 2016 16:42:56 +0100
Message-ID: <CAJTo0LYY=uGMHx6UEqnTGCi9Ja8NKuiCu=8msz_weL5gfy5eqg@mail.gmail.com>
To: Austin Kim <augiekim@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to generate debug symbols but not copied to the image?
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
X-List-Received-Date: Tue, 28 Jun 2016 15:43:18 -0000
Content-Type: multipart/alternative; boundary=001a113ec842cd70f70536587e12

--001a113ec842cd70f70536587e12
Content-Type: text/plain; charset=UTF-8

On 28 June 2016 at 16:38, Austin Kim <augiekim@gmail.com> wrote:

> I'm wondering how to copy only stripped binary and leave debug symbols on
> the host build machine. I'm running on the OS on a very tight HDD space so
> I cannot put debug symbols into the image. So I tried
>
>
> PACKAGE_DEBUG_SPLIT_STYLE = 'debug-without-src'
>
> EXTRA_IMAGE_FEATURES = "dbg-pkgs"
>
> But the output image is still bigger than the original image. Is there
> anyway to keep the original size and keep debug symbols and source code in
> the host so DBG may reference them during debugging?
>

Adding dbg-pkgs to IMAGE_FEATURES says that you want full debugging on the
target.  Simply don't set that and you'll get stripped binaries on the
target but full debugging is available on the host for remote gdb (see
IMAGE_GEN_DEBUGFS).

Ross

--001a113ec842cd70f70536587e12
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 June 2016 at 16:38, Austin Kim <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:augiekim@gmail.com" target=3D"_blank">augiekim@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m wondering how to copy =
only stripped binary and leave debug symbols on the host build machine. I&#=
39;m running on the OS on a very tight HDD space so I cannot put debug symb=
ols into the image. So I tried=C2=A0</div><div><br></div><div><br></div><di=
v>PACKAGE_DEBUG_SPLIT_STYLE =3D &#39;debug-without-src&#39;<br></div><div><=
br></div><div>EXTRA_IMAGE_FEATURES =3D &quot;dbg-pkgs&quot;<br></div><div><=
br></div><div>But the output image is still bigger than the original image.=
 Is there anyway to keep the original size and keep debug symbols and sourc=
e code in the host so DBG may reference them during debugging?</div><span c=
lass=3D"HOEnZb"><font color=3D"#888888"><div></div></font></span></blockquo=
te></div><br>Adding dbg-pkgs to IMAGE_FEATURES says that you want full debu=
gging on the target.=C2=A0 Simply don&#39;t set that and you&#39;ll get str=
ipped binaries on the target but full debugging is available on the host fo=
r remote gdb (see IMAGE_GEN_DEBUGFS).</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--001a113ec842cd70f70536587e12--
