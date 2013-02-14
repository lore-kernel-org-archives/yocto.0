Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ED375E004FE
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:14:26 -0800 (PST)
Received: by mail-vb0-f53.google.com with SMTP id fj18so1557867vbb.12
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:14:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=5mMdvx/4zUMODrRvEuyHuAzAx3hg4bpRU4wj/z7arqA=;
	b=cJiD6eEUhKNrQzcyWQOpezNfe/6vvW5CKTOAZBqRwYFvQezJCZOrIl0p45Fn5UWW11
	I4NgORz4kA39ysPUMiJ7pB+JRocG2+Pw6AvyfWlLXKSEE5ta9BjMyvZDhDDZvUnZtreo
	E5hiAqHDyZUFfj4I5Y/5LYRSgEACaOg7MK3kzGU+6fyUxAh19jjVdfwNrYzL8Lx974Ca
	zooSblzPmjdfP3uZQHFCp5RUd3ZG5EWzfv+9nHCFeBGZhb0pFLrwvTwIPC7K0BSbuzPf
	iheWT6FEFTPVNeb3dBxnaNVvAAuowzmERJpPyvrpa6PqRdAJ5jySYwlwei8cXVcM1g45
	eQ+A==
X-Received: by 10.220.153.143 with SMTP id k15mr36093509vcw.13.1360854846623; 
	Thu, 14 Feb 2013 07:14:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 07:13:46 -0800 (PST)
In-Reply-To: <511CFDF8.9000005@mlbassoc.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
	<CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
	<511CFDF8.9000005@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 15:13:46 +0000
Message-ID: <CAJTo0LZQFUF07XwgBkdFBRE6T+mj5iRCqPOQt7XF_X6PE5pmWA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQmfV8zFF/hQ4awWeDA1aK6T67+9SsbcqeUVr2dNBPdIGKHQrMAEX09x5qXeLYCocGLGIaV7
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Control over Sato theme
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
X-List-Received-Date: Thu, 14 Feb 2013 15:14:27 -0000
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 15:08, Gary Thomas <gary@mlbassoc.com> wrote:
> What's the best way to install/use one of these? (while I may have been
> using X since version 10.2, I seldom mess with such things and don't
> really know the best starting point)
>
> For example, I downloaded 'ClearLooks Dark Orange' which gave me a single
> file "Clearlooks-DarkOrange/gtk-2.0/gtkrc".  How do I install this and
> make it stick on my target?

Good choice, I used that for many years.  :)

Package it up so it installs into
/usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc.

Then you'll want to override matchbox-desktop-sato which sets the
default theme name, change Sato to Clearlooks-DarkOrange.

Ross

