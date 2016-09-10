Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69BE7E00DC7; Sat, 10 Sep 2016 09:45:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41513E00DC5
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2016 09:45:23 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id q188so97573952oia.3
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2016 09:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0yeug5CaqrOAxxEQXPyz5DhLT9zEH5sK7cIIa4JxHPY=;
	b=XOwuPxWqzdxHpCPwLE83I3vQtuRYYNa1SLNPSDrQs1q3Ro6GXyTHleFDDWmhKZsDXU
	+or42yBL2CHBeoJEtgP6tRM2AFxFFFrDIaMrlGr8miJw5sqM7F5KZzy73fimu2uL0QYE
	P4vvxb1mSSQUSECDKeFe8lhDtp4CWiT/lo0Zky8uNG6SJAufmlhPlkFhlYqf1Egx6MLW
	fYZRFWaM7aDJxpeBAAcX6phH1doc1me1EQolNknr8RCaeSdgmNVYjwa9EUz8jO2r5pfE
	sy9tbDpOVNFvMTET6q7/NrKN+MC8QiuuF8ZQ0c67fnfKDSvtfn0cOhaLQixA2thqd/ZQ
	DwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0yeug5CaqrOAxxEQXPyz5DhLT9zEH5sK7cIIa4JxHPY=;
	b=jh+l34+pCu2Hzkfr7JAJ47wzhkN4EnUHN8CUfn1yc/+rxxdtCCQ7nAvxoZmGhbTZ6g
	7JQX7v7j/PvEGVWf7dDqFTaKmh4rkMjaJl+WtK3J7S3954krHlmL5LWHFXD3a6rxDBcI
	ar1tX5PyniBWcrUA1lR0SldSvprrdkaVf8kR3BMVKyrZ79EyoMbC7i9YfQEIrTPhBXT4
	mu4PWjVQ1XkF2QLDkPXC7wV9LZrIrQzbCKi34GaG/g8XL0kZqaCpVJtXQLC2bP/XLoAR
	rOAZrece1SnvfLG4a9a/dwqJGjREHO0LtWIkFmvxuDk2495GXbTVY0eAnYpg9PzNmB+s
	nI7w==
X-Gm-Message-State: AE9vXwNxu7vHKacXi7UhOpTu/qUDvQDfSJQ06t77Ss9L1Luw88i5/w2LXxUXfn1zKeCL/0p2rcTfVldhZ3xUUeYN
X-Received: by 10.202.90.138 with SMTP id o132mr13945440oib.111.1473525922308; 
	Sat, 10 Sep 2016 09:45:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Sat, 10 Sep 2016 09:45:01 -0700 (PDT)
In-Reply-To: <CAO=ipHJmBkH7=h7PKZpm8vZT63-nftLhzm=FYmyUX21Ufb3a_Q@mail.gmail.com>
References: <CAO=ipHJmBkH7=h7PKZpm8vZT63-nftLhzm=FYmyUX21Ufb3a_Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 10 Sep 2016 17:45:01 +0100
Message-ID: <CAJTo0LY3nGbnMC9ifO6u+pkv8ZB39Th15FeDUFYzEeRSjsX48A@mail.gmail.com>
To: Szymon Guza <guzaszymon@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a core image with openCV
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
X-List-Received-Date: Sat, 10 Sep 2016 16:45:29 -0000
Content-Type: multipart/alternative; boundary=001a113d2bd82abb94053c29fd17

--001a113d2bd82abb94053c29fd17
Content-Type: text/plain; charset=UTF-8

On 10 September 2016 at 10:35, Szymon Guza <guzaszymon@gmail.com> wrote:

> i want to prepare a yocto distribution with openCV and C++ for Xilinx
> zedboard. Do you have any tips for me how to do it? I wanted to take a one
> of the core-images with user interfece and add some packages i need.
>

You've pretty much got it right - add opencv (from meta-oe) to your image.

Ross

--001a113d2bd82abb94053c29fd17
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 September 2016 at 10:35, Szymon Guza <span dir=3D"ltr">&lt;<a href=3D=
"mailto:guzaszymon@gmail.com" target=3D"_blank">guzaszymon@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">i want t=
o prepare a yocto distribution with openCV and C++ for Xilinx zedboard. Do =
you have any tips for me how to do it? I wanted to take a one of the core-i=
mages with user interfece and add some packages i need. <br></div>
</blockquote></div><br>You&#39;ve pretty much got it right - add opencv (fr=
om meta-oe) to your image.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a113d2bd82abb94053c29fd17--
