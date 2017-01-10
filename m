Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B26FFE00B5E; Tue, 10 Jan 2017 02:29:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECAE2E00AD8
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 02:29:50 -0800 (PST)
Received: by mail-qk0-f174.google.com with SMTP id u25so553637318qki.2
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 02:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X108GpFOh+Hl56XinFiEB6uNNmvgESWz2NDL/NoGFTs=;
	b=g0AO2ZyCfItBTKzy9/UlzITPQFMago3nLbr/u2P8UU6olXmYoUmX6wd4pajD0euwl0
	gvX1tpxb7kw1/DlvDZWW3hij3vXY4s528JrZp5LW3yYw6Q09njijElYyjzVmDcbbaRS4
	FXGVKENTpO3WukrBLcmLFlW13ueXKtHZ+yR5SGzykH8fhIjBueRzD6gei8v5A4PjVtWZ
	D9xu4BHgXDaHl4OxOufgOKd7Jv0iQ2BGK16rzL1e0xZ060LGIDWIy+2fFfOk0VHNZOTi
	8+Kkbc/bQlk/wtY5834evCPruarF6tM+wwxPh/27DYKatfqLKtT328UeL5DX3/33h9Zc
	8fzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X108GpFOh+Hl56XinFiEB6uNNmvgESWz2NDL/NoGFTs=;
	b=K0CA9AAGg0Duim4lM338vx6+R7Lg5HnAj60aXxF8matgX6sBST1G+C65OCXfPGwnKu
	erE6xBrX66R+GW0mnL4Z1WtSLQQ46YFmeNkHzBl2zs//+wZBUktCHlU3PKsnMlX7mVdK
	YJmaBKpvw70uobFLRpawFxMCmPJizdiRp3/JNXOwLZo0twGrQQay/vYn1g675Bv9g0f8
	8id42QgT/f1dlWFpiOpkY+EGWqOUuuoe7f5PNUa2Mvhp8OdaKplF6gew8q/0aPWDZUmF
	5JRF0Ql0gah343Lz6K9rGwDcqB4dPTpIg55dXkW0RVbv666lZuBdLJ2Ups2LPJDp1z9j
	RTKw==
X-Gm-Message-State: AIkVDXLZRJKPD+zegWXHY7yym/XkinRN+lQwHGcIoMZUmMH71ZwKeCGp4sc84syB2fiygrmncfsBcOhRJmBwA3GV
X-Received: by 10.55.207.78 with SMTP id e75mr2415770qkj.36.1484044189908;
	Tue, 10 Jan 2017 02:29:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Tue, 10 Jan 2017 02:29:29 -0800 (PST)
In-Reply-To: <e9802d68dc1240a2ae137c424a154d8a@drift35.mia.local>
References: <alpine.LFD.2.20.1701071028270.18312@localhost.localdomain>
	<bbffbd48-0944-ccde-e7dd-5a912aea4dd8@linux.intel.com>
	<e9802d68dc1240a2ae137c424a154d8a@drift35.mia.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Jan 2017 10:29:29 +0000
Message-ID: <CAJTo0LbbmO2S2XaWve2=uESbtd9UAn533XAcKBvfZ7XHzyngNA@mail.gmail.com>
To: Bent Bisballe Nyeng <xbbn@mjolner.dk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how does one stay on top of YP security alerts?
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
X-List-Received-Date: Tue, 10 Jan 2017 10:29:51 -0000
Content-Type: multipart/alternative; boundary=001a1145b7b8c5570f0545baf6b5

--001a1145b7b8c5570f0545baf6b5
Content-Type: text/plain; charset=UTF-8

On 10 January 2017 at 10:01, Bent Bisballe Nyeng <xbbn@mjolner.dk> wrote:

> So /is/ the yocto-security mailinglist considered "dead"? Or has there
> simply not been any security issues for a while?
>

IIRC, yocto-security was more to discuss security issues, not an
announcement of security related fixes.  If you care about security then
you'll want notice for more than just what is in oe-core, so I suggest
monitoring the CVE announcements directly.

Ross

--001a1145b7b8c5570f0545baf6b5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 January 2017 at 10:01, Bent Bisballe Nyeng <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:xbbn@mjolner.dk" target=3D"_blank">xbbn@mjolner.dk</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":42p" class=3D"a3s=
 aXjCH m15987e433abd0d55">So /is/ the yocto-security mailinglist considered=
 &quot;dead&quot;? Or has there<br>
simply not been any security issues for a while?<br></div></blockquote></di=
v><br>IIRC, yocto-security was more to discuss security issues, not an anno=
uncement of security related fixes.=C2=A0 If you care about security then y=
ou&#39;ll want notice for more than just what is in oe-core, so I suggest m=
onitoring the CVE announcements directly.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1145b7b8c5570f0545baf6b5--
