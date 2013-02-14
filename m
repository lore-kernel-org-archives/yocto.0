Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D86ACE003BC
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:16:43 -0800 (PST)
Received: by mail-ve0-f172.google.com with SMTP id cz11so2381857veb.3
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:16:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=nVBTPPG2kW0VMAvnE2gSGaKDUULMatAxlsq48efX8A4=;
	b=l5N/+LOrOBRwphG1hnHPwehukSbZuUMIpXN8tk0Lid5T0S4wGigRTge9gYyiR8cxPG
	RwXw32XwrDbVjoJrgbblXkZfzSYrUfDdEbK7SKWdwP5i18USIFUzR17dpqaIDFuD8z5c
	zaxUXvz4lXbLuwHsywTscOI0ZgnJq6vzRCbgpZZZomevot2xUb7Gp+7u+qAbFnRRuF8j
	uKSsaXBqcUvRS2CYI6SOSBQSRO+nPGwyw2IiAG6vEEqzHMCRks6B2nGidh3oWIwrs4RA
	AJOhREXWi2Lq7Jw2U7uJmKLXu67gQdhHZHB8Hcqer1fwSzHA198PweGTNPX5ZJlooZQG
	CsyA==
X-Received: by 10.220.108.2 with SMTP id d2mr36395056vcp.60.1360862202650;
	Thu, 14 Feb 2013 09:16:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.221.10.202 with HTTP; Thu, 14 Feb 2013 09:16:22 -0800 (PST)
In-Reply-To: <511D19D7.8020706@mlbassoc.com>
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
	<CAJTo0Lacok_G7hbBXptLM5easV_9t+pwjX+4S8js2XtmLmfX=Q@mail.gmail.com>
	<511D19D7.8020706@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2013 17:16:22 +0000
Message-ID: <CAJTo0LbdXMeryivrYXYDJ-KPgL7ortMZucMB5bq_boSnSVw5dg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQmxhm8GZl3VgiqogvWgGeOXLspuAEbczcn6GD6uNCpJN2reFOs8BByWZ/CXCIE55SnCz5v9
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
X-List-Received-Date: Thu, 14 Feb 2013 17:16:44 -0000
Content-Type: text/plain; charset=UTF-8

On 14 February 2013 17:07, Gary Thomas <gary@mlbassoc.com> wrote:
> Thanks, that does look [mostly] better, but I'm still getting some
> warnings/errors:
>
> matchbox-wm: unable to open theme:
> /usr/share/themes/Clearlooks-DarkOrange/matchbox/theme.xml

Did you revert the other change you made that modified the matchbox theme?

> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:58: Clearlooks
> configuration option "sunkenmenu" is not supported and will be ignored.
> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:59: Clearlooks
> configuration option "menuitemstyle" is not supported and will be ignored.
> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:60: Clearlooks
> configuration option "listviewitemstyle" is not supported and will be
> ignored.
> /usr/share/themes/Clearlooks-DarkOrange/gtk-2.0/gtkrc:61: Clearlooks
> configuration option "progressbarstyle" is not supported and will be
> ignored.
>
> Maybe these are GTK-3 elements?

That's a gtk+2 theme, but it's possible that it targets an older or
newer version of the clearlooks engine.  And people said that GTK+2
theming was great...  If it looks acceptable you could ignore it, as
chasing this could be less than trivial and quite dull - theme engines
are not versioned so unless the theme has some documentation, you'll
be searching through the clearlooks commit log.

Ross

