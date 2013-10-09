Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA3DE0073F
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 08:11:58 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id ks9so605459vcb.2
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 08:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0sYf8+XpJwfkFgG0+MbHh2MsL5kDypcpYL9D3M7THM4=;
	b=An6VqlkrQ61HL9dyEpa19c2jixjoiDkgGUPY++CI4Cw+oaSMMwABzf14W/Sm0bpjE3
	3U1GKcvismkDjrCv5eKPBSLQ9xC7d03i0cboPCT7ONOqJC9e131l9Hx0htlqJc6v+mcm
	5WyO4+p2hZNMw5K5dNlgkkyegMAo8Hxw/MfZjy8Dp4bNiAFHsle1XUxdmVlDAeMGm+0C
	XOGDGGJTCsjZPQm2xuBuoN//Zz12YBUJO9+YyT4w+XY004Yz6N9DrL7FEB2AIfLXWFW8
	UtozvB1PSQDaLe0A+Aze/T79uPPZbKygQcQwphv45lTQr5K1ahQF3L6TJ5knl98panjt
	ydDw==
X-Gm-Message-State: ALoCoQm/WQqaicqq3R3Vcp01SJH5g36MmZJbc1e6FJvrbPJqTFoQwfU5XwIAxuIJLbVJrx/W0sU4
X-Received: by 10.52.76.200 with SMTP id m8mr374878vdw.53.1381331517835; Wed,
	09 Oct 2013 08:11:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 9 Oct 2013 08:11:36 -0700 (PDT)
In-Reply-To: <52557137.3080405@gmail.com>
References: <52554271.70306@gmail.com>
	<CAJTo0LbOfVAuzo_XBikdnssxe52OQ-KNbiqq5u1JkBnSJBFZ_Q@mail.gmail.com>
	<52557137.3080405@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 9 Oct 2013 16:11:36 +0100
Message-ID: <CAJTo0LZ3RNiP41XjHk-6V_fG5J94BN7P2i5LBRJPWRLqJauJjw@mail.gmail.com>
To: Jean-Charles <jicheu@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dleyna not building
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
X-List-Received-Date: Wed, 09 Oct 2013 15:11:59 -0000
Content-Type: text/plain; charset=UTF-8

>>> Requested 'gssdp-1.0 >= 0.13.2' but version of gssdp-1.0 is 0.12.2.1
>
> There are both recipes on meta-multimedia, why would it take the older one
> :( ?

Because 0.13.2 is marked as a development release.  You'll need to set
PREFERRED_VERSION_gssdp = "0.13.2" (ditto for gupnp, probably).

Ross

