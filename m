Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6FE3E00D86; Tue, 15 Mar 2016 04:44:30 -0700 (PDT)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD85FE00C9B
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 04:44:26 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id ig19so13229961igb.1
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 04:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Enua3GSZxaxsUD9HaEcN51lPWfZVbqxKc8OgSIjdOTQ=;
	b=Rb8AvelWU9JI6e6Jh/CW+guo7hUkC/KKSyhXNFB4Gtws54RcqhtllP/nyt+EuHzd58
	0CgcJvnpZi8uijyVK7w9bAqCmZZgRvsc5u4XyIP3cNuLonSwL7THJeTmc7nf4gIdyW9n
	9Q8AojeuBGM0LnFjFJ6bE4av9VibEjjqLG4k2sICWFm27o0W+JbYAZ9m9DaqU3/YssV5
	hyPcVVLiPnkyLoWcRgdsZFw77D5H7qeXfyFfwbshtZXZikmPjQzEhwZOEVBazw+tby7G
	AIW9hqegVG7KhwVjL9g7vcSrEyn5QuPVE3x4reqdbJRzdDFkry3ejdg+v0848hwc749J
	Ohhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Enua3GSZxaxsUD9HaEcN51lPWfZVbqxKc8OgSIjdOTQ=;
	b=WNpte4z6FRwOrD/TjoUhDLK2tavW/TIe7KbT6BNMK3Go1Pk22iaSyl4WTLNRXDOMO/
	aI8x1dU+xm4XWbwwST8+mtGoWlGwnZnLnRSE1d+bZdvSF0rZrgxOTOR8RAaLmnrjZA6T
	Vjv4cBLpSzaIdi9PDgR8l82JN+FBqNleD+hRUUczduLBRmB2s424k2QGohMfkh4VVmX9
	kzcd2q9xilzo2GHtO3evsJMMMMDwwKGGbd1QZpHhZ6F9OZCzTv9AsEWkk4f1GRxa0kkr
	xKxfJElh8Wimmcdx2Fps6Ez6/EQ+TVPJ13+0SsH6uh9Sbg9+osvtbL4zZxlRebWMCDPp
	8EDA==
X-Gm-Message-State: AD7BkJLuGc16s8Obie5/f3TnygMzYnmAF4jpzXRpI0LZBQWWe9KJb4ph3gbccI7otOhLMKjraqp/iExPW6tJAbo+
X-Received: by 10.50.97.71 with SMTP id dy7mr24008959igb.78.1458042265688;
	Tue, 15 Mar 2016 04:44:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 15 Mar 2016 04:44:06 -0700 (PDT)
In-Reply-To: <56DFDEB1.7010705@mlbassoc.com>
References: <56DED4A8.6070009@mlbassoc.com> <56DFD5DC.60008@mlbassoc.com>
	<56DFDEB1.7010705@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Mar 2016 11:44:06 +0000
Message-ID: <CAJTo0Lbvhy=K-0Tcyi7PyLCksrFJMfeqEEu3Qxer8q1PHs8Bkw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Host contamination that isn't
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
X-List-Received-Date: Tue, 15 Mar 2016 11:44:31 -0000
Content-Type: multipart/alternative; boundary=047d7b10cfc15091ac052e14eb84

--047d7b10cfc15091ac052e14eb84
Content-Type: text/plain; charset=UTF-8

On 9 March 2016 at 08:28, Gary Thomas <gary@mlbassoc.com> wrote:

> BTW, if I run 'bitbake <package> -c cleanall' where <package> is the
> name of my recipe that is creating a user (in this case amanda), shouldn't
> that user/group be removed from the sysroot?  It's not and it took me a
> long time to realize this - my first attempts at adjusting the USERADD
> parameters were simply being ignored because the user still existed.
>
> Maybe this is a bug [that I should file]?
>

Probably, and yes please.

Ross

--047d7b10cfc15091ac052e14eb84
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 March 2016 at 08:28, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":2wf" class=3D"a3s" style=
=3D"overflow:hidden">BTW, if I run &#39;bitbake &lt;package&gt; -c cleanall=
&#39; where &lt;package&gt; is the<br>
name of my recipe that is creating a user (in this case amanda), shouldn&#3=
9;t<br>
that user/group be removed from the sysroot?=C2=A0 It&#39;s not and it took=
 me a<br>
long time to realize this - my first attempts at adjusting the USERADD<br>
parameters were simply being ignored because the user still existed.<br>
<br>
Maybe this is a bug [that I should file]?</div></blockquote></div><br>Proba=
bly, and yes please.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--047d7b10cfc15091ac052e14eb84--
