Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3652E0027F
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 12:22:43 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 31 Aug 2012 12:22:43 -0700
Received: by obbtb18 with SMTP id tb18so7941667obb.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 12:22:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=KQlyyawtdDEWoZ/yqAQZzPSyh+aSn75PnDyt0yFb0G4=;
	b=WAq0GffUhCqUg4XW86qwkC+tkGrkI6aScIiNQyHR9PuGw8Hl8oan0ekxFF6iZ5VWuA
	sb4qNcIlX/WAPZKlOd7hByxbWh8m9JaJIi7jyGXcEA5wMMcD+f86t9QXQdGSLCuKijyr
	ipPIFdk8vI8b+oFUgPnUS9bfihm8dh0YFyq6EGlb9gd11LcNN+5pe+3pOmF8GvJyvIen
	O6mMGZ4We7jh8vRy06tTBz3PsPFyr0M8tCfeNWTLoRp7dYgnbHNgxOjP7ny+LNWOoB56
	iDQcHB97FnBpE482DcPodMKRnBRkS6MFRGY87lYmMMY2iVoKKsaL7Bm8+yeKHgdU7D7h
	U3Zg==
Received: by 10.182.124.102 with SMTP id mh6mr8807422obb.48.1346440962109;
	Fri, 31 Aug 2012 12:22:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Fri, 31 Aug 2012 12:22:21 -0700 (PDT)
In-Reply-To: <5040FCFD.4070409@gmail.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
	<CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
	<CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
	<CAJTo0LYvmRzYX0j2HU3eD1nXt6B5URcg6EfGGo_tWUcYz1W6uA@mail.gmail.com>
	<5040FCFD.4070409@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Aug 2012 20:22:21 +0100
Message-ID: <CAJTo0LYcTE7WRj-bu4nBn_psLJ6m++xmmJaUjK5sH48rkfEX6w@mail.gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Gm-Message-State: ALoCoQkNfokm2Q4gbSGAGFHyFBZRfvOc5kGdVn9btyVvwXJWuoQXHMDd3TF5KiI2FLBhPodOqEvV
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
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
X-List-Received-Date: Fri, 31 Aug 2012 19:22:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi Jim,

On 31 August 2012 19:05, Jim Abernathy <jfabernathy@gmail.com> wrote:
> Not sure I know how to force linux-firmware-* to be installed??

Personally I use DISTRO_EXTRA_RDEPENDS += in my local.conf for local
changes like that.

> Also I replaced the WiFi card with an Intel Wireless-N 135, and I got a FW
> error using it as well.  In this case it called out:

That was probably a good move, I've not had good experience with
realtek hardware.

> lwlagn 0000:02:00.0: request for firmware file 'iwlwifi-105-5-ucode' failed
>
> So if could just be I don't know how to force the firmware files to get
> included or the file does not exist in Yocto.

That's packaged in linux-firmware (in oe-core master at least, it
appears the Denzil needs upgrading here), so adding
DISTRO_EXTRA_RDEPENDS += "linux-firmware" will add it to all of your
future images.

Ross

