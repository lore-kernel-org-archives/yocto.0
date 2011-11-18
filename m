Return-Path: <madeeha.mailz@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB639E005A0
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 09:42:21 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eyh5 with SMTP id 5so4828107eyh.35
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2011 09:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CtmjkTcpa+VfQize1dP7uzLo74HXuOAg20Lzs30Q248=;
	b=sIZC+xiPx0caDmwjg52U0qrkCCmeZz33syQ9hkuemnWaJgMcSm8MI90fbU0OjPyK25
	rV241wfJkcU/fm7UFKruvJbK3Az4cBKVuQplZ/nFTSH1sxU35Ptyd/tgtGeqESUNTK9F
	0ShxVk+VUJyyIbtNxkX1J5lA1wHn8loLi+veQ=
MIME-Version: 1.0
Received: by 10.14.17.224 with SMTP id j72mr336859eej.20.1321638140371; Fri,
	18 Nov 2011 09:42:20 -0800 (PST)
Received: by 10.213.8.134 with HTTP; Fri, 18 Nov 2011 09:42:20 -0800 (PST)
In-Reply-To: <96B1F0A7-736F-49EC-8B8E-5D3066F70CE9@keylevel.com>
References: <96B1F0A7-736F-49EC-8B8E-5D3066F70CE9@keylevel.com>
Date: Fri, 18 Nov 2011 22:42:20 +0500
Message-ID: <CAJV8fDYwYTS495jYxLRVixdqaFJa+v-HJ0=rBvmaXUBdHpttuA@mail.gmail.com>
From: madeeha javed <madeeha.mailz@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: xserver-kdrive keyboard support
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
X-List-Received-Date: Fri, 18 Nov 2011 17:42:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Chris, if it doesnt work by default, you might need to add an
xorg.conf and add an Section "InputClass" or Section "InputDevice" for
keyboard.

On Fri, Nov 18, 2011 at 3:02 AM, Chris Tapp <opensource@keylevel.com> wrote:
> Do I need to do anything other than have:
>
> PREFERED_PROVIDER-virtual/xserver = "xserver-kdrive"
> XSERVER = "xserver-kdrive-fbdev"
>
> to get a working keyboard under kdrive?
>
> I've got a system that boots in to an application, but I can't use
> Ctrl+Alt+Backspace to terminate it...
>
> Keyboard works just fine on console screens.
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

