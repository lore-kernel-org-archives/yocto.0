Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f53.google.com (mail-vb0-f53.google.com
	[209.85.212.53]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 05F77E004FE
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:54:06 -0800 (PST)
Received: by mail-vb0-f53.google.com with SMTP id fj18so1527225vbb.26
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:54:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ohsaIVY/4alCRHQZqUH7+lpi0U3Z4iURqkyLwvSJc5c=;
	b=l80h14YdJD8YsfsP6/eGBkxwu+v/kfa6M5OQ8OO4KvexMH6am0pHPxS0JBc5mrFyp2
	ZR26GZ3YhWkaE3Rz8WqgkB0TgbHPAYj0Hq061DFY4SdAKHijakuyTDavQQm3u88jd5Ju
	0uNv/MOQdyH2t/OERWylkdTlblSCzPOS2O5iBvmaVVdjXIr4q+shdWRC8Y3azJEk3Yqp
	tfYQunULvXbn091dlXN5yh5zppsB7HzV5kHa/rRkEd0fVlnIlsukAJS6/Yvvwt9ET9up
	Tp2lFBn4alD2CoahURgmzitHk/E23p2ZYhYNGESYgv+2uU6fKyH2toR13FhU5jWiSnmb
	I+0g==
X-Received: by 10.220.154.199 with SMTP id p7mr35816760vcw.48.1360857246068;
	Thu, 14 Feb 2013 07:54:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 07:53:45 -0800 (PST)
In-Reply-To: <511D074E.7020402@mlbassoc.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
	<CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
	<511CFDF8.9000005@mlbassoc.com>
	<CAJTo0LZQFUF07XwgBkdFBRE6T+mj5iRCqPOQt7XF_X6PE5pmWA@mail.gmail.com>
	<511D02FA.609@mlbassoc.com>
	<CAJTo0LZ5_tN0e_E9AHBDBLzKgNU9tuuV2TGgHrrPsYVtsuG-iQ@mail.gmail.com>
	<511D074E.7020402@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 15:53:45 +0000
Message-ID: <CAJTo0LbKsTACcGn2+F4ZeVftaGpTnhB=tNCOCa3qUzkac9XKyQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQnf5Z+ckASB/aKafmcRLcRE6ZWegARM6cYtuGlpKPp2bUUYHJ0jct5+Ksfmquh/mUjQDvGp
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
X-List-Received-Date: Thu, 14 Feb 2013 15:54:07 -0000
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 15:48, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm using 1.3+ (master from about a month ago) and there is such a file
>
> meta/recipes-sato/matchbox-sato/matchbox-session-sato/matchbox-session-sato.schemas
>
> How do I change this file to use the new theme?
> Can I just change the file that becomes
> (/etc/gconf/schemas/matchbox-session-sato.schemas)
> in order to test the changes?

Not without re-registering the schemas and rebooting - it's probably
quicker to change that file in your overlay and re-build an image.

If you've installed the theme already you can use gconftool on the
device to make a one-off change:

$ gconftool-2 --set --type string /desktop/poky/interface/theme
Clearlooks-DarkOrange

Ross

