Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6616E00C65; Sat,  2 Jul 2016 01:02:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906AAE00C1E
	for <yocto@yoctoproject.org>; Sat,  2 Jul 2016 01:02:52 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id f30so117765470ioj.2
	for <yocto@yoctoproject.org>; Sat, 02 Jul 2016 01:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oeALZD6MmCOmf7PMX12BknDnoDtRsUPUGPmdbFtjHiw=;
	b=JkvfIotGrvLEhVbd8coyPHcHhXNaMRm8MPUk6+MiGPKM7dGrwpTAE1BKNC7djXa/+O
	sBU//lAQYhKdw6D7yE1z32g0aOzg8SFmY9FK6Ya5gaOLq4E+cvl2vU7BMtIy8U9mrxIQ
	sLnOJg+07ZK6Ffzv6mL9dk1qUJC53IxYkBNulYnS6PvcvywczIvgjR2HLxD0/eGMHY0q
	QtSiSPWqznXjtklsoEp04EhiolvcZ7EWK3n9yaV0o7Nlf4xYbXUWoC0QPpnWdWufAc3E
	N5tkORQZh7T6nIL7ZDAGSgI2WgZDNgLwaxNS0jgmSBakjS5mtI3r8EffH1SHDj2K5A0w
	+b9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oeALZD6MmCOmf7PMX12BknDnoDtRsUPUGPmdbFtjHiw=;
	b=H7/gtJt9aXeFTvSw1t4bzghi+fUvHnwyjJb7qD1GD+e3UQVugU8ml22QwAFI6h5h9u
	J6BaxpEYet+dD9+5a1NIml70CqamkbCCdQFx51ODk4SEsfQ3wn8i+fLvMOjOSnp2+3jc
	FfMISphzuwEFFm/NxWsh40zhEWdblL+7angwYRC5sD3zHcGVCEYT7z4opQGVD0NmfhYg
	CorGRo2CcoiAccOH9qn72rTRjwwBGSmmvOv5i6EIwXELiHqf6pDOEHxen38YejQ1jTuD
	kJXt6D8yR7Hsn+iM6odlRrwIBYlFayF/020T6Mtr80K+xwrx2YphgGCtnK+79jfmZmHt
	xUxg==
X-Gm-Message-State: ALyK8tJhfbPTpIbOFXOoZqyY4Q3BJVrGkWSTZro5JyFZcZE5piP0jat3BGutl5qaoZ8HAEp3lcx/nqUc3Fb1NpaN
X-Received: by 10.107.154.210 with SMTP id c201mr1610684ioe.99.1467446571413; 
	Sat, 02 Jul 2016 01:02:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Sat, 2 Jul 2016 01:02:32 -0700 (PDT)
In-Reply-To: <CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
	<CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
	<CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 2 Jul 2016 09:02:32 +0100
Message-ID: <CAJTo0LaQn3Yr0tp-eu92jSQ-UP=+qCopcKTXYOBcTa-4s7wnAQ@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Sat, 02 Jul 2016 08:02:55 -0000
Content-Type: multipart/alternative; boundary=001a1140fab69df9950536a28708

--001a1140fab69df9950536a28708
Content-Type: text/plain; charset=UTF-8

On 2 July 2016 at 03:12, Takashi Matsuzawa <tmatsuzawa@uievolution.com>
wrote:

> There seems to be PyPy, Stackless Python, etc. but I am not sure they can
> be tried 'in-place' to see if they work faster.
>
In the context of a bitbake build, the overhead of Python itself is utterly
insignificant in the context of doing the configure/compile/package.

Ross

--001a1140fab69df9950536a28708
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 July 2016 at 03:12, Takashi Matsuzawa <span dir=3D"ltr">&lt;<a href=3D=
"mailto:tmatsuzawa@uievolution.com" target=3D"_blank">tmatsuzawa@uievolutio=
n.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p><span>Ther=
e seems to be=C2=A0PyPy, Stackless Python, etc. but I am not sure they can =
be tried &#39;in-place&#39; to see if they work faster.</span></p></blockqu=
ote></div>In the context of a bitbake build, the overhead of Python itself =
is utterly insignificant in the context of doing the configure/compile/pack=
age.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a1140fab69df9950536a28708--
