Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA443E00953; Thu, 12 Jan 2017 07:43:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82763E0088B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:43:03 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id v23so21437176qtb.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 07:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oO84Jg18ID/TzQP40vkrjRlR48MeOtrQEYB3l/68Dxg=;
	b=zLsKK085iTQV4KXZs0xbHSsOTKQl5DVyZGeCHgswRIIvcNhXas13LAA7RpF74IoOmM
	/XZenK58iU10Eir12k2jyeUb6h/smE4DjR7May/iPxjzGp3lSUXbIcVkiQmO3Du4OuX4
	MwZoJNYGiUmj8aQXRzRQDUwkQH+sgqBLXlJkjlZ4p//1KP7t/Anv0IY5K/1A7ZoYwd/1
	kf61EzacpMX9GGt/PwUxgcrQsEUDP7xH5Z+4VBZoisM6NHHlXVlaoGJgTbNYirJp3pyr
	rlbxyfmhg+VVhCTeHDgOXvTPRs91NUUSJrhSqf8nPIqa4giBTicxNBqPeMEVOvSual6Y
	YKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oO84Jg18ID/TzQP40vkrjRlR48MeOtrQEYB3l/68Dxg=;
	b=OJyB/k4kHu3KCC45jxQaNkphgy6gDdiJO9PwLNmskQTgvk1lptP0LBteU1l2Tq5M1s
	mQ1dLfi+trwchcCp0ZyXx9Wm6IwBgwCIvwIrWJZrWh3rqAUJhviYfuY/HaXWOfIJbSM4
	OskzVkltZ8nU75MKaaurrXKR2VmRHGtvRAj3RE3MdVvFXq6Y2/Wx6DTvGoyS7U9KotFJ
	HCR8B2qiGtruyg85AkicI5p06QixI3kOL6B6zUB4vszkTXb8i9m+kvDmpPnbp05aBarn
	kq98mSEzlOGoXVddr262fkOR1RYlgHWWBDAjzqIXw9wnPY90UMZ8S7dCrEC1GkfD4evc
	6EFQ==
X-Gm-Message-State: AIkVDXJhqs3EXVyNApDWkXNUfOVMIxwfUtGTf38M40yn3g8p67HvF0SntEL5PJCpPegaHgtkewBqhIdTFwNFAirP
X-Received: by 10.200.45.247 with SMTP id q52mr14536961qta.197.1484235782721; 
	Thu, 12 Jan 2017 07:43:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 12 Jan 2017 07:42:42 -0800 (PST)
In-Reply-To: <990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jan 2017 15:42:42 +0000
Message-ID: <CAJTo0Lb9Lo5TEdu5f_1CVcyeRLEBZxv1uOoU7GosDfLDwPjrXg@mail.gmail.com>
To: Tim Orling <timothy.t.orling@linux.intel.com>,
	Roger Smith <roger@sentientblue.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 15:43:04 -0000
Content-Type: multipart/alternative; boundary=001a1139cdf097b5430545e79230

--001a1139cdf097b5430545e79230
Content-Type: text/plain; charset=UTF-8

On 12 January 2017 at 15:39, Tim Orling <timothy.t.orling@linux.intel.com>
wrote:

> You can also build using Docker containers:
> https://github.com/crops/docker-win-mac-docs/wiki
>

Yes, this is the link I was failing to find, thanks Tim.  This is basically
the official way of using OE on Windows or Mac.

Ross

--001a1139cdf097b5430545e79230
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 January 2017 at 15:39, Tim Orling <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:timothy.t.orling@linux.intel.com" target=3D"_blank">timothy.t.orling@l=
inux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 style=3D"word-wrap:break-word">You can also build using Docker containers:=
<div><a href=3D"https://github.com/crops/docker-win-mac-docs/wiki" target=
=3D"_blank">https://github.com/crops/<wbr>docker-win-mac-docs/wiki</a></div=
></div></blockquote><div><br></div><div>Yes, this is the link I was failing=
 to find, thanks Tim.=C2=A0 This is basically the official way of using OE =
on Windows or Mac.</div><div><br></div><div>Ross</div></div></div></div>

--001a1139cdf097b5430545e79230--
