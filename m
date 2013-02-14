Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 943A6E003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:00:39 -0800 (PST)
Received: by mail-ve0-f175.google.com with SMTP id cy12so2169715veb.6
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:00:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=5N+sO3rparF9ZsNVd/5z4FjhYO2KmWIK1PJqNPOGb7E=;
	b=HVy95yDZ5fUxvY8LCRIMU0i9/gynKfDYUg6VnRZppXMdW0OTVErQ+Gym5wyY8hCocF
	xVD4QvSz3NCILe2apCxMw7Ki9o+pLnMUfnQEPCkD7H7H9xVO3xFEgDEKMXskE/0POthW
	ZmykaBThac3QMyR93w65yNE33/zgJ6WJecWB92o/SrhEww8Q0km+2jsJ1NGGxOb7ppI/
	OPfVrrpxrF2iIQoKb4BlgH6cPRl+JayUgmB6z3LBhqkD/NAyt0uwGuHJneGCF2oJOr4C
	e6pk+4B64N273OYdWTISC02EhnCk76MVDEyAFpnNbVJ7I7P85w/Lt3ZkKlOPZS4h3N/T
	XUHg==
X-Received: by 10.52.37.166 with SMTP id z6mr18863620vdj.55.1360854038327;
	Thu, 14 Feb 2013 07:00:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 07:00:18 -0800 (PST)
In-Reply-To: <511CE592.7000402@mlbassoc.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 15:00:18 +0000
Message-ID: <CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQloTmtjq6gndZZX5LM5OKUrSqYQxfo7Z3/Q4y+8/jgBBscnX4QV6jrrdL4e5QvUzMlTBn9s
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
X-List-Received-Date: Thu, 14 Feb 2013 15:00:39 -0000
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 13:24, Gary Thomas <gary@mlbassoc.com> wrote:
> My system has a single GUI program and I'd like to change the "feel"
> (aka theme).  For example, I'd like to change the colors around (black
> backgrounds, light foregrounds, etc), as well as things like the size
> and color of sliders, etc (it's a very restricted environment and I want
> the feel to reflect that).
>
> I think I still need the Sato basics as I need some minimal window manager
> services like popup keyboards, etc.

Messing with the gtk+ theme is the right thing to do, and you can
change the theme whilst still using the rest of the Sato environment.

Either dig into the Sato theme more, or there's a lot of GTK+ 2 themes
at http://art.gnome.org/themes/gtk2 (and other locations) that will
work just fine.

Ross

