Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 042AFE00CF0; Fri,  5 Feb 2016 04:00:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC77E00CEE
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 03:59:58 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id g73so126122144ioe.3
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 03:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ycC1U9yNGWv63DFXRCd50ZycKVPpN/YwDNMG1NIc8iE=;
	b=xFXXFisAtvklXiXYyDj/bQiyyVPPhPlYNs4ANsaJT+GfjzdTbpB0KNKc0v9wqjr8Vo
	3yTb5WbAwtclFeGj/o5ct8LQDeoVkpa+muopApIVAYYqSnS2590bWf7fumn8eJGczBY1
	pK8Lmd4W864+ZHseS+i7jCK6cVhkR8o4Wl3AlQWlUfK3/LwPTLZ2qjqn6l68IYXa0f94
	ApQ0ghR/2n610WCwmkhy6vBYYis/NvgJhcLDYqkJQ3SHncP/qWumpkD6Wwr+KavE74N6
	CNnsSLnH/RNgpgFzlHq8TM1uZU6Qta2ySSzkONg0stx31L3c4gwz9ScReqDJzNMz0CVe
	YbTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ycC1U9yNGWv63DFXRCd50ZycKVPpN/YwDNMG1NIc8iE=;
	b=hbOSyzolDvXoQyhMfTBhxYVB428EplXllMc5NfmqiSHAsx2gf6cL9e90C+xB84sdNR
	VO8u75++89TxCD7Hwe1uusfPJvGa+lKA3XHbNxK8QFzX5oivKwQBmk4fNL5dtjtGxc+r
	W7DYOuW4yNqpeA7R/oCJWcnawrarBEW6OH6G8pBWsjjpUW9+lsWh+A/hK5BWtmVLNfOT
	dj82k3a7wo2O5ZPnadiCP8IVqel7nmr9HFX4fYKoLeBc7YqMIcNfaRb5M8YZRX2QbPuo
	ZGdppbg/7m10b10XuNjz4BhREB8XivO2UWI4V4T5VE80al52eeNGzm4MmZaxHKNCjtFa
	PvHw==
X-Gm-Message-State: AG10YOQ5EUQmK7pXyS17Elj3i9Z8SkyYDQifCxl2156Yi3GrebDfafmD5TH0fmIhTACTvD10hPbaeUg6jQxY2rlU
X-Received: by 10.107.137.92 with SMTP id l89mr1151735iod.133.1454673597628;
	Fri, 05 Feb 2016 03:59:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 03:59:38 -0800 (PST)
In-Reply-To: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 11:59:38 +0000
Message-ID: <CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
To: Nathan Sowatskey <nathan@nathan.to>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 12:00:00 -0000
Content-Type: multipart/alternative; boundary=001a113ebdb40d1759052b049756

--001a113ebdb40d1759052b049756
Content-Type: text/plain; charset=UTF-8

On 5 February 2016 at 11:40, Nathan Sowatskey <nathan@nathan.to> wrote:

> Is there a way to get the libgcc_s library on a Yocto image? Is that even
> the right thing to do?
>

It's fairly likely that your binary is actually linking to libgcc_s.so.1
(which by default is in /lib, part of libgcc).  libgcc_s.so is the
development-time-only symlink so that's packaged into libgcc-dev.  You'll
only need that on your target if you want to compile on it.

Ross

--001a113ebdb40d1759052b049756
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 11:40, Nathan Sowatskey <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nathan@nathan.to" target=3D"_blank">nathan@nathan.to</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":eop" class=3D"a3s"=
 style=3D"overflow:hidden">Is there a way to get the libgcc_s library on a =
Yocto image? Is that even the right thing to do?<br></div></blockquote></di=
v><br>It&#39;s fairly likely that your binary is actually linking to libgcc=
_s.so.1 (which by default is in /lib, part of libgcc). =C2=A0libgcc_s.so is=
 the development-time-only symlink so that&#39;s packaged into libgcc-dev.=
=C2=A0 You&#39;ll only need that on your target if you want to compile on i=
t.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ros=
s</div></div>

--001a113ebdb40d1759052b049756--
