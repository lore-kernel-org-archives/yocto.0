Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E06CE0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:37:50 -0800 (PST)
Received: by mail-qa0-f52.google.com with SMTP id j15so6966686qaq.25
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:37:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=chWMzPE5UHz8A5U8icM2+x9+JldER0iWjdjMvUbfiok=;
	b=j62NFMq+N0A7AfjIxZJ3tSZKbTrqCQMhmspIeOHPJjRP9Ru7fl2fYZ6ivGholVy/+f
	AXLKJcFavtLLo5cUlaPZT7GjFcvrZ/M4dm9zybx2puIpjJ3YbO+LpFA1mGTzjZTBs2RE
	AOB2HeHOtcEc2cKndh284r0A0w7TEM1hcVv3kgtgjt56tT3m8E9DlgIIEw7JyGXpR4/p
	lHMLSkXHGfANC6hVVibta4vJTOtjsdk/jUsMXwABB7l457t3/orbYXwLynnGgB5bw7bk
	+fHvJOmC5ZgTaUV6Z4WoMHBkhL2YEp39OmYF6y7AZe5NtKxTuq2xb8OlR2fb3q27Rk95
	9csw==
X-Gm-Message-State: ALoCoQmwH6qu02Uu0tXXvUE28jPKNHda7qBPSFcYXrGPgsafiQFpuuww4hZ9pIZ5dRbK9yWiC+6R
X-Received: by 10.49.12.78 with SMTP id w14mr3153712qeb.79.1389710269974; Tue,
	14 Jan 2014 06:37:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Tue, 14 Jan 2014 06:37:29 -0800 (PST)
In-Reply-To: <52D54A19.2020407@mlbassoc.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com> <20140114134754.GD3717@jama>
	<52D541E5.3040401@mlbassoc.com>
	<CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
	<52D547C9.3070703@mlbassoc.com>
	<CAJTo0LYizuLdJZHwpbJSDxFWTYiHnHXTL4r2ZrxCPOe==fUF4w@mail.gmail.com>
	<52D54A19.2020407@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jan 2014 14:37:29 +0000
Message-ID: <CAJTo0LYqp=Z4gE0sECX5Q2zSuE9+0X6gf7SUoimHWshGiKHKOQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 14:37:59 -0000
Content-Type: text/plain; charset=UTF-8

On 14 January 2014 14:30, Gary Thomas <gary@mlbassoc.com> wrote:
> You can duplicate this with off-the-shelf Poky/Yocto.  Just disable x11
> in local.conf
>   DISTRO_FEATURES_remove = "x11"
> Then you'll get this error:
>   [gthomas@titan q_test]$ bitbake -e virtual/libx11
>   Loading cache: 100%
> |##################################################################################|
> ETA:  00:00:00
>   Loaded 1188 entries from dependency cache.
>   ERROR: Nothing PROVIDES 'virtual/libx11'
>
>   ERROR: libx11-diet PROVIDES virtual/libx11 but was skipped: missing
> required distro feature ['x11'] (not in DISTRO_FEATURES)
>   ERROR: libx11 PROVIDES virtual/libx11 but was skipped: missing required
> distro feature ['x11'] (not in DISTRO_FEATURES)
>   ERROR: nativesdk-libx11 PROVIDES virtual/libx11 but was skipped: missing
> required distro feature ['x11'] (not in DISTRO_FEATURES)
>
> Should I file a bitbake bug?

I can't see (although I'm no bitbake expert) why -e has to consider
dependencies.  For example, bitbake -e -b
../meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.36.bb with
x11 removed from DISTRO_FEATURES correctly shows PACKAGECONFIG="".

Filing a bug seems reasonable to me.

Ross

