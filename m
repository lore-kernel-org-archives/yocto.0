Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD29DE0126E; Fri, 12 Aug 2016 02:51:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19EEE01086
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 02:51:24 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id q83so20189604iod.1
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2016 02:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=nOiAWzr9CKOUvtp4Ib6S7yCHpSL3HGkvF6crcnZB4uk=;
	b=ZzrSkGMnZWUSQ5nuNFiAUKauBrBuSgC7Ts+RkYDumRX5vfSTRrW5D3+KQ+7D53pK9u
	4aV/aUsjlD3xld9Y4uU9Q2CQgDcsthaWBRnNotuL3ybt6h89WWGRRSheu2S8VxgK9i37
	2vrHliJSjyFtPOy6hf51UlSj1jGqiVo/iwXfysILhRla/gi1Hk+GfoyUnnqV1UAW92iJ
	ioP5fJXYTKFY3ez+3wGqeH18hIyY0iOA0cBTuOn8qIftRltGK3AmXSAxOhpfaFbCQt85
	f3cLirSwRwBxVM5CoQTllEiT2EMF9jarZ0ShwvuCEYzLzi7ysgKnOp8yZRt0aou4SGx7
	PnrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=nOiAWzr9CKOUvtp4Ib6S7yCHpSL3HGkvF6crcnZB4uk=;
	b=SW+M/xcUWYeAFFGmUOVLCI7kaU0CtWf0/X+GVFyuZR9uBtY1DzcxrzMXXREJVb0vVc
	b5ilEdmKXXhqoMRRSDbNz3yTs0aDcWj4US2qlmmQzcYWx6ZtP7v1wtNrc9jm6fWbzino
	3cx9sx/1WIVLD71RALTVbaAALuxyfWotALyUPrrcoPlrOMo1O1iiri5Uyb5fjNXZQStg
	bHi07Eyp7t1Lf12Cgc5XVZyrUB9b92MjM1hAgJSuZv1wb+USY7YjW285s+CR+SiCmy3X
	V+CzuhHpR9Fb8rEvuDxg95mgLg8lXVhztFfppKk87TRhwQvzlYaT/3t4M75GR2xbWuSn
	ikMQ==
X-Gm-Message-State: AEkoouvKCf6hSSUz4CKdwTOJyo1eJM0JjQ0cpLXj70wxZly0Kc4o7ifLdpc0uMCWL7gp11d85zcc7dy8+NmLLX1c
X-Received: by 10.107.135.142 with SMTP id r14mr18275658ioi.133.1470995483893; 
	Fri, 12 Aug 2016 02:51:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 12 Aug 2016 02:51:03 -0700 (PDT)
In-Reply-To: <OF32FA6141.8D0EA4BB-ONC125800D.002EFDC8-C125800D.00302AD6@esa-grimma.de>
References: <OF32FA6141.8D0EA4BB-ONC125800D.002EFDC8-C125800D.00302AD6@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Aug 2016 10:51:03 +0100
Message-ID: <CAJTo0LZGydoC2+_x-rWrz5CzUHNb3XJT1B1twALKe=nx9ys4AA@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: if else blocks in recipes(bitbake)
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
X-List-Received-Date: Fri, 12 Aug 2016 09:51:28 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc48baaa0539dcd341

--001a113eccbc48baaa0539dcd341
Content-Type: text/plain; charset=UTF-8

On 12 August 2016 at 09:46, <S.Jaritz@esa-grimma.de> wrote:

>
> If have a simple problem. On one system a program is started as a daemon
> and on the other one not. In my recipe the program is build. by using
> update-rc.d I create the init script for systemV. The code looks like:


The easy solution here is to build two packages, one with the app in and
another that just contains the init script.  Then systems where you just
want the applications can install just the application, and systems where
you want the init script too can install both.

Or, always build with the init script and use a rootfs post-image hook to
remove it.

Ross

--001a113eccbc48baaa0539dcd341
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 August 2016 at 09:46,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jari=
tz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><br><font size=3D"2" face=3D"sans-s=
erif">If have a simple problem. On one system
a program is started as a daemon and on the other one not. In my recipe
the program is build. by using update-rc.d I create the init script for
systemV. The code looks like:</font></blockquote><div><br></div><div>The ea=
sy solution here is to build two packages, one with the app in and another =
that just contains the init script.=C2=A0 Then systems where you just want =
the applications can install just the application, and systems where you wa=
nt the init script too can install both.</div><div><br></div><div>Or, alway=
s build with the init script and use a rootfs post-image hook to remove it.=
</div><div><br></div><div>Ross</div></div></div></div>

--001a113eccbc48baaa0539dcd341--
