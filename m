Return-Path: <kergoth@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E8A1E0132F
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 17:52:11 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so1257120qcs.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 17:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=stmrhwSn0dopSLjGIkzxhMRGdDXKWOuAP8+WfaAatLo=;
	b=tbFLOuq8Me2Ont1AWkCw9dmMTozO/yy/RAv8jaUex4fEF2Ygg/jREGsLtmb9Pm5vDc
	WCWmLdUjlca8vBaL5QUkzgz3+/cSNCpcn7G41f3S/1EiPH0Q68pp312lTkR7MkfMRyZC
	LLN5q7MYsaLgiVWOwOc64pOhcDj8VUDtFlZKEImLDQDb4OAlqgzr84263049+WEDkHE3
	M2n+qMaTUZfXYLOLKj65ASl4DXFMyI48B0t91EWw2DVScOLiynbgqaQqW/4Pio+EbgYd
	979Kgyd3/fel7GSNgALdXR1EZ/6jNI2a4NVTsJ/f3mlP0q4rdXKMRCqjpQ+2jl7yvMPb
	kbng==
Received: by 10.229.111.199 with SMTP id t7mr1381158qcp.84.1333241530734; Sat,
	31 Mar 2012 17:52:10 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.24.196 with HTTP; Sat, 31 Mar 2012 17:51:50 -0700 (PDT)
In-Reply-To: <CAMKF1spxRhbgpbbfpvZ_Gui6KNaoCvt7tEA1NPqM9Ch1i3XNVw@mail.gmail.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<CAMKF1spxRhbgpbbfpvZ_Gui6KNaoCvt7tEA1NPqM9Ch1i3XNVw@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 31 Mar 2012 17:51:50 -0700
X-Google-Sender-Auth: Sjnqs_pUtzCST18odoKB0wPT3tc
Message-ID: <CABcZAN=Bg0VqTJwBZWGOUOP7ay+2PEQmOV_=pQ=OkQnj3N5MGA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 01 Apr 2012 00:52:11 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 31, 2012 at 9:30 AM, Khem Raj <raj.khem@gmail.com> wrote:
> I think the repository format used for poky in yocto project
> could also be confusing things. Since it does not clone openembedded-core
> or bitbake from upstream locations but maintains a copy of its own. even
> though they are ditto copies of upstream it still has logical separation
> that can be source of confusion. So if there was a meta-poky that defined
> the distro policies and another integration layer that
> sources openembedded-core and bitbake meta-poky and other layers
> would make it much clearer.
>
> As such OE-Core is distroless as we all know and can be built standalone
> and poky uses most of defaults so meta-poky could be a thin layer on top
> right now I think poky combines distro policy layer and integration
> layer into one
> which could also be source of confusion. I think creating distinct layers
> for these two will clear up the air quite a bit.

I agree, and would love to see that happen.
-- 
Christopher Larson

