Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3424EE00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:50:32 -0800 (PST)
Received: by mail-vb0-f47.google.com with SMTP id e21so1607090vbm.6
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:50:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=oi8BJNWUAAoQzbRt0lZVjbL67SyiFn5kBOy2X9cKXaE=;
	b=n4Liia+33l0eTOlWmyRlsnyzzBH1fZIEqeYKgpOVUg3xDNduv11SigX5Cl0ImMiMXu
	pG2TgI3nLd0vm1baqzVoHGBIgJox+0VUWMB0YkdIdy10WnlzMJvfS5oLnoak9WnqDwHc
	lQn77CR8v25GIfX0kPmOR6IAd+edr3E7y3GXKFwvvP0ySotXWxtSysg8EkNWBfG2rtNb
	bf6RINe76wZ4sP+vvuAAf4ktrab/gmhs1diCTZJUELBAfans0IUjSmPR0NHvO7aS6rO8
	N/pdctpiG6tqJ4yYWWUuWu+KpPULYsJMUdC1w2U45NDz1J9M/JlMzmCiyT92OzWHFC1Y
	GeXw==
X-Received: by 10.220.39.69 with SMTP id f5mr36634056vce.45.1360860629979;
	Thu, 14 Feb 2013 08:50:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 08:50:09 -0800 (PST)
In-Reply-To: <511D155A.4060304@mlbassoc.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
	<CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
	<511CFDF8.9000005@mlbassoc.com>
	<CAJTo0LZQFUF07XwgBkdFBRE6T+mj5iRCqPOQt7XF_X6PE5pmWA@mail.gmail.com>
	<511D02FA.609@mlbassoc.com>
	<CAJTo0LZ5_tN0e_E9AHBDBLzKgNU9tuuV2TGgHrrPsYVtsuG-iQ@mail.gmail.com>
	<511D074E.7020402@mlbassoc.com>
	<CAJTo0LbKsTACcGn2+F4ZeVftaGpTnhB=tNCOCa3qUzkac9XKyQ@mail.gmail.com>
	<511D155A.4060304@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 16:50:09 +0000
Message-ID: <CAJTo0Lacok_G7hbBXptLM5easV_9t+pwjX+4S8js2XtmLmfX=Q@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkp48Pwb2CXBHmFHFansEhmzpfHQE3jayrbF0fE5hJdExgk5FCDe59A7mSLTy9t+NIRsX7n
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
X-List-Received-Date: Thu, 14 Feb 2013 16:50:32 -0000
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 16:48, Gary Thomas <gary@mlbassoc.com> wrote:
> Much closer.  Now the theme is being used (and it does suit me!)
> but I'm also getting a lot of warnings:
>
>   matchbox-wm: unable to open theme:
> /usr/share/themes/Clearlooks-DarkOrange/matchbox/theme.xml
>   (matchbox-panel:29173): Gtk-WARNING **: Unable to locate theme engine in
> module_path: "clearlooks",
>   (matchbox-desktop:29172): Gtk-WARNING **: Unable to locate theme engine in
> module_path: "clearlooks",
>   ./client_gui.py:219: GtkWarning: Unable to locate theme engine in
> module_path: "clearlooks",
>
> Can I get rid of these?  Should I bother?

Yes and yes, it can look a *lot* better. Add a runtime dependency on
your theme package to gtk-engine-clearlooks (part of the gtk-engines
recipe).

Ross

