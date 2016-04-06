Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE865E00C64; Wed,  6 Apr 2016 03:57:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433DDE00B37
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 03:57:30 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id kb1so38368038igb.0
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 03:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=brNOZkj5GBh25K/bmPZYW5paXbConeyiKe31BJH5nms=;
	b=p4cjoxsWGI8YeEUPpk+cHV0ajo7xI6pO+rDz0agQLY2xds6aZ/h/WTzcv1yBImY2vn
	Wv6kxrmv0HdqWuEFXCnIOmijQ+W2/amm/tHo+BcqiiYC2RPrcnNx9PMnTSfYs5wJH1d4
	9QHcp7+qZV6GiamqVNOhK82tgi8FfOOjkhroiduMpSR5bQU8YXqHaGlHgkMI3qdzum7F
	ywtTBsvQep9z3LT+F4F0ODUruUq+m+7JUaoUkgN++9FbHE+ornvM+nhsQ3MmQ53JOw5C
	J4+ay+U3eUzxctrcFjyd/zSylsQF+DhFQ2r6mXK/oOUJyIYEnyHI9PRcUdmqxlhUprJ8
	9bow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=brNOZkj5GBh25K/bmPZYW5paXbConeyiKe31BJH5nms=;
	b=fBU4Tsh/XSyhQS4WxQswlw4MVK6b8vh8iZP9/OMRMjvK80fklGPIBPst81JEjbH5zF
	jfHFGWZjfy4iL0pC2jiJDuW4xVa5r6lBISEO9a2lLkLh7sAg7sazPk2xFxPQNtV8CZL7
	IWsIcZlPy/DyV5mlyoNMgd71vFMCuTfE8iqpYTata8oRpGdLH5RgcNFQgQbuzXbbLZg6
	a/pC1Wp3WcDaSd34jH/nRsWAHkyq4SjUnoxRh2cRzJ7+27T16ampM6J/OqPL2mi6LDMS
	bJK6n0bZXyxRbHL84bCddzvYdS/JZmxJVuBc/kxY+IhW9Tx9gGyUTOGowuL7DKR1cTA4
	/AuA==
X-Gm-Message-State: AD7BkJIzlCupq0B8y/RK1K3n3Y5/lDYoDC5/qZuBGAVuT9EEKsnppOoWA2S1/PRoUKA05r7e8UVb9O9N4G1WQmdh
X-Received: by 10.50.43.226 with SMTP id z2mr22947528igl.78.1459940250210;
	Wed, 06 Apr 2016 03:57:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 03:57:10 -0700 (PDT)
In-Reply-To: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 11:57:10 +0100
Message-ID: <CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Wed, 06 Apr 2016 10:57:32 -0000
Content-Type: multipart/alternative; boundary=047d7bfea0f40231d0052fced492

--047d7bfea0f40231d0052fced492
Content-Type: text/plain; charset=UTF-8

On 6 April 2016 at 11:53, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> ImportError: No module named importlib
>

Looks like python-gobject needs to depend on python-importlib.  Not sure
why that isn't in -core to be honest.

Can you add python-importlib to your image and see if it then works, or if
other modules are missing?

Ross

--047d7bfea0f40231d0052fced492
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 April 2016 at 11:53, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"=
mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>ImportErr=
or: No module named importlib</div><div></div></blockquote></div><br>Looks =
like python-gobject needs to depend on python-importlib.=C2=A0 Not sure why=
 that isn&#39;t in -core to be honest.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Can you add python-importlib to your image=
 and see if it then works, or if other modules are missing?</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7bfea0f40231d0052fced492--
