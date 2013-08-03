Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BFFBE015C6
	for <yocto@yoctoproject.org>; Sat,  3 Aug 2013 04:08:22 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id pa12so1665322veb.2
	for <yocto@yoctoproject.org>; Sat, 03 Aug 2013 04:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	bh=Nv2D9JLbn5B2oBB3JzXqfnGZ7/R/zYD/XGJ5PFLFBrM=;
	b=Z9GKdOPRgpNS+6Y1uK4C7oDM9wC3IW1AmuFMPexwdq1r38RvmPbZUFBH/cHwLRP2la
	5ppWXsGfJSANX9KcJ8o5mnxNoS/tREj+NbLm4XqTY69W1Tq5RzyYniiRtXkACd43pqMD
	Oizu1M3SYZ9SF4UkbX0JQqT6mnp8UQ6bD6T4/HZa+Gtz+PaIo0eSoaWdAjaaOso3J115
	IejuLOn7oyOY4td+K4WoH9kVXSyqJH6fPbVuk3LQBTSqm8Mv9aIgQHQcl+mbx3jWhYyP
	hdHJKil0Wz0KfkQ5cKBmz8fN8XMvds84+vvJV5n3u3GoyVhy9DeP4ciRsqNSIPCtIeI0
	MhDQ==
X-Received: by 10.220.98.68 with SMTP id p4mr3364820vcn.28.1375528101783; Sat,
	03 Aug 2013 04:08:21 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Sat, 3 Aug 2013 04:07:41 -0700 (PDT)
In-Reply-To: <CANyK_8e_1LtgJeFu=7m4qhepV-hZ=9Ji5H7hTuhbexs40qv5NQ@mail.gmail.com>
References: <CANyK_8e_1LtgJeFu=7m4qhepV-hZ=9Ji5H7hTuhbexs40qv5NQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 3 Aug 2013 12:07:41 +0100
X-Google-Sender-Auth: ObRLgtn4Sperzn8F2vGVkjtOib8
Message-ID: <CANyK_8dfwsyoSd0eKncA59UbNFm_nUov6nOBs-kzqXUKO4wwFw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Recipe naming
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
X-List-Received-Date: Sat, 03 Aug 2013 11:08:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 3 August 2013 11:52, Paul Barker <paul@paulbarker.me.uk> wrote:
> Should I call this:
>
>     "opkg_testing.bb"
>     set PREFERRED_VERSION_opkg = "testing" to use
>

Martin has just commented elsewhere that having this recipe in a meta-opkg layer
will always override the recipe in oe-core:

> You probably know about this already, but for other possible users of this
> layer:
>
> bitbake will always select "devel" version from meta-opkg layer if it has
> higher BBFILE_PRIORITY even if you put negative DEFAULT_PREFERRENCE into
> "devel" recipes. Only if you put lower-than-oe-core BBFILE_PRIORITY in
> layer.conf then it will force user to select "devel" version by
> PREFERRED_VERSION.

So maybe opkg-testing_{version} would work better.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

