Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 79B3BE0072F
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 08:01:15 -0800 (PST)
Received: by mail-ve0-f177.google.com with SMTP id m1so1185008ves.8
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 08:01:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=+O+5wi+M1KZMRaIVH7Qt+GyMkxsK8bazIRskepS443s=;
	b=mTgONxSOgmReXnxPHGvNWKwAWq1ASW2yeaJbZcFcJ+0AP6YNNKsLuf54qmkLWk6oO3
	WGTti8gTrCGQNWCBjNNESl5Poh2XpGYU2QmKiu+2Z5TDl3Iq7RI3pz55WtowIOuc+RC8
	EfBzFkVgUuyMCLQ9zmW7mUkUHF7Uk3D5OpLGMv+xNEOsrxU8AlULKP2ObeSzE/y9LVjo
	b976XuFwQgogiMbf8jVQ5lKadR919IWGSuO6bYxpplJObQ+qp1FNsK6VsHzaK+Wc7dOs
	yOJCRYlDGN+iWDsSHqUiC178PcJM9MIne3dqVnzphssTggBr751bvRMNtwx+riwJwaNM
	ud9A==
X-Received: by 10.220.153.143 with SMTP id k15mr30519804vcw.13.1360771274257; 
	Wed, 13 Feb 2013 08:01:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Wed, 13 Feb 2013 08:00:54 -0800 (PST)
In-Reply-To: <511ACDE5.9090704@mlbassoc.com>
References: <511ACDE5.9090704@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Feb 2013 16:00:54 +0000
Message-ID: <CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlWgTsBVxBKraIm5ggZSoYOYzUfa1sdYJCyldS+bT2UMM/wL+h6VeaiJZMqXeHQd+gpFt59
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
X-List-Received-Date: Wed, 13 Feb 2013 16:01:15 -0000
Content-Type: text/plain; charset=UTF-8

Hi Gary,

On 12 February 2013 23:19, Gary Thomas <gary@mlbassoc.com> wrote:
> I'd like to be able to control the Sato theme on my system,
> with a softer approach than editing the "gtk-sato-engine" package.
>
> I tried putting updated settings in /home/root/.gtkrc-2.0 but
> they don't seem to have any affect.  I can see that this file
> is being read (and presumably processed) as I bring up the
> desktop, but why don't the settings stick?
>
> Any ideas how I can make this work?

What settings in particular?  The xsettings-daemon will be overriding
gtkrc with values from GConf, so if you're trying to tweak some
settings then that will take priority.

Other values are likely hard-coded - the Sato engine wasn't designed
to be massively customisable and as far as I know its not really been
tested like this.

> Also, when I tried editing the "data/gtkrc-vga" in the gtk-sato-engine
> package I was able to change some settings in the theme, but I couldn't
> get consistent coverage.  For example, I tried to make the predominant
> background color something other than the light gray used by Sato, but
> the unselected version of buttons still have the Sato colors and I don't
> see how to change that, even in the gtk-sato-engine.

GTK+ theming has two different background colours for different
contexts (base or bg), so it's possible that you were only changing
one of them.

Ross

