Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web10.12663.1620909502540078324
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 05:38:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm1 header.b=ZHTZLVWk;
 spf=pass (domain: gherzan.com, ip: 66.111.4.28, mailfrom: andrei@gherzan.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id D8F555C0135;
	Thu, 13 May 2021 08:38:21 -0400 (EDT)
Received: from imap4 ([10.202.2.54])
  by compute3.internal (MEProxy); Thu, 13 May 2021 08:38:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm1; bh=6Jq2FFKnoFHa9SrQQlDRUepfNJA81+c
	DenJAyox0eVI=; b=ZHTZLVWkdS9H85MRffRq2mAp8g5nNI7Hu7GlDCOYdYDsq3/
	EaBxUfoZbvOfVp02iOgUq3m6oBLeGV02UrAeckYbtPUz4Q2hAc3OpZ2RUnFo55sF
	thqygvQ17XmXR3mZPjMhgyhvJMzHuUJA5Zs/lSQb/Qse/SK3jggHLAn583yvGUK1
	MTWMTPM6t/rm3cjrxjKGS6/a7QeADkWAV2DbyaQ/c3jKDUPyv9A+ZmLB1XE0PYiC
	TObSfzN53QqR4Bab4EkyEdbEiRkootAtbV+QyoU3eaKgR75wrqlPNkUF8al48eBY
	zIvZVrqZ7HVqbmiO/IL4Ni6lWbM+0mewX9xORGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6Jq2FF
	KnoFHa9SrQQlDRUepfNJA81+cDenJAyox0eVI=; b=N0wzRWinpMTlJJE4+2DGpo
	QBkUvlg/IJp9RT/Z+f6oxL9Fm1TMQIlPeadb0Lr/OjWJwlUNnoBJ4XiKPx+frHuV
	N3LdtUIojoguFawB6nk27gUDQ2v9rLZ5qHmpmCJaM+xjGKd7Mm1KWMdB8jEw3UQD
	JiwdHdCAgro5T9YO39rYITgDOaZM+7xt63SUPxHcKfnyCqo6LFVa1o00zRjRnRl9
	0FnO/Ktp0Hs+l9HK+lrUoqTxcwho4AXTt2hJVYBlBeT4VvNw8JsmerXVtDEIGnQh
	SjcXPccwkNCrpHixLU1uPW1QRD29/nJcOEwjfDC3A7bEZLCCwPN6I869hL7lX03w
	==
X-ME-Sender: <xms:vR2dYHiQ686O_mq25An-qmy8LZgVm2ZBKngvS1nVBGhYtWudik958Q>
    <xme:vR2dYEBvrkSYraXl5XGGgbi5om0G_60eXMTJYqqRPnPsnNhSWvoY86oC7xS55Hgh_
    tjv_ssnEw1HDIFJEn0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdehgedgheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
    rhgvihcuifhhvghriigrnhdfuceorghnughrvghisehghhgvrhiirghnrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeelgfffvddtjeeivdehleefleejfffgleeffeeguefhvdevkeef
    ueeuleefveeutdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:vR2dYHE2mfyCH6MScaJpdwue8UZWs9bXFE80atm5CvRqgmW72pxrRQ>
    <xmx:vR2dYEQgNadLVnVWDsDp37KCDmu-MUbwoPChsAYFI5n02NzvPxiOfA>
    <xmx:vR2dYEyZj9_LztM0NKxcHQNNJaDlf9eVNDQrTCJ4nkUXrPMGA_eYow>
    <xmx:vR2dYKZQMu5rN4h3G4u0-SqFXf_rsr-l3ZuLV2z0P2o-l9pcOHiE-Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 67B3B160065; Thu, 13 May 2021 08:38:21 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <d50862c6-56df-4580-ae25-8d710b72553c@www.fastmail.com>
In-Reply-To: 
 <CAAnfSTsKteY1F4MUOuiY05_MUDhfq9=8E6Do960Je5zbEJgQeg@mail.gmail.com>
References: <20210507100818.2819019-1-andrei@gherzan.com>
 <CAAnfSTuOwq=3edHv-7zNKeO9oCjf2VCKM3uiyAtB6KrVpnHpqQ@mail.gmail.com>
 <CAAnfSTsKteY1F4MUOuiY05_MUDhfq9=8E6Do960Je5zbEJgQeg@mail.gmail.com>
Date: Thu, 13 May 2021 13:37:56 +0100
From: "Andrei Gherzan" <andrei@gherzan.com>
To: "Ross Burton" <ross@burtonini.com>
Cc: Yocto <yocto@lists.yoctoproject.org>,
 "Andrei Gherzan" <andrei.gherzan@huawei.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 1/1] zephyr-qemuboot.bbclass: Fix runqemu dependency on qemu native sysroot
Content-Type: text/plain

Hi,

On Thu, 13 May 2021, at 13:14, Ross Burton wrote:
> Debugged, the patch is broken.
> 
> Using a little tool I have:
> 
> Task qemu-system-native-5.2.0-r0:do_addto_recipe_sysroot failed
> Active tasks are:
>  virglrenderer-native-0.9.1-r0:do_rm_work
>  binutils-cross-arm-2.36.1-r0:do_patch
>  qemu-system-native-5.2.0-r0:do_addto_recipe_sysroot
>  qemu-system-native-5.2.0-r0:do_rm_work
>  libepoxy-native-1.5.5-r0:do_rm_work
>  gcc-source-11.1.0-11.1.0-r0:do_unpack
> 
> Note how qemu is simultaneously adding itself to the sysroot, whilst
> rm_work is running and deleting the sysroot.
> 
> This patch isn't compatible with rm_work and should be reverted.
> 

I'll look into it.

-- 
Andrei Gherzan 
gpg: rsa4096/D4D94F67AD0E9640
