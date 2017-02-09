Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 955AEE00A51; Thu,  9 Feb 2017 06:22:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD67E00A3B
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 06:22:00 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id s140so5657558qke.0
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 06:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=emHygZLa2946QwlHhRG87MD7m7kCCuZBhtxu/7G/gU0=;
	b=YUOFcwgPaQ4V4K/6O/7jN7qWlLj0TpelyEA0QHCPLBru79Epua5Og43vS4CLaEmNXw
	2VKPui3UbczAFtLwBMY7D1ScOAcy08Yf9ruiMGSWK3sE582dk9mOVv6GOTpJu8hlEuYF
	C26UP3rVTgYZLW+i6+fjeEmel2D6TnYsiqDK3dZNTz3zG08jomM0KOEgd4g5ms/43D0W
	uFlOJdRFF1EvDiy27XLvudbytqVLufgsRP8w56Ulwwu0N2vHZnpPiNNqluiXHr6KM61+
	y4SpMf1eys8tucfcrB+WExIETOlOmmpt0vO2r7tPi1iuAB/cGxmDFffJirv87vcm4JWt
	Gk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=emHygZLa2946QwlHhRG87MD7m7kCCuZBhtxu/7G/gU0=;
	b=KKJ2BGhzXf0IZ6AOaOQBOxZ2rJl7MXDViqFUTQWo0QVZlGkCxYcTxOC2jZiQH1+Fbh
	k72ScrMYZplxH39q1EsWIBO0TJBdOD764OlT/XcBbaFtF9lBTmFNncHHOi8M5ZkE7fx7
	K7DHi0Sq/I4qDaiVGGIP3c0TSAJD5+4ApykQ1WSYHBN6aby14IdWjykapEANBOQ+pTk1
	P4J4bOe+egN1KbGkTH0KhgZRL9aL+hzYQ2IWJT8M0pvv6DFAcgjVGHNI5PbSZD5vx80v
	8jC6ULzkOcTp9JbvOKnm7jPQqfkcxj+dc5e+d3bFqQI41cggz0mO7M/6/a9+KlLdGtlY
	JTAw==
X-Gm-Message-State: AMke39n4pp2vCiOwbT9WqqdcGBIYDNVlVpgvAwXvUVdCKB8rxq3/LeRRF//qxLT3L2Q9wWdEYEQJLl7VCKIsfdoR
X-Received: by 10.55.47.4 with SMTP id v4mr3042527qkh.77.1486650119994; Thu,
	09 Feb 2017 06:21:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 9 Feb 2017 06:21:39 -0800 (PST)
In-Reply-To: <8dce4c37-30db-f5aa-69b7-7c9653769994@mlbassoc.com>
References: <8dce4c37-30db-f5aa-69b7-7c9653769994@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Feb 2017 14:21:39 +0000
Message-ID: <CAJTo0LY01P0Mvtj1kmYsrmugk0Sz1exk3JoiWwNGkuKQbi3FHA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trimming images
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
X-List-Received-Date: Thu, 09 Feb 2017 14:22:04 -0000
Content-Type: multipart/alternative; boundary=001a114f41084f0f8e054819b44f

--001a114f41084f0f8e054819b44f
Content-Type: text/plain; charset=UTF-8

On 9 February 2017 at 13:53, Gary Thomas <gary@mlbassoc.com> wrote:

> This used to work - what am I doing wrong now?
>

usbutils depends on hwdb as it's mostly useless without it.  Maybe this is
the cause?

Ross

--001a114f41084f0f8e054819b44f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 February 2017 at 13:53, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div id=3D":94" class=3D"a3s aXjC=
H m15a2327cd048e823">This used to work - what am I doing wrong now?<br></di=
v></blockquote></div><br></div><div class=3D"gmail_extra">usbutils depends =
on hwdb as it&#39;s mostly useless without it.=C2=A0 Maybe this is the caus=
e?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ros=
s</div></div>

--001a114f41084f0f8e054819b44f--
