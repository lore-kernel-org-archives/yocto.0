Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ED8E1E003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:38:30 -0800 (PST)
Received: by mail-vc0-f171.google.com with SMTP id p1so1554996vcq.16
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 07:38:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=ZrvPh60ytnM6VqSspss40KCraN2CNEeWNZhLxFYfWLA=;
	b=CkAIv8WZ1pegf8b0OSMH+suVAseUi3HgZnBbRgyg4C7N2GXSGtlOvceml9ccAcmIaB
	xhAKZ5IgiA0Zx7nJudUeSFt8SXPcXyWDW8S0eMkCUan09lHOhXlYmImE4D5JY5I/lHke
	a6cVM57rU4jU3HD6FtIKTF2bHtWWsGUid4CuLffruhsOP3WsEGKNvpjxS8UfaNVE6A8f
	IiMww8yQHh85RMLJFrd5eQbU6pFcy3VyeItGFcVH1nymh0BmxKViWwo4NU+3x+dry11N
	vXNdStxJOoAvNfyQlzoZ3c5BvVMnU9FvP4iHht5hyhk0SOIAbqbFaSe/zglmzP9C9LAC
	8yIg==
X-Received: by 10.52.19.65 with SMTP id c1mr30509962vde.36.1360856309715; Thu,
	14 Feb 2013 07:38:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 07:38:09 -0800 (PST)
In-Reply-To: <511D02FA.609@mlbassoc.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
	<511CE592.7000402@mlbassoc.com>
	<CAJTo0LaNdTP3Lg3xsSCH=cZY=_LPATyT7NrW+RC-_CHKvwAUSg@mail.gmail.com>
	<511CFDF8.9000005@mlbassoc.com>
	<CAJTo0LZQFUF07XwgBkdFBRE6T+mj5iRCqPOQt7XF_X6PE5pmWA@mail.gmail.com>
	<511D02FA.609@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 15:38:09 +0000
Message-ID: <CAJTo0LZ5_tN0e_E9AHBDBLzKgNU9tuuV2TGgHrrPsYVtsuG-iQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQlZ6Odxr8NCjsOUg3tqwImXd+cK45YhuESkAKZ45k3ZsQY0tN1xSwHve0M1cnraSe/FYxdq
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
X-List-Received-Date: Thu, 14 Feb 2013 15:38:31 -0000
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 15:30, Gary Thomas <gary@mlbassoc.com> wrote:
> I didn't find any mention of Sato in the matchbox-desktop-sato package,
> but I did in matchbox-session-sato.  It was mentioned in
> /etc/matchbox/session:
>   exec matchbox-window-manager -theme Sato -use_desktop_mode decorated
> -use_cursor $SHOWCURSOR $@

Right, that's the window manager theme, not the widget theme.

I typo'd, sorry, I meant matchbox-session-sato.  In master, there's a
matchbox-session-sato/matchbox-session-sato.schemas which sets the
default theme.  If you're using 1.3 or earlier, there's explicit
gconftool calls you'll need to change.

Ross

